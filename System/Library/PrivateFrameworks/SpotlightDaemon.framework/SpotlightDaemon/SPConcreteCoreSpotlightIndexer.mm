@interface SPConcreteCoreSpotlightIndexer
+ (BOOL)_spellingCorrectionConditional:(int)conditional isSingleToken:(BOOL)token isPreviousTokenCorrected:(BOOL)corrected isLastToken:(BOOL)lastToken tokenLength:(unint64_t)length;
+ (BOOL)dumpCrashStates:(const char *)states toFile:(id)file;
+ (id)_descriptionWithTokenRewrites:(id)rewrites;
+ (id)_getBundleIndexesFrom:(id)from;
+ (id)_indexDependentTokenRewritesWithMatchInfo:(id)info topK:(id)k setOfTokensToCorrect:(id)correct queryID:(int64_t)d bundleIds:(id)ids clientBundleId:(id)id;
+ (id)_indexIndependentTokenRewritesWithMatchInfo:(id)info queryID:(int64_t)d setOfTokensToCorrect:(id)correct;
+ (id)_lastTokenWithQueryString:(id)string tokenMatchInfo:(id)info;
+ (id)_setOfTokensToCorrect:(id)correct tokenMatchInfo:(id)info;
+ (id)_sharedSynonyms;
+ (id)_stateInfoAttributeNameWithClientStateName:(id)name;
+ (id)_stringWithRewriteType:(int64_t)type;
+ (id)_tokensMaxCountFromMatchInfo:(id)info;
+ (id)fetchItemForURL:(id)l;
+ (id)fetchParentsForItemID:(id)d recursively:(BOOL)recursively timeout:(unint64_t)timeout;
+ (int64_t)checkItemOfInterest:(id)interest mask:(int64_t)mask;
+ (void)initialize;
- (BOOL)_hasPurgeableTouchFile;
- (BOOL)_removePurgeableTouchFile;
- (BOOL)_shouldNotifyForSearchableItemUpdates:(id)updates;
- (BOOL)_shouldPurge;
- (BOOL)_startInternalQueryWithIndex:(__SI *)index query:(id)query fetchAttributes:(id)attributes forBundleIds:(id)ids maxCount:(unint64_t)count resultsHandler:(id)handler resultQueue:(id)queue postFilter:(id)self0 clientBundleID:(id)self1;
- (BOOL)clientIsCheckedIn:(id)in;
- (BOOL)creationTouchFileExists;
- (BOOL)denyOperationOnAssertedIndex:(char *)index;
- (BOOL)issuePriorityIndexFixup;
- (BOOL)reindexAllStarted;
- (BOOL)unpurgeOnceTouchFileExists;
- (BOOL)updateMeCardInfo:(id)info middleName:(id)name familyName:(id)familyName emailAddresses:(id)addresses isFirstTimeCheck:(BOOL)check isNotCreateNewIndex:(BOOL)index group:(id)group;
- (BOOL)writeDiagnostic:(id)diagnostic bundleID:(id)d identifier:(id)identifier;
- (SPConcreteCoreSpotlightIndexer)initWithQueue:(id)queue protectionClass:(id)class cancelPtr:(int *)ptr;
- (SPCoreSpotlightIndexer)owner;
- (id)_cancelIdleTimer;
- (id)_indexMaintenanceActivityName;
- (id)_indexPath;
- (id)_startQueryWithQueryTask:(id)task eventHandler:(id)handler resultsHandler:(id)resultsHandler;
- (id)getPropertyForKey:(id)key;
- (id)indexLossAnalyticsDictWithPreviousIndexCreationDate:(int64_t)date size:(int64_t)size openingInReadOnly:(BOOL)only fullyCreated:(BOOL)created markedPurgeable:(BOOL)purgeable vectorIndexDrop:(id)drop forAnalytics:(BOOL)analytics;
- (id)purgeableIndexTouchFilePath;
- (id)trialIntentionalDropUUID;
- (id)vectorIndexDropsPath;
- (int)creationTouchFileCreate;
- (int)openIndex:(BOOL)index shouldReindexAll:(BOOL)all readOnly:(BOOL)only forcePC:(id)c;
- (int)openIndexForUpgradeSynchronous:(BOOL)synchronous;
- (int)openJWLIndex;
- (int)shouldNotLogIndexDrop:(id)drop ignoreParentDirectoryAge:(BOOL)age;
- (int)unpurgeOnceTouchFileCreate;
- (int64_t)_interestedAttributesMaskForBundleID:(id)d;
- (int64_t)getAggregateIndexWipeCount;
- (int64_t)getIndexDirectorySize:(id)size;
- (int64_t)getIntegerPropertyForKey:(id)key;
- (int64_t)runOneFixup:(int64_t)fixup group:(id)group;
- (int64_t)updateDerivedIsMe:(BOOL)me group:(id)group order:(int64_t)order aliasName:(id)name fullName:(id)fullName nameTokens:(id)tokens givenNameTokens:(id)nameTokens nonGivenNameTokens:(id)self0 emails:(id)self1;
- (int64_t)updateDerivedIsMeIfNotAlready:(BOOL)already group:(id)group order:(int64_t)order aliasName:(id)name fullName:(id)fullName nameTokens:(id)tokens givenNameTokens:(id)nameTokens nonGivenNameTokens:(id)self0 emails:(id)self1;
- (void)_addNewClientWithBundleID:(id)d;
- (void)_appendRervseInfo:(id)info dictionary:(id)dictionary key:(id)key level:(unint64_t)level;
- (void)_backgroundDeleteItems:(id)items bundleID:(id)d completionHandler:(id)handler;
- (void)_cancelIdleTimer;
- (void)_createPurgeableTouchFile;
- (void)_deleteSearchableItemsMatchingQuery:(id)query forBundleIds:(id)ids completionHandler:(id)handler;
- (void)_expireCorruptIndexFilesWithPath:(id)path keepLatest:(BOOL)latest;
- (void)_fetchAccumulatedStorageSizeForBundleId:(id)id completionHandler:(id)handler;
- (void)_performXPCActivity:(id)activity name:(id)name;
- (void)_removePurgeableTouchFile;
- (void)_saveCorruptIndexWithPath:(id)path shouldSendABC:(BOOL)c fullyCreated:(BOOL)created markedPurgeable:(BOOL)purgeable;
- (void)_scheduleStringsCleanupForBundleID:(id)d;
- (void)_sendIndexDropABCEvent:(BOOL)event markedPurgeable:(BOOL)purgeable;
- (void)_sendPhotosNilClientStateSignpost:(__SI *)signpost retCode:(int)code;
- (void)addClients:(id)clients;
- (void)addCompletedBundleIDs:(id)ds forIndexerTask:(id)task;
- (void)attributesForBundleId:(id)id identifier:(id)identifier completion:(id)completion;
- (void)cacheDeleteForKey:(id)key value:(id)value bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)cacheEntryForKeys:(id)keys bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)cacheInsertForKey:(id)key value:(id)value bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state forBundleID:(id)d;
- (void)checkAdmission:(id)admission background:(BOOL)background didBeginThrottle:(BOOL *)throttle didEndThrottle:(BOOL *)endThrottle live:(BOOL *)live slow:(BOOL *)slow memoryPressure:(BOOL *)pressure;
- (void)checkInWithBundleID:(id)d completionHandler:(id)handler;
- (void)cleanupStringsWithActivity:(id)activity group:(id)group shouldDefer:(BOOL *)defer flags:(int)flags;
- (void)cleanupStringsWithCompletionHandler:(id)handler;
- (void)clientDidCheckin:(id)checkin service:(id)service completionHandler:(id)handler;
- (void)closeCache:(id)cache;
- (void)closeIndex;
- (void)commitUpdates:(id)updates;
- (void)completeIndexingItemFor:(id)for delegate:(id)delegate didBeginThrottle:(BOOL)throttle didEndThrottle:(BOOL)endThrottle error:(id)error live:(BOOL)live queue:(id)queue slow:(BOOL)self0 startTime:(double)self1 dataLen:(unint64_t)self2 completionHandler:(id)self3;
- (void)coolDown:(id)down;
- (void)creationTouchFileUnlink;
- (void)dealloc;
- (void)deleteActionsBeforeTime:(double)time completionHandler:(id)handler;
- (void)deleteActionsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)deleteAllInteractionsWithBundleID:(id)d completionHandler:(id)handler;
- (void)deleteAllSearchableItemsForBundleID:(id)d fromClient:(id)client shouldGC:(BOOL)c deleteAllReason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteAllUserActivities:(id)activities fromClient:(id)client completionHandler:(id)handler;
- (void)deleteHasTopHitAppShortcutsWithResultsHandler:(id)handler completionHandler:(id)completionHandler;
- (void)deleteItemsForEnumerator:(id)enumerator traceID:(int64_t)d bundleID:(id)iD fromClient:(id)client completionHandler:(id)handler;
- (void)deleteItemsForQuery:(id)query bundleID:(id)d fromClient:(id)client completionHandler:(id)handler;
- (void)deleteSearchableItemsSinceDate:(id)date forBundleID:(id)d completionHandler:(id)handler;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers forBundleID:(id)d fromClient:(id)client reason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteSearchableItemsWithFileProviderDomains:(id)domains completionHandler:(id)handler;
- (void)deleteSearchableItemsWithPersonaIds:(id)ids completionHandler:(id)handler;
- (void)dirty:(BOOL)dirty;
- (void)dropBackgroundAssertions:(BOOL)assertions;
- (void)dumpAllRankingDiagnosticInformationForQuery:(id)query withCompletionHandler:(id)handler;
- (void)ensureOpenIndexFiles:(id)files;
- (void)fetchAllCompletedBundleIDsForIndexerTask:(id)task completionHandler:(id)handler;
- (void)fetchAttributes:(id)attributes bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completion:(id)completion;
- (void)fetchAttributes:(id)attributes bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completionHandler:(id)handler;
- (void)fetchCacheFileDescriptorsForBundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completionHandler:(id)handler;
- (void)fetchLastClientStateForBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler;
- (void)fetchMeCard:(BOOL)card isNotCreateNewIndex:(BOOL)index group:(id)group;
- (void)finishDeleteBatchForQueryQueue:(id)queue bundleID:(id)d blockTime:(double)time;
- (void)finishIndexingWhileLocked:(id)locked completionHandler:(id)handler;
- (void)finishReindexAll;
- (void)fixupBundlesWithGroup:(id)group;
- (void)fixupMessageAttachmentsWithCompletionHandler:(id)handler;
- (void)fixupPathTimeouts;
- (void)incrementIndexWipeCount;
- (void)indexDependentTokenRewritesWithQueryString:(id)string context:(id)context matchInfo:(id)info setOfTokensToCorrect:(id)correct tokenRewritesHandler:(id)handler;
- (void)indexFinishedDrainingJournal;
- (void)indexFinishedDrainingJournal:(id)journal;
- (void)indexFromBundle:(id)bundle personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)state expectedClientState:(id)self0 clientStateName:(id)self1 deletes:(id)self2 canCreateNewIndex:(BOOL)self3 completionHandler:(id)self4;
- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state expectedClientState:(id)clientState clientStateName:(id)name forBundleID:(id)d options:(int64_t)options completionHandler:(id)self0;
- (void)issueConsistencyCheck;
- (void)issueDefrag:(id)defrag;
- (void)issueDumpForward:(unint64_t)forward completionHandler:(id)handler;
- (void)issueDumpReverse:(unint64_t)reverse completionHandler:(id)handler;
- (void)issueDuplicateOidCheck;
- (void)issueMessagesFixup:(id)fixup;
- (void)issuePhotosReindexIfNeeded:(BOOL)needed group:(id)group;
- (void)issuePriorityIndexFixup;
- (void)issuePriorityIndexFixupOff;
- (void)issuePriorityIndexFixupOn:(id)on key:(id)key;
- (void)issueRepair;
- (void)issueSplit;
- (void)markDirectoryAtomicallyPurgeable:(id)purgeable purgeableOrNot:(BOOL)not;
- (void)mergeWithCompletionHandler:(id)handler;
- (void)mergeWithGroup:(id)group;
- (void)notifyClientForItemUpdates:(id)updates updatedItems:(id)items batchMask:(int64_t)mask;
- (void)openJWLIndex;
- (void)performIndexerTask:(id)task completionHandler:(id)handler;
- (void)performIndexerTask:(id)task withIndexDelegatesAndCompletionHandler:(id)handler;
- (void)performQueryForCountOfItemsInCategory:(id)category completion:(id)completion;
- (void)powerStateChanged;
- (void)preheat;
- (void)prepareIndexingWhileLocked:(id)locked holdAssertionFor:(double)for completionHandler:(id)handler;
- (void)processDecryptsForBundleID:(id)d persona:(id)persona infos:(id)infos group:(id)group;
- (void)processImportForBundleID:(id)d withURLs:(id)ls contentTypes:(id)types sandboxExtensions:(id)extensions andIdentifiers:(id)identifiers options:(int64_t)options inGroup:(id)group additionalAttributes:(id)self0 computeUpdaterAttributesAfterImport:(BOOL)self1 cancelBlock:(id)self2;
- (void)readyIndex:(BOOL)index;
- (void)reindexAttributes:(id)attributes ofItemsMatchingQuery:(id)query indexAttrName:(id)name withVersion:(unint64_t)version perItemCompletionAttribute:(id)attribute completionValue:(BOOL)value alwaysReindexWithCompletionAttribute:(BOOL)completionAttribute force:(BOOL)self0 postFilter:(id)self1 group:(id)self2 forceMerge:(BOOL)self3;
- (void)reindexAttributes:(id)attributes ofItemsMatchingQuery:(id)query indexAttrName:(id)name withVersion:(unint64_t)version perItemCompletionAttribute:(id)attribute force:(BOOL)force postFilter:(id)filter group:(id)self0 forceMerge:(BOOL)self1;
- (void)reindexAttributes:(id)attributes ofItemsMatchingQuery:(id)query indexAttrName:(id)name withVersion:(unint64_t)version perItemCompletionAttributeArray:(id)array completionValueArray:(id)valueArray alwaysReindexWithCompletionAttribute:(BOOL)attribute force:(BOOL)self0 postFilter:(id)self1 group:(id)self2 forceMerge:(BOOL)self3;
- (void)removeExpiredItemsForBundleId:(id)id group:(id)group;
- (void)removeSandboxExtensions:(id)extensions;
- (void)requestRequiresImportWithoutSandboxExtension:(id)extension maxCount:(unint64_t)count depth:(int64_t)depth;
- (void)restartAttachmentImport:(id)import maxCount:(unint64_t)count depth:(int64_t)depth;
- (void)resumeIndex;
- (void)revokeExpiredItems:(id)items activity:(id)activity;
- (void)runOtherFixups:(id)fixups state:(int64_t)state;
- (void)scheduleMaintenance:(id)maintenance description:(id)description forDarkWake:(BOOL)wake;
- (void)setHasPhotosOrText;
- (void)setProperty:(id)property forKey:(id)key sync:(BOOL)sync;
- (void)shrink:(unint64_t)shrink;
- (void)spotlightCacheFileDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)startQueryWithQueryTask:(id)task startHandler:(id)handler eventHandler:(id)eventHandler resultsHandler:(id)resultsHandler;
- (void)startReindexAll;
- (void)suspendIndexForDeviceLock:(id)lock;
- (void)transferDeleteJournalsToDirectory:(int)directory completionHandler:(id)handler;
- (void)trialIntentionalDropUUID;
- (void)updateContainersAndScores:(BOOL)scores group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsFromMe:(BOOL)me fullName:(id)name emails:(id)emails onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsFromMeNot:(BOOL)not fullName:(id)name emails:(id)emails group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsFromMeRanking:(BOOL)ranking nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsFromMeRankingNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMe:(BOOL)me nameTokens:(id)tokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMe:(BOOL)me runOtherFixups:(BOOL)fixups force:(BOOL)force group:(id)group state:(int64_t)state;
- (void)updateDerivedIsMeIfNotAlready:(BOOL)already group:(id)group state:(int64_t)state;
- (void)updateDerivedIsMeNot:(BOOL)not nameTokens:(id)tokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRanking:(BOOL)ranking nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingOCR:(BOOL)r givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingOCRNot:(BOOL)not givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingOCRTextContentMatch:(BOOL)match givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingOCRTextContentMatchNot:(BOOL)not givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingPreExtraction:(BOOL)extraction givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingPreExtractionNot:(BOOL)not givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingSpan:(BOOL)span fullName:(id)name onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingSpanNot:(BOOL)not fullName:(id)name group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingTextContentMatch:(BOOL)match nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingTextContentMatchNot2:(BOOL)not2 nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingTextContentMatchNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingToken:(BOOL)token nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeRankingTokenNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeTextContentMatch:(BOOL)match nameTokens:(id)tokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsMeTextContentMatchNot:(BOOL)not nameTokens:(id)tokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsToMe:(BOOL)me fullName:(id)name emails:(id)emails onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsToMeNot:(BOOL)not fullName:(id)name emails:(id)emails group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsToMeRanking:(BOOL)ranking nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge;
- (void)updateDerivedIsToMeRankingNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge;
- (void)updateEmailContentURLAttr:(BOOL)attr group:(id)group forceMerge:(BOOL)merge;
- (void)updateEmailLocalParts:(BOOL)parts group:(id)group forceMerge:(BOOL)merge;
- (void)updateIndexRankingDates:(BOOL)dates group:(id)group forceMerge:(BOOL)merge;
- (void)updateKnownBundles:(id)bundles group:(id)group;
- (void)updateNotes:(BOOL)notes group:(id)group forceMerge:(BOOL)merge;
- (void)validateConcreteIndexer:(BOOL)indexer outFileDescriptor:(int)descriptor;
- (void)validateVectors:(int)vectors;
- (void)whenFinishedDraining:(id)draining;
- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers forBundleID:(id)d completionHandler:(id)handler;
- (void)writeIndexCreationDate:(int64_t)date;
- (void)writeIndexDropAnalyticsDate:(int64_t)date;
- (void)writeIndexLossEventToFile:(id)file vector:(BOOL)vector;
- (void)writeIndexSuccessfulOpenDate:(int64_t)date;
- (void)writeSDBObjectCount:(int64_t)count;
- (void)zombifyAllContactItems:(id)items;
@end

@implementation SPConcreteCoreSpotlightIndexer

- (SPCoreSpotlightIndexer)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (id)_cancelIdleTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_indexIdleTimer;
  v4 = selfCopy->_dirtyTransaction;
  indexIdleTimer = selfCopy->_indexIdleTimer;
  selfCopy->_indexIdleTimer = 0;

  dirtyTransaction = selfCopy->_dirtyTransaction;
  selfCopy->_dirtyTransaction = 0;

  objc_sync_exit(selfCopy);
  if (v3)
  {
    dispatch_source_cancel(v3);
    selfCopy->_idleStartTime = 0.0;
    v8 = logForCSLogCategoryIndex(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SPConcreteCoreSpotlightIndexer _cancelIdleTimer];
    }
  }

  return v4;
}

- (id)_indexPath
{
  indexDirectory = [sDelegate indexDirectory];
  v4 = indexDirectory;
  dataclass = self->_dataclass;
  if (!dataclass)
  {
    dataclass = *MEMORY[0x277CCA1A0];
  }

  v6 = [indexDirectory stringByAppendingFormat:@"/%@/%@", dataclass, @"index.spotlightV2"];

  return v6;
}

- (void)resumeIndex
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    dataclass = self->_dataclass;
    v5 = "NO";
    if (self->_suspended)
    {
      v5 = "YES";
    }

    *buf = 138412546;
    v15 = dataclass;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Resuming index, dataclass:%@, suspended:%s", buf, 0x16u);
  }

  if (self->_jwlIndex)
  {
    SICloseJWLIndex();
    self->_jwlIndex = 0;
  }

  if (self->_index && !SIValidIndex() && self->_index && !SIValidIndex())
  {
    [(SPConcreteCoreSpotlightIndexer *)self closeIndex];
    [(SPConcreteCoreSpotlightIndexer *)self openIndex:1];
    return;
  }

  if (self->_suspended || self->_suspending)
  {
    if (self->_softSuspended)
    {
      index = self->_index;
    }

    else
    {
      index = self->_index;
      if (!self->_hasAssertion)
      {
        SIResumeIndex();
        goto LABEL_20;
      }
    }

    if (!index)
    {
LABEL_24:
      [(SPConcreteCoreSpotlightIndexer *)self dropBackgroundAssertions:SIIsLockedIndexingMode()];
      *&self->_suspended = 0;
      locked = self->_index;
      if (locked)
      {
        locked = SIIsLockedIndexingMode();
        if (locked)
        {
          v9 = logForCSLogCategoryIndex(locked);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = self->_dataclass;
            *buf = 138412290;
            v15 = v10;
            _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "reopening index as it was opened for locked indexing, dataclass:%@", buf, 0xCu);
          }

          [(SPConcreteCoreSpotlightIndexer *)self closeIndex];
          locked = [(SPConcreteCoreSpotlightIndexer *)self openIndex:0];
        }
      }

      v11 = logForCSLogCategoryIndex(locked);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = self->_dataclass;
        *buf = 138412290;
        v15 = v12;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "Resumed index, dataclass:%@", buf, 0xCu);
      }

      return;
    }

    SIBackgroundOpBlock(index, 9, &__block_literal_global_1204);
LABEL_20:
    v7 = self->_index;
    if (v7)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__SPConcreteCoreSpotlightIndexer_resumeIndex__block_invoke_2;
      v13[3] = &unk_278935248;
      v13[4] = self;
      SIBackgroundOpBlock(v7, 0, v13);
      if (_os_feature_enabled_impl())
      {
        if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA190]])
        {
          SISyncIndex();
        }
      }
    }

    goto LABEL_24;
  }
}

uint64_t __45__SPConcreteCoreSpotlightIndexer_resumeIndex__block_invoke_2(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = result;
    if (_os_feature_enabled_impl() && [*(*(v4 + 32) + 192) isEqualToString:*MEMORY[0x277CCA190]])
    {
      SIReleaseJournalAssertion();
    }

    SISetLockedJournalingState();

    return _SISetAssertedJournalNum();
  }

  return result;
}

+ (int64_t)checkItemOfInterest:(id)interest mask:(int64_t)mask
{
  maskCopy = mask;
  interestCopy = interest;
  attributeSet = [interestCopy attributeSet];
  v7 = attributeSet;
  if (maskCopy)
  {
    summarizationContentTopic = [attributeSet summarizationContentTopic];
    if (summarizationContentTopic || ([v7 summarizationContentSynopsis], (summarizationContentTopic = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v7, "summarizationContentTopLine"), (summarizationContentTopic = objc_claimAutoreleasedReturnValue()) != 0))
    {
      isUrgent = summarizationContentTopic;
    }

    else
    {
      isUrgent = [v7 isUrgent];
      if (!isUrgent && ![v7 urgencyStatus])
      {
        if (![v7 summarizationStatus])
        {
          goto LABEL_2;
        }

LABEL_13:
        v8 = 1;
        if ((maskCopy & 2) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_3;
      }
    }

    goto LABEL_13;
  }

LABEL_2:
  v8 = 0;
  if ((maskCopy & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v7 attributeForKey:*MEMORY[0x277CC2BE0]];

  if (v9)
  {
    v8 |= 2uLL;
  }

LABEL_5:
  if ((maskCopy & 4) != 0)
  {
    mediaAnalysisComplete = [v7 mediaAnalysisComplete];

    if (mediaAnalysisComplete)
    {
      v8 |= 4uLL;
    }

    if ((maskCopy & 8) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((maskCopy & 8) == 0)
  {
    goto LABEL_25;
  }

  if (maskCopy)
  {
    isTimeSensitive = [v7 isTimeSensitive];

    if (isTimeSensitive)
    {
      v8 |= 8uLL;
    }
  }

  else
  {
    textContentSummary = [v7 textContentSummary];
    if (textContentSummary || ([v7 isPriority], (textContentSummary = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      isTimeSensitive2 = [v7 isTimeSensitive];

      if (!isTimeSensitive2)
      {
        goto LABEL_25;
      }
    }

    v8 |= 8uLL;
  }

LABEL_25:

  return v8;
}

- (int64_t)_interestedAttributesMaskForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.mobilemail"] && (_os_feature_enabled_impl() & 1) != 0)
  {
LABEL_8:
    v4 = 7;
    goto LABEL_10;
  }

  if (![dCopy isEqualToString:@"com.apple.MobileSMS"] || (_os_feature_enabled_impl() & 1) == 0)
  {
    if (![dCopy isEqualToString:@"com.apple.usernotificationsd"] || (_os_feature_enabled_impl() & 1) == 0)
    {
      v4 = 8;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v4 = 15;
LABEL_10:

  return v4;
}

- (void)notifyClientForItemUpdates:(id)updates updatedItems:(id)items batchMask:(int64_t)mask
{
  selfCopy = self;
  v79 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  itemsCopy = items;
  v8 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = itemsCopy;
  v9 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v9)
  {
    v10 = v9;
    v73 = *v75;
    v11 = *MEMORY[0x277CC2BE0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v13 = v8;
        if (*v75 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v74 + 1) + 8 * i);
        attributeSet = [v14 attributeSet];
        v16 = objc_opt_new();
        uniqueIdentifier = [v14 uniqueIdentifier];
        v18 = [uniqueIdentifier copyWithZone:0];
        [v16 setUniqueIdentifier:v18];

        uniqueIdentifier2 = [attributeSet uniqueIdentifier];
        v20 = [uniqueIdentifier2 copyWithZone:0];
        attributeSet2 = [v16 attributeSet];
        [attributeSet2 setUniqueIdentifier:v20];

        domainIdentifier = [attributeSet domainIdentifier];
        v23 = [domainIdentifier copyWithZone:0];
        attributeSet3 = [v16 attributeSet];
        [attributeSet3 setDomainIdentifier:v23];

        if (mask)
        {
          summarizationStatus = [attributeSet summarizationStatus];
          attributeSet4 = [v16 attributeSet];
          [attributeSet4 setSummarizationStatus:summarizationStatus];

          urgencyStatus = [attributeSet urgencyStatus];
          attributeSet5 = [v16 attributeSet];
          [attributeSet5 setUrgencyStatus:urgencyStatus];

          isUrgent = [attributeSet isUrgent];
          attributeSet6 = [v16 attributeSet];
          [attributeSet6 setIsUrgent:isUrgent];

          summarizationContentTopLine = [attributeSet summarizationContentTopLine];
          v32 = [summarizationContentTopLine copyWithZone:0];
          attributeSet7 = [v16 attributeSet];
          [attributeSet7 setSummarizationContentTopLine:v32];

          summarizationContentSynopsis = [attributeSet summarizationContentSynopsis];
          v35 = [summarizationContentSynopsis copyWithZone:0];
          attributeSet8 = [v16 attributeSet];
          [attributeSet8 setSummarizationContentSynopsis:v35];

          summarizationContentTopic = [attributeSet summarizationContentTopic];
          v38 = [summarizationContentTopic copyWithZone:0];
          attributeSet9 = [v16 attributeSet];
          [attributeSet9 setSummarizationContentTopic:v38];

          providerDataTypeIdentifiers = [attributeSet providerDataTypeIdentifiers];
          v41 = [providerDataTypeIdentifiers copyWithZone:0];
          attributeSet10 = [v16 attributeSet];
          [attributeSet10 setProviderDataTypeIdentifiers:v41];

          creator = [attributeSet creator];
          v44 = [creator copyWithZone:0];
          attributeSet11 = [v16 attributeSet];
          [attributeSet11 setCreator:v44];

          threadIdentifier = [attributeSet threadIdentifier];
          v47 = [threadIdentifier copyWithZone:0];
          attributeSet12 = [v16 attributeSet];
          [attributeSet12 setThreadIdentifier:v47];

          if ((mask & 2) == 0)
          {
LABEL_8:
            if ((mask & 4) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_13;
          }
        }

        else if ((mask & 2) == 0)
        {
          goto LABEL_8;
        }

        attributeSet13 = [v16 attributeSet];
        v50 = [attributeSet attributeForKey:v11];
        v51 = [v50 copyWithZone:0];
        [attributeSet13 setAttribute:v51 forKey:v11];

        if ((mask & 4) == 0)
        {
LABEL_9:
          if ((mask & 8) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_14;
        }

LABEL_13:
        mediaAnalysisComplete = [attributeSet mediaAnalysisComplete];
        v53 = [mediaAnalysisComplete copyWithZone:0];
        attributeSet14 = [v16 attributeSet];
        [attributeSet14 setMediaAnalysisComplete:v53];

        if ((mask & 8) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        isTimeSensitive = [attributeSet isTimeSensitive];
        attributeSet15 = [v16 attributeSet];
        [attributeSet15 setIsTimeSensitive:isTimeSensitive];

        if ((mask & 1) == 0)
        {
          isUrgent2 = [attributeSet isUrgent];
          attributeSet16 = [v16 attributeSet];
          [attributeSet16 setIsUrgent:isUrgent2];

          summarizationContentTopLine2 = [attributeSet summarizationContentTopLine];
          v60 = [summarizationContentTopLine2 copyWithZone:0];
          attributeSet17 = [v16 attributeSet];
          [attributeSet17 setSummarizationContentTopLine:v60];
        }

LABEL_16:
        v8 = v13;
        [v13 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v62 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:17];
    [v62 setUpdatedItems:v8];
    v63 = logForCSLogCategoryDefault([v62 setUpdatedItemsMask:mask]);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      [SPConcreteCoreSpotlightIndexer notifyClientForItemUpdates:v8 updatedItems:? batchMask:?];
    }

    v64 = v8;

    v65 = +[SpotlightDaemonServer sharedDaemonServer];
    dataclass = [(SPConcreteCoreSpotlightIndexer *)selfCopy dataclass];
    v67 = [v65 handleJob:v62 bundleID:updatesCopy protectionClass:dataclass completionHandler:&__block_literal_global_8];

    if ((v67 & 1) == 0)
    {
      v68 = +[SPCoreSpotlightIndexer sharedInstance];
      extensionDelegate = [v68 extensionDelegate];

      if (extensionDelegate)
      {
        [extensionDelegate indexRequestsPerformDataJob:v62 forBundle:updatesCopy completionHandler:&__block_literal_global_280];
      }
    }

    v8 = v64;
  }
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_2();
  }
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_2();
  }
}

- (void)setProperty:(id)property forKey:(id)key sync:(BOOL)sync
{
  syncCopy = sync;
  propertyCopy = property;
  keyCopy = key;
  if (self->_index)
  {
    SISetProperty();
    if (syncCopy)
    {
      v9 = dispatch_group_create();
      [(SPConcreteCoreSpotlightIndexer *)self commitUpdates:v9];
    }
  }
}

- (id)getPropertyForKey:(id)key
{
  index = self->_index;
  if (index)
  {
    index = SICopyProperty();
    v3 = vars8;
  }

  return index;
}

- (int64_t)getIntegerPropertyForKey:(id)key
{
  keyCopy = key;
  if (self->_index)
  {
    v5 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v5 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)issuePriorityIndexFixupOn:(id)on key:(id)key
{
  onCopy = on;
  keyCopy = key;
  if (sUsePriorityIndex == 1 && [(NSString *)self->_dataclass isEqualToString:@"Priority"])
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke;
    block[3] = &unk_278934130;
    v11 = onCopy;
    v12 = v8;
    v13 = keyCopy;
    v9 = v8;
    dispatch_async(v9, block);
  }
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke(id *a1)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v2 = dispatch_group_create();
  if ([a1[4] containsObject:@"com.apple.application"])
  {
    dispatch_group_enter(v2);
    v4 = logForCSLogCategoryDefault(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Requesting update of apps for priority migration", buf, 2u);
    }

    v5 = sDelegate;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_288;
    v12[3] = &unk_278934050;
    v13 = v2;
    [v5 updateApplicationsWithCompletion:v12 clean:1];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_289;
  block[3] = &unk_2789345A0;
  v6 = a1[5];
  v8 = a1[4];
  v11 = v15;
  v9 = a1[5];
  v10 = a1[6];
  dispatch_group_notify(v2, v6, block);

  _Block_object_dispose(v15, 8);
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_288(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished update of apps for priority migration", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_289(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allObjects];
  v3 = logForCSLogCategoryDefault(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v2;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Issuing reindex for priority migration for bundleIDs %@", buf, 0xCu);
  }

  v4 = +[SPCoreSpotlightIndexer sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_293;
  v7[3] = &unk_2789345A0;
  v5 = *(a1 + 56);
  v8 = v2;
  v11 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = v2;
  [v4 _reindexAllItemsForBundleIDs:v6 reason:@"priority-index-turned-on" completionHandler:v7];
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_293(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished reindex for priority migration for bundleIDs %@", buf, 0xCu);
  }

  v4 = dispatch_group_create();
  v5 = +[SPCoreSpotlightIndexer sharedInstance];
  v6 = [v5 defaultIndexer];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_294;
  v10[3] = &unk_278934578;
  v11 = *(a1 + 32);
  v12 = v4;
  v7 = *(a1 + 56);
  v13 = v6;
  v16 = v7;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v4;
  [v8 whenFinishedDraining:v10];
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_294(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = logForCSLogCategoryDefault(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Deleting items from default index for priority migration for bundleIDs %@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID='%@'", v9];
          dispatch_group_enter(*(a1 + 40));
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302;
          v19[3] = &unk_278934528;
          v21 = *(a1 + 72);
          v19[4] = v9;
          v11 = *(a1 + 48);
          v20 = *(a1 + 40);
          [v11 deleteItemsForQuery:v10 bundleID:v9 fromClient:@"com.apple.searchd" completionHandler:v19];
        }

        v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_304;
    block[3] = &unk_278934550;
    obja = *(a1 + 64);
    v14 = obja;
    v18 = obja;
    dispatch_group_notify(v12, v13, block);
  }
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = logForCSLogCategoryDefault(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 134218242;
      v10 = a3;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Deleted %ld items from default index for priority migration for bundleID %@", &v9, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_304(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = +[SPCoreSpotlightIndexer sharedInstance];
    v3 = [v2 defaultIndexer];
    [v3 setProperty:&unk_2846C9590 forKey:*(a1 + 32) sync:1];

    v4 = +[SPCoreSpotlightIndexer sharedInstance];
    v5 = [v4 priorityIndexer];
    [v5 setProperty:&unk_2846C9590 forKey:*(a1 + 32) sync:1];

    v7 = logForCSLogCategoryDefault(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "Finished priority migration ON";
      v9 = &v11;
LABEL_6:
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    v7 = logForCSLogCategoryDefault(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "Couldn't complete priority migration ON; will try again on next launch";
      v9 = &v10;
      goto LABEL_6;
    }
  }
}

- (void)issuePriorityIndexFixupOff
{
  if ((sUsePriorityIndex & 1) == 0)
  {
    v3 = [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA1A0]];
    if (v3)
    {
      v4 = logForCSLogCategoryDefault(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Beginning priority migration off default index", buf, 2u);
      }

      v5 = dispatch_group_create();
      dispatch_group_enter(v5);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke;
      v8[3] = &unk_2789345C8;
      v9 = v5;
      v6 = v5;
      [(SPConcreteCoreSpotlightIndexer *)self whenFinishedDraining:v8];
      v7 = dispatch_get_global_queue(21, 0);
      dispatch_group_notify(v6, v7, &__block_literal_global_308);
    }
  }
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_2()
{
  v0 = dispatch_group_create();
  dispatch_group_enter(v0);
  v2 = logForCSLogCategoryDefault(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Requesting update of apps for priority migration", buf, 2u);
  }

  v3 = sDelegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_309;
  v6[3] = &unk_278934050;
  v7 = v0;
  v4 = v0;
  [v3 updateApplicationsWithCompletion:v6 clean:0];
  v5 = dispatch_get_global_queue(21, 0);
  dispatch_group_notify(v4, v5, &__block_literal_global_312);
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_309(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished update of apps for priority migration", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_310()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [sPriorityBundleIds allObjects];
  v1 = logForCSLogCategoryDefault(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_DEFAULT, "Issuing reindex for priority migration for bundleIDs %@", buf, 0xCu);
  }

  v2 = +[SPCoreSpotlightIndexer sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316;
  v4[3] = &unk_278934050;
  v5 = v0;
  v3 = v0;
  [v2 _reindexAllItemsForBundleIDs:v3 reason:@"priority-index-turned-off" completionHandler:v4];
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished priority migration for bundleIDs %@", buf, 0xCu);
  }

  v4 = +[SPCoreSpotlightIndexer sharedInstance];
  v5 = [v4 priorityIndexPath];

  v7 = logForCSLogCategoryDefault(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Deleting old priority index for priority migration at %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v9 = [v8 removeItemAtPath:v5 error:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v12 = logForCSLogCategoryDefault(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316_cold_1();
    }
  }
}

- (BOOL)issuePriorityIndexFixup
{
  if (sPrivate & 1) != 0 || (sUpgradedForPriorityIndex)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    p_dataclass = &self->_dataclass;
    if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA1A0]]|| (v2 = [(NSString *)*p_dataclass isEqualToString:@"Priority"]))
    {
      v5 = [(SPConcreteCoreSpotlightIndexer *)self getIntegerPropertyForKey:@"kSPPriorityIndexVersion"];
      v6 = sUsePriorityIndex;
      if ((sUsePriorityIndex ^ (v5 > 5)))
      {
        v7 = logForCSLogCategoryDefault(v5);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
        if (v6)
        {
          if (v8)
          {
            [SPConcreteCoreSpotlightIndexer issuePriorityIndexFixup];
          }

          [(SPConcreteCoreSpotlightIndexer *)self issuePriorityIndexFixupOn];
        }

        else
        {
          if (v8)
          {
            [SPConcreteCoreSpotlightIndexer issuePriorityIndexFixup];
          }

          [(SPConcreteCoreSpotlightIndexer *)self issuePriorityIndexFixupOff];
        }

        LOBYTE(v2) = 1;
      }

      else
      {
        if (v5 < 6)
        {
          v9 = &unk_2846C95A8;
        }

        else
        {
          v9 = &unk_2846C9590;
        }

        [(SPConcreteCoreSpotlightIndexer *)self setProperty:v9 forKey:@"kSPPriorityIndexVersion" sync:1];
        LOBYTE(v2) = 0;
      }
    }
  }

  return v2;
}

- (void)issuePhotosReindexIfNeeded:(BOOL)needed group:(id)group
{
  neededCopy = needed;
  v24[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (_os_feature_enabled_impl())
  {
    if (([sDelegate privateIndex] & 1) == 0)
    {
      if ([(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA1A0]])
      {
        v7 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"PHOTOS_INDEX_VERSION_CHANGE"];
        integerValue = [v7 integerValue];

        if (integerValue < 1 || neededCopy)
        {
          v9 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2 jobOptions:4];
          v24[0] = @"com.apple.mobileslideshow";
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
          [v9 setBundleIDs:v10];

          dataclass = self->_dataclass;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&dataclass count:1];
          [v9 setProtectionClasses:v11];

          if (neededCopy)
          {
            [v9 setReason:@"Photos re-index forced"];
          }

          else
          {
            v12 = MEMORY[0x277CCACA8];
            v13 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"PHOTOS_INDEX_VERSION_CHANGE"];
            v14 = [v12 stringWithFormat:@"Photos index version changed: %@ -> %lu", v13, 1];
            [v9 setReason:v14];
          }

          v15 = [SPCoreSpotlightIndexerTask alloc];
          selfCopy = self;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
          v17 = [(SPCoreSpotlightIndexerTask *)v15 initWithIndexJob:v9 indexers:v16];

          bundleIDs = [v9 bundleIDs];
          [(SPCoreSpotlightIndexerTask *)v17 setBundleIDs:bundleIDs];

          WeakRetained = objc_loadWeakRetained(&self->_owner);
          -[SPCoreSpotlightIndexerTask setDataMigrationStage:](v17, "setDataMigrationStage:", [WeakRetained dataMigrationStage]);

          [(SPCoreSpotlightIndexerTask *)v17 setShouldResumeOnFailure:0];
          _sendPhotosReindexABCReport(@"Photos index version change");
          dispatch_group_enter(groupCopy);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __67__SPConcreteCoreSpotlightIndexer_issuePhotosReindexIfNeeded_group___block_invoke;
          v20[3] = &unk_2789342C0;
          v20[4] = self;
          v21 = groupCopy;
          [(SPConcreteCoreSpotlightIndexer *)self performIndexerTask:v17 completionHandler:v20];
        }
      }
    }
  }
}

void __67__SPConcreteCoreSpotlightIndexer_issuePhotosReindexIfNeeded_group___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProperty:&unk_2846C95C0 forKey:@"PHOTOS_INDEX_VERSION_CHANGE" sync:0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (BOOL)denyOperationOnAssertedIndex:(char *)index
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_index && !self->_hasAssertion)
  {
    return 0;
  }

  v5 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    dataclass = self->_dataclass;
    v8 = 136315394;
    indexCopy = index;
    v10 = 2112;
    v11 = dataclass;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Cannot %s on asserted index when device is locked. dataclass:%@", &v8, 0x16u);
  }

  return 1;
}

- (void)reindexAttributes:(id)attributes ofItemsMatchingQuery:(id)query indexAttrName:(id)name withVersion:(unint64_t)version perItemCompletionAttribute:(id)attribute force:(BOOL)force postFilter:(id)filter group:(id)self0 forceMerge:(BOOL)self1
{
  LOBYTE(v12) = merge;
  BYTE1(v11) = force;
  LOBYTE(v11) = 0;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:attributes ofItemsMatchingQuery:query indexAttrName:name withVersion:version perItemCompletionAttribute:attribute completionValue:1 alwaysReindexWithCompletionAttribute:v11 force:filter postFilter:group group:v12 forceMerge:?];
}

- (void)reindexAttributes:(id)attributes ofItemsMatchingQuery:(id)query indexAttrName:(id)name withVersion:(unint64_t)version perItemCompletionAttribute:(id)attribute completionValue:(BOOL)value alwaysReindexWithCompletionAttribute:(BOOL)completionAttribute force:(BOOL)self0 postFilter:(id)self1 group:(id)self2 forceMerge:(BOOL)self3
{
  valueCopy = value;
  v35[1] = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  v20 = attributeCopy;
  if (attributeCopy)
  {
    v35[0] = attributeCopy;
    v21 = MEMORY[0x277CBEA60];
    versionCopy = version;
    groupCopy = group;
    selfCopy = self;
    filterCopy = filter;
    nameCopy = name;
    groupCopy2 = query;
    filterCopy2 = attributes;
    attributesCopy2 = [v21 arrayWithObjects:v35 count:1];
    queryCopy2 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
    v34 = queryCopy2;
    nameCopy2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    LOBYTE(v31) = merge;
    LOWORD(v30) = __PAIR16__(force, completionAttribute);
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:filterCopy2 ofItemsMatchingQuery:groupCopy2 indexAttrName:nameCopy withVersion:versionCopy perItemCompletionAttributeArray:attributesCopy2 completionValueArray:nameCopy2 alwaysReindexWithCompletionAttribute:v30 force:filterCopy postFilter:groupCopy group:v31 forceMerge:?];
  }

  else
  {
    groupCopy2 = group;
    filterCopy2 = filter;
    nameCopy2 = name;
    queryCopy2 = query;
    attributesCopy2 = attributes;
    LOBYTE(v31) = merge;
    LOWORD(v30) = __PAIR16__(force, completionAttribute);
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:attributesCopy2 ofItemsMatchingQuery:queryCopy2 indexAttrName:nameCopy2 withVersion:version perItemCompletionAttributeArray:MEMORY[0x277CBEBF8] completionValueArray:MEMORY[0x277CBEBF8] alwaysReindexWithCompletionAttribute:v30 force:filterCopy2 postFilter:groupCopy2 group:v31 forceMerge:?];
  }
}

- (void)reindexAttributes:(id)attributes ofItemsMatchingQuery:(id)query indexAttrName:(id)name withVersion:(unint64_t)version perItemCompletionAttributeArray:(id)array completionValueArray:(id)valueArray alwaysReindexWithCompletionAttribute:(BOOL)attribute force:(BOOL)self0 postFilter:(id)self1 group:(id)self2 forceMerge:(BOOL)self3
{
  v60 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  queryCopy = query;
  nameCopy = name;
  arrayCopy = array;
  valueArrayCopy = valueArray;
  filterCopy = filter;
  groupCopy = group;
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (index)
  {
    if (self->_readOnly)
    {
      v24 = logForCSLogCategoryDefault(index);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [SPConcreteCoreSpotlightIndexer reindexAttributes:ofItemsMatchingQuery:indexAttrName:withVersion:perItemCompletionAttributeArray:completionValueArray:alwaysReindexWithCompletionAttribute:force:postFilter:group:forceMerge:];
      }

LABEL_19:

      goto LABEL_20;
    }

    v25 = index;
    if (![(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"reindexAttributes"])
    {
      v26 = [(SPConcreteCoreSpotlightIndexer *)self getIntegerPropertyForKey:nameCopy];
      v36 = v26;
      v27 = v26 < version || force;
      v24 = logForCSLogCategoryDefault(v26);
      v28 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v28)
        {
          dataclass = self->_dataclass;
          *buf = 138413314;
          *&buf[4] = nameCopy;
          *&buf[12] = 2112;
          *&buf[14] = dataclass;
          *&buf[22] = 2048;
          v55 = v36;
          v56 = 2048;
          versionCopy3 = version;
          v58 = 1024;
          forceCopy = force;
          _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "fixup name: %@ version check passed, data class: %@, current version: %ld, target version: %lu, force: %d", buf, 0x30u);
        }

        v53[0] = @"_kMDItemBundleID";
        v53[1] = @"_kMDItemExternalID";
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
        v31 = [v30 arrayByAddingObjectsFromArray:attributesCopy];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v55 = 0;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke;
        v41[3] = &unk_278934708;
        v41[4] = self;
        v48 = v25;
        v24 = v31;
        v42 = v24;
        v32 = nameCopy;
        v43 = v32;
        v47 = buf;
        attributeCopy = attribute;
        v44 = arrayCopy;
        v45 = valueArrayCopy;
        versionCopy2 = version;
        mergeCopy = merge;
        v33 = groupCopy;
        v46 = v33;
        v50 = v36;
        v37 = MEMORY[0x2383760E0](v41);
        v34 = @"com.apple.corespotlight.fixup";
        if (v32)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.corespotlight.fixup", v32];
        }

        if (v33)
        {
          dispatch_group_enter(v33);
        }

        [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v25 query:queryCopy fetchAttributes:v24 forBundleIds:0 maxCount:0 resultsHandler:v37 resultQueue:0 postFilter:filterCopy clientBundleID:v34];

        _Block_object_dispose(buf, 8);
      }

      else if (v28)
      {
        v35 = self->_dataclass;
        *buf = 138413314;
        *&buf[4] = nameCopy;
        *&buf[12] = 2112;
        *&buf[14] = v35;
        *&buf[22] = 2048;
        v55 = v36;
        v56 = 2048;
        versionCopy3 = version;
        v58 = 1024;
        forceCopy = 0;
        _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "fixup name: %@ version check failed, data class: %@, current version: %ld, target version: %lu, force: %d", buf, 0x30u);
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v83 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (a3 == 1)
  {
    v34 = [*(a1 + 32) index];
    v35 = *(a1 + 88);
    if (v34 == v35)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_351;
      v42[3] = &unk_2789346E0;
      v36 = *(a1 + 96);
      v42[4] = *(a1 + 32);
      v45 = v36;
      v37 = *(a1 + 48);
      v38 = *(a1 + 88);
      v43 = v37;
      v46 = v38;
      v41 = *(a1 + 72);
      v39 = v41.i64[0];
      v44 = v41;
      v48 = *(a1 + 113);
      v47 = *(a1 + 104);
      SIBackgroundOpBlock(v35, 0, v42);
    }
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 88))
  {
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__0;
    v73 = __Block_byref_object_dispose__0;
    v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__0;
    v67 = __Block_byref_object_dispose__0;
    v68 = 0;
    v10 = [*(a1 + 40) count];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_342;
    v54[3] = &unk_278934618;
    v58 = &v63;
    v59 = &v69;
    v11 = *(a1 + 48);
    v60 = *(a1 + 80);
    v61 = v10;
    v40 = *(a1 + 32);
    v12 = v40.i64[1];
    v62 = *(a1 + 112);
    v13 = *(a1 + 56);
    v14.i64[0] = v11;
    v14.i64[1] = v13;
    v15 = vzip2q_s64(v40, v14);
    v14.i64[1] = v40.i64[0];
    v56 = v15;
    v55 = v14;
    v57 = *(a1 + 64);
    [a6 enumerateQueryResults:v10 stringCache:0 usingBlock:v54];
    v16 = [v70[5] count];
    if (v16)
    {
      v17 = logForCSLogCategoryDefault(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 48);
        v19 = *(*(a1 + 32) + 192);
        v20 = v64[5];
        v21 = [v70[5] count];
        v22 = &stru_2846BD100;
        *buf = 138413058;
        if (v20)
        {
          v22 = v20;
        }

        v76 = v18;
        v77 = 2112;
        v78 = v19;
        v79 = 2112;
        v80 = v22;
        v81 = 1024;
        v82 = v21;
        _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "fixup name: %@,  data class: %@, bundle ID: %@, dictionaries count: %d", buf, 0x26u);
      }

      v24 = logForCSLogCategoryDefault(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v9 resultsQueue];
        *buf = 134217984;
        v76 = v25;
        _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_INFO, "Pause queue:%p", buf, 0xCu);
      }

      v26 = [v9 resultsQueue];
      [v26 pauseResults];

      v27 = v70[5];
      v28 = v64[5];
      v29 = *(a1 + 88);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_350;
      v49[3] = &unk_278934640;
      v30 = v9;
      v31 = *(a1 + 80);
      v50 = v30;
      v53 = v31;
      v32 = v27;
      v51 = v32;
      v33 = v28;
      v52 = v33;
      SIBackgroundOpBlock(v29, 0, v49);
    }

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v69, 8);
  }
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_342(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (![*(*(*(a1 + 72) + 8) + 40) isEqual:*a2] || objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "count") >= 0x201)
  {
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v4 = [*(*(*(a1 + 80) + 8) + 40) count];
      if (v4)
      {
        v5 = logForCSLogCategoryDefault(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v7 = *(*(a1 + 40) + 192);
          v8 = *(*(*(a1 + 72) + 8) + 40);
          v9 = [*(*(*(a1 + 80) + 8) + 40) count];
          *buf = 138413058;
          v46 = v6;
          v47 = 2112;
          v48 = v7;
          v49 = 2112;
          v50 = v8;
          v51 = 1024;
          v52 = v9;
          _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "fixup name: %@, data class: %@, bundle ID: %@, dictionaries count: %d", buf, 0x26u);
        }

        v10 = *(*(*(a1 + 80) + 8) + 40);
        v11 = *(*(*(a1 + 72) + 8) + 40);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_343;
        v41[3] = &unk_2789345F0;
        v12 = *(a1 + 88);
        v13 = *(a1 + 96);
        v43 = v11;
        v44 = v12;
        v42 = v10;
        v14 = v11;
        v15 = v10;
        SIBackgroundOpBlock(v13, 0, v41);
      }
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [*a2 mutableCopy];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = *(a1 + 104);
  if (v23 >= 3)
  {
    v24 = *MEMORY[0x277CBEEE8];
    for (i = 2; i < v23; ++i)
    {
      v26 = a2[i];
      if (v26)
      {
        v27 = v26 == v24;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = [*(a1 + 48) objectAtIndexedSubscript:i];
        [v22 setObject:v26 forKey:v28];

        v23 = *(a1 + 104);
      }
    }
  }

  if ([v22 count] && (v29 = a2[1]) != 0 || v22 && *(a1 + 112) == 1 && (v38 = *(a1 + 56)) != 0 && objc_msgSend(v38, "count") && (v39 = *(a1 + 64)) != 0 && (v40 = objc_msgSend(v39, "count"), v40 == objc_msgSend(*(a1 + 56), "count")) && (v29 = a2[1]) != 0)
  {
    v30 = [v29 mutableCopy];
    v31 = [*(a1 + 48) objectAtIndexedSubscript:1];
    [v22 setObject:v30 forKey:v31];

    v32 = *(a1 + 56);
    if (v32)
    {
      if (*(a1 + 64))
      {
        v33 = [v32 count];
        v34 = [*(a1 + 64) count];
        if (v33)
        {
          if (v33 == v34)
          {
            for (j = 0; j != v33; ++j)
            {
              v36 = [*(a1 + 64) objectAtIndex:j];
              v37 = [*(a1 + 56) objectAtIndex:j];
              [v22 setObject:v36 forKey:v37];
            }
          }
        }
      }
    }

    [*(*(*(a1 + 80) + 8) + 40) addObject:v22];
  }
}

uint64_t __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_343(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    *(*(*(result + 48) + 8) + 24) += [*(result + 32) count];

    return SISetCSAttributes();
  }

  return result;
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_350(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) resultsQueue];
  v6 = v5;
  if (a3)
  {
    v7 = logForCSLogCategoryDefault(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) resultsQueue];
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "Resume cancel queue:%p", &v10, 0xCu);
    }

    [v6 resumeResults];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) += [*(a1 + 40) count];
    v9 = v6;
    if (!SISetCSAttributes())
    {
      unpauseIfSystemInGoodStateCallback(v9);
    }
  }
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_351(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 || (v5 = *(a1 + 32), [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 64)], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "setProperty:forKey:sync:", v6, *(a1 + 40), 1), v6, !*(*(*(a1 + 56) + 8) + 24)))
  {
    v4 = *(a1 + 48);
    if (v4)
    {

      dispatch_group_leave(v4);
    }
  }

  else
  {
    v7 = *(a1 + 72);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_2;
    v13[3] = &unk_2789346B8;
    v8 = *(a1 + 48);
    v19 = *(a1 + 88);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v14 = v8;
    v15 = v9;
    v11 = v10;
    v12 = *(a1 + 80);
    v16 = v11;
    v17 = v12;
    v18 = *(a1 + 64);
    SISynchedOpWithBlock(v7, 2, v13);
  }
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_group_leave(v5);
  }

  if (!a3 && (!*(a1 + 32) || *(a1 + 72) == 1))
  {
    v6 = sIndexQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_3;
    v9[3] = &unk_278934690;
    v7 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v7;
    v11 = *(a1 + 56);
    v8 = _setup_block(v9, 0, 1598);
    dispatch_async(v6, v8);
  }
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4;
  v3[3] = &unk_278934668;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 mergeWithCompletionHandler:v3];
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryDefault(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4_cold_1();
    }

    v7 = logForCSLogCategoryDefault(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[6];
      v18 = 138413058;
      v19 = v8;
      v20 = 2048;
      v21 = v9;
      v22 = 2048;
      v23 = v10;
      v24 = 2112;
      v25 = v3;
      v11 = "Post fixup merged name: %@, current version: %ld, target version: %lu, error: %@";
      v12 = v7;
      v13 = 42;
LABEL_10:
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, v11, &v18, v13);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Post fixup merged finished", &v18, 2u);
    }

    v7 = logForCSLogCategoryDefault(v14);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[6];
      v18 = 138412802;
      v19 = v15;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      v11 = "Post fixup merged name: %@, current version: %ld, target version: %lu";
      v12 = v7;
      v13 = 32;
      goto LABEL_10;
    }
  }
}

- (void)updateEmailLocalParts:(BOOL)parts group:(id)group forceMerge:(BOOL)merge
{
  partsCopy = parts;
  v21 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277CC2788];
  v17 = *MEMORY[0x277CC2790];
  v6 = *MEMORY[0x277CC24C8];
  v7 = *MEMORY[0x277CC24D0];
  v8 = *MEMORY[0x277CC2FA8];
  v9 = *MEMORY[0x277CC2FB0];
  v10 = *MEMORY[0x277CC23D0];
  v11 = *MEMORY[0x277CC23D8];
  v12 = *MEMORY[0x277CC2BB0];
  v13 = *MEMORY[0x277CC2BB8];
  groupCopy = group;
  v22 = [v21 stringWithFormat:@"(%@ = *  && %@ != *", v5, v17, v6, v7, v8, v9, v10, v11, v12, v13];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = @w || %@ = @w ||%@ = @w ||%@ = @w ||%@ = @w"], v5, v6, v8, v10, v12);
  LOBYTE(v16) = merge;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:&unk_2846C9158 ofItemsMatchingQuery:v22 indexAttrName:@"kSPEmailLocalParts" withVersion:7 perItemCompletionAttribute:0 force:partsCopy postFilter:v15 group:groupCopy forceMerge:v16];
}

- (void)updateEmailContentURLAttr:(BOOL)attr group:(id)group forceMerge:(BOOL)merge
{
  attrCopy = attr;
  v8 = MEMORY[0x277CCACA8];
  v9 = *MEMORY[0x277CC2688];
  v10 = *MEMORY[0x277CC2B90];
  v11 = *MEMORY[0x277CC2500];
  groupCopy = group;
  v14 = [v8 stringWithFormat:@"(%@ = *  && %@!=*, v9, v10, v11, @"com.apple.mobilemail""];
  LOBYTE(v13) = merge;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:&unk_2846C9170 ofItemsMatchingQuery:v14 indexAttrName:@"kSPEmailContentURLAttr" withVersion:2 perItemCompletionAttribute:0 force:attrCopy postFilter:0 group:groupCopy forceMerge:v13];
}

- (void)updateContainersAndScores:(BOOL)scores group:(id)group forceMerge:(BOOL)merge
{
  scoresCopy = scores;
  v13[5] = *MEMORY[0x277D85DE8];
  v13[0] = @"_kMDItemBundleID";
  v13[1] = @"_kMDItemExternalID";
  v8 = *MEMORY[0x277CC2770];
  v13[2] = *MEMORY[0x277CC2638];
  v13[3] = v8;
  v13[4] = @"kMDItemEmailConversationID";
  v9 = MEMORY[0x277CBEA60];
  groupCopy = group;
  v11 = [v9 arrayWithObjects:v13 count:5];
  LOBYTE(v12) = merge;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v11 ofItemsMatchingQuery:@"(kMDItemContainerIdentifier=* || kMDItemEmailConversationID=* || (_kMDItemDomainIdentifier = * && _kMDItemBundleID = com.apple.MobileSMS)) && _kMDItemContainerIdFixed!=1" indexAttrName:@"kSPHashedContainers" withVersion:3 perItemCompletionAttribute:@"_kMDItemContainerIdFixed" force:scoresCopy postFilter:0 group:groupCopy forceMerge:v12];
}

- (void)updateNotes:(BOOL)notes group:(id)group forceMerge:(BOOL)merge
{
  notesCopy = notes;
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CC2B70];
  v8 = MEMORY[0x277CBEA60];
  groupCopy = group;
  v10 = [v8 arrayWithObjects:v13 count:1];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID=%@", @"com.apple.mobilenotes"];
  LOBYTE(v12) = merge;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v10 ofItemsMatchingQuery:v11 indexAttrName:@"kSPNotes" withVersion:1 perItemCompletionAttribute:0 force:notesCopy postFilter:0 group:groupCopy forceMerge:v12];
}

- (void)updateIndexRankingDates:(BOOL)dates group:(id)group forceMerge:(BOOL)merge
{
  datesCopy = dates;
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277CC2C58];
  v8 = MEMORY[0x277CBEA60];
  groupCopy = group;
  v10 = [v8 arrayWithObjects:v12 count:1];
  LOBYTE(v11) = merge;
  [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v10 ofItemsMatchingQuery:@"kMDItemInterestingDate_Ranking=*" indexAttrName:@"kSPIndexRankingDate" withVersion:1 perItemCompletionAttribute:0 force:datesCopy postFilter:@"_kMDItemIndexRankingDateSeconds=0" group:groupCopy forceMerge:v11];
}

- (void)updateDerivedIsMe:(BOOL)me runOtherFixups:(BOOL)fixups force:(BOOL)force group:(id)group state:(int64_t)state
{
  forceCopy = force;
  fixupsCopy = fixups;
  meCopy = me;
  v44 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (meCopy)
  {
    v32 = meCopy;
    v34 = fixupsCopy;
    v13 = _SICopyMeAliasName();
    v35 = _SICopyMeNameTokens();
    v14 = _SICopyMeFullName();
    v15 = _SICopyMeGivenNameTokens();
    v16 = _SICopyMeNonGivenNameTokens();
    v33 = _SICopyMeEmailAddresses();
    allObjects = [v33 allObjects];
    v18 = allObjects;
    if (!v14)
    {
      v19 = v13;
      v20 = logForCSLogCategoryIndex(allObjects);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "*warn* Full Name String is nil", buf, 2u);
      }

      v13 = v19;
    }

    v21 = v13;
    if (!v13)
    {
      v22 = logForCSLogCategoryIndex(allObjects);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "*warn* Alias Name String is nil", buf, 2u);
      }
    }

    if (v35)
    {
      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v23 = logForCSLogCategoryIndex(allObjects);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEFAULT, "*warn* Name Tokens Array is nil", buf, 2u);
      }

      if (v15)
      {
LABEL_12:
        if (v16)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    v24 = logForCSLogCategoryIndex(allObjects);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "*warn* Given Name Tokens Array is nil", buf, 2u);
    }

    if (v16)
    {
LABEL_13:
      if (v18)
      {
LABEL_29:
        label = dispatch_queue_get_label(0);
        NSLog(&cfstr_RunningQueueS.isa, label);
        v29 = logForCSLogCategoryIndex(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          stateCopy = state;
          _os_log_impl(&dword_231A35000, v29, OS_LOG_TYPE_DEFAULT, "fixup updateDerivedIsMe state: %ld", buf, 0xCu);
        }

        v30 = [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMe:forceCopy group:groupCopy order:state aliasName:v21 fullName:v14 nameTokens:v35 givenNameTokens:v15 nonGivenNameTokens:v16 emails:v18];
        indexQueue = self->_indexQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __85__SPConcreteCoreSpotlightIndexer_updateDerivedIsMe_runOtherFixups_force_group_state___block_invoke;
        block[3] = &unk_278934730;
        v38 = v30;
        block[4] = self;
        v39 = v32;
        v40 = v34;
        v41 = forceCopy;
        v37 = groupCopy;
        dispatch_group_notify(v37, indexQueue, block);

        goto LABEL_32;
      }

LABEL_26:
      v26 = logForCSLogCategoryIndex(allObjects);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_DEFAULT, "*warn* Email Array is nil", buf, 2u);
      }

      goto LABEL_29;
    }

LABEL_23:
    v25 = logForCSLogCategoryIndex(allObjects);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEFAULT, "*warn* Non Given Name Tokens Array is nil", buf, 2u);
    }

    if (v18)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (fixupsCopy)
  {
    [(SPConcreteCoreSpotlightIndexer *)self runOtherFixups:groupCopy state:0];
  }

LABEL_32:
}

void __85__SPConcreteCoreSpotlightIndexer_updateDerivedIsMe_runOtherFixups_force_group_state___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v7 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 58);
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "fixup updateDerivedIsMe force %d finished running", v9, 8u);
    }

    if (*(a1 + 57) == 1)
    {
      [*(a1 + 32) runOtherFixups:*(a1 + 40) state:0];
    }
  }

  else
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 57);
    v4 = *(a1 + 58);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 updateDerivedIsMe:v2 runOtherFixups:v3 force:v4 group:v6 state:?];
  }
}

- (int64_t)updateDerivedIsMe:(BOOL)me group:(id)group order:(int64_t)order aliasName:(id)name fullName:(id)fullName nameTokens:(id)tokens givenNameTokens:(id)nameTokens nonGivenNameTokens:(id)self0 emails:(id)self1
{
  meCopy = me;
  groupCopy = group;
  nameCopy = name;
  fullNameCopy = fullName;
  tokensCopy = tokens;
  nameTokensCopy = nameTokens;
  givenNameTokensCopy = givenNameTokens;
  emailsCopy = emails;
  switch(order)
  {
    case 0:
      v24 = 1;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeTextContentMatch:meCopy nameTokens:tokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      break;
    case 1:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeTextContentMatchNot:meCopy nameTokens:tokensCopy alias:nameCopy group:groupCopy forceMerge:0];
      v24 = 2;
      break;
    case 2:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMe:meCopy nameTokens:tokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 3;
      break;
    case 3:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeNot:meCopy nameTokens:tokensCopy alias:nameCopy group:groupCopy forceMerge:0];
      v24 = 4;
      break;
    case 4:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingToken:meCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 5;
      break;
    case 5:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingTokenNot:meCopy nameTokens:tokensCopy group:groupCopy forceMerge:0];
      v24 = 6;
      break;
    case 6:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingTextContentMatch:meCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 7;
      break;
    case 7:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingTextContentMatchNot:meCopy nameTokens:tokensCopy group:groupCopy forceMerge:0];
      v24 = 8;
      break;
    case 8:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingTextContentMatchNot2:meCopy nameTokens:tokensCopy group:groupCopy forceMerge:0];
      v24 = 9;
      break;
    case 9:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRanking:meCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 10;
      break;
    case 10:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingNot:meCopy nameTokens:tokensCopy group:groupCopy forceMerge:0];
      v24 = 11;
      break;
    case 11:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingSpan:meCopy fullName:fullNameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 12;
      break;
    case 12:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingSpanNot:meCopy fullName:fullNameCopy group:groupCopy forceMerge:0];
      v24 = 13;
      break;
    case 13:
      LOBYTE(v26) = 0;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingOCRTextContentMatch:meCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:v26];
      v24 = 14;
      break;
    case 14:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingOCRTextContentMatchNot:meCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy group:groupCopy forceMerge:0];
      v24 = 15;
      break;
    case 15:
      LOBYTE(v26) = 0;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingOCR:meCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:v26];
      v24 = 16;
      break;
    case 16:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingOCRNot:meCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy group:groupCopy forceMerge:0];
      v24 = 17;
      break;
    case 17:
      LOBYTE(v26) = 0;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingPreExtraction:meCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:v26];
      v24 = 18;
      break;
    case 18:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingPreExtractionNot:meCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy group:groupCopy forceMerge:0];
      v24 = 19;
      break;
    case 19:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsFromMeNot:meCopy fullName:fullNameCopy emails:emailsCopy group:groupCopy forceMerge:0];
      v24 = 20;
      break;
    case 20:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsFromMe:meCopy fullName:fullNameCopy emails:emailsCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 21;
      break;
    case 21:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsFromMeRankingNot:meCopy nameTokens:tokensCopy group:groupCopy forceMerge:0];
      v24 = 22;
      break;
    case 22:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsFromMeRanking:meCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 23;
      break;
    case 23:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsToMeNot:meCopy fullName:fullNameCopy emails:emailsCopy group:groupCopy forceMerge:0];
      v24 = 24;
      break;
    case 24:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsToMe:meCopy fullName:fullNameCopy emails:emailsCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 25;
      break;
    case 25:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsToMeRankingNot:meCopy nameTokens:tokensCopy group:groupCopy forceMerge:1];
      v24 = 26;
      break;
    case 26:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsToMeRanking:meCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      goto LABEL_29;
    default:
LABEL_29:
      v24 = -1;
      break;
  }

  return v24;
}

- (void)updateDerivedIsMeIfNotAlready:(BOOL)already group:(id)group state:(int64_t)state
{
  alreadyCopy = already;
  v35 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v8 = _SICopyMeAliasName();
  v9 = _SICopyMeNameTokens();
  v10 = _SICopyMeFullName();
  v11 = _SICopyMeGivenNameTokens();
  v12 = _SICopyMeNonGivenNameTokens();
  v25 = _SICopyMeEmailAddresses();
  allObjects = [v25 allObjects];
  v14 = allObjects;
  if (v10)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = logForCSLogCategoryIndex(allObjects);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEFAULT, "*warn* Full Name String is nil", buf, 2u);
    }

    if (v8)
    {
LABEL_3:
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v16 = logForCSLogCategoryIndex(allObjects);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "*warn* Alias Name String is nil", buf, 2u);
  }

  if (v9)
  {
LABEL_4:
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v17 = logForCSLogCategoryIndex(allObjects);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "*warn* Name Tokens Array is nil", buf, 2u);
  }

  if (v11)
  {
LABEL_5:
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v18 = logForCSLogCategoryIndex(allObjects);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEFAULT, "*warn* Given Name Tokens Array is nil", buf, 2u);
  }

  if (v12)
  {
LABEL_6:
    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v19 = logForCSLogCategoryIndex(allObjects);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "*warn* Non Given Name Tokens Array is nil", buf, 2u);
  }

  if (!v14)
  {
LABEL_23:
    v20 = logForCSLogCategoryIndex(allObjects);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "*warn* Email Array is nil", buf, 2u);
    }
  }

LABEL_26:
  v21 = logForCSLogCategoryIndex(allObjects);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v32 = alreadyCopy;
    v33 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "fixup updateDerivedIsMeIfNotAlready running force %d state %ld ", buf, 0x12u);
  }

  v22 = [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeIfNotAlready:alreadyCopy group:groupCopy order:state aliasName:v8 fullName:v10 nameTokens:v9 givenNameTokens:v11 nonGivenNameTokens:v12 emails:v14];
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SPConcreteCoreSpotlightIndexer_updateDerivedIsMeIfNotAlready_group_state___block_invoke;
  block[3] = &unk_278934758;
  v28 = groupCopy;
  v29 = v22;
  v30 = alreadyCopy;
  block[4] = self;
  v24 = groupCopy;
  dispatch_group_notify(v24, indexQueue, block);
}

void __76__SPConcreteCoreSpotlightIndexer_updateDerivedIsMeIfNotAlready_group_state___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v5 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "fixup updateDerivedIsMeIfNotAlready force %d finished running", v7, 8u);
    }
  }

  else
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 updateDerivedIsMeIfNotAlready:v2 group:v4 state:?];
  }
}

- (int64_t)updateDerivedIsMeIfNotAlready:(BOOL)already group:(id)group order:(int64_t)order aliasName:(id)name fullName:(id)fullName nameTokens:(id)tokens givenNameTokens:(id)nameTokens nonGivenNameTokens:(id)self0 emails:(id)self1
{
  alreadyCopy = already;
  groupCopy = group;
  nameCopy = name;
  fullNameCopy = fullName;
  tokensCopy = tokens;
  nameTokensCopy = nameTokens;
  givenNameTokensCopy = givenNameTokens;
  emailsCopy = emails;
  switch(order)
  {
    case 0:
      v24 = 1;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeTextContentMatch:alreadyCopy nameTokens:tokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      break;
    case 1:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMe:alreadyCopy nameTokens:tokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 2;
      break;
    case 2:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingToken:alreadyCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 3;
      break;
    case 3:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingTextContentMatch:alreadyCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 4;
      break;
    case 4:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRanking:alreadyCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 5;
      break;
    case 5:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingSpan:alreadyCopy fullName:fullNameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 6;
      break;
    case 6:
      LOBYTE(v26) = 0;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingOCRTextContentMatch:alreadyCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:v26];
      v24 = 7;
      break;
    case 7:
      LOBYTE(v26) = 0;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingOCR:alreadyCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:v26];
      v24 = 8;
      break;
    case 8:
      LOBYTE(v26) = 0;
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMeRankingPreExtraction:alreadyCopy givenNameTokens:nameTokensCopy nonGivenNameTokens:givenNameTokensCopy alias:nameCopy onlyIfNotAlready:1 group:groupCopy forceMerge:v26];
      v24 = 9;
      break;
    case 9:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsFromMe:alreadyCopy fullName:fullNameCopy emails:emailsCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 10;
      break;
    case 10:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsFromMeRanking:alreadyCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 11;
      break;
    case 11:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsToMe:alreadyCopy fullName:fullNameCopy emails:emailsCopy onlyIfNotAlready:1 group:groupCopy forceMerge:0];
      v24 = 12;
      break;
    case 12:
      [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsToMeRanking:alreadyCopy nameTokens:tokensCopy onlyIfNotAlready:1 group:groupCopy forceMerge:1];
      goto LABEL_6;
    default:
LABEL_6:
      v24 = -1;
      break;
  }

  return v24;
}

- (void)updateDerivedIsMe:(BOOL)me nameTokens:(id)tokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  alreadyCopy = already;
  v40[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  groupCopy = group;
  if (tokensCopy)
  {
    meCopy = me;
    selfCopy = self;
    v16 = *MEMORY[0x277CC26F8];
    v40[0] = *MEMORY[0x277CC26F8];
    v17 = MEMORY[0x277CBEA60];
    aliasCopy = alias;
    v35 = [v17 arrayWithObjects:v40 count:1];
    v19 = *MEMORY[0x277CC2F30];
    v39[0] = *MEMORY[0x277CC2F28];
    v39[1] = v19;
    v20 = *MEMORY[0x277CC31A0];
    v39[2] = *MEMORY[0x277CC25B8];
    v39[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    v22 = *MEMORY[0x277CC2500];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v16, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v32];
    }
    v23 = ;
    v24 = createEqualORQueryPrefix(tokensCopy, aliasCopy, v21, v23, 0);

    v25 = *MEMORY[0x277CC2408];
    v38[0] = *MEMORY[0x277CC2760];
    v38[1] = v25;
    v38[2] = *MEMORY[0x277CC2428];
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v16, v22, @"com.apple.MobileAddressBook"", *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=%@, v22, @"com.apple.MobileAddressBook"", *MEMORY[0x277CC2F18], v33];
    }
    v27 = ;

    v28 = createEqualORQueryPrefix(tokensCopy, 0, v26, v27, 0);
    if (v28)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v24, v28];
    }

    else
    {
      v29 = v24;
    }

    v30 = v29;
    LOBYTE(v34) = merge;
    BYTE1(v31) = meCopy;
    LOBYTE(v31) = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v35 ofItemsMatchingQuery:v29 indexAttrName:@"kSPDerivedIsMe" withVersion:2 perItemCompletionAttribute:v16 completionValue:1 alwaysReindexWithCompletionAttribute:v31 force:0 postFilter:groupCopy group:v34 forceMerge:?];
  }
}

- (void)updateDerivedIsMeNot:(BOOL)not nameTokens:(id)tokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (tokens)
  {
    v36[0] = *MEMORY[0x277CC26F8];
    v9 = v36[0];
    v10 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    tokensCopy = tokens;
    v33 = [v10 arrayWithObjects:v36 count:1];
    v13 = *MEMORY[0x277CC2F30];
    v35[0] = *MEMORY[0x277CC2F28];
    v35[1] = v13;
    v14 = *MEMORY[0x277CC31A0];
    v35[2] = *MEMORY[0x277CC25B8];
    v35[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    v16 = *MEMORY[0x277CC2500];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v9, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v18 = createNotEqualANDQueryPrefix(tokensCopy, aliasCopy, v15, v17, 0);

    v19 = *MEMORY[0x277CC2408];
    v34[0] = *MEMORY[0x277CC2760];
    v34[1] = v19;
    v34[2] = *MEMORY[0x277CC2428];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v9, v16, @"com.apple.MobileAddressBook"", *MEMORY[0x277CC2F18]];

    v22 = createNotEqualANDQueryPrefix(tokensCopy, 0, v20, v21, 0);

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && ((%@!=%@, v9, v16, @"com.apple.mobileslideshow", v16, @"com.apple.MobileAddressBook""];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ || %@", v18, v23];
    if (v22)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v24, v22];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v24, v27];
    }
    v25 = ;
    LOBYTE(v28) = merge;
    BYTE1(v26) = not;
    LOBYTE(v26) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v33 ofItemsMatchingQuery:v25 indexAttrName:@"kSPDerivedIsMeNot" withVersion:2 perItemCompletionAttribute:v9 completionValue:0 alwaysReindexWithCompletionAttribute:v26 force:0 postFilter:groupCopy group:v28 forceMerge:?];
  }
}

- (void)updateDerivedIsMeTextContentMatch:(BOOL)match nameTokens:(id)tokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (tokens)
  {
    alreadyCopy = already;
    HIDWORD(v23) = merge;
    v12 = *MEMORY[0x277CC2738];
    v26[0] = *MEMORY[0x277CC2738];
    v13 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    tokensCopy = tokens;
    v17 = [v13 arrayWithObjects:v26 count:1];
    v25 = *MEMORY[0x277CC31A0];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v22];
    }
    v19 = ;
    v20 = createEqualORQueryPrefix(tokensCopy, aliasCopy, v18, v19, 0);

    LOBYTE(v23) = BYTE4(v23);
    BYTE1(v21) = match;
    LOBYTE(v21) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v17 ofItemsMatchingQuery:v20 indexAttrName:@"kSPDerivedIsMeTextContentMatch" withVersion:2 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v21 force:0 postFilter:groupCopy group:v23 forceMerge:?];
  }
}

- (void)updateDerivedIsMeTextContentMatchNot:(BOOL)not nameTokens:(id)tokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (tokens)
  {
    v27[0] = *MEMORY[0x277CC2738];
    v9 = v27[0];
    v10 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    tokensCopy = tokens;
    v22 = [v10 arrayWithObjects:v27 count:1];
    v26 = *MEMORY[0x277CC31A0];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v15 = *MEMORY[0x277CC2500];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v9, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v17 = createNotEqualANDQueryPrefix(tokensCopy, aliasCopy, v14, v16, 0);

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=%@, v9, v15, @"com.apple.mobileslideshow""];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v17, v18];
    LOBYTE(v21) = merge;
    BYTE1(v20) = not;
    LOBYTE(v20) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v22 ofItemsMatchingQuery:v19 indexAttrName:@"kSPDerivedIsMeTextContentMatchNot" withVersion:2 perItemCompletionAttribute:v9 completionValue:0 alwaysReindexWithCompletionAttribute:v20 force:0 postFilter:groupCopy group:v21 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingSpan:(BOOL)span fullName:(id)name onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (name)
  {
    alreadyCopy = already;
    v12 = *MEMORY[0x277CC2720];
    v25[0] = *MEMORY[0x277CC2720];
    v13 = MEMORY[0x277CBEA60];
    groupCopy = group;
    nameCopy = name;
    v16 = [v13 arrayWithObjects:v25 count:1];
    v17 = *MEMORY[0x277CC2F30];
    v24[0] = *MEMORY[0x277CC2F28];
    v24[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v22];
    }
    v19 = ;
    v20 = createEqualORQueryForFullNamePrefix(nameCopy, v18, v19, 0);

    LOBYTE(v23) = merge;
    BYTE1(v21) = span;
    LOBYTE(v21) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v20 indexAttrName:@"kSPDerivedIsMeRankingSpan" withVersion:1 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v21 force:0 postFilter:groupCopy group:v23 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingSpanNot:(BOOL)not fullName:(id)name group:(id)group forceMerge:(BOOL)merge
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (name)
  {
    v22[0] = *MEMORY[0x277CC2720];
    v10 = v22[0];
    v11 = MEMORY[0x277CBEA60];
    groupCopy = group;
    nameCopy = name;
    v14 = [v11 arrayWithObjects:v22 count:1];
    v15 = *MEMORY[0x277CC2F30];
    v21[0] = *MEMORY[0x277CC2F28];
    v21[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v10, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v18 = createNotEqualANDQueryForFullNamePrefix(nameCopy, v16, v17, 0);

    LOBYTE(v20) = merge;
    BYTE1(v19) = not;
    LOBYTE(v19) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v14 ofItemsMatchingQuery:v18 indexAttrName:@"kSPDerivedIsMeRankingSpanNot" withVersion:1 perItemCompletionAttribute:v10 completionValue:0 alwaysReindexWithCompletionAttribute:v19 force:0 postFilter:groupCopy group:v20 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingToken:(BOOL)token nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (tokens)
  {
    alreadyCopy = already;
    v12 = *MEMORY[0x277CC2730];
    v25[0] = *MEMORY[0x277CC2730];
    v13 = MEMORY[0x277CBEA60];
    groupCopy = group;
    tokensCopy = tokens;
    v16 = [v13 arrayWithObjects:v25 count:1];
    v17 = *MEMORY[0x277CC2F30];
    v24[0] = *MEMORY[0x277CC2F28];
    v24[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v22];
    }
    v19 = ;
    v20 = createEqualANDQueryForGivenNameTokens(0, tokensCopy, 0, v18, v19);

    LOBYTE(v23) = merge;
    BYTE1(v21) = token;
    LOBYTE(v21) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v20 indexAttrName:@"kSPDerivedIsMeRankingToken" withVersion:1 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v21 force:0 postFilter:groupCopy group:v23 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingTokenNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (tokens)
  {
    v22[0] = *MEMORY[0x277CC2730];
    v10 = v22[0];
    v11 = MEMORY[0x277CBEA60];
    groupCopy = group;
    tokensCopy = tokens;
    v14 = [v11 arrayWithObjects:v22 count:1];
    v15 = *MEMORY[0x277CC2F30];
    v21[0] = *MEMORY[0x277CC2F28];
    v21[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v10, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v18 = createNotEqualORQueryForGivenNameTokens(0, tokensCopy, 0, v16, v17);

    LOBYTE(v20) = merge;
    BYTE1(v19) = not;
    LOBYTE(v19) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v14 ofItemsMatchingQuery:v18 indexAttrName:@"kSPDerivedIsMeRankingTokenNot" withVersion:1 perItemCompletionAttribute:v10 completionValue:0 alwaysReindexWithCompletionAttribute:v19 force:0 postFilter:groupCopy group:v20 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingOCR:(BOOL)r givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (tokens | nameTokens)
  {
    alreadyCopy = already;
    v13 = *MEMORY[0x277CC2708];
    v29[0] = *MEMORY[0x277CC2708];
    v14 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    nameTokensCopy = nameTokens;
    tokensCopy = tokens;
    v19 = [v14 arrayWithObjects:v29 count:1];
    v28 = *MEMORY[0x277CC31A0];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v13, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v24];
    }
    v21 = ;
    v22 = createEqualANDQueryForGivenNameTokens(tokensCopy, nameTokensCopy, aliasCopy, v20, v21);

    LOBYTE(v25) = merge;
    BYTE1(v23) = r;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v19 ofItemsMatchingQuery:v22 indexAttrName:@"kSPDerivedIsMeRankingOCR" withVersion:2 perItemCompletionAttribute:v13 completionValue:1 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:groupCopy group:v25 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingOCRNot:(BOOL)not givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (tokens | nameTokens)
  {
    v27[0] = *MEMORY[0x277CC2708];
    v11 = v27[0];
    v12 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    nameTokensCopy = nameTokens;
    tokensCopy = tokens;
    v17 = [v12 arrayWithObjects:v27 count:1];
    v26 = *MEMORY[0x277CC31A0];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v11, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v20 = createNotEqualORQueryForGivenNameTokens(tokensCopy, nameTokensCopy, aliasCopy, v18, v19);

    LOBYTE(v22) = merge;
    BYTE1(v21) = not;
    LOBYTE(v21) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v17 ofItemsMatchingQuery:v20 indexAttrName:@"kSPDerivedIsMeRankingOCRNot" withVersion:2 perItemCompletionAttribute:v11 completionValue:0 alwaysReindexWithCompletionAttribute:v21 force:0 postFilter:groupCopy group:v22 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingOCRTextContentMatch:(BOOL)match givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (tokens | nameTokens)
  {
    alreadyCopy = already;
    v13 = *MEMORY[0x277CC2710];
    v29[0] = *MEMORY[0x277CC2710];
    v14 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    nameTokensCopy = nameTokens;
    tokensCopy = tokens;
    v19 = [v14 arrayWithObjects:v29 count:1];
    v28 = *MEMORY[0x277CC31A0];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v13, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v24];
    }
    v21 = ;
    v22 = createEqualANDQueryForGivenNameTokens(tokensCopy, nameTokensCopy, aliasCopy, v20, v21);

    LOBYTE(v25) = merge;
    BYTE1(v23) = match;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v19 ofItemsMatchingQuery:v22 indexAttrName:@"kSPDerivedIsMeRankingOCRTextContentMatch" withVersion:2 perItemCompletionAttribute:v13 completionValue:1 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:groupCopy group:v25 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingOCRTextContentMatchNot:(BOOL)not givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (tokens | nameTokens)
  {
    v30[0] = *MEMORY[0x277CC2710];
    v11 = v30[0];
    v12 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    nameTokensCopy = nameTokens;
    tokensCopy = tokens;
    v24 = [v12 arrayWithObjects:v30 count:1];
    v29 = *MEMORY[0x277CC31A0];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v17 = *MEMORY[0x277CC2500];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v11, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v19 = createNotEqualORQueryForGivenNameTokens(tokensCopy, nameTokensCopy, aliasCopy, v16, v18);

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=%@, v11, v17, @"com.apple.mobileslideshow""];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v19, v20];
    LOBYTE(v23) = merge;
    BYTE1(v22) = not;
    LOBYTE(v22) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v24 ofItemsMatchingQuery:v21 indexAttrName:@"kSPDerivedIsMeRankingOCRTextContentMatchNot" withVersion:2 perItemCompletionAttribute:v11 completionValue:0 alwaysReindexWithCompletionAttribute:v22 force:0 postFilter:groupCopy group:v23 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingPreExtraction:(BOOL)extraction givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (tokens | nameTokens)
  {
    alreadyCopy = already;
    v13 = *MEMORY[0x277CC2718];
    v29[0] = *MEMORY[0x277CC2718];
    v14 = MEMORY[0x277CBEA60];
    groupCopy = group;
    aliasCopy = alias;
    nameTokensCopy = nameTokens;
    tokensCopy = tokens;
    v19 = [v14 arrayWithObjects:v29 count:1];
    v28 = *MEMORY[0x277CC25B8];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@=%@, v13, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow"", v24];
    }
    v21 = ;
    v22 = createEqualANDQueryForGivenNameTokens(tokensCopy, nameTokensCopy, aliasCopy, v20, v21);

    LOBYTE(v25) = merge;
    BYTE1(v23) = extraction;
    LOBYTE(v23) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v19 ofItemsMatchingQuery:v22 indexAttrName:@"kSPDerivedIsMeRankingPreExtraction" withVersion:1 perItemCompletionAttribute:v13 completionValue:1 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:groupCopy group:v25 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRankingPreExtractionNot:(BOOL)not givenNameTokens:(id)tokens nonGivenNameTokens:(id)nameTokens alias:(id)alias group:(id)group forceMerge:(BOOL)merge
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (tokens | nameTokens)
  {
    v26[0] = *MEMORY[0x277CC2718];
    v12 = v26[0];
    v13 = MEMORY[0x277CBEA60];
    HIDWORD(v23) = merge;
    groupCopy = group;
    aliasCopy = alias;
    nameTokensCopy = nameTokens;
    tokensCopy = tokens;
    v18 = [v13 arrayWithObjects:v26 count:1];
    v25 = *MEMORY[0x277CC25B8];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=%@, v12, *MEMORY[0x277CC2500], @"com.apple.mobileslideshow""];
    v21 = createNotEqualORQueryForGivenNameTokens(tokensCopy, nameTokensCopy, aliasCopy, v19, v20);

    LOBYTE(v23) = BYTE4(v23);
    BYTE1(v22) = not;
    LOBYTE(v22) = 1;
    [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v18 ofItemsMatchingQuery:v21 indexAttrName:@"kSPDerivedIsMeRankingPreExtractionNot" withVersion:1 perItemCompletionAttribute:v12 completionValue:0 alwaysReindexWithCompletionAttribute:v22 force:0 postFilter:groupCopy group:v23 forceMerge:?];
  }
}

- (void)updateDerivedIsMeRanking:(BOOL)ranking nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  alreadyCopy = already;
  v34[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (tokens)
  {
    v13 = *MEMORY[0x277CC2700];
    v34[0] = *MEMORY[0x277CC2700];
    v14 = MEMORY[0x277CBEA60];
    tokensCopy = tokens;
    v16 = [v14 arrayWithObjects:v34 count:1];
    v17 = *MEMORY[0x277CC3140];
    v33[0] = *MEMORY[0x277CC2980];
    v33[1] = v17;
    v18 = *MEMORY[0x277CC31A0];
    v33[2] = *MEMORY[0x277CC31F0];
    v33[3] = v18;
    v19 = *MEMORY[0x277CC2760];
    v33[4] = *MEMORY[0x277CC27D8];
    v33[5] = v19;
    v20 = *MEMORY[0x277CC2E50];
    v33[6] = *MEMORY[0x277CC2408];
    v33[7] = v20;
    v21 = *MEMORY[0x277CC2B58];
    v33[8] = *MEMORY[0x277CC2D00];
    v33[9] = v21;
    v22 = *MEMORY[0x277CC2750];
    v33[10] = *MEMORY[0x277CC2B30];
    v33[11] = v22;
    v23 = *MEMORY[0x277CC25D8];
    v33[12] = @"_ICItemDisplayName";
    v33[13] = v23;
    v24 = *MEMORY[0x277CC2428];
    v33[14] = *MEMORY[0x277CC26C0];
    v33[15] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:16];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v13, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v30];
    }
    v26 = ;
    v27 = createEqualORQueryPrefix(tokensCopy, 0, v25, v26, 0);

    if (v27)
    {
      v32 = v13;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      LOBYTE(v31) = merge;
      BYTE1(v29) = ranking;
      LOBYTE(v29) = 1;
      [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v27 indexAttrName:@"kSPDerivedIsMeRanking" withVersion:0 perItemCompletionAttributeArray:v28 completionValueArray:&unk_2846C91A0 alwaysReindexWithCompletionAttribute:v29 force:0 postFilter:groupCopy group:v31 forceMerge:?];
    }
  }
}

- (void)updateDerivedIsMeRankingNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge
{
  v37[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (tokens)
  {
    mergeCopy = merge;
    selfCopy = self;
    v37[0] = *MEMORY[0x277CC2700];
    v11 = v37[0];
    v12 = MEMORY[0x277CBEA60];
    tokensCopy = tokens;
    v14 = [v12 arrayWithObjects:v37 count:1];
    v15 = *MEMORY[0x277CC3140];
    v36[0] = *MEMORY[0x277CC2980];
    v36[1] = v15;
    v16 = *MEMORY[0x277CC31A0];
    v36[2] = *MEMORY[0x277CC31F0];
    v36[3] = v16;
    v17 = *MEMORY[0x277CC2760];
    v36[4] = *MEMORY[0x277CC27D8];
    v36[5] = v17;
    v18 = *MEMORY[0x277CC2E50];
    v36[6] = *MEMORY[0x277CC2408];
    v36[7] = v18;
    v19 = *MEMORY[0x277CC2B58];
    v36[8] = *MEMORY[0x277CC2D00];
    v36[9] = v19;
    v20 = *MEMORY[0x277CC2750];
    v36[10] = *MEMORY[0x277CC2B30];
    v36[11] = v20;
    v21 = *MEMORY[0x277CC25D8];
    v36[12] = @"_ICItemDisplayName";
    v36[13] = v21;
    v22 = *MEMORY[0x277CC2428];
    v36[14] = *MEMORY[0x277CC26C0];
    v36[15] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:16];
    v24 = *MEMORY[0x277CC2F18];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v26 = createNotEqualANDQueryPrefix(tokensCopy, 0, v23, v25, 0);

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=*))", v11, v24];
    if (v27)
    {
      if (v26)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v27, v26];
        if (v28)
        {
          v29 = v28;
          v35 = v11;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          LOBYTE(v32) = mergeCopy;
          BYTE1(v31) = not;
          LOBYTE(v31) = 1;
          [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v14 ofItemsMatchingQuery:v29 indexAttrName:@"kSPDerivedIsMeRankingNot" withVersion:0 perItemCompletionAttributeArray:v30 completionValueArray:&unk_2846C91B8 alwaysReindexWithCompletionAttribute:v31 force:0 postFilter:groupCopy group:v32 forceMerge:?];
        }
      }
    }
  }
}

- (void)updateDerivedIsMeRankingTextContentMatch:(BOOL)match nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  alreadyCopy = already;
  v26[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (tokens)
  {
    v13 = *MEMORY[0x277CC2728];
    v26[0] = *MEMORY[0x277CC2728];
    v14 = MEMORY[0x277CBEA60];
    tokensCopy = tokens;
    v16 = [v14 arrayWithObjects:v26 count:1];
    v25 = *MEMORY[0x277CC31A0];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v13, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v22];
    }
    v18 = ;
    v19 = createEqualORQueryPrefix(tokensCopy, 0, v17, v18, 0);

    if (v19)
    {
      v24 = v13;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      LOBYTE(v23) = merge;
      BYTE1(v21) = match;
      LOBYTE(v21) = 1;
      [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v16 ofItemsMatchingQuery:v19 indexAttrName:@"kSPDerivedIsMeRankingTextContentMatch" withVersion:0 perItemCompletionAttributeArray:v20 completionValueArray:&unk_2846C91D0 alwaysReindexWithCompletionAttribute:v21 force:0 postFilter:groupCopy group:v23 forceMerge:?];
    }
  }
}

- (void)updateDerivedIsMeRankingTextContentMatchNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge
{
  v31[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (tokens)
  {
    notCopy = not;
    selfCopy = self;
    v31[0] = *MEMORY[0x277CC2728];
    v11 = v31[0];
    v12 = MEMORY[0x277CBEA60];
    tokensCopy = tokens;
    v14 = [v12 arrayWithObjects:v31 count:1];
    v30 = *MEMORY[0x277CC31A0];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v16 = *MEMORY[0x277CC2F18];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v18 = createNotEqualANDQueryPrefix(tokensCopy, 0, v15, v17, 0);

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=*))", v11, v16];
    v20 = v19;
    if (v18 && v19)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v18, v19];
      v22 = v18;
    }

    else
    {
      v23 = v18;
      if (!v18)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v29 = v11;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    LOBYTE(v26) = merge;
    BYTE1(v25) = notCopy;
    LOBYTE(v25) = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v14 ofItemsMatchingQuery:v18 indexAttrName:@"kSPDerivedIsMeRankingTextContentMatchNot" withVersion:0 perItemCompletionAttributeArray:v24 completionValueArray:&unk_2846C91E8 alwaysReindexWithCompletionAttribute:v25 force:0 postFilter:groupCopy group:v26 forceMerge:?];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateDerivedIsMeRankingTextContentMatchNot2:(BOOL)not2 nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge
{
  v31[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (tokens)
  {
    not2Copy = not2;
    selfCopy = self;
    v31[0] = *MEMORY[0x277CC2728];
    v11 = v31[0];
    v12 = MEMORY[0x277CBEA60];
    tokensCopy = tokens;
    v14 = [v12 arrayWithObjects:v31 count:1];
    v30 = *MEMORY[0x277CC31A0];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v16 = *MEMORY[0x277CC2F18];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v18 = createNotEqualANDQueryPrefix(tokensCopy, 0, v15, v17, 0);

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@=*))", v11, v16];
    v20 = v19;
    if (v18 && v19)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v18, v19];
      v22 = v20;
    }

    else
    {
      v23 = v19;
      if (!v20)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v29 = v11;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    LOBYTE(v26) = merge;
    BYTE1(v25) = not2Copy;
    LOBYTE(v25) = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v14 ofItemsMatchingQuery:v20 indexAttrName:@"kSPDerivedIsMeRankingTextContentMatchNot2" withVersion:0 perItemCompletionAttributeArray:v24 completionValueArray:&unk_2846C9200 alwaysReindexWithCompletionAttribute:v25 force:0 postFilter:groupCopy group:v26 forceMerge:?];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateDerivedIsFromMe:(BOOL)me fullName:(id)name emails:(id)emails onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  alreadyCopy = already;
  v45[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailsCopy = emails;
  groupCopy = group;
  if (nameCopy | emailsCopy)
  {
    selfCopy = self;
    v17 = *MEMORY[0x277CC26E8];
    v45[0] = *MEMORY[0x277CC26E8];
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v18 = *MEMORY[0x277CC3288];
    v44[0] = *MEMORY[0x277CC24E0];
    v44[1] = v18;
    v44[2] = *MEMORY[0x277CC3260];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v43 = *MEMORY[0x277CC24B0];
    v20 = v43;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v21 = *MEMORY[0x277CC24C8];
    v42[0] = v20;
    v42[1] = v21;
    v22 = *MEMORY[0x277CC3268];
    v42[2] = *MEMORY[0x277CC3290];
    v42[3] = v22;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v17, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v33];
    }
    v23 = ;
    v24 = v23;
    mergeCopy = merge;
    v25 = 0;
    v26 = 0;
    if (nameCopy && v23)
    {
      v25 = createEqualORQueryForFullNamePrefix(nameCopy, v19, v23, 0);
      v26 = createEqualORQueryForFullNamePrefix(nameCopy, v40, v24, 1);
    }

    v37 = v19;
    meCopy = me;
    if (emailsCopy && v24)
    {
      v28 = createEqualORQueryPrefix(emailsCopy, 0, v39, v24, 1);
      v29 = v28;
      if (!v25 || !v26)
      {
        goto LABEL_19;
      }

      if (v28)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@ || %@)", v25, v26, v28];
        if (!v30)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v29 = 0;
      if (!v25 || !v26)
      {
        goto LABEL_19;
      }
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v25, v26];
    v29 = 0;
    if (!v30)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:
    v41 = v17;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    LOBYTE(v34) = mergeCopy;
    BYTE1(v32) = meCopy;
    LOBYTE(v32) = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v38 ofItemsMatchingQuery:v30 indexAttrName:@"kSPDerivedIsFromMe" withVersion:0 perItemCompletionAttributeArray:v31 completionValueArray:&unk_2846C9218 alwaysReindexWithCompletionAttribute:v32 force:0 postFilter:groupCopy group:v34 forceMerge:?];

    goto LABEL_19;
  }

LABEL_20:
}

- (void)updateDerivedIsFromMeNot:(BOOL)not fullName:(id)name emails:(id)emails group:(id)group forceMerge:(BOOL)merge
{
  v42[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailsCopy = emails;
  groupCopy = group;
  if (nameCopy | emailsCopy)
  {
    mergeCopy = merge;
    notCopy = not;
    selfCopy = self;
    v42[0] = *MEMORY[0x277CC26E8];
    v15 = v42[0];
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v16 = *MEMORY[0x277CC3288];
    v41[0] = *MEMORY[0x277CC24E0];
    v41[1] = v16;
    v41[2] = *MEMORY[0x277CC3260];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
    v40 = *MEMORY[0x277CC24B0];
    v18 = v40;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v19 = *MEMORY[0x277CC24C8];
    v39[0] = v18;
    v39[1] = v19;
    v20 = *MEMORY[0x277CC3268];
    v39[2] = *MEMORY[0x277CC3290];
    v39[3] = v20;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v15, *MEMORY[0x277CC2F18]];
    v22 = v21;
    v23 = 0;
    v24 = 0;
    if (nameCopy && v21)
    {
      v23 = createNotEqualANDQueryForFullNamePrefix(nameCopy, v17, v21, 0);
      v24 = createNotEqualANDQueryForFullNamePrefix(nameCopy, v37, v22, 1);
    }

    v34 = v17;
    if (emailsCopy && v22)
    {
      v25 = createNotEqualANDQueryPrefix(emailsCopy, 0, v36, v22, 1);
      v26 = v25;
      if (!v23 || !v24)
      {
        goto LABEL_16;
      }

      if (v25)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@ && %@)", v23, v24, v25];
        if (!v27)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
      if (!v23 || !v24)
      {
        goto LABEL_16;
      }
    }

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@)", v23, v24];
    v26 = 0;
    if (!v27)
    {
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    v38 = v15;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    LOBYTE(v30) = mergeCopy;
    BYTE1(v29) = notCopy;
    LOBYTE(v29) = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v35 ofItemsMatchingQuery:v27 indexAttrName:@"kSPDerivedIsFromMeNot" withVersion:0 perItemCompletionAttributeArray:v28 completionValueArray:&unk_2846C9230 alwaysReindexWithCompletionAttribute:v29 force:0 postFilter:groupCopy group:v30 forceMerge:?];

    goto LABEL_16;
  }

LABEL_17:
}

- (void)updateDerivedIsFromMeRanking:(BOOL)ranking nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  alreadyCopy = already;
  v31[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  groupCopy = group;
  if (tokensCopy)
  {
    v14 = *MEMORY[0x277CC26F0];
    v31[0] = *MEMORY[0x277CC26F0];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v16 = *MEMORY[0x277CC24B0];
    v30[0] = *MEMORY[0x277CC24E0];
    v30[1] = v16;
    v17 = *MEMORY[0x277CC3260];
    v30[2] = *MEMORY[0x277CC24C8];
    v30[3] = v17;
    v18 = *MEMORY[0x277CC3288];
    v30[4] = *MEMORY[0x277CC3268];
    v30[5] = v18;
    v19 = *MEMORY[0x277CC2E50];
    v30[6] = *MEMORY[0x277CC3290];
    v30[7] = v19;
    v20 = *MEMORY[0x277CC2408];
    v30[8] = *MEMORY[0x277CC2D00];
    v30[9] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:10];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(((%@!=*) || (%@=0)) && (%@!=*))", v14, v14, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v27, v28];
    }
    v22 = ;
    if (v22)
    {
      v23 = createEqualORQueryPrefix(tokensCopy, 0, v21, v22, 0);
      if (v23)
      {
        v24 = v23;
        v25 = v21;

        LOBYTE(v29) = merge;
        BYTE1(v26) = ranking;
        LOBYTE(v26) = 1;
        [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v25 ofItemsMatchingQuery:v24 indexAttrName:@"kSPDerivedIsFromMeRanking" withVersion:0 perItemCompletionAttribute:0 completionValue:0 alwaysReindexWithCompletionAttribute:v26 force:0 postFilter:groupCopy group:v29 forceMerge:?];

        v15 = v25;
      }
    }
  }
}

- (void)updateDerivedIsFromMeRankingNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge
{
  v26[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (tokens)
  {
    v26[0] = *MEMORY[0x277CC26F0];
    v11 = v26[0];
    v12 = MEMORY[0x277CBEA60];
    tokensCopy = tokens;
    v14 = [v12 arrayWithObjects:v26 count:1];
    v15 = *MEMORY[0x277CC24B0];
    v25[0] = *MEMORY[0x277CC24E0];
    v25[1] = v15;
    v16 = *MEMORY[0x277CC3260];
    v25[2] = *MEMORY[0x277CC24C8];
    v25[3] = v16;
    v17 = *MEMORY[0x277CC3288];
    v25[4] = *MEMORY[0x277CC3268];
    v25[5] = v17;
    v18 = *MEMORY[0x277CC2E50];
    v25[6] = *MEMORY[0x277CC3290];
    v25[7] = v18;
    v19 = *MEMORY[0x277CC2408];
    v25[8] = *MEMORY[0x277CC2D00];
    v25[9] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:10];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@>0) && (%@!=*))", v11, *MEMORY[0x277CC2F18]];
    v22 = createNotEqualANDQueryPrefix(tokensCopy, 0, v20, v21, 0);

    if (v22)
    {
      LOBYTE(v24) = merge;
      BYTE1(v23) = not;
      LOBYTE(v23) = 1;
      [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v14 ofItemsMatchingQuery:v22 indexAttrName:@"kSPDerivedIsFromMeRanking" withVersion:0 perItemCompletionAttribute:v11 completionValue:1 alwaysReindexWithCompletionAttribute:v23 force:0 postFilter:groupCopy group:v24 forceMerge:?];
    }
  }
}

- (void)updateDerivedIsToMe:(BOOL)me fullName:(id)name emails:(id)emails onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  mergeCopy = merge;
  alreadyCopy = already;
  v45[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailsCopy = emails;
  groupCopy = group;
  if (nameCopy | emailsCopy)
  {
    selfCopy = self;
    v17 = *MEMORY[0x277CC2740];
    v45[0] = *MEMORY[0x277CC2740];
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v18 = *MEMORY[0x277CC2FC0];
    v44[0] = *MEMORY[0x277CC3028];
    v44[1] = v18;
    v19 = *MEMORY[0x277CC3250];
    v44[2] = *MEMORY[0x277CC3278];
    v44[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    v43 = *MEMORY[0x277CC3010];
    v21 = v43;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v22 = *MEMORY[0x277CC3020];
    v42[0] = v21;
    v42[1] = v22;
    v23 = *MEMORY[0x277CC3258];
    v42[2] = *MEMORY[0x277CC3280];
    v42[3] = v23;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"((%@!=1) && (%@!=*))", v17, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v34];
    }
    v24 = ;
    v25 = v24;
    HIDWORD(v35) = mergeCopy;
    v26 = 0;
    v27 = 0;
    if (nameCopy && v24)
    {
      v26 = createEqualORQueryForFullNamePrefix(nameCopy, v20, v24, 0);
      v27 = createEqualORQueryForFullNamePrefix(nameCopy, v40, v25, 1);
    }

    v37 = v20;
    meCopy = me;
    if (emailsCopy && v25)
    {
      v29 = createEqualORQueryPrefix(emailsCopy, 0, v39, v25, 1);
      v30 = v29;
      if (!v26 || !v27)
      {
        goto LABEL_19;
      }

      if (v29)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@ || %@)", v26, v27, v29];
        if (!v31)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v30 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_19;
      }
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ || %@)", v26, v27];
    v30 = 0;
    if (!v31)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:
    v41 = v17;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    LOBYTE(v35) = BYTE4(v35);
    BYTE1(v33) = meCopy;
    LOBYTE(v33) = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v38 ofItemsMatchingQuery:v31 indexAttrName:@"kSPDerivedIsToMe" withVersion:0 perItemCompletionAttributeArray:v32 completionValueArray:&unk_2846C9248 alwaysReindexWithCompletionAttribute:v33 force:0 postFilter:groupCopy group:v35 forceMerge:?];

    goto LABEL_19;
  }

LABEL_20:
}

- (void)updateDerivedIsToMeNot:(BOOL)not fullName:(id)name emails:(id)emails group:(id)group forceMerge:(BOOL)merge
{
  v43[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailsCopy = emails;
  groupCopy = group;
  if (nameCopy | emailsCopy)
  {
    mergeCopy = merge;
    notCopy = not;
    selfCopy = self;
    v43[0] = *MEMORY[0x277CC2740];
    v15 = v43[0];
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v16 = *MEMORY[0x277CC2FC0];
    v42[0] = *MEMORY[0x277CC3028];
    v42[1] = v16;
    v17 = *MEMORY[0x277CC3250];
    v42[2] = *MEMORY[0x277CC3278];
    v42[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    v41 = *MEMORY[0x277CC3010];
    v19 = v41;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v20 = *MEMORY[0x277CC3020];
    v40[0] = v19;
    v40[1] = v20;
    v21 = *MEMORY[0x277CC3258];
    v40[2] = *MEMORY[0x277CC3280];
    v40[3] = v21;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=1) && (%@!=*))", v15, *MEMORY[0x277CC2F18]];
    v23 = v22;
    v24 = 0;
    v25 = 0;
    if (nameCopy && v22)
    {
      v24 = createNotEqualANDQueryForFullNamePrefix(nameCopy, v18, v22, 0);
      v25 = createNotEqualANDQueryForFullNamePrefix(nameCopy, v38, v23, 1);
    }

    v35 = v18;
    if (emailsCopy && v23)
    {
      v26 = createNotEqualANDQueryPrefix(emailsCopy, 0, v37, v23, 1);
      v27 = v26;
      if (!v24 || !v25)
      {
        goto LABEL_16;
      }

      if (v26)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@ && %@)", v24, v25, v26];
        if (!v28)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v27 = 0;
      if (!v24 || !v25)
      {
        goto LABEL_16;
      }
    }

    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ && %@)", v24, v25];
    v27 = 0;
    if (!v28)
    {
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    v39 = v15;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    LOBYTE(v31) = mergeCopy;
    BYTE1(v30) = notCopy;
    LOBYTE(v30) = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy reindexAttributes:v36 ofItemsMatchingQuery:v28 indexAttrName:@"kSPDerivedIsToMeNot" withVersion:0 perItemCompletionAttributeArray:v29 completionValueArray:&unk_2846C9260 alwaysReindexWithCompletionAttribute:v30 force:0 postFilter:groupCopy group:v31 forceMerge:?];

    goto LABEL_16;
  }

LABEL_17:
}

- (void)updateDerivedIsToMeRanking:(BOOL)ranking nameTokens:(id)tokens onlyIfNotAlready:(BOOL)already group:(id)group forceMerge:(BOOL)merge
{
  alreadyCopy = already;
  v32[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  groupCopy = group;
  if (tokensCopy)
  {
    v14 = *MEMORY[0x277CC2748];
    v32[0] = *MEMORY[0x277CC2748];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v16 = *MEMORY[0x277CC2FC0];
    v31[0] = *MEMORY[0x277CC3028];
    v31[1] = v16;
    v17 = *MEMORY[0x277CC3020];
    v31[2] = *MEMORY[0x277CC3010];
    v31[3] = v17;
    v18 = *MEMORY[0x277CC23D0];
    v31[4] = *MEMORY[0x277CC2FA8];
    v31[5] = v18;
    v19 = *MEMORY[0x277CC3258];
    v31[6] = *MEMORY[0x277CC3250];
    v31[7] = v19;
    v20 = *MEMORY[0x277CC3280];
    v31[8] = *MEMORY[0x277CC3278];
    v31[9] = v20;
    v21 = *MEMORY[0x277CC2D00];
    v31[10] = *MEMORY[0x277CC2E50];
    v31[11] = v21;
    v31[12] = *MEMORY[0x277CC2408];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:13];
    if (alreadyCopy)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(((%@!=*) || (%@==0)) && (%@!=*))", v14, v14, *MEMORY[0x277CC2F18]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@!=*)", *MEMORY[0x277CC2F18], v28, v29];
    }
    v23 = ;
    if (v23)
    {
      v24 = createEqualORQueryPrefix(tokensCopy, 0, v22, v23, 0);
      if (v24)
      {
        v25 = v24;
        v26 = v22;

        LOBYTE(v30) = merge;
        BYTE1(v27) = ranking;
        LOBYTE(v27) = 1;
        [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v26 ofItemsMatchingQuery:v25 indexAttrName:@"kSPDerivedIsToMeRanking" withVersion:0 perItemCompletionAttribute:0 completionValue:0 alwaysReindexWithCompletionAttribute:v27 force:0 postFilter:groupCopy group:v30 forceMerge:?];

        v15 = v26;
      }
    }
  }
}

- (void)updateDerivedIsToMeRankingNot:(BOOL)not nameTokens:(id)tokens group:(id)group forceMerge:(BOOL)merge
{
  v27[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  groupCopy = group;
  if (tokensCopy)
  {
    v27[0] = *MEMORY[0x277CC2748];
    v12 = v27[0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v14 = *MEMORY[0x277CC2FC0];
    v26[0] = *MEMORY[0x277CC3028];
    v26[1] = v14;
    v15 = *MEMORY[0x277CC3020];
    v26[2] = *MEMORY[0x277CC3010];
    v26[3] = v15;
    v16 = *MEMORY[0x277CC23D0];
    v26[4] = *MEMORY[0x277CC2FA8];
    v26[5] = v16;
    v17 = *MEMORY[0x277CC3258];
    v26[6] = *MEMORY[0x277CC3250];
    v26[7] = v17;
    v18 = *MEMORY[0x277CC3280];
    v26[8] = *MEMORY[0x277CC3278];
    v26[9] = v18;
    v19 = *MEMORY[0x277CC2D00];
    v26[10] = *MEMORY[0x277CC2E50];
    v26[11] = v19;
    v26[12] = *MEMORY[0x277CC2408];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:13];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@>0) && (%@!=*))", v12, *MEMORY[0x277CC2F18]];
    if (v21)
    {
      v22 = createNotEqualANDQueryPrefix(tokensCopy, 0, v20, v21, 0);
      if (v22)
      {
        v23 = v22;
        LOBYTE(v25) = merge;
        BYTE1(v24) = not;
        LOBYTE(v24) = 1;
        [(SPConcreteCoreSpotlightIndexer *)self reindexAttributes:v13 ofItemsMatchingQuery:v22 indexAttrName:@"kSPDerivedIsToMeRankingNot" withVersion:0 perItemCompletionAttribute:v12 completionValue:1 alwaysReindexWithCompletionAttribute:v24 force:0 postFilter:groupCopy group:v25 forceMerge:?];
      }
    }
  }
}

- (void)dumpAllRankingDiagnosticInformationForQuery:(id)query withCompletionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (index)
  {
    v9 = index;
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:@"_kMDItemSDBInfo"];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = -1;
    v11 = NSHomeDirectory();
    v12 = [v11 stringByAppendingString:@"/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking/Spotlight_Ranking_Diagnostic_Dump_AllResults.log"];

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __100__SPConcreteCoreSpotlightIndexer_dumpAllRankingDiagnosticInformationForQuery_withCompletionHandler___block_invoke;
    v19 = &unk_278934780;
    selfCopy = self;
    v23 = v25;
    v24 = v9;
    v13 = v12;
    v21 = v13;
    v22 = handlerCopy;
    v14 = MEMORY[0x2383760E0](&v16);
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"**=%@*cdwt", queryCopy, v16, v17, v18, v19, selfCopy];
    [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v9 query:selfCopy fetchAttributes:array resultsHandler:v14];

    _Block_object_dispose(v25, 8);
  }
}

void __100__SPConcreteCoreSpotlightIndexer_dumpAllRankingDiagnosticInformationForQuery_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __buf[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (a3 == 1)
  {
    v12 = *(*(*(a1 + 56) + 8) + 24);
    if (v12 != -1)
    {
      close(v12);
      *(*(*(a1 + 56) + 8) + 24) = -1;
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 64))
  {
    if (*(*(*(a1 + 56) + 8) + 24) != -1 || (*(*(*(a1 + 56) + 8) + 24) = open([*(a1 + 40) UTF8String], 1537, 438), *(*(*(a1 + 56) + 8) + 24) != -1))
    {
      ByteVectorCount = _MDPlistBytesGetByteVectorCount();
      v10 = *(*(*(a1 + 56) + 8) + 24);
      ByteVector = _MDPlistBytesGetByteVector();
      write(v10, ByteVector, ByteVectorCount);
      if ((ByteVectorCount & 7) != 0)
      {
        __buf[0] = 0;
        write(*(*(*(a1 + 56) + 8) + 24), __buf, ByteVectorCount);
      }
    }
  }
}

- (void)performQueryForCountOfItemsInCategory:(id)category completion:(id)completion
{
  categoryCopy = category;
  completionCopy = completion;
  index = self->_index;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke;
  v11[3] = &unk_2789347D0;
  v12 = categoryCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = categoryCopy;
  v10 = completionCopy;
  SIBackgroundOpBlock(index, 9, v11);
}

void __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = a2;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke_2;
    v11[3] = &unk_2789347A8;
    v5 = *(a1 + 32);
    v13 = v15;
    v14 = a2;
    v11[4] = v5;
    v12 = *(a1 + 48);
    v6 = MEMORY[0x2383760E0](v11);
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@=%@", *MEMORY[0x277CC2500], *(a1 + 40)];
    LOBYTE(v4) = [v7 _startInternalQueryWithIndex:v4 query:v8 fetchAttributes:MEMORY[0x277CBEBF8] resultsHandler:v6];

    if ((v4 & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(v15, 8);
  }
}

void __83__SPConcreteCoreSpotlightIndexer_performQueryForCountOfItemsInCategory_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a3 == 1)
  {
    v10 = v7;
    (*(*(a1 + 40) + 16))();
    v7 = v10;
  }

  else if (a3 == 5)
  {
    v9 = v7;
    v8 = [*(a1 + 32) index] == *(a1 + 56);
    v7 = v9;
    if (v8)
    {
      *(*(*(a1 + 48) + 8) + 24) += a4;
    }
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [standardUserDefaults valueForKey:@"bulk_budget_threshold"];

    if (v3)
    {
      bulk_budget_threshold = [v3 intValue];
    }

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults2 valueForKey:@"budget_check_threshold"];

    if (v5)
    {
      budget_check_threshold = [v5 intValue];
    }

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [standardUserDefaults3 valueForKey:@"budget_check_threshold_delay"];

    if (v7)
    {
      budget_check_threshold_delay = [v7 intValue];
    }

    standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults4 valueForKey:@"decay_time"];

    if (v9)
    {
      [v9 floatValue];
      *&decay_time = v10;
    }

    standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [standardUserDefaults5 valueForKey:@"decay_denominator"];

    if (v12)
    {
      [v12 floatValue];
      *&decay_denominator = v13;
    }

    standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [standardUserDefaults6 valueForKey:@"live_delay_scaler"];

    if (v15)
    {
      [v15 floatValue];
      live_delay_scaler = v16;
    }

    standardUserDefaults7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v18 = [standardUserDefaults7 valueForKey:@"live_delay_scaled_max"];

    if (v18)
    {
      [v18 floatValue];
      live_delay_scaled_max = v19;
    }

    standardUserDefaults8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [standardUserDefaults8 valueForKey:@"live_delay"];

    if (v21)
    {
      [v21 floatValue];
      live_delay = v22;
    }

    standardUserDefaults9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v24 = [standardUserDefaults9 valueForKey:@"bulk_delay_scaler"];

    if (v24)
    {
      [v24 floatValue];
      bulk_delay_scaler = v25;
    }

    standardUserDefaults10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v27 = [standardUserDefaults10 valueForKey:@"bulk_delay_scaled_max"];

    if (v27)
    {
      [v27 floatValue];
      bulk_delay_scaled_max = v28;
    }

    standardUserDefaults11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v30 = [standardUserDefaults11 valueForKey:@"bulk_delay"];

    if (v30)
    {
      [v30 floatValue];
      bulk_delay = v31;
    }

    if (sIsInternalInstall == 1)
    {
      SISetLogging();
    }

    CFNotificationCenterGetDistributedCenter();
    RunLoopSource = IOPSNotificationCreateRunLoopSource(queryPowerState, 0);
    if (RunLoopSource)
    {
      v33 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v33, *MEMORY[0x277CBF058]);
      CFRelease(v33);
    }

    queryPowerState();
    v35 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreSpotlight"];
    v36 = [v35 pathForResource:@"schema" ofType:@"mdplist"];
    v37 = v36;
    if (v36)
    {
      v38 = open([v36 UTF8String], 0);
      if (v38 != -1)
      {
        v39 = v38;
        memset(&v44, 0, sizeof(v44));
        if (!fstat(v38, &v44))
        {
          v42 = mmap(0, v44.st_size, 1, 1, v39, 0);
          if (v42 != -1)
          {
            v43 = v42;
            gDefaultSchemaPlistBytes = _MDPlistContainerCreateWithBytes();
            if (!gDefaultSchemaPlistBytes)
            {
              munmap(v43, v44.st_size);
            }
          }
        }

        close(v39);
      }
    }

    if (gDefaultSchemaPlistBytes)
    {
      v40 = v37;
    }

    else
    {
      v40 = [v35 pathForResource:@"schema" ofType:@"plist"];

      if (v40)
      {
        v41 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v40];
        if (v41)
        {
          gDefaultSchemaPlistBytes = _MDPlistContainerCreateWithObject();
        }
      }

      if (!gDefaultSchemaPlistBytes)
      {
        goto LABEL_40;
      }
    }

    _MDPlistContainerGetBytes();
    _MDPlistContainerGetLength();
    SISetDefaultSchemaData();
LABEL_40:
    _SISetCoreSpotlightRelatedItemCallback();
    _SISetCoreSpotlightCopyBundleRemapCallback();
    LOBYTE(v44.st_dev) = 0;
    CFPreferencesGetAppBooleanValue(@"SpotlightTraceDetailed", *MEMORY[0x277CBF028], &v44);
  }
}

- (SPConcreteCoreSpotlightIndexer)initWithQueue:(id)queue protectionClass:(id)class cancelPtr:(int *)ptr
{
  queueCopy = queue;
  classCopy = class;
  v26.receiver = self;
  v26.super_class = SPConcreteCoreSpotlightIndexer;
  v11 = [(SPConcreteCoreSpotlightIndexer *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataclass, class);
    objc_storeStrong(&v12->_indexQueue, queue);
    v12->_cancelPtr = ptr;
    v13 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    checkedInClients = v12->_checkedInClients;
    v12->_checkedInClients = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    reindexAllDelegateBundleIDs = v12->_reindexAllDelegateBundleIDs;
    v12->_reindexAllDelegateBundleIDs = v15;

    v12->_hasAssertion = 0;
    v12->_assertionEndTime = 0.0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    assertedBundleIds = v12->_assertedBundleIds;
    v12->_assertedBundleIds = v17;

    v12->_dirtyTimeout = 256;
    v12->_onDemandOpen = 1;
    *&v12->_creationDate = xmmword_231AED790;
    _indexMaintenanceActivityName = [(SPConcreteCoreSpotlightIndexer *)v12 _indexMaintenanceActivityName];
    uTF8String = [_indexMaintenanceActivityName UTF8String];
    v21 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __74__SPConcreteCoreSpotlightIndexer_initWithQueue_protectionClass_cancelPtr___block_invoke;
    handler[3] = &unk_2789341D0;
    v25 = _indexMaintenanceActivityName;
    v22 = _indexMaintenanceActivityName;
    xpc_activity_register(uTF8String, v21, handler);
  }

  return v12;
}

void __74__SPConcreteCoreSpotlightIndexer_initWithQueue_protectionClass_cancelPtr___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  v10 = *MEMORY[0x277D85DE8];
  state = xpc_activity_get_state(activity);
  v4 = logForCSLogCategoryIndex(state);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = state;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Checking in XPC activity:%@, state:%lu", &v6, 0x16u);
  }
}

- (void)dealloc
{
  _indexPath = [self _indexPath];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dirty:(BOOL)dirty
{
  v5 = SDTransactionCreate(0);
  v6 = sIndexQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke;
  v9[3] = &unk_278934870;
  dirtyCopy = dirty;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  v8 = _setup_block(v9, 0, 3449);
  dispatch_async(v6, v8);
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke(uint64_t a1)
{
  v1 = a1;
  v24[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(*(a1 + 32) + 200))
  {
    if (CFAbsoluteTimeGetCurrent() - *(*v2 + 26) < *(*v2 + 31))
    {
      v4 = logForCSLogCategoryIndex(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_cold_1();
      }

      v5 = *(*v2 + 25);
      v6 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v5, v6, 0x12A05F200uLL, 0x12A05F200uLL);
    }
  }

  else if ((*(a1 + 48) & 1) != 0 || (a1 = SIGetAccumulatedWorkTimeSinceLastSync(), v7 > 1.0))
  {
    v8 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*v2 + 24);
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = qos_class_self();
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Index %@ dirty qos: %d", buf, 0x12u);
    }

    v10 = *(*v2 + 24);
    v24[0] = @"dirty";
    v24[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v12 = SDTransactionCreate(v11);

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*v2 + 22));
    Current = CFAbsoluteTimeGetCurrent();
    *(*v2 + 26) = Current;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v23 = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_619;
    handler[3] = &unk_278934848;
    handler[4] = *v2;
    handler[5] = buf;
    *&handler[6] = Current;
    dispatch_source_set_event_handler(v13, handler);
    v15 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v13, v15, 0x12A05F200uLL, 0x12A05F200uLL);
    v16 = *v2;
    objc_sync_enter(v16);
    v17 = *(*v2 + 32);
    *(*v2 + 32) = v12;
    v18 = v12;

    v19 = *(*v2 + 25);
    *(*v2 + 25) = v13;
    v20 = v13;

    dispatch_resume(v20);
    objc_sync_exit(v16);

    _Block_object_dispose(buf, 8);
  }

  SDTransactionDone(*(v1 + 40));
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_619(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 192);
    v4 = qos_class_self();
    v5 = s_last_memory_pressure_status;
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    *buf = 138413314;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    LOWORD(v20) = 1024;
    *(&v20 + 2) = v6;
    HIWORD(v20) = 2048;
    v21 = v7;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Index %@ qos: %d status: %d retry: %d inactive after %gs", buf, 0x28u);
  }

  if (CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 208) >= *(*(a1 + 32) + 248))
  {
    v10 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = COERCE_DOUBLE(__Block_byref_object_dispose__0);
    v22 = [*(a1 + 32) _cancelIdleTimer];
    [*(a1 + 32) commitUpdates:v10];
    v11 = dispatch_get_global_queue(9, 2uLL);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_627;
    block[3] = &unk_2789347F8;
    v13 = *(a1 + 32);
    v15 = *(a1 + 48);
    v14 = buf;
    dispatch_group_notify(v10, v11, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (PHOTOS_INDEX_VERSION_CHANGE_block_invoke_2_onceToken != -1)
    {
      __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_619_cold_1();
    }

    v8 = PHOTOS_INDEX_VERSION_CHANGE_block_invoke_2_sDASQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_2;
    v16[3] = &unk_278934848;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v9 = _setup_block(v16, 0, 3419);
    dispatch_async(v8, v9);
  }
}

uint64_t __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_620()
{
  v0 = dispatch_queue_create("DASqueue", 0);
  v1 = PHOTOS_INDEX_VERSION_CHANGE_block_invoke_2_sDASQueue;
  PHOTOS_INDEX_VERSION_CHANGE_block_invoke_2_sDASQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    if (*(v2 + 256))
    {
      v3 = dispatch_group_create();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__0;
      v18 = __Block_byref_object_dispose__0;
      v19 = [*(a1 + 32) _cancelIdleTimer];
      [*(a1 + 32) commitUpdates:v3];
      v4 = dispatch_get_global_queue(9, 2uLL);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_4;
      v11[3] = &unk_2789347F8;
      v12 = *(a1 + 32);
      v14 = *(a1 + 48);
      p_buf = &buf;
      dispatch_group_notify(v3, v4, v11);

      _Block_object_dispose(&buf, 8);
    }
  }

  else if (*(v2 + 200) && *(v2 + 256))
  {
    v5 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 192);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Index %@ delay commit", &buf, 0xCu);
    }

    v7 = *(*(a1 + 32) + 200);
    v8 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v7, v8, 0x12A05F200uLL, 0x12A05F200uLL);
    v9 = *(a1 + 32);
    v10 = *(v9 + 248);
    if (v10 >= 0x21)
    {
      *(v9 + 248) = v10 >> 1;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 192);
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 138412802;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Index %@ retry: %d commit complete after %gs", &v8, 0x1Cu);
  }

  SDTransactionDone(*(*(*(a1 + 48) + 8) + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_627(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 192);
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 138412802;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Index %@ retry: %d commit complete after %gs", &v8, 0x1Cu);
  }

  SDTransactionDone(*(*(*(a1 + 48) + 8) + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)_performXPCActivity:(id)activity name:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  nameCopy = name;
  state = xpc_activity_get_state(activityCopy);
  v9 = state;
  if (state != 2 && state != 4)
  {
    v12 = logForCSLogCategoryIndex(state);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = nameCopy;
      v22 = 2048;
      v23 = v9;
      v13 = "Ignored XPC activity:%@, state:%lu";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v10 = logForCSLogCategoryIndex(state);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = nameCopy;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%@, state:%lu", buf, 0x16u);
  }

  if (v9 != 2)
  {
    if (!xpc_activity_should_defer(activityCopy))
    {
      goto LABEL_11;
    }

    v11 = xpc_activity_set_state(activityCopy, 3);
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = logForCSLogCategoryIndex(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = nameCopy;
      v22 = 2048;
      v23 = v9;
      v13 = "Deferring XPC activity:%@, state:%ld";
LABEL_14:
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  xpc_activity_set_state(activityCopy, 4);
  [(SPConcreteCoreSpotlightIndexer *)self index];
  SIExecuteResumeActivityCallback();
LABEL_11:
  v14 = sIndexQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__SPConcreteCoreSpotlightIndexer__performXPCActivity_name___block_invoke;
  v16[3] = &unk_278934338;
  v16[4] = self;
  v17 = activityCopy;
  v18 = nameCopy;
  v19 = v9;
  v15 = _setup_block(v16, 0, 3518);
  dispatch_async(v14, v15);

LABEL_16:
}

void __59__SPConcreteCoreSpotlightIndexer__performXPCActivity_name___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) outstandingMaintenance];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 outstandingMaintenance];
    v6 = [v5 objectAtIndex:0];

    v7 = [*(a1 + 32) outstandingMaintenance];
    [v7 removeObjectAtIndex:0];

    buf[0] = 0;
    v8 = dispatch_group_create();
    (*(v6 + 16))(v6, [*(a1 + 32) index], *(a1 + 40), buf, v8);
    v9 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__SPConcreteCoreSpotlightIndexer__performXPCActivity_name___block_invoke_634;
    v15[3] = &unk_278934130;
    v10 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v10;
    v17 = *(a1 + 48);
    v11 = _setup_block(v15, 0, 3517);
    dispatch_group_notify(v8, v9, v11);
  }

  else
  {
    [v4 setOutstandingMaintenance:0];
    v12 = xpc_activity_set_state(*(a1 + 40), 5);
    v6 = logForCSLogCategoryIndex(v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 138412546;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%@ as done, state:%ld", buf, 0x16u);
    }
  }
}

- (id)_indexMaintenanceActivityName
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.indexmaintenance.%@", self->_dataclass];

  return v2;
}

- (void)scheduleMaintenance:(id)maintenance description:(id)description forDarkWake:(BOOL)wake
{
  wakeCopy = wake;
  v25 = *MEMORY[0x277D85DE8];
  maintenanceCopy = maintenance;
  descriptionCopy = description;
  v10 = logForCSLogCategoryIndex(descriptionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    v12 = @"NO";
    *buf = 138412802;
    if (wakeCopy)
    {
      v12 = @"YES";
    }

    v20 = dataclass;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = descriptionCopy;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling maintenance for dataclass:%@, forDarkWake:%@, description:%@", buf, 0x20u);
  }

  v13 = sIndexQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke;
  v16[3] = &unk_2789348C0;
  v16[4] = self;
  v17 = maintenanceCopy;
  v18 = wakeCopy;
  v14 = maintenanceCopy;
  v15 = _setup_block(v16, 0, 3565);
  dispatch_async(v13, v15);
}

void __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) outstandingMaintenance];

  if (v2)
  {
    v15 = [*(a1 + 32) outstandingMaintenance];
    v3 = MEMORY[0x2383760E0](*(a1 + 40));
    [v15 addObject:v3];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setOutstandingMaintenance:v4];

    v5 = [*(a1 + 32) outstandingMaintenance];
    v6 = MEMORY[0x2383760E0](*(a1 + 40));
    [v5 addObject:v6];

    v7 = [*(a1 + 32) _indexMaintenanceActivityName];
    v8 = logForCSLogCategoryIndex(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Registering XPC activity:%@", buf, 0xCu);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86230], 0);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86330], *(a1 + 48));
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86250], 0);
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86270], *MEMORY[0x277D862C8]);
    if ([*(*(a1 + 32) + 192) isEqualToString:*MEMORY[0x277CCA190]])
    {
      v10 = MEMORY[0x277D86370];
    }

    else
    {
      v11 = [*(*(a1 + 32) + 192) isEqualToString:*MEMORY[0x277CCA198]];
      v10 = MEMORY[0x277D86380];
      if (v11)
      {
        v10 = MEMORY[0x277D86378];
      }
    }

    xpc_dictionary_set_BOOL(v9, *v10, 1);
    objc_initWeak(buf, *(a1 + 32));
    v12 = v7;
    v13 = [v7 UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke_644;
    handler[3] = &unk_278934898;
    objc_copyWeak(&v18, buf);
    v14 = v7;
    v17 = v14;
    xpc_activity_register(v13, v9, handler);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __78__SPConcreteCoreSpotlightIndexer_scheduleMaintenance_description_forDarkWake___block_invoke_644(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performXPCActivity:v3 name:*(a1 + 32)];
  }

  else
  {
    v7 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Set XPC activity:%@ DONE since indexer was released", &v9, 0xCu);
    }

    xpc_activity_set_state(v3, 5);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)runOtherFixups:(id)fixups state:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  fixupsCopy = fixups;
  v7 = fixupsCopy;
  if ((sPrivate & 1) == 0)
  {
    v8 = logForCSLogCategoryIndex(fixupsCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      stateCopy = state;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "fixup runAllOtherFixups state: %ld", buf, 0xCu);
    }

    v9 = [(SPConcreteCoreSpotlightIndexer *)self runOneFixup:state group:v7];
    indexQueue = self->_indexQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SPConcreteCoreSpotlightIndexer_runOtherFixups_state___block_invoke;
    block[3] = &unk_2789344E0;
    v13 = v9;
    block[4] = self;
    v12 = v7;
    dispatch_group_notify(v12, indexQueue, block);
  }
}

void __55__SPConcreteCoreSpotlightIndexer_runOtherFixups_state___block_invoke(void *a1)
{
  if ((a1[6] & 0x8000000000000000) != 0)
  {
    v7 = v1;
    v8 = v2;
    v5 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "fixup runAllOtherFixups finished running", v6, 2u);
    }
  }

  else
  {
    v3 = a1[5];
    v4 = a1[4];

    [v4 runOtherFixups:v3 state:?];
  }
}

- (int64_t)runOneFixup:(int64_t)fixup group:(id)group
{
  groupCopy = group;
  v7 = -1;
  if (fixup > 3)
  {
    if (fixup > 5)
    {
      if (fixup == 6)
      {
        [(SPConcreteCoreSpotlightIndexer *)self issuePhotosReindexIfNeeded:0 group:groupCopy];
        v7 = 7;
      }

      else if (fixup == 7)
      {
        [(SPConcreteCoreSpotlightIndexer *)self updateIndexRankingDates:0 group:groupCopy forceMerge:1];
      }
    }

    else if (fixup == 4)
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateGroups:0 group:groupCopy forceMerge:0];
      v7 = 5;
    }

    else
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateNotes:0 group:groupCopy forceMerge:0];
      v7 = 6;
    }
  }

  else if (fixup > 1)
  {
    if (fixup == 2)
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateRankingDates:0 group:groupCopy forceMerge:0];
      v7 = 3;
    }

    else
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateContainersAndScores:0 group:groupCopy forceMerge:0];
      v7 = 4;
    }
  }

  else if (fixup)
  {
    if (fixup == 1)
    {
      [(SPConcreteCoreSpotlightIndexer *)self updateEmailContentURLAttr:0 group:groupCopy forceMerge:0];
      v7 = 2;
    }
  }

  else
  {
    [(SPConcreteCoreSpotlightIndexer *)self updateEmailLocalParts:0 group:groupCopy forceMerge:0];
    v7 = 1;
  }

  return v7;
}

- (void)indexFinishedDrainingJournal:(id)journal
{
  v53 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  v5 = logForCSLogCategoryIndex(journalCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    *buf = 138412546;
    v50 = journalCopy;
    v51 = 2112;
    v52 = dataclass;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "indexFinishedDrainingJournal, bundleID:%@, dataclass:%@", buf, 0x16u);
  }

  owner = [(SPConcreteCoreSpotlightIndexer *)self owner];
  dataMigrationStage = [owner dataMigrationStage];
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (index && !self->_readOnly && !self->_suspended && !self->_suspending && ![(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"indexFinishedDrainingJournal"])
  {
    v10 = [(__CFString *)journalCopy isEqual:@"com.apple.mobilemail"];
    if (!v10)
    {
LABEL_18:
      if (journalCopy)
      {
        if ([(SPConcreteCoreSpotlightIndexer *)self clientIsCheckedIn:journalCopy])
        {
          owner2 = [(SPConcreteCoreSpotlightIndexer *)self owner];
          extensionDelegate = [owner2 extensionDelegate];
          v20 = [extensionDelegate extensionExistsForBundleId:journalCopy];

          if ((v20 & 1) == 0)
          {
            mEMORY[0x277D65790] = [MEMORY[0x277D65790] sharedProcessor];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652;
            v42[3] = &unk_2789348E8;
            v43 = journalCopy;
            [mEMORY[0x277D65790] updateCheckedInClientWithBundleIdentifier:v43 completionHandler:v42];
          }
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)journalCopy hasPrefix:@"com.apple."])
      {
        objc_initWeak(buf, self);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656;
        v39[3] = &unk_278934938;
        objc_copyWeak(v41, buf);
        v41[1] = index;
        v22 = journalCopy;
        v40 = v22;
        v41[2] = dataMigrationStage;
        v23 = MEMORY[0x2383760E0](v39);
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(_kMDItemWillModify=1)&&(_kMDItemBundleID=%@", v22];
        v45 = @"_kMDItemExternalID";
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        v44 = v22;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:index query:v24 fetchAttributes:v25 forBundleIds:v26 resultsHandler:v23];

        objc_destroyWeak(v41);
        objc_destroyWeak(buf);
      }

      goto LABEL_36;
    }

    if (sMailProtectionClass)
    {
      v10 = [(NSString *)self->_dataclass isEqual:?];
      if (v10)
      {
        v11 = logForCSLogCategoryIndex(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "Check whether Mail needs reindexing", buf, 2u);
        }

        v12 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"com.apple.mobilemail.reindexVersion"];
        v13 = v12;
        if (v12)
        {
          v14 = [(__CFString *)v12 isEqual:@"599"];
          v15 = v14;
          v16 = logForCSLogCategoryIndex(v14);
          v17 = v16;
          if (v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v50 = v13;
              v51 = 2112;
              v52 = @"599";
              _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_INFO, "Reindex version matches %@==%@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          *buf = 138412546;
          v50 = v13;
          v51 = 2112;
          v52 = @"599";
          v28 = "Reindex version mismatch %@!=%@";
          v29 = v17;
          v30 = 22;
        }

        else
        {
          v17 = logForCSLogCategoryIndex(0);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
LABEL_33:

            v31 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
            dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
            v48 = dataclass;
            v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
            [v31 setProtectionClasses:v33];

            [v31 setReason:@"re-indexing mail - finished draining journal"];
            v34 = [SPCoreSpotlightIndexerTask alloc];
            selfCopy = self;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
            v36 = [(SPCoreSpotlightIndexerTask *)v34 initWithIndexJob:v31 indexers:v35];

            v46 = journalCopy;
            v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
            [(SPCoreSpotlightIndexerTask *)v36 setBundleIDs:v37];

            [(SPCoreSpotlightIndexerTask *)v36 setDataMigrationStage:dataMigrationStage];
            v38 = logForCSLogCategoryIndex([(SPConcreteCoreSpotlightIndexer *)self performIndexerTask:v36 completionHandler:&__block_literal_global_650]);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v50 = @"com.apple.mobilemail.reindexVersion";
              v51 = 2112;
              v52 = @"599";
              _os_log_impl(&dword_231A35000, v38, OS_LOG_TYPE_INFO, "Reindexing and setting %@ %@", buf, 0x16u);
            }

            [(SPConcreteCoreSpotlightIndexer *)self setProperty:@"599" forKey:@"com.apple.mobilemail.reindexVersion" sync:1];
            goto LABEL_36;
          }

          *buf = 0;
          v28 = "Reindex version not set";
          v29 = v17;
          v30 = 2;
        }

        _os_log_impl(&dword_231A35000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
        goto LABEL_33;
      }
    }

    v27 = logForCSLogCategoryIndex(v10);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v50 = sMailProtectionClass;
      v51 = 2112;
      v52 = @"com.apple.mobilemail";
      _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_DEFAULT, "*warn* index %@ has information for %@", buf, 0x16u);
    }
  }

LABEL_36:
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = logForCSLogCategoryDefault(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652_cold_1();
    }
  }
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (a3 == 1)
  {
    v12 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656_cold_1(a1, v10);
    }

    goto LABEL_11;
  }

  if (!a3 && [WeakRetained index] == *(a1 + 48))
  {
    _MDStoreOIDArrayGetVectorCount();
    v11 = objc_opt_new();
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_2;
    v30 = &unk_278934910;
    v32 = a6;
    v12 = v11;
    v31 = v12;
    _MDStoreOIDArrayApplyBlock();
    v13 = [v12 count];
    if (v13)
    {
      v14 = logForCSLogCategoryIndex(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v12 count];
        v16 = *(a1 + 32);
        *buf = 134218242;
        v37 = v15;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "Request reimport of %ld items for bundleID:%@ (journal)", buf, 0x16u);
      }

      v17 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
      v18 = [v10 dataclass];
      v35 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      [v17 setProtectionClasses:v19];

      [v17 setIdentifiersToReindex:v12];
      v20 = [SPCoreSpotlightIndexerTask alloc];
      v34 = v10;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      v22 = [(SPCoreSpotlightIndexerTask *)v20 initWithIndexJob:v17 indexers:v21];

      v33 = *(a1 + 32);
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [(SPCoreSpotlightIndexerTask *)v22 setBundleIDs:v23];

      [(SPCoreSpotlightIndexerTask *)v22 setDataMigrationStage:*(a1 + 56)];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_658;
      v24[3] = &unk_2789342C0;
      v25 = v12;
      v26 = *(a1 + 32);
      [v10 performIndexerTask:v22 completionHandler:v24];
    }

LABEL_11:
  }
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (a3 == 2781)
  {
    v15 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && a5 >= 2)
    {
      v9 = a5;
      v10 = *MEMORY[0x277CBEEE8];
      for (i = 1; i != v9; ++i)
      {
        v12 = [v15 objectAtIndexedSubscript:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectAtIndexedSubscript:0];
          v14 = v13;
          if (v13 != v10 && v13)
          {
            [*(a1 + 32) addObject:v13];
          }
        }
      }
    }
  }
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_658(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 40);
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Done reimporting %ld items for bundleID:%@ (journal)", &v5, 0x16u);
  }
}

- (void)whenFinishedDraining:(id)draining
{
  drainingCopy = draining;
  os_unfair_lock_lock(&sDrainedLock);
  if (self->_finishedDrainingJournal)
  {
    os_unfair_lock_unlock(&sDrainedLock);
    drainingCopy[2](drainingCopy, 1);
  }

  else
  {
    blocksToRunWhenFinishedDraining = self->_blocksToRunWhenFinishedDraining;
    if (!blocksToRunWhenFinishedDraining)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_blocksToRunWhenFinishedDraining;
      self->_blocksToRunWhenFinishedDraining = v5;

      blocksToRunWhenFinishedDraining = self->_blocksToRunWhenFinishedDraining;
    }

    v7 = [drainingCopy copy];
    [(NSMutableArray *)blocksToRunWhenFinishedDraining addObject:v7];

    os_unfair_lock_unlock(&sDrainedLock);
  }
}

- (void)updateKnownBundles:(id)bundles group:(id)group
{
  bundlesCopy = bundles;
  v7 = sIndexQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SPConcreteCoreSpotlightIndexer_updateKnownBundles_group___block_invoke;
  v11[3] = &unk_2789342C0;
  v11[4] = self;
  v12 = bundlesCopy;
  v8 = bundlesCopy;
  groupCopy = group;
  v10 = _setup_block(v11, 0, 3920);
  dispatch_group_async(groupCopy, v7, v10);
}

void *__59__SPConcreteCoreSpotlightIndexer_updateKnownBundles_group___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) index];
  if (result)
  {
    v3 = logForCSLogCategoryIndex(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) dataclass];
      v5 = [*(a1 + 40) componentsJoinedByString:{@", "}];
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### fixupBundles %@ - %@", &v6, 0x16u);
    }

    result = [*(a1 + 40) count];
    if (result)
    {
      return SIUpdateKnownBundles();
    }
  }

  return result;
}

- (void)fixupBundlesWithGroup:(id)group
{
  v17[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (index)
  {
    if ((sPrivate & 1) == 0)
    {
      v6 = index;
      if (([sDelegate managedIndex] & 1) == 0)
      {
        v7 = objc_opt_new();
        objc_initWeak(&location, self);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __56__SPConcreteCoreSpotlightIndexer_fixupBundlesWithGroup___block_invoke;
        v12[3] = &unk_278934988;
        objc_copyWeak(v15, &location);
        v15[1] = v6;
        v8 = v7;
        v13 = v8;
        v9 = groupCopy;
        v14 = v9;
        v10 = MEMORY[0x2383760E0](v12);
        dispatch_group_enter(v9);
        v17[0] = @"_kMDItemBundleID";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
        [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v6 query:@"@_kMDItemBundleID=*" fetchAttributes:v11 resultsHandler:v10];

        objc_destroyWeak(v15);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __56__SPConcreteCoreSpotlightIndexer_fixupBundlesWithGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (a3 == 1)
  {
    v11 = [*(a1 + 32) allObjects];
    v12 = logForCSLogCategoryIndex(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 dataclass];
      v14 = [v11 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "### fixupBundles found %@ - %@", buf, 0x16u);
    }

    [v10 updateKnownBundles:v11 group:*(a1 + 40)];
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [WeakRetained index] == *(a1 + 56))
  {
    _MDStoreOIDArrayGetVectorCount();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v15 = *(a1 + 32);
    _MDStoreOIDArrayApplyBlock();

    _Block_object_dispose(buf, 8);
  }
}

void __56__SPConcreteCoreSpotlightIndexer_fixupBundlesWithGroup___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v12 = _MDPlistBytesCopyPlistAtIndex();
  if (v12)
  {
    v7 = a5 >= 2;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = a5;
    v9 = 1;
    do
    {
      v10 = [v12 objectAtIndexedSubscript:v9];
      v11 = [v10 objectAtIndexedSubscript:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) addObjectsFromArray:v11];
      }

      ++v9;
    }

    while (v8 != v9);
  }
}

- (void)fixupPathTimeouts
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Starting pathFixup query pc: %@", buf, 0xCu);
}

void __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (a3 == 1)
    {
      v9 = logForCSLogCategoryIndex(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke_cold_1(v8);
      }
    }

    else if (!a3 && [WeakRetained index] == *(a1 + 40))
    {
      _MDStoreOIDArrayGetVectorCount();
      _MDStoreOIDArrayApplyBlock();
    }
  }
}

uint64_t __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = logForCSLogCategoryIndex(a1);
  v8 = a5 - 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) dataclass];
    v11[0] = 67109378;
    v11[1] = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "SIFixupPaths count: %d pc: %@", v11, 0x12u);
  }

  return SIFixupPaths();
}

- (void)indexFinishedDrainingJournal
{
  v28 = *MEMORY[0x277D85DE8];
  [(SPConcreteCoreSpotlightIndexer *)self indexFinishedDrainingJournal:0];
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (index && !self->_readOnly && !self->_suspended && !self->_suspending)
  {
    v4 = index;
    os_unfair_lock_lock(&sDrainedLock);
    [(SPConcreteCoreSpotlightIndexer *)self setFinishedDrainingJournal:1];
    v5 = self->_blocksToRunWhenFinishedDraining;
    blocksToRunWhenFinishedDraining = self->_blocksToRunWhenFinishedDraining;
    self->_blocksToRunWhenFinishedDraining = 0;

    os_unfair_lock_unlock(&sDrainedLock);
    if (v5)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v5;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v8)
      {
        v9 = *v23;
        do
        {
          v10 = 0;
          do
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v22 + 1) + 8 * v10++) + 16))();
          }

          while (v8 != v10);
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v8);
      }
    }

    [sDelegate indexAvailableForProtectionClass:self->_dataclass newIndex:0];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_initWeak(&location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __62__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal__block_invoke;
    v18 = &unk_2789349D8;
    objc_copyWeak(v20, &location);
    v20[1] = v4;
    v12 = v11;
    v19 = v12;
    v13 = MEMORY[0x2383760E0](&v15);
    v26 = @"_kMDItemExternalID";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:{1, v15, v16, v17, v18}];
    [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v4 query:@"_kMDItemBundleID=com.apple.searchd" fetchAttributes:v14 resultsHandler:v13];

    [(SPConcreteCoreSpotlightIndexer *)self fixupPathTimeouts];
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __62__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal__block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v10 = WeakRetained;
  if (a3 == 1)
  {
    if ([WeakRetained index] == a1[6])
    {
      [v10 addClients:a1[4]];
    }
  }

  else if (!a3 && [WeakRetained index] == a1[6])
  {
    _MDStoreOIDArrayGetVectorCount();
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v11 = a1[4];
    _MDStoreOIDArrayApplyBlock();

    _Block_object_dispose(v12, 8);
  }
}

void __62__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v7 = _MDPlistBytesCopyPlistAtIndex();
  if (v7)
  {
    v8 = a5 >= 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = a5;
    v10 = 1;
    v13 = v7;
    do
    {
      v11 = [v13 objectAtIndexedSubscript:v10];
      v12 = [v11 objectAtIndexedSubscript:0];

      [*(a1 + 32) addObject:v12];
      v7 = v13;
      ++v10;
    }

    while (v9 != v10);
  }
}

- (void)removeExpiredItemsForBundleId:(id)id group:(id)group
{
  idCopy = id;
  groupCopy = group;
  Current = CFAbsoluteTimeGetCurrent();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke;
  v14[3] = &unk_278934338;
  v14[4] = self;
  v15 = idCopy;
  v16 = groupCopy;
  v17 = Current;
  v9 = groupCopy;
  v10 = idCopy;
  v11 = MEMORY[0x2383760E0](v14);
  v12 = sIndexQueue;
  v13 = _setup_block(v11, 0, 4101);
  dispatch_group_async(v9, v12, v13);
}

void __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) index];
  objc_initWeak(&location, *(a1 + 32));
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_2;
  v13 = &unk_278934988;
  objc_copyWeak(v16, &location);
  v16[1] = v2;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v3 = MEMORY[0x2383760E0](&v10);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=%@ && %@<=$time.absolute(%f))", @"_kMDItemBundleID", *(a1 + 40), *MEMORY[0x277CC2A70], *(a1 + 56), v10, v11, v12, v13];
  dispatch_group_enter(*(a1 + 48));
  v5 = *(a1 + 32);
  v19[0] = @"_kMDItemExternalID";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = *(a1 + 40);
  if (v7)
  {
    v18 = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 _startInternalQueryWithIndex:v2 query:v4 fetchAttributes:v6 forBundleIds:v8 resultsHandler:v3];
  if (v7)
  {
  }

  if ((v9 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 48));
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3 == 1)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [WeakRetained index] == *(a1 + 56))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_3;
    v12[3] = &unk_278934A00;
    v11 = v10;
    v13 = v11;
    [a6 enumerateQueryResults:1 stringCache:0 usingBlock:v12];
    if ([v11 count])
    {
      [WeakRetained indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:v11 clientState:0 expectedClientState:0 clientStateName:0 forBundleID:*(a1 + 32) options:0 completionHandler:&__block_literal_global_675];
    }
  }
}

id *__70__SPConcreteCoreSpotlightIndexer_removeExpiredItemsForBundleId_group___block_invoke_3(id *result, void *a2)
{
  if (*a2)
  {
    return [result[4] addObject:?];
  }

  return result;
}

- (void)revokeExpiredItems:(id)items activity:(id)activity
{
  v57 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  activityCopy = activity;
  owner = [(SPConcreteCoreSpotlightIndexer *)self owner];
  dataMigrationStage = [owner dataMigrationStage];
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (index)
  {
    v11 = index;
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - self->_lastTTLPass >= 21600.0)
    {
      self->_lastTTLPass = Current;
      v13 = dispatch_group_create();
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x2020000000;
      v52 = 0;
      objc_initWeak(&location, self);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke;
      v43[3] = &unk_278934AC0;
      objc_copyWeak(v49, &location);
      v49[1] = v11;
      v43[4] = self;
      v48 = v51;
      v34 = activityCopy;
      v44 = v34;
      v36 = v14;
      v45 = v36;
      v49[2] = dataMigrationStage;
      v35 = v13;
      v46 = v35;
      v15 = itemsCopy;
      v47 = v15;
      v37 = MEMORY[0x2383760E0](v43);
      v16 = *MEMORY[0x277CC3238];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@<=$time.absolute(%f)) && (%@!=*)) || (%@<=$time.absolute(%f))", *MEMORY[0x277CC2A70], Current + 86400.0, *MEMORY[0x277CC3238], *MEMORY[0x277CC2A70], *&Current];
      dispatch_group_enter(v15);
      v19 = logForCSLogCategoryIndex(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
        *buf = 138412290;
        v56 = dataclass;
        _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "XPC activity:com.apple.searchd.expirations starting ... pc=%@", buf, 0xCu);
      }

      v54[0] = @"_kMDItemBundleID";
      v54[1] = @"_kMDItemExternalID";
      v54[2] = v16;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
      v22 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v11 query:v17 fetchAttributes:v21 resultsHandler:v37];

      if (!v22)
      {
        v24 = logForCSLogCategoryIndex(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          dataclass2 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
          *buf = 138412290;
          v56 = dataclass2;
          _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "XPC activity:com.apple.searchd.expirations not started pc=%@", buf, 0xCu);
        }

        dispatch_group_leave(v15);
      }

      dataclass3 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
      v27 = [dataclass3 isEqualToString:*MEMORY[0x277CCA190]];

      if (v27)
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_686;
        v38[3] = &unk_278934B10;
        objc_copyWeak(v42, &location);
        v42[1] = v11;
        v41 = v51;
        v39 = v34;
        v28 = v15;
        v40 = v28;
        v29 = MEMORY[0x2383760E0](v38);
        dispatch_group_enter(v28);
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2500], @"com.apple.spotlight.category"];

        v31 = *MEMORY[0x277CC3000];
        v53[0] = @"_kMDItemExternalID";
        v53[1] = v31;
        v53[2] = *MEMORY[0x277CC2FF8];
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
        v33 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:v11 query:v30 fetchAttributes:v32 forBundleIds:&unk_2846C9278 resultsHandler:v29];

        if (!v33)
        {
          dispatch_group_leave(v28);
        }

        objc_destroyWeak(v42);
      }

      else
      {
        v30 = v17;
      }

      objc_destroyWeak(v49);
      objc_destroyWeak(&location);
      _Block_object_dispose(v51, 8);
    }
  }
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v65 = *MEMORY[0x277D85DE8];
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v11 = WeakRetained;
  if (a3 == 1)
  {
    v19 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) dataclass];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "SPQueryFinished for activity:com.apple.searchd.expirations pc=%@", &buf, 0xCu);
    }

    v21 = sIndexQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_682;
    v34[3] = &unk_278934A98;
    v37 = *(a1 + 72);
    v22 = *(a1 + 56);
    v35 = *(a1 + 48);
    objc_copyWeak(&v38, (a1 + 80));
    v36 = *(a1 + 64);
    v23 = _setup_block(v34, 0, 4208);
    dispatch_group_notify(v22, v21, v23);

    objc_destroyWeak(&v38);
  }

  else if (!a3)
  {
    v12 = [WeakRetained index];
    if (v12 == *(a1 + 88))
    {
      v13 = logForCSLogCategoryIndex(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) dataclass];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "SPQueryResults for activity:com.apple.searchd.expirations pc=%@", &buf, 0xCu);
      }

      if ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || (v16 = *(a1 + 40)) != 0 && (should_defer = xpc_activity_should_defer(v16)))
      {
        v17 = logForCSLogCategoryIndex(should_defer);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 32) dataclass];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "SPQueryResults deferred for activity:com.apple.searchd.expirations pc=%@", &buf, 0xCu);
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      else
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v61 = 0x3032000000;
        v62 = __Block_byref_object_copy__0;
        v63 = __Block_byref_object_dispose__0;
        v64 = 0;
        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = __Block_byref_object_copy__0;
        v54 = __Block_byref_object_dispose__0;
        v55 = 0;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679;
        v43[3] = &unk_278934A70;
        v24 = *(a1 + 48);
        p_buf = &buf;
        v48 = &v50;
        v44 = v24;
        v45 = v11;
        v49 = *(a1 + 96);
        v46 = *(a1 + 56);
        [a6 enumerateQueryResults:3 stringCache:0 usingBlock:v43];
        v25 = [v51[5] count];
        if (v25)
        {
          v26 = logForCSLogCategoryIndex(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_cold_1(&buf + 8, v59, [v51[5] count], v26);
          }

          v27 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
          [v27 setIdentifiersToReindex:v51[5]];
          v28 = [v11 dataclass];
          v58 = v28;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
          [v27 setProtectionClasses:v29];

          v30 = [SPCoreSpotlightIndexerTask alloc];
          v57 = v11;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          v32 = [(SPCoreSpotlightIndexerTask *)v30 initWithIndexJob:v27 indexers:v31];

          v56 = *(*(&buf + 1) + 40);
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
          [(SPCoreSpotlightIndexerTask *)v32 setBundleIDs:v33];

          [(SPCoreSpotlightIndexerTask *)v32 setDataMigrationStage:*(a1 + 96)];
          dispatch_group_enter(*(a1 + 56));
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_681;
          v39[3] = &unk_278934A48;
          v41 = &v50;
          v42 = &buf;
          v40 = *(a1 + 56);
          [v11 performIndexerTask:v32 completionHandler:v39];
        }

        _Block_object_dispose(&v50, 8);
        _Block_object_dispose(&buf, 8);
      }
    }
  }
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679(uint64_t a1, uint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a2;
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6 == *MEMORY[0x277CBEEE8] || v6 == 0)
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        v9 = v8;
        if (([*(*(*(a1 + 56) + 8) + 40) isEqual:v5] & 1) == 0)
        {
          v10 = [*(*(*(a1 + 64) + 8) + 40) count];
          if (v10)
          {
            v11 = logForCSLogCategoryIndex(v10);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679_cold_1();
            }

            v12 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
            v13 = [*(a1 + 40) dataclass];
            v28[0] = v13;
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
            [v12 setProtectionClasses:v14];

            [v12 setIdentifiersToReindex:*(*(*(a1 + 64) + 8) + 40)];
            v15 = [SPCoreSpotlightIndexerTask alloc];
            v27 = *(a1 + 40);
            v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
            v17 = [(SPCoreSpotlightIndexerTask *)v15 initWithIndexJob:v12 indexers:v16];

            v26 = *(*(*(a1 + 56) + 8) + 40);
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
            [(SPCoreSpotlightIndexerTask *)v17 setBundleIDs:v18];

            [(SPCoreSpotlightIndexerTask *)v17 setDataMigrationStage:*(a1 + 72)];
            dispatch_group_enter(*(a1 + 48));
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680;
            v23[3] = &unk_278934A48;
            v25 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
            v19 = *(a1 + 40);
            v24 = *(a1 + 48);
            [v19 performIndexerTask:v17 completionHandler:v23];
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
          v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v21 = *(*(a1 + 64) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;

          [*(a1 + 32) addObject:v5];
        }

        [*(*(*(a1 + 64) + 8) + 40) addObject:v9];
      }
    }

    else
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_681(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_682(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          WeakRetained = objc_loadWeakRetained((a1 + 56));
          [WeakRetained removeExpiredItemsForBundleId:v7 group:{*(a1 + 40), v9}];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_686(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (a3 == 1)
  {
    dispatch_group_leave(*(a1 + 40));
    goto LABEL_10;
  }

  if (!a3 && [WeakRetained index] == *(a1 + 64))
  {
    v12 = *(*(a1 + 48) + 8);
    if (*(v12 + 24))
    {
LABEL_8:
      *(v12 + 24) = 1;
      goto LABEL_10;
    }

    v13 = *(a1 + 32);
    if (v13 && xpc_activity_should_defer(v13))
    {
      v12 = *(*(a1 + 48) + 8);
      goto LABEL_8;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_2;
    v14[3] = &unk_278934AE8;
    v15 = @"com.apple.spotlight.category";
    v16 = &v24;
    v17 = &v18;
    [a6 enumerateQueryResults:3 stringCache:0 usingBlock:v14];
    if ([v25[5] count] || objc_msgSend(v19[5], "count"))
    {
      [v11 indexSearchableItems:v25[5] deleteSearchableItemsWithIdentifiers:v19[5] clientState:0 expectedClientState:0 clientStateName:0 forBundleID:@"com.apple.spotlight.category" options:0 completionHandler:0];
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

LABEL_10:
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_2(uint64_t a1, id *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = [v6 count];
  if (v7 != [v5 count])
  {
LABEL_15:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v4];
    goto LABEL_16;
  }

  v25 = a1;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v6];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v10 = [v6 count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      v13 = MEMORY[0x277CBEAA8];
      v14 = [v6 objectAtIndexedSubscript:i];
      v15 = [v13 dateWithTimeInterval:v14 sinceDate:86400.0];
      v16 = [v9 earlierDate:v15];

      if (v16 != v9)
      {
        v17 = [v5 objectAtIndexedSubscript:i];
        [v8 removeObject:v17];

        v18 = [v6 objectAtIndexedSubscript:i];
        [v26 removeObject:v18];
      }
    }
  }

  if (![v8 count])
  {

    a1 = v25;
    goto LABEL_15;
  }

  v19 = [v8 count];
  if (v19 != [v5 count])
  {
    v20 = objc_opt_new();
    [v20 setUniqueIdentifier:v4];
    [v20 setBundleID:*(v25 + 32)];
    v21 = objc_alloc(MEMORY[0x277CC34B8]);
    v22 = *MEMORY[0x277CC2FF8];
    v27[0] = *MEMORY[0x277CC3000];
    v27[1] = v22;
    v28[0] = v8;
    v28[1] = v26;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v24 = [v21 initWithAttributes:v23];
    [v20 setAttributeSet:v24];

    [*(*(*(v25 + 40) + 8) + 40) addObject:v20];
  }

LABEL_16:
}

- (void)requestRequiresImportWithoutSandboxExtension:(id)extension maxCount:(unint64_t)count depth:(int64_t)depth
{
  v34 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v8 = logForCSLogCategoryDefault(extensionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = count;
    *&buf[12] = 2048;
    *&buf[14] = depth;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "requestRequiresImportWithoutSandboxExtension maxCount:%lu, depth:%ld", buf, 0x16u);
  }

  owner = [(SPConcreteCoreSpotlightIndexer *)self owner];
  dataMigrationStage = [owner dataMigrationStage];
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (index)
  {
    v12 = dispatch_group_create();
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v33 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke;
    v22[3] = &unk_278934B60;
    objc_copyWeak(v28, &location);
    v26 = buf;
    v27 = v29;
    v28[1] = index;
    v28[2] = dataMigrationStage;
    v14 = v12;
    v23 = v14;
    v15 = v13;
    v24 = v15;
    v28[3] = count;
    v28[4] = depth;
    v16 = extensionCopy;
    v25 = v16;
    v17 = MEMORY[0x2383760E0](v22);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemRequiresImport==1 && _kMDItemImportComplete!=* && (_kMDItemImportHasSandboxExtension==0 || _kMDItemImportHasSandboxExtension!=*) && kMDItemFileProviderID!=*"];
    dispatch_group_enter(v16);
    v31[0] = @"_kMDItemBundleID";
    v31[1] = @"_kMDItemExternalID";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v20 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:index query:v18 fetchAttributes:v19 forBundleIds:0 maxCount:count resultsHandler:v17];

    if (!v20)
    {
      dispatch_group_leave(v16);
    }

    objc_destroyWeak(v28);
    _Block_object_dispose(v29, 8);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
  }
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (a3 != 1)
  {
    if (!a3 && [WeakRetained index] == *(a1 + 80))
    {
      *&v65 = 0;
      *(&v65 + 1) = &v65;
      v66 = 0x3032000000;
      v67 = __Block_byref_object_copy__0;
      v68 = __Block_byref_object_dispose__0;
      v69 = 0;
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__0;
      v56 = __Block_byref_object_dispose__0;
      v57 = 0;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_2;
      v45[3] = &unk_278934B38;
      v48 = *(a1 + 56);
      v49 = &v65;
      v50 = &v52;
      v45[4] = v11;
      v51 = *(a1 + 88);
      v46 = *(a1 + 32);
      v47 = *(a1 + 40);
      [a6 enumerateQueryResults:2 stringCache:0 usingBlock:v45];
      v12 = [v53[5] count];
      if (v12)
      {
        v13 = logForCSLogCategoryDefault(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v53[5] count];
          v15 = *(*(&v65 + 1) + 40);
          *buf = 134218242;
          v62 = v14;
          v63 = 2112;
          v64 = v15;
          _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_INFO, "Request reimport of %ld items for bundleID:%@ (sandbox items)", buf, 0x16u);
        }

        v16 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
        v17 = [v11 dataclass];
        v60 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        [v16 setProtectionClasses:v18];

        [v16 setIdentifiersToReindex:v53[5]];
        v19 = [SPCoreSpotlightIndexerTask alloc];
        v59 = v11;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
        v21 = [(SPCoreSpotlightIndexerTask *)v19 initWithIndexJob:v16 indexers:v20];

        v58 = *(*(&v65 + 1) + 40);
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [(SPCoreSpotlightIndexerTask *)v21 setBundleIDs:v22];

        [(SPCoreSpotlightIndexerTask *)v21 setDataMigrationStage:*(a1 + 88)];
        dispatch_group_enter(*(a1 + 32));
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_699;
        v41[3] = &unk_278934A48;
        v43 = &v52;
        v44 = &v65;
        v42 = *(a1 + 32);
        [v11 performIndexerTask:v21 completionHandler:v41];
      }

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(&v65, 8);
    }

    goto LABEL_19;
  }

  v23 = *(a1 + 96);
  v24 = *(*(*(a1 + 56) + 8) + 24);
  if (v23)
  {
    if (v24 < v23)
    {
LABEL_11:
      v25 = logForCSLogCategoryDefault(WeakRetained);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(*(*(a1 + 64) + 8) + 24);
        LODWORD(v65) = 134217984;
        *(&v65 + 4) = v26;
        _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEFAULT, "Completed sandbox items query (%ld processed)", &v65, 0xCu);
      }

      v27 = *(a1 + 32);
      v28 = sIndexQueue;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_701;
      v34[3] = &unk_278934550;
      v36 = *(a1 + 64);
      v35 = *(a1 + 48);
      v29 = _setup_block(v34, 0, 4410);
      dispatch_group_notify(v27, v28, v29);

      goto LABEL_19;
    }
  }

  else
  {
    v23 = *(*(*(a1 + 56) + 8) + 24);
    if (v24 < 256)
    {
      goto LABEL_11;
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 24) || (v30 = *(a1 + 104) + 1, v30 > 5 * (v23 >> 8)))
  {
    v30 = 0;
    v23 *= 2;
  }

  v31 = *(a1 + 32);
  v32 = sIndexQueue;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_700;
  v37[3] = &unk_278934690;
  v37[4] = WeakRetained;
  v38 = *(a1 + 48);
  v39 = v23;
  v40 = v30;
  v33 = _setup_block(v37, 0, 4404);
  dispatch_group_notify(v31, v32, v33);

LABEL_19:
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_2(uint64_t a1, id *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 56) + 8) + 24);
  v4 = *a2;
  v5 = *a2;
  if (v5)
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = v6;
      ++*(*(*(a1 + 64) + 8) + 24);
      if (([*(*(*(a1 + 72) + 8) + 40) isEqual:v5] & 1) == 0)
      {
        v8 = [*(*(*(a1 + 80) + 8) + 40) count];
        if (v8)
        {
          v9 = logForCSLogCategoryDefault(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = [*(*(*(a1 + 80) + 8) + 40) count];
            v11 = *(*(*(a1 + 72) + 8) + 40);
            *buf = 134218242;
            v33 = v10;
            v34 = 2112;
            v35 = v11;
            _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "Request reimport of %ld items for bundleID:%@ (sandbox items)", buf, 0x16u);
          }

          v12 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
          v13 = [*(a1 + 32) dataclass];
          v31 = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          [v12 setProtectionClasses:v14];

          [v12 setIdentifiersToReindex:*(*(*(a1 + 80) + 8) + 40)];
          v15 = [SPCoreSpotlightIndexerTask alloc];
          v30 = *(a1 + 32);
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          v17 = [(SPCoreSpotlightIndexerTask *)v15 initWithIndexJob:v12 indexers:v16];

          v29 = *(*(*(a1 + 72) + 8) + 40);
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          [(SPCoreSpotlightIndexerTask *)v17 setBundleIDs:v18];

          [(SPCoreSpotlightIndexerTask *)v17 setDataMigrationStage:*(a1 + 88)];
          dispatch_group_enter(*(a1 + 40));
          v23 = MEMORY[0x277D85DD0];
          v24 = 3221225472;
          v25 = __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_698;
          v26 = &unk_278934A48;
          v28 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
          v19 = *(a1 + 32);
          v27 = *(a1 + 40);
          [v19 performIndexerTask:v17 completionHandler:&v23];
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v4);
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v21 = *(*(a1 + 80) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        [*(a1 + 48) addObject:v5];
      }

      [*(*(*(a1 + 80) + 8) + 40) addObject:{v7, v23, v24, v25, v26}];
    }
  }
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_698(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Done reimporting %ld items for bundleID:%@ (sandbox items)", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_699(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "Done reimporting %ld items for bundleID:%@ (sandbox items)", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_700(uint64_t a1)
{
  [*(a1 + 32) requestRequiresImportWithoutSandboxExtension:*(a1 + 40) maxCount:*(a1 + 48) depth:*(a1 + 56)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __94__SPConcreteCoreSpotlightIndexer_requestRequiresImportWithoutSandboxExtension_maxCount_depth___block_invoke_701(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Done reimporting sandbox items (%ld processed)", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_expireCorruptIndexFilesWithPath:(id)path keepLatest:(BOOL)latest
{
  v44 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  lastPathComponent = [pathCopy lastPathComponent];
  v7 = [lastPathComponent stringByAppendingString:@"-"];

  v38 = stringByDeletingLastPathComponent;
  if (stringByDeletingLastPathComponent && v7)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = objc_opt_new();
    v36 = defaultManager;
    v10 = [defaultManager enumeratorAtPath:stringByDeletingLastPathComponent];
    nextObject = [v10 nextObject];
    if (nextObject)
    {
      v12 = nextObject;
      do
      {
        [v10 skipDescendants];
        if (![v12 rangeOfString:v7])
        {
          v14 = [v12 substringFromIndex:v13];
          v15 = strtoull([v14 UTF8String], 0, 10);

          if (v15 + 1 >= 2)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
            [v9 addObject:v16];
          }
        }

        nextObject2 = [v10 nextObject];

        v12 = nextObject2;
      }

      while (nextObject2);
    }

    if ([v9 count])
    {
      v34 = v9;
      v35 = pathCopy;
      v18 = [v9 sortedArrayUsingSelector:sel_compare_];
      reverseObjectEnumerator = [v18 reverseObjectEnumerator];

      Current = CFAbsoluteTimeGetCurrent();
      nextObject3 = [reverseObjectEnumerator nextObject];
      if (nextObject3)
      {
        v22 = nextObject3;
        v23 = 0;
        do
        {
          [v22 doubleValue];
          v26 = (Current - v24 <= 864000.0 || v24 >= Current) && v23 == 0;
          if (v26 && latest)
          {
            v23 = 1;
          }

          else
          {
            v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%llu", v7, objc_msgSend(v22, "unsignedLongLongValue")];
            v28 = [v38 stringByAppendingPathComponent:v27];
            v39 = 0;
            v29 = [v36 removeItemAtPath:v28 error:&v39];
            v30 = v39;
            v31 = logForCSLogCategoryIndex(v30);
            v32 = v31;
            if (v29)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v41 = v28;
                _os_log_impl(&dword_231A35000, v32, OS_LOG_TYPE_DEFAULT, "Expired corrupt index at path:%@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v41 = v28;
              v42 = 2112;
              v43 = v30;
              _os_log_error_impl(&dword_231A35000, v32, OS_LOG_TYPE_ERROR, "Failed to remove path:%@, error:%@", buf, 0x16u);
            }
          }

          nextObject4 = [reverseObjectEnumerator nextObject];

          v22 = nextObject4;
        }

        while (nextObject4);
      }

      v9 = v34;
      pathCopy = v35;
    }
  }
}

- (BOOL)updateMeCardInfo:(id)info middleName:(id)name familyName:(id)familyName emailAddresses:(id)addresses isFirstTimeCheck:(BOOL)check isNotCreateNewIndex:(BOOL)index group:(id)group
{
  indexCopy = index;
  v74[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  nameCopy = name;
  familyNameCopy = familyName;
  addressesCopy = addresses;
  groupCopy = group;
  _SISetMeEmailAddresses();
  _SISetMeNames();
  v17 = _SICopyMeAliasName();
  v18 = MEMORY[0x277CCACA8];
  indexDirectory = [sDelegate indexDirectory];
  v20 = [v18 stringWithFormat:@"%@/meCardInfo.plist", indexDirectory];

  pthread_rwlock_wrlock(&sIndexMeCardInfoLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v70 = v20;
  v22 = [defaultManager fileExistsAtPath:v20];

  if (!v22 || ([MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v70], (dictionary = objc_claimAutoreleasedReturnValue()) == 0))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if ((v22 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v73 = *MEMORY[0x277CCA1B0];
      v74[0] = *MEMORY[0x277CCA1A0];
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
      [defaultManager2 createFileAtPath:v70 contents:0 attributes:v25];
    }
  }

  if (check)
  {
    v26 = 0;
    if (!addressesCopy)
    {
      goto LABEL_120;
    }

    goto LABEL_117;
  }

  if (dictionary)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  if (v27 == 1)
  {
    v28 = [dictionary valueForKey:@"emails"];
    v29 = [dictionary valueForKey:@"givenname"];
    v67 = [dictionary valueForKey:@"middlename"];
    v64 = [dictionary valueForKey:@"familyname"];
    v30 = [dictionary valueForKey:@"aliasname"];
    if (v28 && [v28 count])
    {
      v63 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v28];
    }

    else
    {
      v63 = 0;
    }

    v65 = v29;
    if (v29 && (v34 = [v29 length]) != 0 && (!infoCopy || (v34 = objc_msgSend(infoCopy, "length")) == 0) || (v32 = v67 == 0, v67) && (v34 = objc_msgSend(v67, "length")) != 0 && (!nameCopy || (v34 = objc_msgSend(nameCopy, "length")) == 0) || (v31 = v64 == 0, v64) && (v34 = objc_msgSend(v64, "length")) != 0 && (!familyNameCopy || (v34 = objc_msgSend(familyNameCopy, "length")) == 0) || v65 && (v35 = objc_msgSend(v65, "length"), infoCopy) && v35 && objc_msgSend(infoCopy, "length") && (v34 = objc_msgSend(infoCopy, "isEqualToString:", v65), !v34) || v67 && (v36 = objc_msgSend(v67, "length"), nameCopy) && v36 && objc_msgSend(nameCopy, "length") && (v34 = objc_msgSend(nameCopy, "isEqualToString:", v67), !v34) || v64 && (v37 = objc_msgSend(v64, "length"), familyNameCopy) && v37 && objc_msgSend(familyNameCopy, "length") && (v34 = objc_msgSend(familyNameCopy, "isEqualToString:", v64), (v34 & 1) == 0))
    {
      v62 = v28;
      v39 = logForCSLogCategoryDefault(v34);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v39, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe name updated", buf, 2u);
      }

      selfCopy4 = self;
      _SISetDerivedFromToIsMeNameUpdated();
LABEL_56:
      if (indexCopy && !selfCopy4->_readOnly)
      {
        v26 = 1;
        [(SPConcreteCoreSpotlightIndexer *)selfCopy4 updateDerivedIsMe:1 runOtherFixups:0 force:1 group:groupCopy state:0];
        goto LABEL_95;
      }

      goto LABEL_94;
    }

    if (v65)
    {
      v38 = [v65 length];
      if (!infoCopy || v38)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v30 = 0;
    v67 = 0;
    v28 = 0;
    v31 = 1;
    v32 = 1;
  }

  v65 = 0;
  if (!infoCopy)
  {
    goto LABEL_18;
  }

LABEL_17:
  v33 = [infoCopy length];
  if (v33)
  {
    goto LABEL_68;
  }

LABEL_18:
  if (v32)
  {
    if (!nameCopy)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v41 = [v67 length];
    if (!nameCopy || v41)
    {
      goto LABEL_62;
    }
  }

  v33 = [nameCopy length];
  if (v33)
  {
    goto LABEL_68;
  }

LABEL_62:
  if (v31)
  {
    if (!familyNameCopy)
    {
      goto LABEL_74;
    }

    goto LABEL_67;
  }

  v42 = [v64 length];
  if (familyNameCopy && !v42)
  {
LABEL_67:
    v33 = [familyNameCopy length];
    if (!v33)
    {
      goto LABEL_74;
    }

LABEL_68:
    v62 = v28;
    v43 = logForCSLogCategoryDefault(v33);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v43, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe name added", buf, 2u);
    }

    selfCopy4 = self;
    _SISetDerivedFromToIsMeNameAdded();
    goto LABEL_71;
  }

LABEL_74:
  v62 = v28;
  if (!v63)
  {
    selfCopy4 = self;
    if (!addressesCopy || (v47 = [addressesCopy count]) == 0)
    {
      v63 = 0;
LABEL_94:
      v26 = 0;
      goto LABEL_95;
    }

    goto LABEL_90;
  }

  v44 = [v63 count];
  selfCopy4 = self;
  if (addressesCopy)
  {
    if (v44)
    {
      if ([addressesCopy count])
      {
        v45 = [v63 isSubsetOfSet:addressesCopy];
        if ((v45 & 1) == 0)
        {
          v61 = logForCSLogCategoryDefault(v45);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231A35000, v61, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe email updated", buf, 2u);
          }

          goto LABEL_56;
        }
      }
    }
  }

  v46 = [v63 count];
  if (addressesCopy)
  {
    if (!v46)
    {
      v47 = [addressesCopy count];
      if (v47)
      {
LABEL_90:
        v49 = logForCSLogCategoryDefault(v47);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231A35000, v49, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe email added", buf, 2u);
        }

LABEL_71:
        if (indexCopy && !selfCopy4->_readOnly)
        {
          [(SPConcreteCoreSpotlightIndexer *)selfCopy4 updateDerivedIsMeIfNotAlready:1 group:groupCopy state:0];
        }

        goto LABEL_94;
      }
    }
  }

  v48 = [v63 count];
  v26 = 0;
  if (addressesCopy && v48)
  {
    if (![addressesCopy count])
    {
      goto LABEL_94;
    }

    if (![v63 isSubsetOfSet:addressesCopy])
    {
      goto LABEL_94;
    }

    v47 = [addressesCopy isSubsetOfSet:v63];
    if (v47)
    {
      goto LABEL_94;
    }

    goto LABEL_90;
  }

LABEL_95:
  if (!v30)
  {
LABEL_104:
    if (v17)
    {
      v51 = [v17 length];
      if (v51)
      {
        v52 = logForCSLogCategoryDefault(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231A35000, v52, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe alias added", buf, 2u);
        }

        _SISetDerivedFromToIsMeAliasAdded();
        if (indexCopy && !selfCopy4->_readOnly)
        {
          [(SPConcreteCoreSpotlightIndexer *)selfCopy4 updateDerivedIsMeIfNotAlready:1 group:groupCopy state:0];
        }
      }
    }

    goto LABEL_116;
  }

  v50 = [v30 length];
  if (!v50 || v17 && (v50 = [v17 length]) != 0)
  {
    if (![v30 length] || !v17 || !objc_msgSend(v17, "length") || (v50 = objc_msgSend(v17, "isEqualToString:", v30), (v50 & 1) != 0))
    {
      if ([v30 length])
      {
        goto LABEL_116;
      }

      goto LABEL_104;
    }
  }

  v53 = logForCSLogCategoryDefault(v50);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v53, OS_LOG_TYPE_DEFAULT, "DerivedFromToIsMe alias updated", buf, 2u);
  }

  _SISetDerivedFromToIsMeAliasUpdated();
  if (indexCopy && !selfCopy4->_readOnly)
  {
    v26 = 1;
    [(SPConcreteCoreSpotlightIndexer *)selfCopy4 updateDerivedIsMe:1 runOtherFixups:0 force:1 group:groupCopy state:0];
  }

LABEL_116:

  if (!addressesCopy)
  {
    goto LABEL_120;
  }

LABEL_117:
  if ([addressesCopy count])
  {
    allObjects = [addressesCopy allObjects];
    [dictionary setValue:allObjects forKey:@"emails"];

    if (!infoCopy)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_120:
  [dictionary removeObjectForKey:@"emails"];
  if (!infoCopy)
  {
    goto LABEL_124;
  }

LABEL_121:
  if ([infoCopy length])
  {
    [dictionary setValue:infoCopy forKey:@"givenname"];
    if (!nameCopy)
    {
      goto LABEL_128;
    }

    goto LABEL_125;
  }

LABEL_124:
  [dictionary removeObjectForKey:@"givenname"];
  if (!nameCopy)
  {
    goto LABEL_128;
  }

LABEL_125:
  if ([nameCopy length])
  {
    [dictionary setValue:nameCopy forKey:@"middlename"];
    if (!familyNameCopy)
    {
      goto LABEL_132;
    }

    goto LABEL_129;
  }

LABEL_128:
  [dictionary removeObjectForKey:@"middlename"];
  if (!familyNameCopy)
  {
    goto LABEL_132;
  }

LABEL_129:
  if ([familyNameCopy length])
  {
    [dictionary setValue:familyNameCopy forKey:@"familyname"];
    if (!v17)
    {
      goto LABEL_135;
    }

    goto LABEL_133;
  }

LABEL_132:
  [dictionary removeObjectForKey:@"familyname"];
  if (!v17)
  {
LABEL_135:
    [dictionary removeObjectForKey:@"aliasname"];
    goto LABEL_136;
  }

LABEL_133:
  if (![v17 length])
  {
    goto LABEL_135;
  }

  [dictionary setValue:v17 forKey:@"aliasname"];
LABEL_136:
  v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v70];
  v71 = 0;
  v56 = [dictionary writeToURL:v55 error:&v71];
  v57 = v71;

  if (v57 || (v56 & 1) == 0)
  {
    v59 = logForCSLogCategoryDefault(v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer updateMeCardInfo:middleName:familyName:emailAddresses:isFirstTimeCheck:isNotCreateNewIndex:group:];
    }
  }

  pthread_rwlock_unlock(&sIndexMeCardInfoLock);

  return v26;
}

- (void)fetchMeCard:(BOOL)card isNotCreateNewIndex:(BOOL)index group:(id)group
{
  indexCopy = index;
  cardCopy = card;
  location[6] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v51 = 0;
  v8 = objc_alloc(MEMORY[0x277CBDAB8]);
  v9 = objc_opt_new();
  v10 = [v8 initWithConfiguration:v9];

  v11 = *MEMORY[0x277CBD000];
  location[0] = *MEMORY[0x277CBD018];
  location[1] = v11;
  v12 = *MEMORY[0x277CBCFF8];
  location[2] = *MEMORY[0x277CBD058];
  location[3] = v12;
  v13 = *MEMORY[0x277CBD098];
  location[4] = *MEMORY[0x277CBCFC0];
  location[5] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:location count:6];
  v15 = [v10 _ios_meContactWithKeysToFetch:v14 error:&v51];

  if (v51)
  {
    v17 = logForCSLogCategoryIndex(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer fetchMeCard:isNotCreateNewIndex:group:];
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  identifier = [v15 identifier];

  if (identifier)
  {
    v21 = objc_opt_new();
    emailAddresses = [v15 emailAddresses];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __getCNContact_block_invoke;
    v52[3] = &unk_278937260;
    v53 = v21;
    v17 = v21;
    [emailAddresses enumerateObjectsUsingBlock:v52];

    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v17];
    v23 = v18;
    v19 = v15;

LABEL_7:
    goto LABEL_8;
  }

  v18 = 0;
  v19 = 0;
LABEL_8:

  v24 = v18;
  v46 = v51;
  pthread_rwlock_wrlock(&sIndexMeCardFirstTimeCheckedFileLock);
  v25 = MEMORY[0x277CCACA8];
  indexDirectory = [sDelegate indexDirectory];
  v27 = [v25 stringWithFormat:@"%@/meCardFirstTimeChecked", indexDirectory];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v29 = [defaultManager fileExistsAtPath:v27];

  if ((v29 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v54 = *MEMORY[0x277CCA1B0];
    v55 = *MEMORY[0x277CCA1A0];
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [defaultManager2 createFileAtPath:v27 contents:0 attributes:v31];
  }

  pthread_rwlock_unlock(&sIndexMeCardFirstTimeCheckedFileLock);
  if (!v19 || (-[SPConcreteCoreSpotlightIndexer meCard](self, "meCard"), (v32 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SPConcreteCoreSpotlightIndexer meCard](self, "meCard"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isEqual:v19], v33, v32, (v34 & 1) != 0))
  {
    v35 = 1;
    if (!indexCopy)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [(SPConcreteCoreSpotlightIndexer *)self setMeCard:v19];
    givenName = [v19 givenName];
    middleName = [v19 middleName];
    familyName = [v19 familyName];
    v39 = [(SPConcreteCoreSpotlightIndexer *)self updateMeCardInfo:givenName middleName:middleName familyName:familyName emailAddresses:v24 isFirstTimeCheck:v29 ^ 1u isNotCreateNewIndex:indexCopy group:groupCopy];

    v35 = !v39;
    if (!indexCopy)
    {
      goto LABEL_18;
    }
  }

  if (!self->_readOnly)
  {
    [(SPConcreteCoreSpotlightIndexer *)self updateDerivedIsMe:v35 runOtherFixups:cardCopy force:0 group:groupCopy state:0];
  }

LABEL_18:
  if (cardCopy)
  {
    v40 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v40 setMaxConcurrentOperationCount:1];
    [v40 setUnderlyingQueue:self->_indexQueue];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(location, self);
    meCardObserver = [(SPConcreteCoreSpotlightIndexer *)self meCardObserver];

    if (meCardObserver)
    {
      meCardObserver2 = [(SPConcreteCoreSpotlightIndexer *)self meCardObserver];
      [defaultCenter removeObserver:meCardObserver2];
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __72__SPConcreteCoreSpotlightIndexer_fetchMeCard_isNotCreateNewIndex_group___block_invoke;
    v48[3] = &unk_278934B88;
    objc_copyWeak(&v50, location);
    v44 = *MEMORY[0x277CBD148];
    v49 = groupCopy;
    v45 = [defaultCenter addObserverForName:v44 object:0 queue:v40 usingBlock:v48];
    [(SPConcreteCoreSpotlightIndexer *)self setMeCardObserver:v45];

    objc_destroyWeak(&v50);
    objc_destroyWeak(location);
  }
}

void __72__SPConcreteCoreSpotlightIndexer_fetchMeCard_isNotCreateNewIndex_group___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Received CNContactStoreMeContactDidChangeNotification notification", v5, 2u);
    }

    [v3 fetchMeCard:0 isNotCreateNewIndex:1 group:*(a1 + 32)];
  }
}

- (void)writeIndexSuccessfulOpenDate:(int64_t)date
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = indexOpenRecordPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"lastOpen"];

  pthread_rwlock_wrlock(&sIndexOpenRecordLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v5];

  if (v9)
  {
    [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
  }

  else
  {
    newIndexOpensDict();
  }
  v10 = ;
  v11 = [MEMORY[0x277CCABB0] numberWithLong:date];
  [v10 setObject:v11 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = *MEMORY[0x277CCA1B0];
    v20[0] = *MEMORY[0x277CCA1A0];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [defaultManager2 createFileAtPath:v5 contents:0 attributes:v13];
  }

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v18 = 0;
  [v10 writeToURL:v14 error:&v18];
  v15 = v18;

  if (v15)
  {
    v17 = logForCSLogCategoryDefault(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexSuccessfulOpenDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexOpenRecordLock);
}

- (void)writeIndexDropAnalyticsDate:(int64_t)date
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = indexOpenRecordPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"lastAnalytics"];

  pthread_rwlock_wrlock(&sIndexOpenRecordLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v5];

  if (v9)
  {
    [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
  }

  else
  {
    newIndexOpensDict();
  }
  v10 = ;
  v11 = [MEMORY[0x277CCABB0] numberWithLong:date];
  [v10 setObject:v11 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = *MEMORY[0x277CCA1B0];
    v20[0] = *MEMORY[0x277CCA1A0];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [defaultManager2 createFileAtPath:v5 contents:0 attributes:v13];
  }

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v18 = 0;
  [v10 writeToURL:v14 error:&v18];
  v15 = v18;

  if (v15)
  {
    v17 = logForCSLogCategoryDefault(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexDropAnalyticsDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexOpenRecordLock);
}

- (int)shouldNotLogIndexDrop:(id)drop ignoreParentDirectoryAge:(BOOL)age
{
  ageCopy = age;
  v27 = *MEMORY[0x277D85DE8];
  v6 = indexOpenRecordPath();
  v7 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v7, @"lastOpen"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v7, @"lastAnalytics"];
  pthread_rwlock_rdlock(&sIndexOpenRecordLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager fileExistsAtPath:v6];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v6];
    v13 = [v12 objectForKeyedSubscript:v8];
    longValue = [v13 longValue];

    v15 = [v12 objectForKeyedSubscript:v9];
    longValue2 = [v15 longValue];

    pthread_rwlock_unlock(&sIndexOpenRecordLock);
    if (longValue <= longValue2)
    {
      v20 = 2;
    }

    else
    {
      bzero(buffer, 0x400uLL);
      indexDirectory = [sDelegate indexDirectory];
      FileSystemRepresentation = CFStringGetFileSystemRepresentation(indexDirectory, buffer, 1024);

      if (FileSystemRepresentation && (memset(&v25, 0, sizeof(v25)), !stat(buffer, &v25)))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v23 = v22 - v25.st_birthtimespec.tv_sec;

        v19 = v23 < 3601;
      }

      else
      {
        v19 = 1;
      }

      if (!ageCopy && v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    pthread_rwlock_unlock(&sIndexOpenRecordLock);
    v20 = 1;
  }

  return v20;
}

- (void)writeIndexCreationDate:(int64_t)date
{
  v33[1] = *MEMORY[0x277D85DE8];
  self->_creationDate = date;
  v5 = indexHeartbeatPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"age"];

  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v5];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"v2"];

      if (v12)
      {
        v13 = newHeartbeatDict();

        v11 = v13;
      }
    }
  }

  else
  {
    v11 = newHeartbeatDict();
  }

  v14 = [v11 objectForKeyedSubscript:@"parentDirectory_age"];
  if (!v14 || (v15 = v14, [v11 objectForKeyedSubscript:@"parentDirectory_age"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "longValue"), v16, v15, v17 <= 0))
  {
    memset(&v31, 0, sizeof(v31));
    indexDirectory = [sDelegate indexDirectory];
    v19 = stat([indexDirectory UTF8String], &v31);

    v20 = __error();
    v21 = *v20;
    if (v19)
    {
      v22 = logForCSLogCategoryDefault(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer writeIndexCreationDate:];
      }
    }

    else
    {
      v22 = [MEMORY[0x277CCABB0] numberWithLong:v31.st_birthtimespec.tv_sec];
      [v11 setObject:v22 forKeyedSubscript:@"parentDirectory_age"];
    }

    *__error() = v21;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithLong:date];
  [v11 setObject:v23 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v32 = *MEMORY[0x277CCA1B0];
    v33[0] = *MEMORY[0x277CCA1A0];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [defaultManager2 createFileAtPath:v5 contents:0 attributes:v25];
  }

  v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v30 = 0;
  [v11 writeToURL:v26 error:&v30];
  v27 = v30;

  if (v27)
  {
    v29 = logForCSLogCategoryDefault(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexCreationDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
}

- (void)writeSDBObjectCount:(int64_t)count
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = indexHeartbeatPath();
  v6 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v6, @"obj_count"];

  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v5];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"v2"];

      if (v12)
      {
        v13 = newHeartbeatDict();

        v11 = v13;
      }
    }
  }

  else
  {
    v11 = newHeartbeatDict();
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLong:count];
  [v11 setObject:v14 forKeyedSubscript:v7];

  if ((v9 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = *MEMORY[0x277CCA1B0];
    v23[0] = *MEMORY[0x277CCA1A0];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [defaultManager2 createFileAtPath:v5 contents:0 attributes:v16];
  }

  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v21 = 0;
  [v11 writeToURL:v17 error:&v21];
  v18 = v21;

  if (v18)
  {
    v20 = logForCSLogCategoryDefault(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeSDBObjectCount:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
}

- (void)incrementIndexWipeCount
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = indexHeartbeatPath();
  v4 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v4, @"wipes"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v4, @"wipes_aggregate"];
  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v3];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"v2"];

      if (v11)
      {
        v12 = newHeartbeatDict();

        v10 = v12;
      }
    }
  }

  else
  {
    v10 = newHeartbeatDict();
  }

  v13 = [v10 objectForKeyedSubscript:v5];
  if (v13)
  {
    v14 = [v10 objectForKeyedSubscript:v5];
    v15 = [v14 longValue] + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithLong:v15];
  [v10 setObject:v16 forKeyedSubscript:v5];

  v17 = [v10 objectForKeyedSubscript:v6];
  if (v17)
  {
    v18 = [v10 objectForKeyedSubscript:v6];
    v19 = [v18 longValue] + 1;
  }

  else
  {
    v19 = 1;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithLong:v19];
  [v10 setObject:v20 forKeyedSubscript:v6];

  if ((v8 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = *MEMORY[0x277CCA1B0];
    v29[0] = *MEMORY[0x277CCA1A0];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [defaultManager2 createFileAtPath:v3 contents:0 attributes:v22];
  }

  v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v27 = 0;
  [v10 writeToURL:v23 error:&v27];
  v24 = v27;

  if (v24)
  {
    v26 = logForCSLogCategoryDefault(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexCreationDate:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
}

- (int64_t)getAggregateIndexWipeCount
{
  v3 = indexHeartbeatPath();
  v4 = [&unk_2846C96E0 objectForKeyedSubscript:self->_dataclass];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v4, @"wipes_aggregate"];
  pthread_rwlock_rdlock(&sIndexHeartbeatLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v3];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
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
  }

  else
  {
    v9 = newHeartbeatDict();
  }

  v12 = [v9 objectForKeyedSubscript:v5];
  if (v12)
  {
    v13 = [v9 objectForKeyedSubscript:v5];
    longValue = [v13 longValue];
  }

  else
  {
    longValue = 0;
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
  return longValue;
}

- (id)indexLossAnalyticsDictWithPreviousIndexCreationDate:(int64_t)date size:(int64_t)size openingInReadOnly:(BOOL)only fullyCreated:(BOOL)created markedPurgeable:(BOOL)purgeable vectorIndexDrop:(id)drop forAnalytics:(BOOL)analytics
{
  createdCopy = created;
  onlyCopy = only;
  v112 = *MEMORY[0x277D85DE8];
  dropCopy = drop;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_2846C95D8 forKeyedSubscript:@"indexrebuildcount"];
  v14 = MEMORY[0x277CCABB0];
  selfCopy = self;
  dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v16 = [v14 numberWithInt:protectionClassForAnalytics(dataclass)];
  [dictionary setObject:v16 forKeyedSubscript:@"fileprotection"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:sRootsInstalled];
  [dictionary setObject:v17 forKeyedSubscript:@"rootsinstalled"];

  if (!dropCopy)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
    [dictionary setObject:v18 forKeyedSubscript:@"vectorindexon"];

    v19 = rebuildReasonString(createdCopy, purgeable);
    [dictionary setObject:v19 forKeyedSubscript:@"rebuildreason"];

    v21 = logForCSLogCategoryIndex(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:dictionary size:? openingInReadOnly:? fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
    }
  }

  [dictionary setObject:@"2400.14.100" forKeyedSubscript:@"spotlightversion"];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [dictionary setObject:v22 forKeyedSubscript:@"textsemanticsearchon"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [dictionary setObject:v23 forKeyedSubscript:@"embeddingdonationon"];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v26 = v25;
  v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:MDBootTime()];
  [date timeIntervalSinceDate:v27];
  v29 = v28;

  if (analytics)
  {
    v30 = v26 % 86400;
  }

  else
  {
    v30 = v26;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithLong:v30];
  [dictionary setObject:v31 forKeyedSubscript:@"droptime"];

  v32 = [MEMORY[0x277CCABB0] numberWithLong:v29];
  [dictionary setObject:v32 forKeyedSubscript:@"timesinceboot"];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processIdentifier = [processInfo processIdentifier];
  processName = [processInfo processName];
  v36 = [MEMORY[0x277CCABB0] numberWithInt:processIdentifier];
  [dictionary setObject:v36 forKeyedSubscript:@"pid"];

  if (processName)
  {
    v37 = processName;
  }

  else
  {
    v37 = @"unknown";
  }

  [dictionary setObject:v37 forKeyedSubscript:@"processname"];
  bzero(&v111, 0x878uLL);
  indexDirectory = [sDelegate indexDirectory];
  v39 = [indexDirectory cStringUsingEncoding:4];

  LODWORD(indexDirectory) = statfs(v39, &v111);
  v40 = __error();
  v41 = *v40;
  if (indexDirectory)
  {
    v42 = logForCSLogCategoryIndex(v40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:selfCopy size:? openingInReadOnly:? fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
    }

    [dictionary setObject:0 forKeyedSubscript:@"filesystemtype"];
    [dictionary setObject:0 forKeyedSubscript:@"filesystemsize"];
    [dictionary setObject:0 forKeyedSubscript:@"filesystemfree"];
    [dictionary setObject:0 forKeyedSubscript:@"readonlyfilesystem"];
    [dictionary setObject:0 forKeyedSubscript:@"filesystemflags"];
    [dictionary setObject:0 forKeyedSubscript:@"supportspsid"];
    [dictionary setObject:0 forKeyedSubscript:@"externalvolume"];
    [dictionary setObject:0 forKeyedSubscript:@"diskimage"];
  }

  else
  {
    v96 = *v40;
    v97 = processInfo;
    v98 = date;
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v111.f_fstypename];
    [dictionary setObject:v43 forKeyedSubscript:@"filesystemtype"];

    f_bsize = v111.f_bsize;
    f_blocks = v111.f_blocks;
    f_bfree = v111.f_bfree;
    v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:v111.f_mntonname];
    v48 = f_blocks * f_bsize;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
    [dictionary setObject:v49 forKeyedSubscript:@"filesystemsize"];

    v50 = f_bfree * f_bsize;
    f_bsize = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:f_bfree * f_bsize];
    [dictionary setObject:f_bsize forKeyedSubscript:@"filesystemfree"];

    v52 = [MEMORY[0x277CCABB0] numberWithBool:v111.f_flags & 1];
    [dictionary setObject:v52 forKeyedSubscript:@"readonlyfilesystem"];

    v54 = logForCSLogCategoryIndex(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v104 = v48;
      v105 = 2048;
      v106 = v50;
      v107 = 1024;
      f_flags = v111.f_flags;
      v109 = 2080;
      uTF8String = [v47 UTF8String];
      _os_log_impl(&dword_231A35000, v54, OS_LOG_TYPE_DEFAULT, "[IndexLoss] FS (%llu, %llu, 0x%x) mounted at path %s", buf, 0x26u);
    }

    v95 = v47;
    v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v47];
    if (v55)
    {
      v56 = _CFURLGetVolumePropertyFlags();
      v57 = v56;
      v58 = logForCSLogCategoryIndex(v56);
      v59 = v58;
      processInfo = v97;
      v41 = v96;
      if (v57)
      {
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          dataclass2 = [(SPConcreteCoreSpotlightIndexer *)selfCopy dataclass];
          uTF8String2 = [dataclass2 UTF8String];
          *buf = 136315394;
          v104 = uTF8String2;
          v105 = 2048;
          v106 = 0;
          _os_log_impl(&dword_231A35000, v59, OS_LOG_TYPE_DEFAULT, "[IndexLoss] (%s) Got volume property flags 0x%llx", buf, 0x16u);
        }

        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
        [dictionary setObject:v62 forKeyedSubscript:@"filesystemflags"];

        v63 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [dictionary setObject:v63 forKeyedSubscript:@"supportspsid"];

        v64 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [dictionary setObject:v64 forKeyedSubscript:@"externalvolume"];

        v65 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [dictionary setObject:v65 forKeyedSubscript:@"diskimage"];
      }

      else
      {
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:];
        }

        [dictionary setObject:0 forKeyedSubscript:@"filesystemflags"];
        [dictionary setObject:0 forKeyedSubscript:@"supportspsid"];
        [dictionary setObject:0 forKeyedSubscript:@"externalvolume"];
        [dictionary setObject:0 forKeyedSubscript:@"diskimage"];
      }

      date = v98;
    }

    else
    {
      v66 = logForCSLogCategoryIndex(0);
      processInfo = v97;
      v41 = v96;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:selfCopy size:? openingInReadOnly:? fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
      }

      [dictionary setObject:0 forKeyedSubscript:@"filesystemflags"];
      [dictionary setObject:0 forKeyedSubscript:@"supportspsid"];
      [dictionary setObject:0 forKeyedSubscript:@"externalvolume"];
      [dictionary setObject:0 forKeyedSubscript:@"diskimage"];
      date = v98;
    }
  }

  *__error() = v41;
  if (date < 0)
  {
    [dictionary setObject:0 forKeyedSubscript:@"droppedindexage"];
  }

  else
  {
    date2 = [MEMORY[0x277CCABB0] numberWithLong:v26 - date];
    [dictionary setObject:date2 forKeyedSubscript:@"droppedindexage"];
  }

  if ((size & 0x8000000000000000) == 0)
  {
    v68 = [MEMORY[0x277CCABB0] numberWithLong:?];
    [dictionary setObject:v68 forKeyedSubscript:@"droppedindexsize"];

    if (dropCopy)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  [dictionary setObject:0 forKeyedSubscript:@"droppedindexsize"];
  if (!dropCopy)
  {
LABEL_35:
    v69 = [MEMORY[0x277CCABB0] numberWithBool:onlyCopy];
    [dictionary setObject:v69 forKeyedSubscript:@"readonlyopen"];

    [dictionary setObject:0 forKeyedSubscript:@"wherecorrupted"];
  }

LABEL_36:
  [dictionary setObject:0 forKeyedSubscript:@"previousbuild"];
  [dictionary setObject:0 forKeyedSubscript:@"buildbeforeupgrade"];
  v70 = indexHeartbeatPath();
  pthread_rwlock_rdlock(&sIndexHeartbeatLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v72 = [defaultManager fileExistsAtPath:v70];

  if (v72)
  {
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v70];
    v75 = v74;
    if (v74 && ([v74 objectForKeyedSubscript:@"v2"], v76 = objc_claimAutoreleasedReturnValue(), v76, v76))
    {
      v77 = date;
      v78 = newHeartbeatDict();

      v75 = v78;
    }

    else
    {
      v77 = date;
    }

    v79 = [v75 objectForKeyedSubscript:@"previousbuild"];
    [dictionary setObject:v79 forKeyedSubscript:@"previousbuild"];

    v80 = [v75 objectForKeyedSubscript:@"buildbeforeupgrade"];
    [dictionary setObject:v80 forKeyedSubscript:@"buildbeforeupgrade"];

    date = v77;
  }

  else
  {
    v75 = logForCSLogCategoryIndex(v73);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
  if (dropCopy)
  {
    v81 = [dropCopy objectForKeyedSubscript:@"vectorcount"];
    [dictionary setObject:v81 forKeyedSubscript:@"vectorcount"];

    v82 = [dropCopy objectForKeyedSubscript:@"readonly"];
    [dictionary setObject:v82 forKeyedSubscript:@"readonly"];

    v83 = [dropCopy objectForKeyedSubscript:@"prefix"];
    [dictionary setObject:v83 forKeyedSubscript:@"prefix"];

    v84 = [dropCopy objectForKeyedSubscript:@"propertyname"];
    integerValue = [v84 integerValue];

    [(SPConcreteCoreSpotlightIndexer *)selfCopy index];
    v86 = _SIGetFieldNameForId();
    v87 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v86)
    {
      v88 = [v87 initWithFormat:@"%s", v86];
    }

    else
    {
      v88 = [v87 initWithFormat:@"%u", integerValue];
    }

    v89 = v88;
    [dictionary setObject:v88 forKeyedSubscript:@"propertyname"];

    v90 = [dropCopy objectForKeyedSubscript:@"dropreason"];
    [dictionary setObject:v90 forKeyedSubscript:@"dropreason"];

    v92 = logForCSLogCategoryIndex(v91);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer indexLossAnalyticsDictWithPreviousIndexCreationDate:selfCopy size:dictionary openingInReadOnly:v92 fullyCreated:? markedPurgeable:? vectorIndexDrop:? forAnalytics:?];
    }
  }

  v93 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v93;
}

- (void)writeIndexLossEventToFile:(id)file vector:(BOOL)vector
{
  vectorCopy = vector;
  v50[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v7 = fileCopy;
  if (fileCopy)
  {
    v8 = [fileCopy objectForKeyedSubscript:@"droptime"];

    if (v8)
    {
      v10 = [v7 objectForKeyedSubscript:@"droptime"];
      longValue = [v10 longValue];

      v12 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v12 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
      v13 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:longValue];
      v47 = [v12 stringFromDate:v13];

      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];

      v15 = getpid();
      v16 = MEMORY[0x277CCACA8];
      v17 = NSHomeDirectory();
      v18 = [v16 stringWithFormat:@"%@/Library/Logs/CrashReporter/DiagnosticLogs/Search", v17];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v20 = [defaultManager fileExistsAtPath:v18];

      if ((v20 & 1) == 0)
      {
        v21 = vectorCopy;
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v48 = 0;
        v23 = [defaultManager2 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v48];
        v24 = v48;

        if ((v23 & 1) == 0)
        {
          v26 = logForCSLogCategoryIndex(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
          }
        }

        vectorCopy = v21;
      }

      v45 = v12;
      if (vectorCopy)
      {
        v27 = @"vector_";
      }

      else
      {
        v27 = &stru_2846BD100;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/spotlight_%@index_drop.%@.%d.%@.%@.txt", v18, v27, processName, v15, self->_dataclass, v47];
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v30 = [defaultManager3 fileExistsAtPath:v28];

      if (v30)
      {
        v44 = v7;
        v31 = 0;
        do
        {
          v32 = v28;
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/spotlight_%@index_drop.%@.%d.%@.%@.%03d.txt", v18, v27, processName, v15, self->_dataclass, v47, v31];

          defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
          LODWORD(v32) = [defaultManager4 fileExistsAtPath:v28];

          if (!v32)
          {
            v7 = v44;
            goto LABEL_24;
          }

          v31 = (v31 + 1);
        }

        while (v31 != 100);
        v35 = logForCSLogCategoryIndex(v34);
        v7 = v44;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
        }

        v36 = v45;
      }

      else
      {
LABEL_24:
        defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
        v49 = *MEMORY[0x277CCA1B0];
        v50[0] = *MEMORY[0x277CCA1A0];
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
        [defaultManager5 createFileAtPath:v28 contents:0 attributes:v38];

        defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
        LODWORD(v38) = [defaultManager6 fileExistsAtPath:v28];

        if (v38)
        {
          v41 = [MEMORY[0x277CBEBC0] fileURLWithPath:v28];
          [v7 writeToURL:v41 error:0];

          v43 = logForCSLogCategoryIndex(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
          }

          v36 = v45;
        }

        else
        {
          v43 = logForCSLogCategoryIndex(v40);
          v36 = v45;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
          }
        }
      }
    }

    else
    {
      v36 = logForCSLogCategoryIndex(v9);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
      }
    }
  }

  else
  {
    v36 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer writeIndexLossEventToFile:vector:];
    }
  }
}

- (id)vectorIndexDropsPath
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v5 = [v3 initWithFormat:@"%@/vectorIndexDrops.plist", _indexPath];

  return v5;
}

- (id)trialIntentionalDropUUID
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  indexDirectory = [sDelegate indexDirectory];
  v5 = [v3 initWithFormat:@"%@/TrialResets", indexDirectory];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    v9 = [defaultManager2 contentsOfDirectoryAtPath:v5 error:&v22];
    v10 = v22;

    if (v10)
    {
      v12 = logForCSLogCategoryIndex(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer trialIntentionalDropUUID];
      }
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__SPConcreteCoreSpotlightIndexer_trialIntentionalDropUUID__block_invoke;
    v15[3] = &unk_278934BB0;
    v15[4] = self;
    v15[5] = &v16;
    [v9 enumerateObjectsUsingBlock:v15];
    v13 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __58__SPConcreteCoreSpotlightIndexer_trialIntentionalDropUUID__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) dataclass];
  v6 = MEMORY[0x277CCACA8];
  v12 = v4;
  v7 = [v6 alloc];
  v8 = [sDelegate indexDirectory];
  v9 = [v7 initWithFormat:@"%@/TrialResets/%@/%@", v8, v12, v5];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:v9];

  if ((v11 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

+ (id)fetchItemForURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  v5 = defaultManager;
  if (lCopy && defaultManager)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    add = atomic_fetch_add(&sFetchID, 1u);
    v9 = logForCSLogCategoryIndex(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = lCopy;
      fileSystemRepresentation = [lCopy fileSystemRepresentation];
      *buf = 67109378;
      v26 = add;
      v27 = 2080;
      v28 = fileSystemRepresentation;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "[%d] fetching %s", buf, 0x12u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke;
    v15[3] = &unk_278934BD8;
    v18 = add;
    v17 = &v19;
    v12 = v6;
    v16 = v12;
    [v5 fetchItemForURL:lCopy completionHandler:v15];
    dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      v10 = [v5 itemIdentifier];
      v13[0] = 67109378;
      v13[1] = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "[%d] fetched %@", v13, 0x12u);
    }

    v11 = *(*(a1 + 40) + 8);
    v12 = v5;
    v8 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (id)fetchParentsForItemID:(id)d recursively:(BOOL)recursively timeout:(unint64_t)timeout
{
  recursivelyCopy = recursively;
  v39[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  if (dCopy)
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    if (defaultManager)
    {
      identifier = [dCopy identifier];
      v10 = [identifier isEqualToString:*MEMORY[0x277CC6348]];

      if (v10)
      {
        domainIdentifier = [dCopy domainIdentifier];

        if (domainIdentifier)
        {
          coreSpotlightIdentifier = [dCopy coreSpotlightIdentifier];
          v39[0] = coreSpotlightIdentifier;
          domainIdentifier = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
        }
      }

      else
      {
        add = atomic_fetch_add(fetchParentsForItemID_recursively_timeout__sFetchParentsForItemIDOutstanding, 1u);
        if (timeout && add >= 7)
        {
          atomic_fetch_add(fetchParentsForItemID_recursively_timeout__sFetchParentsForItemIDOutstanding, 0xFFFFFFFF);
          domainIdentifier = 0;
          *__error() = 60;
        }

        else
        {
          v14 = dispatch_group_create();
          dispatch_group_enter(v14);
          v15 = atomic_fetch_add(&sFetchID, 1u);
          v17 = logForCSLogCategoryIndex(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = "parent";
            *buf = 67109634;
            v34 = v15;
            if (recursivelyCopy)
            {
              v18 = "all parents";
            }

            v35 = 2080;
            v36 = v18;
            v37 = 2112;
            v38 = dCopy;
            _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_INFO, "[%d] fetching %s %@", buf, 0x1Cu);
          }

          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __76__SPConcreteCoreSpotlightIndexer_fetchParentsForItemID_recursively_timeout___block_invoke;
          v22[3] = &unk_278934C00;
          v26 = v15;
          v23 = dCopy;
          v25 = &v27;
          v19 = v14;
          v24 = v19;
          [defaultManager _fetchParentsForItemID:v23 recursively:recursivelyCopy completionHandler:v22];
          v20 = objc_opt_self();
          if (dispatch_group_wait(v19, timeout))
          {
            *__error() = 60;
          }

          domainIdentifier = v28[5];
        }
      }
    }

    else
    {
      domainIdentifier = v28[5];
    }
  }

  else
  {
    domainIdentifier = 0;
  }

  _Block_object_dispose(&v27, 8);

  return domainIdentifier;
}

void __76__SPConcreteCoreSpotlightIndexer_fetchParentsForItemID_recursively_timeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  atomic_fetch_add(fetchParentsForItemID_recursively_timeout__sFetchParentsForItemIDOutstanding, 0xFFFFFFFF);
  if (v6)
  {
    v8 = logForCSLogCategoryIndex(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __76__SPConcreteCoreSpotlightIndexer_fetchParentsForItemID_recursively_timeout___block_invoke_cold_1();
    }

    goto LABEL_21;
  }

  v9 = [v5 count];
  if (v9)
  {
    v53 = &v47;
    v52 = 8 * v9;
    v10 = &v47 - ((8 * v9 + 23) & 0xFFFFFFFFFFFFFFF0);
    v51 = v9 + 1;
    bzero(v10, 8 * (v9 + 1));
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v48 = 0;
      v49 = a1;
      v50 = v5;
      v14 = 0;
      v15 = 0;
      v16 = *v56;
      v17 = *MEMORY[0x277CC6348];
      v54 = v11;
      do
      {
        v18 = 0;
        v19 = v15;
        do
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(v54);
          }

          v20 = *(*(&v55 + 1) + 8 * v18);
          v21 = [v20 itemID];
          v22 = [v21 coreSpotlightIdentifier];
          v15 = v19 + 1;
          v23 = *&v10[8 * v19];
          *&v10[8 * v19] = v22;

          v24 = [v20 itemID];
          v25 = [v24 identifier];
          v26 = [v25 isEqualToString:v17];

          v14 |= v26;
          ++v18;
          v19 = v15;
        }

        while (v13 != v18);
        v27 = v54;
        v13 = [v54 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v13);

      v5 = v50;
      a1 = v49;
      v7 = v48;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {

      v15 = 0;
      v17 = *MEMORY[0x277CC6348];
    }

    v36 = objc_alloc(MEMORY[0x277CC6400]);
    v37 = [*(a1 + 32) providerDomainID];
    v38 = [v36 initWithProviderDomainID:v37 itemIdentifier:v17];

    v39 = [v38 coreSpotlightIdentifier];
    v40 = *&v10[8 * v15];
    *&v10[8 * v15] = v39;

    ++v15;
LABEL_17:
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:v15];
    v42 = *(*(a1 + 48) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = v41;

    v44 = v52;
    if (v51)
    {
      do
      {

        v44 -= 8;
      }

      while (v44 != -8);
    }

    goto LABEL_19;
  }

  v28 = objc_alloc(MEMORY[0x277CC6400]);
  v29 = [*(a1 + 32) providerDomainID];
  v30 = [v28 initWithProviderDomainID:v29 itemIdentifier:*MEMORY[0x277CC6348]];

  v31 = [v30 coreSpotlightIdentifier];
  v63 = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  v33 = *(*(a1 + 48) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;

LABEL_19:
  v8 = logForCSLogCategoryIndex(v35);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v45 = *(a1 + 56);
    v46 = [*(*(*(a1 + 48) + 8) + 40) componentsJoinedByString:@" "];
    *buf = 67109378;
    v60 = v45;
    v61 = 2112;
    v62 = v46;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "[%d] fetched parents %@", buf, 0x12u);
  }

LABEL_21:

  dispatch_group_leave(*(a1 + 40));
}

- (void)_sendIndexDropABCEvent:(BOOL)event markedPurgeable:(BOOL)purgeable
{
  eventCopy = event;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v9 = processName;
  v10 = @"unknown";
  if (processName)
  {
    v10 = processName;
  }

  v11 = v10;

  v15 = objc_alloc_init(MEMORY[0x277D6AFC8]);
  dataclass = self->_dataclass;
  v13 = rebuildReasonString(eventCopy, purgeable);
  v14 = [v15 signatureWithDomain:@"SpotlightIndex" type:@"IndexCorruption" subType:dataclass subtypeContext:v13 detectedProcess:v11 triggerThresholdValues:0];

  [v15 snapshotWithSignature:v14 delay:0 events:0 payload:0 actions:&__block_literal_global_939 reply:10.0];
}

void __73__SPConcreteCoreSpotlightIndexer__sendIndexDropABCEvent_markedPurgeable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v6 = logForCSLogCategoryIndex(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__SPConcreteCoreSpotlightIndexer__sendIndexDropABCEvent_markedPurgeable___block_invoke_cold_1(v2);
    }
  }
}

- (void)_saveCorruptIndexWithPath:(id)path shouldSendABC:(BOOL)c fullyCreated:(BOOL)created markedPurgeable:(BOOL)purgeable
{
  purgeableCopy = purgeable;
  createdCopy = created;
  cCopy = c;
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(SPConcreteCoreSpotlightIndexer *)self _expireCorruptIndexFilesWithPath:pathCopy keepLatest:0];
  if (cCopy)
  {
    [(SPConcreteCoreSpotlightIndexer *)self _sendIndexDropABCEvent:createdCopy markedPurgeable:purgeableCopy];
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SpotlightIndexKeepCorruptFilesEnabled", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat || AppBooleanValue)
  {
    dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    v13 = protectionClassForAnalytics(dataclass);

    v14 = [pathCopy stringByAppendingFormat:@"-%llu", CFAbsoluteTimeGetCurrent()];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:v14 error:0];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v17 = [defaultManager2 moveItemAtPath:pathCopy toPath:v14 error:&v26];
    v18 = v26;

    v20 = logForCSLogCategoryIndex(v19);
    v21 = v20;
    if (v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v14;
        _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Moved corrupt index to path:%@", buf, 0xCu);
      }

      v22 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__SPConcreteCoreSpotlightIndexer__saveCorruptIndexWithPath_shouldSendABC_fullyCreated_markedPurgeable___block_invoke;
      block[3] = &unk_278934C48;
      v24 = v14;
      v25 = v13;
      dispatch_async(v22, block);

      v21 = v24;
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer _saveCorruptIndexWithPath:shouldSendABC:fullyCreated:markedPurgeable:];
    }
  }
}

void __103__SPConcreteCoreSpotlightIndexer__saveCorruptIndexWithPath_shouldSendABC_fullyCreated_markedPurgeable___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = opendir([*(a1 + 32) UTF8String]);
  if (v3)
  {
    v4 = v3;
    for (i = readdir(v3); i; i = readdir(v4))
    {
      d_name = i->d_name;
      if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
      {
        memset(&v43, 0, sizeof(v43));
        v7 = dirfd(v4);
        v8 = fstatat(v7, d_name, &v43, 32);
        if ((v8 & 0x80000000) != 0)
        {
          v11 = logForCSLogCategoryIndex(v8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v32 = *(a1 + 40);
            v33 = __error();
            v34 = strerror(*v33);
            *buf = 67109634;
            v45 = v32;
            v46 = 2080;
            v47 = d_name;
            v48 = 2080;
            v49 = v34;
            _os_log_error_impl(&dword_231A35000, v11, OS_LOG_TYPE_ERROR, "(%d) Failed to obtain index file info:%s (%s)", buf, 0x1Cu);
          }
        }

        else
        {
          if ((v43.st_mode & 0xF000) != 0x4000)
          {
            st_size = v43.st_size;
            v18 = dirfd(v4);
            v19 = openat(v18, d_name, 0x8000);
            if ((v19 & 0x80000000) != 0)
            {
              v28 = logForCSLogCategoryIndex(v19);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v36 = *(a1 + 40);
                v37 = __error();
                v38 = strerror(*v37);
                *buf = 67109890;
                v45 = v36;
                v46 = 2080;
                v47 = d_name;
                v48 = 2048;
                v49 = st_size;
                v50 = 2080;
                v51 = v38;
                _os_log_error_impl(&dword_231A35000, v28, OS_LOG_TYPE_ERROR, "(%d) Failed to open index file:%s[%lld] (%s)", buf, 0x26u);
              }

              v29 = strncmp(d_name, "130162031.fixed", 0xFuLL);
              if (!v29)
              {
                v30 = logForCSLogCategoryIndex(v29);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v39 = *(a1 + 40);
                  *buf = 67109120;
                  v45 = v39;
                  _os_log_error_impl(&dword_231A35000, v30, OS_LOG_TYPE_ERROR, "(%d) Deleting 130162031.fixed", buf, 8u);
                }

                bzero(buf, 0x400uLL);
                snprintf(buf, 0x400uLL, "%s/130162031.fixed", [*v2 UTF8String]);
                unlink(buf);
              }
            }

            else
            {
              v20 = v19;
              v41 = 65541;
              v21 = ffsctl(v19, 0xC0084A44uLL, &v41, 0);
              v22 = v21;
              v23 = logForCSLogCategoryIndex(v21);
              v24 = v23;
              if (v22)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v25 = *(a1 + 40);
                  v26 = __error();
                  v27 = strerror(*v26);
                  *buf = 67109890;
                  v45 = v25;
                  v46 = 2080;
                  v47 = d_name;
                  v48 = 2048;
                  v49 = st_size;
                  v50 = 2080;
                  v51 = v27;
                  _os_log_error_impl(&dword_231A35000, v24, OS_LOG_TYPE_ERROR, "(%d) Failed to mark index file purgable:%s[%lld] (%s)", buf, 0x26u);
                }
              }

              else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v31 = *(a1 + 40);
                *buf = 67109634;
                v45 = v31;
                v46 = 2080;
                v47 = d_name;
                v48 = 2048;
                v49 = st_size;
                _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "(%d) Marked index file purgable:%s[%lld]", buf, 0x1Cu);
              }

              close(v20);
            }

            continue;
          }

          v9 = *v2;
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:d_name];
          v11 = [v9 stringByAppendingPathComponent:v10];

          v12 = [MEMORY[0x277CCAA00] defaultManager];
          v42 = 0;
          v13 = [v12 removeItemAtPath:v11 error:&v42];
          v14 = v42;

          if ((v13 & 1) == 0)
          {
            v16 = logForCSLogCategoryIndex(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v35 = *(a1 + 40);
              *buf = 67109634;
              v45 = v35;
              v46 = 2112;
              v47 = v11;
              v48 = 2112;
              v49 = v14;
              _os_log_error_impl(&dword_231A35000, v16, OS_LOG_TYPE_ERROR, "(%d) Failed to remove index directory:%@ (%@)", buf, 0x1Cu);
            }
          }
        }
      }
    }

    closedir(v4);
  }

  else
  {
    v40 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      __103__SPConcreteCoreSpotlightIndexer__saveCorruptIndexWithPath_shouldSendABC_fullyCreated_markedPurgeable___block_invoke_cold_1();
    }
  }
}

- (BOOL)creationTouchFileExists
{
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [_indexPath stringByAppendingPathComponent:@"creationTouchFile"];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    return 0;
  }

  v5 = open(fileSystemRepresentation, 0x8000);
  if (v5 < 0)
  {
    return 0;
  }

  close(v5);
  return 1;
}

- (int)creationTouchFileCreate
{
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [_indexPath stringByAppendingPathComponent:@"creationTouchFile"];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    return 0;
  }

  v5 = open(fileSystemRepresentation, 512, 384);
  if ((v5 & 0x80000000) == 0)
  {
    close(v5);
    return 0;
  }

  return *__error();
}

- (void)creationTouchFileUnlink
{
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [_indexPath stringByAppendingPathComponent:@"creationTouchFile"];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  if (fileSystemRepresentation)
  {

    unlink(fileSystemRepresentation);
  }
}

- (BOOL)unpurgeOnceTouchFileExists
{
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [_indexPath stringByAppendingPathComponent:@"unpurgeTouchFile"];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    return 0;
  }

  v5 = open(fileSystemRepresentation, 0x8000);
  if (v5 < 0)
  {
    return 0;
  }

  close(v5);
  return 1;
}

- (int)unpurgeOnceTouchFileCreate
{
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [_indexPath stringByAppendingPathComponent:@"unpurgeTouchFile"];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    return 0;
  }

  v5 = open(fileSystemRepresentation, 512, 384);
  if ((v5 & 0x80000000) == 0)
  {
    close(v5);
    return 0;
  }

  return *__error();
}

- (int)openIndexForUpgradeSynchronous:(BOOL)synchronous
{
  v53 = *MEMORY[0x277D85DE8];
  if ((sShuttingDown & 1) == 0)
  {
    if (self->_index)
    {
      return 0;
    }

    synchronousCopy = synchronous;
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:MDBootTime()];
    owner = [(SPConcreteCoreSpotlightIndexer *)self owner];
    v46 = 0;
    _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
    bzero(buffer, 0x400uLL);
    if (CFStringGetFileSystemRepresentation(_indexPath, buffer, 1024))
    {
      v9 = open(buffer, 0x8000);
      v10 = v9;
      if ((v9 & 0x80000000) == 0)
      {
        close(v9);
        creationTouchFileExists = [(SPConcreteCoreSpotlightIndexer *)self creationTouchFileExists];
        if (creationTouchFileExists)
        {
          v12 = logForCSLogCategoryIndex(creationTouchFileExists);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer openIndexForUpgradeSynchronous:?];
          }

          v3 = -1;
LABEL_48:

          goto LABEL_49;
        }

LABEL_23:
        v20 = [&__block_literal_global_958 copy];
        v21 = [&__block_literal_global_961 copy];
        v22 = [&__block_literal_global_963 copy];
        if (updatedFrom2024Seed_onceToken != -1)
        {
          [SPConcreteCoreSpotlightIndexer openIndexForUpgradeSynchronous:];
        }

        if (updatedFrom2024Seed_updatedFromSeed == 1)
        {
          v48 = @"kIndexOptionResetForLargePostings";
          v49 = *MEMORY[0x277CBED28];
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          if (v10 < 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v23 = 0;
          if (v10 < 0)
          {
            goto LABEL_31;
          }
        }

        v3 = SIOpenIndexAtPathWithCallbacks();
        if ((v3 & 0x80000000) == 0)
        {
          SISetFileProvidersCallbacks();
          goto LABEL_37;
        }

LABEL_31:
        creationTouchFileCreate = [(SPConcreteCoreSpotlightIndexer *)self creationTouchFileCreate];
        if (creationTouchFileCreate)
        {
          v25 = logForCSLogCategoryIndex(creationTouchFileCreate);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [SPConcreteCoreSpotlightIndexer openIndexForUpgradeSynchronous:];
          }
        }

        v3 = SIOpenIndexAtPathWithCallbacks();
        SISetFileProvidersCallbacks();
        if ((v3 & 0x80000000) == 0)
        {
          SISyncIndex();
          [(SPConcreteCoreSpotlightIndexer *)self creationTouchFileUnlink];
        }

LABEL_37:

        if ((v3 & 0x80000000) == 0)
        {
          v12 = dispatch_group_create();
          self->_index = v46;
          SISetAccumulatedWorkBoundaryCrossCallback();
          protectionClassIntValue(self->_dataclass);
          v26 = _SISetProtectionClass();
          v27 = logForCSLogCategoryIndex(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            dataclass = self->_dataclass;
            createCount = self->_createCount;
            buf.st_dev = 67109634;
            *&buf.st_mode = v3;
            LOWORD(buf.st_ino) = 2112;
            *(&buf.st_ino + 2) = dataclass;
            HIWORD(buf.st_uid) = 2048;
            *&buf.st_gid = createCount;
            _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_INFO, "Index open, result:%d, dataclass:%@, , createCount:%lu", &buf, 0x1Cu);
          }

          if (v3 == 1)
          {
            v38 = logForCSLogCategoryIndex(v30);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              buf.st_dev = 138412546;
              *&buf.st_mode = @"com.apple.mobilemail.reindexVersion";
              WORD2(buf.st_ino) = 2112;
              *(&buf.st_ino + 6) = @"599";
              _os_log_impl(&dword_231A35000, v38, OS_LOG_TYPE_INFO, "Bootstrapping %@ %@", &buf, 0x16u);
            }

            [(SPConcreteCoreSpotlightIndexer *)self setProperty:@"599" forKey:@"com.apple.mobilemail.reindexVersion" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95F0 forKey:@"kSPCoalescedRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9608 forKey:@"kSPEmailLocalParts" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9620 forKey:@"kSPHashedContainers" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9608 forKey:@"kSPGroups" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPNotes" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPIndexRankingDate" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMe" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeTextContentMatch" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeTextContentMatchNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingSpan" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingSpanNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingToken" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingTokenNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCR" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRTextContentMatch" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRTextContentMatchNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingPreExtraction" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingPreExtractionNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatch" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatchNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatchNot2" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMe" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeRankingNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMe" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeRanking" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeRankingNot" sync:0];
            [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95C0 forKey:@"PHOTOS_INDEX_VERSION_CHANGE" sync:0];
            if (sUsePriorityIndex == 1 && [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA1A0]])
            {
              [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9590 forKey:@"kSPPriorityIndexVersion" sync:0];
            }

            v33 = logForCSLogCategoryDefault([(SPConcreteCoreSpotlightIndexer *)self setProperty:v6 forKey:@"DeviceBootTime" sync:0]);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              buf.st_dev = 138412290;
              *&buf.st_mode = v6;
              _os_log_impl(&dword_231A35000, v33, OS_LOG_TYPE_DEFAULT, "Set BootTimeDate %@ (initial creation)", &buf, 0xCu);
            }
          }

          else
          {
            if (v3 == 2)
            {
              [(SPConcreteCoreSpotlightIndexer *)self dirty:0];
            }

            v31 = self->_dataclass;
            dispatch_group_enter(v12);
            objc_initWeak(&buf, self);
            index = self->_index;
            v39 = MEMORY[0x277D85DD0];
            v40 = 3221225472;
            v41 = __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_967;
            v42 = &unk_278934CB0;
            v33 = v31;
            v43 = v33;
            v44 = v12;
            objc_copyWeak(&v45, &buf);
            SISynchedOpWithBlock(index, 2, &v39);
            objc_destroyWeak(&v45);

            objc_destroyWeak(&buf);
          }

          memset(&buf, 0, sizeof(buf));
          if (stat(buffer, &buf))
          {
            tv_sec = -1;
          }

          else
          {
            tv_sec = buf.st_birthtimespec.tv_sec;
          }

          [(SPConcreteCoreSpotlightIndexer *)self writeIndexCreationDate:tv_sec, v39, v40, v41, v42];
          self->_aggregateWipeCount = [(SPConcreteCoreSpotlightIndexer *)self getAggregateIndexWipeCount];
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSince1970];
          [(SPConcreteCoreSpotlightIndexer *)self writeIndexSuccessfulOpenDate:v36];

          [(SPConcreteCoreSpotlightIndexer *)self writeSDBObjectCount:SIGetObjectCount()];
          dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
          goto LABEL_48;
        }

LABEL_49:

        return v3;
      }

      if (synchronousCopy)
      {
        v50 = *MEMORY[0x277CCA1B0];
        p_dataclass = &self->_dataclass;
        if (([(NSString *)self->_dataclass isEqual:@"Priority"]& 1) != 0 || sUseMailIndex == 1 && ([(NSString *)*p_dataclass isEqual:@"MobileMailIndex"]& 1) != 0)
        {
          v14 = MEMORY[0x277CCA1A0];
        }

        else
        {
          v14 = &self->_dataclass;
        }

        v51 = *v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager createDirectoryAtPath:_indexPath withIntermediateDirectories:1 attributes:v15 error:0];

        v18 = logForCSLogCategoryIndex(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *p_dataclass;
          buf.st_dev = 138412290;
          *&buf.st_mode = v19;
          _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_INFO, "No index for for dataclass:%@ - creating", &buf, 0xCu);
        }

        if ([(NSString *)*p_dataclass isEqualToString:*MEMORY[0x277CCA190]])
        {
          _SIChangeProtectionClassForFilesInDirectory();
        }

        goto LABEL_23;
      }
    }

    v3 = -1;
    goto LABEL_49;
  }

  return -1;
}

uint64_t __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [SPConcreteCoreSpotlightIndexer fetchItemForURL:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 providerID];
    if (v4)
    {
      v5 = [v3 itemID];
      v6 = [v5 coreSpotlightIdentifier];

      if (v6)
      {
        v9[0] = v4;
        v9[1] = v6;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:0 timeout:a5];
  }

  v14 = [v5 firstObject];

  return v14;
}

id __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:1 timeout:a5];
  }

  v14 = v5;

  return v14;
}

void __65__SPConcreteCoreSpotlightIndexer_openIndexForUpgradeSynchronous___block_invoke_967(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "finish-draining-journal, for :%@", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (int)openIndex:(BOOL)index shouldReindexAll:(BOOL)all readOnly:(BOOL)only forcePC:(id)c
{
  onlyCopy = only;
  allCopy = all;
  indexCopy = index;
  v268 = *MEMORY[0x277D85DE8];
  cCopy = c;
  self->_tryOpenJwlIndex = 0;
  if ((sShuttingDown & 1) == 0)
  {
    if (self->_index)
    {
      v11 = 0;
      goto LABEL_257;
    }

    v202 = allCopy;
    if (indexCopy)
    {
      privateIndex = [sDelegate privateIndex];
      dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
      v14 = dataclass;
      if (privateIndex)
      {
        if ([dataclass isEqualToString:*MEMORY[0x277CCA1A0]])
        {
LABEL_14:

          goto LABEL_15;
        }

        dataclass2 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
        v18 = [dataclass2 isEqualToString:*MEMORY[0x277CCA198]];

        if (v18)
        {
          goto LABEL_15;
        }

LABEL_12:
        v14 = logForCSLogCategoryDefault(v16);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [SPConcreteCoreSpotlightIndexer openIndex:? shouldReindexAll:? readOnly:? forcePC:?];
        }

        goto LABEL_14;
      }

      v15 = [dataclass isEqualToString:*MEMORY[0x277CCA198]];

      if (v15)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v206 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:MDBootTime()];
    owner = [(SPConcreteCoreSpotlightIndexer *)self owner];
    deviceFirstUnlockedInMKB = [sDelegate deviceFirstUnlockedInMKB];
    if (deviceFirstUnlockedInMKB)
    {
      if (sUseMailIndex == 1)
      {
        v20 = [(NSString *)self->_dataclass isEqualToString:@"MobileMailIndex"];
        if (v20)
        {
          if (!cCopy && (sMailClassCMigrationComplete & 1) == 0)
          {
            v21 = logForCSLogCategoryIndex(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
            }

            goto LABEL_26;
          }
        }
      }

      p_dataclass = &self->_dataclass;
      v24 = *MEMORY[0x277CCA190];
      if (![(NSString *)self->_dataclass isEqualToString:*MEMORY[0x277CCA190]])
      {
        v25 = *MEMORY[0x277CCA198];
        if (([*p_dataclass isEqualToString:*MEMORY[0x277CCA198]] & 1) == 0 && (objc_msgSend(*p_dataclass, "isEqualToString:", *MEMORY[0x277CCA1A8]) & 1) == 0 && !-[NSString isEqualToString:](cCopy, "isEqualToString:", v24) && !-[NSString isEqualToString:](cCopy, "isEqualToString:", v25))
        {
LABEL_36:
          self->_tryOpenJwlIndex = 0;
          v234 = 0;
          string = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
          trialIntentionalDropUUID = [(SPConcreteCoreSpotlightIndexer *)self trialIntentionalDropUUID];
          bzero(buf, 0x400uLL);
          if (!CFStringGetFileSystemRepresentation(string, buf, 1024))
          {
            v198 = 0;
            v11 = -1;
            goto LABEL_252;
          }

          v267 = 0;
          v266 = 0u;
          v265 = 0u;
          v264 = 0u;
          v263 = 0u;
          v262 = 0u;
          v261 = 0u;
          v260 = 0u;
          memset(&v259[8], 0, 144);
          *v259 = 0x100000003;
          v30 = string;
          uTF8String = [(__CFString *)string UTF8String];
          v32 = fsctl(uTF8String, 0xC1104A71uLL, v259, 0);
          if (v32)
          {
            v33 = logForCSLogCategoryDefault(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
            }
          }

          else
          {
            v33 = logForCSLogCategoryIndex(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *v237 = 136315138;
              v238 = uTF8String;
              _os_log_impl(&dword_231A35000, v33, OS_LOG_TYPE_DEFAULT, "successfully set dir stats %s", v237, 0xCu);
            }
          }

          v44 = open(buf, 0x8000);
          v45 = v44;
          if ((v44 & 0x80000000) == 0)
          {
            close(v44);
            _hasPurgeableTouchFile = [(SPConcreteCoreSpotlightIndexer *)self _hasPurgeableTouchFile];
            creationTouchFileExists = [(SPConcreteCoreSpotlightIndexer *)self creationTouchFileExists];
            if (!creationTouchFileExists)
            {
              v50 = 1;
              goto LABEL_91;
            }

            v47 = logForCSLogCategoryIndex(creationTouchFileExists);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              [SPConcreteCoreSpotlightIndexer openIndex:? shouldReindexAll:? readOnly:? forcePC:?];
            }

LABEL_90:

            v50 = v45 >> 31;
LABEL_91:
            v189 = v50;
            objc_initWeak(&location, self);
            v230[0] = MEMORY[0x277D85DD0];
            v230[1] = 3221225472;
            v230[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke;
            v230[3] = &unk_278934D00;
            objc_copyWeak(&v231, &location);
            v197 = [v230 copy];
            if (openIndex_shouldReindexAll_readOnly_forcePC__onceToken != -1)
            {
              [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
            }

            v229[0] = 0;
            v229[1] = v229;
            v229[2] = 0x2020000000;
            v229[3] = 0;
            v228[0] = MEMORY[0x277D85DD0];
            v228[1] = 3221225472;
            v228[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_4;
            v228[3] = &unk_278934D50;
            v228[4] = self;
            v228[5] = v229;
            v196 = [v228 copy];
            v227[0] = MEMORY[0x277D85DD0];
            v227[1] = 3221225472;
            v227[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_990;
            v227[3] = &unk_2789343D8;
            v227[4] = self;
            v195 = [v227 copy];
            v194 = [&__block_literal_global_994 copy];
            v193 = [&__block_literal_global_997 copy];
            v192 = [&__block_literal_global_1000 copy];
            v63 = objc_opt_new();
            v64 = v63;
            if (sPrivate == 1)
            {
              [v63 setObject:*MEMORY[0x277CBED28] forKey:@"kIndexOptionPrivate"];
            }

            if ([sDelegate managedIndex])
            {
              [v64 setObject:*MEMORY[0x277CBED28] forKey:@"kIndexOptionManaged"];
            }

            if (onlyCopy)
            {
              [v64 setObject:*MEMORY[0x277CBED28] forKey:@"kIndexOptionReadOnly"];
            }

            if ([*p_dataclass isEqualToString:@"Priority"])
            {
              v65 = 1;
            }

            else if (sUseMailIndex == 1 && ([*p_dataclass isEqualToString:@"MobileMailIndex"] & 1) != 0)
            {
              v65 = 3;
            }

            else
            {
              v65 = 2 * protectionClassIntValue(*p_dataclass);
            }

            v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v65];
            [v64 setObject:v66 forKeyedSubscript:@"kIndexOptionPriorityPC"];

            if (updatedFrom2024Seed_onceToken != -1)
            {
              [SPConcreteCoreSpotlightIndexer openIndexForUpgradeSynchronous:];
            }

            if (updatedFrom2024Seed_updatedFromSeed == 1)
            {
              v67 = [v64 setObject:*MEMORY[0x277CBED28] forKey:@"kIndexOptionResetForLargePostings"];
            }

            if ((v45 & 0x80000000) != 0)
            {
              if (indexCopy)
              {
                if (!trialIntentionalDropUUID)
                {
                  v198 = 0;
                  goto LABEL_188;
                }

                v69 = logForCSLogCategoryIndex(v67);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                  objc_claimAutoreleasedReturnValue();
                  [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                }

                mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
                [mEMORY[0x277CC3468] logWithBundleID:@"com.apple.CoreSpotlight" indexOperation:9 itemCount:1 code:8];
                v198 = 0;
LABEL_187:

LABEL_188:
                self->_readOnly = 0;
                v11 = SIOpenIndexAtPathWithCallbacks();
                if ((v11 & 0x80000000) == 0)
                {
                  SISetFileProvidersCallbacks();
                  SISyncIndex();
                  if (trialIntentionalDropUUID)
                  {
                    dataclass3 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                    ResetTouchFileForUUID = createResetTouchFileForUUID(trialIntentionalDropUUID, dataclass3);

                    if (ResetTouchFileForUUID)
                    {
                      v145 = logForCSLogCategoryIndex(v144);
                      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                      {
                        dataclass4 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                        *v259 = 138412546;
                        *&v259[4] = dataclass4;
                        *&v259[12] = 2112;
                        *&v259[14] = trialIntentionalDropUUID;
                        _os_log_impl(&dword_231A35000, v145, OS_LOG_TYPE_DEFAULT, "[IndexLoss] (%@) Created intentional drop touch file %@", v259, 0x16u);
                      }
                    }

                    else
                    {
                      v147 = __error();
                      v148 = *v147;
                      v149 = logForCSLogCategoryIndex(v147);
                      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                      {
                        dataclass5 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                        *v259 = 138412802;
                        *&v259[4] = dataclass5;
                        *&v259[12] = 2112;
                        *&v259[14] = trialIntentionalDropUUID;
                        *&v259[22] = 1024;
                        *&v259[24] = v148;
                        _os_log_error_impl(&dword_231A35000, v149, OS_LOG_TYPE_ERROR, "[IndexLoss] (%@) Failed to create index drop touch file %@ : %d", v259, 0x1Cu);
                      }

                      *__error() = v148;
                    }
                  }
                }

                v72 = 1;
                goto LABEL_198;
              }

              v198 = 0;
              v72 = 1;
              v11 = -1;
              goto LABEL_198;
            }

            self->_readOnly = onlyCopy;
            v68 = *__error();
            *__error() = 0;
            if (v189)
            {
              v11 = SIOpenIndexAtPathWithCallbacks();
              if (v11 < 0)
              {
                if (indexCopy)
                {
                  v71 = __error();
                  if (*v71 == 28 && !onlyCopy)
                  {
                    v82 = logForCSLogCategoryIndex(v71);
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                    {
                      [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                    }

                    v83 = open(buf, 0x8000);
                    v84 = v83;
                    if ((v83 & 0x80000000) != 0)
                    {
                      v180 = logForCSLogCategoryIndex(v83);
                      if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                      {
                        __error();
                        [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                      }
                    }

                    else
                    {
                      v85 = SINotifyLowspace();
                      v86 = close(v84);
                      if (v85)
                      {
                        v198 = 0;
                        v72 = 0;
                        goto LABEL_198;
                      }

                      v180 = logForCSLogCategoryIndex(v86);
                      if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                      {
                        __error();
                        [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                      }
                    }
                  }

                  goto LABEL_120;
                }
              }

              else
              {
                SISetFileProvidersCallbacks();
              }
            }

            else
            {
              v11 = -1;
            }

            v71 = __error();
            *v71 = v68;
LABEL_120:
            v198 = 0;
            v72 = 1;
            if (v11 < 0 && indexCopy)
            {
              v73 = logForCSLogCategoryIndex(v71);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                dataclass6 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                v168 = rebuildReasonString(v189, _hasPurgeableTouchFile);
                *v259 = 67109634;
                *&v259[4] = v11;
                *&v259[8] = 2112;
                *&v259[10] = dataclass6;
                *&v259[18] = 2112;
                *&v259[20] = v168;
                _os_log_error_impl(&dword_231A35000, v73, OS_LOG_TYPE_ERROR, "Failed to open index (openIndex), result:%d, dataclass:%@, reason:%@", v259, 0x1Cu);
              }

              v74 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
              v75 = [v74 BOOLForKey:@"disable_index_drop_reporting"];
              v186 = v74;
              v76 = sDelegate;
              dataclass7 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
              v78 = [v76 disableABCReporting:dataclass7];

              if (trialIntentionalDropUUID)
              {
                v80 = logForCSLogCategoryIndex(v79);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                {
                  [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                  objc_claimAutoreleasedReturnValue();
                  [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                }

                v81 = 6;
              }

              else
              {
                if (v189)
                {
                  v199 = [(SPConcreteCoreSpotlightIndexer *)self shouldNotLogIndexDrop:string ignoreParentDirectoryAge:v75];
                  goto LABEL_142;
                }

                v81 = 5;
              }

              v199 = v81;
LABEL_142:
              memset(v259, 0, 144);
              v87 = string;
              v88 = stat([(__CFString *)string UTF8String], v259);
              v89 = __error();
              v90 = *v89;
              if (v88)
              {
                v91 = logForCSLogCategoryIndex(v89);
                if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                {
                  [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                }

                v92 = 0;
                v93 = 0;
              }

              else
              {
                v93 = *&v259[80];
                v92 = *&v259[96];
              }

              *__error() = v90;
              v183 = v93;
              v184 = v92;
              if (trialIntentionalDropUUID)
              {
                v94 = 1;
              }

              else
              {
                v95 = SIGetRebuildReason();
                v94 = strncmp(v95, "Intentional: ", 0xDuLL) == 0;
              }

              if (sIsInternalInstall == 1)
              {
                [(SPConcreteCoreSpotlightIndexer *)self _saveCorruptIndexWithPath:string shouldSendABC:((v199 != 0 || v94) | v78 & 1 | v75 & 1) == 0 fullyCreated:v189 markedPurgeable:_hasPurgeableTouchFile];
              }

              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              [defaultManager removeItemAtPath:string error:0];

              v247 = *MEMORY[0x277CCA1B0];
              if ([*p_dataclass isEqual:@"Priority"] & 1) != 0 || sUseMailIndex == 1 && (objc_msgSend(*p_dataclass, "isEqual:", @"MobileMailIndex"))
              {
                v97 = MEMORY[0x277CCA1A0];
              }

              else
              {
                v97 = &self->_dataclass;
                v98 = cCopy;
                if (cCopy)
                {
LABEL_158:
                  v248 = v98;
                  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v248 forKeys:&v247 count:1];
                  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                  v226 = 0;
                  v101 = [defaultManager2 createDirectoryAtPath:string withIntermediateDirectories:1 attributes:v99 error:&v226];
                  v185 = v99;
                  v187 = v226;

                  if (v101)
                  {
                    creationTouchFileCreate = [(SPConcreteCoreSpotlightIndexer *)self creationTouchFileCreate];
                    if (!creationTouchFileCreate)
                    {
                      goto LABEL_165;
                    }

                    v104 = logForCSLogCategoryIndex(creationTouchFileCreate);
                    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                    {
                      [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                    }
                  }

                  else
                  {
                    v104 = logForCSLogCategoryIndex(v102);
                    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                    {
                      [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
                    }
                  }

LABEL_165:
                  mEMORY[0x277CC3468]2 = [MEMORY[0x277CC3468] sharedInstance];
                  v106 = mEMORY[0x277CC3468]2;
                  if (v94)
                  {
                    v107 = 8;
                  }

                  else
                  {
                    v107 = 5;
                  }

                  [mEMORY[0x277CC3468]2 logWithBundleID:@"com.apple.CoreSpotlight" indexOperation:9 itemCount:1 code:v107];

                  v109 = logForCSLogCategoryDeleteAll(v108);
                  v110 = os_signpost_id_generate(v109);

                  v112 = logForCSLogCategoryDeleteAll(v111);
                  v113 = v112;
                  if (v110 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
                  {
                    uTF8String2 = [*p_dataclass UTF8String];
                    v115 = rebuildReasonString(v189, _hasPurgeableTouchFile);
                    v116 = v115;
                    uTF8String3 = [v115 UTF8String];
                    *v237 = 136315394;
                    v238 = uTF8String2;
                    v239 = 2080;
                    *v240 = uTF8String3;
                    _os_signpost_emit_with_name_impl(&dword_231A35000, v113, OS_SIGNPOST_EVENT, v110, "deleteAll", "pc:%s, index wipe: %s", v237, 0x16u);
                  }

                  if (v199)
                  {
                    v119 = logForCSLogCategoryIndex(v118);
                    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                    {
                      dataclass8 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                      v120 = protectionClassForAnalytics(dataclass8);
                      v121 = sRootsInstalled;
                      v122 = _os_feature_enabled_impl();
                      v123 = _os_feature_enabled_impl();
                      indexDirectory = [sDelegate indexDirectory];
                      v125 = indexDirectory;
                      uTF8String4 = [indexDirectory UTF8String];
                      *v237 = 136316674;
                      v238 = "2400.14.100";
                      v239 = 1024;
                      *v240 = v120;
                      *&v240[4] = 1024;
                      *&v240[6] = v121;
                      LOWORD(v241) = 1024;
                      *(&v241 + 2) = v122;
                      HIWORD(v241) = 1024;
                      v242 = v123;
                      v243 = 2080;
                      v244 = uTF8String4;
                      v245 = 1024;
                      v246 = v199;
                      _os_log_impl(&dword_231A35000, v119, OS_LOG_TYPE_DEFAULT, "[IndexLoss] (%s) Not reporting drop (%d, %d, %d, %d, %s) for reason %d", v237, 0x34u);
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      LOBYTE(v182) = v75 ^ 1;
                      v129 = [(SPConcreteCoreSpotlightIndexer *)self indexLossAnalyticsDictWithPreviousIndexCreationDate:v183 size:v184 openingInReadOnly:onlyCopy fullyCreated:v189 markedPurgeable:_hasPurgeableTouchFile vectorIndexDrop:0 forAnalytics:v182];
                      v191 = v129;
                      if (v75)
                      {
                        v130 = logForCSLogCategoryIndex(v129);
                        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                        {
                          *v237 = 0;
                          _os_log_impl(&dword_231A35000, v130, OS_LOG_TYPE_DEFAULT, "[IndexLoss] writing out to file", v237, 2u);
                        }

                        v131 = [(SPConcreteCoreSpotlightIndexer *)self writeIndexLossEventToFile:v191 vector:0];
                      }

                      else
                      {
                        v221 = MEMORY[0x277D85DD0];
                        v222 = 3221225472;
                        v223 = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1024;
                        v224 = &unk_278934D78;
                        v225 = v129;
                        AnalyticsSendEventLazy();
                      }

                      v132 = logForCSLogCategoryIndex(v131);
                      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                      {
                        dataclass9 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                        v200 = protectionClassForAnalytics(dataclass9);
                        v134 = sRootsInstalled;
                        v135 = _os_feature_enabled_impl();
                        v136 = _os_feature_enabled_impl();
                        indexDirectory2 = [sDelegate indexDirectory];
                        v138 = indexDirectory2;
                        uTF8String5 = [indexDirectory2 UTF8String];
                        *v237 = 136316418;
                        v238 = "2400.14.100";
                        v239 = 1024;
                        *v240 = v200;
                        *&v240[4] = 1024;
                        *&v240[6] = v134;
                        LOWORD(v241) = 1024;
                        *(&v241 + 2) = v135;
                        HIWORD(v241) = 1024;
                        v242 = v136;
                        v243 = 2080;
                        v244 = uTF8String5;
                        _os_log_impl(&dword_231A35000, v132, OS_LOG_TYPE_DEFAULT, "[IndexLoss] (%s) Sending analytics (%d, %d, %d, %d, %s)", v237, 0x2Eu);
                      }

                      date = [MEMORY[0x277CBEAA8] date];
                      [date timeIntervalSince1970];
                      [(SPConcreteCoreSpotlightIndexer *)self writeIndexDropAnalyticsDate:v141];

                      v198 = [MEMORY[0x277CCACA8] stringWithFormat:@"index dropped %@", *p_dataclass];
                      v119 = v191;
                      goto LABEL_186;
                    }

                    v119 = logForCSLogCategoryIndex(v118);
                    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                    {
                      dataclass10 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
                      v128 = SIGetRebuildReason();
                      *v237 = 136315650;
                      v238 = "2400.14.100";
                      v239 = 2112;
                      *v240 = dataclass10;
                      *&v240[8] = 2080;
                      v241 = v128;
                      _os_log_impl(&dword_231A35000, v119, OS_LOG_TYPE_DEFAULT, "[IndexLoss] (%s) Intentional drop (%@) with reason %s", v237, 0x20u);

                      v198 = 0;
LABEL_186:

                      [(SPConcreteCoreSpotlightIndexer *)self incrementIndexWipeCount];
                      mEMORY[0x277CC3468] = v186;
                      goto LABEL_187;
                    }
                  }

                  v198 = 0;
                  goto LABEL_186;
                }
              }

              v98 = *v97;
              goto LABEL_158;
            }

LABEL_198:

            _Block_object_dispose(v229, 8);
            objc_destroyWeak(&v231);
            objc_destroyWeak(&location);
            if ((v72 & 1) == 0)
            {
              v11 = 0;
LABEL_255:

              goto LABEL_256;
            }

            if ((v11 & 0x80000000) == 0)
            {
              self->_index = v234;
              _SISetAssertedJournalNum();
              SISetAccumulatedWorkBoundaryCrossCallback();
              if (cCopy)
              {
                protectionClassIntValue(cCopy);
              }

              else
              {
                protectionClassIntValue(*p_dataclass);
              }

              _SISetProtectionClass();
              if ((sUsePriorityIndex != 1 || ![*p_dataclass isEqualToString:@"Priority"]) && sUseMailIndex == 1)
              {
                [*p_dataclass isEqualToString:@"MobileMailIndex"];
              }

              v150 = _SISetPriority();
              if ((sPrivate & 1) == 0)
              {
                v151 = +[SPCoreSpotlightIndexer sharedInstance];
                contactsIndexer = [v151 contactsIndexer];
                v153 = contactsIndexer == self;

                if (v153)
                {
                  v150 = _SISetContactsIndex();
                }
              }

              v154 = logForCSLogCategoryIndex(v150);
              if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
              {
                dataclass = self->_dataclass;
                v156 = @"NO";
                createCount = self->_createCount;
                if (v202)
                {
                  v156 = @"YES";
                }

                *v259 = 67110146;
                *&v259[4] = v11;
                *&v259[8] = 2112;
                *&v259[10] = dataclass;
                *&v259[18] = 2112;
                *&v259[20] = v156;
                *&v259[28] = 2112;
                *&v259[30] = cCopy;
                *&v259[38] = 2048;
                *&v259[40] = createCount;
                _os_log_impl(&dword_231A35000, v154, OS_LOG_TYPE_INFO, "Index open, result:%d, dataclass:%@, shouldReindexAll:%@, forcePC:%@ createCount:%lu", v259, 0x30u);
              }

              if (sIsInternalInstall == 1 && (gIsSystemOnBattery & 1) == 0)
              {
                v158 = dispatch_get_global_queue(5, 0);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1030;
                block[3] = &unk_2789342C0;
                block[4] = self;
                v220 = string;
                dispatch_async(v158, block);
              }

              v159 = dispatch_group_create();
              v160 = v159;
              if ((sPrivate & 1) == 0)
              {
                objc_initWeak(v259, self);
                index = self->_index;
                v215[0] = MEMORY[0x277D85DD0];
                v215[1] = 3221225472;
                v215[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1031;
                v215[3] = &unk_278934DA0;
                objc_copyWeak(&v217, v259);
                v215[4] = self;
                v218 = v11 != 1;
                v216 = v160;
                SISynchedOpWithBlock(index, 2, v215);

                objc_destroyWeak(&v217);
                objc_destroyWeak(v259);
              }

              if (v11 == 1 || onlyCopy)
              {
                if (!onlyCopy)
                {
                  v163 = logForCSLogCategoryIndex(v159);
                  if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
                  {
                    *v259 = 138412546;
                    *&v259[4] = @"com.apple.mobilemail.reindexVersion";
                    *&v259[12] = 2112;
                    *&v259[14] = @"599";
                    _os_log_impl(&dword_231A35000, v163, OS_LOG_TYPE_INFO, "Bootstrapping %@ %@", v259, 0x16u);
                  }

                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:@"599" forKey:@"com.apple.mobilemail.reindexVersion" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95F0 forKey:@"kSPCoalescedRanking" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPEmailContentURLAttr" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9608 forKey:@"kSPEmailLocalParts" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9620 forKey:@"kSPHashedContainers" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9608 forKey:@"kSPGroups" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPNotes" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPIndexRankingDate" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMe" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeTextContentMatch" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeTextContentMatchNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingSpan" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingSpanNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingToken" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingTokenNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCR" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRTextContentMatch" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9638 forKey:@"kSPDerivedIsMeRankingOCRTextContentMatchNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingPreExtraction" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95D8 forKey:@"kSPDerivedIsMeRankingPreExtractionNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRanking" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatch" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatchNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsMeRankingTextContentMatchNot2" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMe" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeRanking" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsFromMeRankingNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMe" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeRanking" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95A8 forKey:@"kSPDerivedIsToMeRankingNot" sync:0];
                  [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C95C0 forKey:@"PHOTOS_INDEX_VERSION_CHANGE" sync:0];
                  if (sUsePriorityIndex == 1 && [*p_dataclass isEqualToString:*MEMORY[0x277CCA1A0]])
                  {
                    [(SPConcreteCoreSpotlightIndexer *)self setProperty:&unk_2846C9590 forKey:@"kSPPriorityIndexVersion" sync:0];
                  }

                  v164 = logForCSLogCategoryDefault([(SPConcreteCoreSpotlightIndexer *)self setProperty:v206 forKey:@"DeviceBootTime" sync:1]);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                  {
                    *v259 = 138412290;
                    *&v259[4] = v206;
                    _os_log_impl(&dword_231A35000, v164, OS_LOG_TYPE_DEFAULT, "Set BootTimeDate %@ (initial creation)", v259, 0xCu);
                  }

                  ++self->_createCount;
                  [(NSMutableSet *)self->_reindexAllDelegateBundleIDs removeAllObjects];
                  v165 = objc_opt_new();
                  [(SPConcreteCoreSpotlightIndexer *)self setKnownClients:v165];

                  if (v202)
                  {
                    if (v198)
                    {
                      v166 = v198;
                    }

                    else
                    {
                      v166 = [MEMORY[0x277CCACA8] stringWithFormat:@"bootstrapping new index %@", *p_dataclass];
                    }

                    selfCopy = self;
                    v169 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
                    [owner reindexAllItemsWithIndexers:v169 reason:v166 completionHandler:&__block_literal_global_1060];
                  }

                  os_unfair_lock_lock(&sDrainedLock);
                  [(SPConcreteCoreSpotlightIndexer *)self setFinishedDrainingJournal:1];
                  v170 = self->_blocksToRunWhenFinishedDraining;
                  blocksToRunWhenFinishedDraining = self->_blocksToRunWhenFinishedDraining;
                  self->_blocksToRunWhenFinishedDraining = 0;

                  os_unfair_lock_unlock(&sDrainedLock);
                  if (v170)
                  {
                    v209 = 0u;
                    v210 = 0u;
                    v207 = 0u;
                    v208 = 0u;
                    v172 = v170;
                    v173 = [(NSMutableArray *)v172 countByEnumeratingWithState:&v207 objects:v235 count:16];
                    if (v173)
                    {
                      v174 = *v208;
                      do
                      {
                        for (i = 0; i != v173; ++i)
                        {
                          if (*v208 != v174)
                          {
                            objc_enumerationMutation(v172);
                          }

                          (*(*(*(&v207 + 1) + 8 * i) + 16))();
                        }

                        v173 = [(NSMutableArray *)v172 countByEnumeratingWithState:&v207 objects:v235 count:16];
                      }

                      while (v173);
                    }
                  }

                  [sDelegate indexAvailableForProtectionClass:self->_dataclass newIndex:1];
                  [(SPConcreteCoreSpotlightIndexer *)self issuePriorityIndexFixup];
                }
              }

              else
              {
                if (v11 == 2)
                {
                  [(SPConcreteCoreSpotlightIndexer *)self dirty:0];
                }

                objc_initWeak(v259, self);
                v162 = self->_index;
                v211[0] = MEMORY[0x277D85DD0];
                v211[1] = 3221225472;
                v211[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1033;
                v211[3] = &unk_278934DF0;
                objc_copyWeak(&v213, v259);
                v211[4] = self;
                v212 = v206;
                v214 = v11;
                SISynchedOpWithBlock(v162, 2, v211);

                objc_destroyWeak(&v213);
                objc_destroyWeak(v259);
              }

              memset(v259, 0, 144);
              if (stat(buf, v259))
              {
                v176 = -1;
              }

              else
              {
                v176 = *&v259[80];
              }

              [(SPConcreteCoreSpotlightIndexer *)self writeIndexCreationDate:v176];
              self->_aggregateWipeCount = [(SPConcreteCoreSpotlightIndexer *)self getAggregateIndexWipeCount];
              date2 = [MEMORY[0x277CBEAA8] date];
              [date2 timeIntervalSince1970];
              [(SPConcreteCoreSpotlightIndexer *)self writeIndexSuccessfulOpenDate:v178];

              [(SPConcreteCoreSpotlightIndexer *)self writeSDBObjectCount:SIGetObjectCount()];
            }

LABEL_252:
            if (self->_index)
            {
              _SIStartPreheatScheduler();
            }

            self->_hasAssertion = 0;
            self->_assertionEndTime = 0.0;
            self->_suspended = 0;
            goto LABEL_255;
          }

          if (!indexCopy)
          {
            v52 = logForCSLogCategoryIndex(v44);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              dataclass11 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
              *v259 = 138412290;
              *&v259[4] = dataclass11;
              _os_log_impl(&dword_231A35000, v52, OS_LOG_TYPE_DEFAULT, "*warn* Can't open dataclass:%@ - Cannot create", v259, 0xCu);
            }

            v198 = 0;
            v11 = -1;
            goto LABEL_255;
          }

          v249 = *MEMORY[0x277CCA1B0];
          v48 = cCopy;
          if (!cCopy)
          {
            if (([*p_dataclass isEqual:@"Priority"] & 1) != 0 || sUseMailIndex == 1 && objc_msgSend(*p_dataclass, "isEqual:", @"MobileMailIndex"))
            {
              v49 = MEMORY[0x277CCA1A0];
            }

            else
            {
              v49 = &self->_dataclass;
            }

            v48 = *v49;
          }

          v250 = v48;
          v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v250 forKeys:&v249 count:1];
          v54 = logForCSLogCategoryIndex(v47);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = *p_dataclass;
            *v259 = 138412290;
            *&v259[4] = v55;
            _os_log_impl(&dword_231A35000, v54, OS_LOG_TYPE_INFO, "No index for for dataclass:%@ - creating", v259, 0xCu);
          }

          defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
          v233 = 0;
          v57 = [defaultManager3 createDirectoryAtPath:string withIntermediateDirectories:1 attributes:v47 error:&v233];
          v58 = v233;

          if (v57)
          {
            creationTouchFileCreate2 = [(SPConcreteCoreSpotlightIndexer *)self creationTouchFileCreate];
            if (!creationTouchFileCreate2)
            {
LABEL_85:
              if (([*p_dataclass isEqualToString:v24] & 1) != 0 || -[NSString isEqualToString:](cCopy, "isEqualToString:", v24))
              {
                v62 = open(buf, 0);
                if (v62 != -1)
                {
                  _SIChangeProtectionClassForFilesInDirectory();
                  close(v62);
                }
              }

              _hasPurgeableTouchFile = 0;
              goto LABEL_90;
            }

            v61 = logForCSLogCategoryIndex(creationTouchFileCreate2);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
            }
          }

          else
          {
            v61 = logForCSLogCategoryIndex(v59);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
            }
          }

          goto LABEL_85;
        }
      }

      deviceFirstUnlockedInSB = [sDelegate deviceFirstUnlockedInSB];
      deviceUnlocked = [sDelegate deviceUnlocked];
      if (deviceUnlocked)
      {
        v28 = logForCSLogCategoryIndex(deviceUnlocked);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = *p_dataclass;
          *buf = 138412802;
          v252 = v29;
          v253 = 1024;
          v254 = 1;
          v255 = 1024;
          v256 = deviceFirstUnlockedInSB;
          _os_log_impl(&dword_231A35000, v28, OS_LOG_TYPE_INFO, "Lazy open of protected index for dataclass:%@ (%d:%d)", buf, 0x18u);
        }

        goto LABEL_36;
      }

      v34 = [*p_dataclass isEqualToString:v24];
      if (v34)
      {
        self->_tryOpenJwlIndex = 1;
      }

      if (v202 || onlyCopy)
      {
        v22 = logForCSLogCategoryIndex(v34);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v43 = *p_dataclass;
          *buf = 138413058;
          v252 = v43;
          v253 = 1024;
          v254 = 0;
          v255 = 1024;
          v256 = 1;
          v257 = 1024;
          v258 = deviceFirstUnlockedInSB;
          _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_INFO, "Skipping open of protected index for dataclass:%@ on locked device, unlocked:%d (%d:%d)", buf, 0x1Eu);
        }
      }

      else
      {
        v35 = [*p_dataclass isEqualToString:*MEMORY[0x277CCA1A8]];
        if (!v35 || (v35 = [sDelegate deviceCXUnlocked], (v35 & 1) != 0))
        {
          v36 = logForCSLogCategoryIndex(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = *p_dataclass;
            *buf = 138412290;
            v252 = v37;
            _os_log_impl(&dword_231A35000, v36, OS_LOG_TYPE_INFO, "Trying locked index open for dataclass:%@", buf, 0xCu);
          }

          _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
          v39 = [_indexPath stringByAppendingString:@"/bgassertions"];

          v41 = logForCSLogCategoryIndex(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = *p_dataclass;
            *buf = 138413058;
            v252 = v42;
            v253 = 1024;
            v254 = 0;
            v255 = 1024;
            v256 = 1;
            v257 = 1024;
            v258 = deviceFirstUnlockedInSB;
            _os_log_impl(&dword_231A35000, v41, OS_LOG_TYPE_INFO, "Skipping open of protected index for dataclass:%@ on locked device without valid assertions file path, unlocked:%d (%d:%d)", buf, 0x1Eu);
          }

          goto LABEL_26;
        }

        v22 = logForCSLogCategoryIndex(v35);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v51 = *p_dataclass;
          *buf = 138413058;
          v252 = v51;
          v253 = 1024;
          v254 = 0;
          v255 = 1024;
          v256 = 1;
          v257 = 1024;
          v258 = deviceFirstUnlockedInSB;
          _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_INFO, "Skipping open of CX Locked index for dataclass:%@ on locked device, unlocked:%d (%d:%d)", buf, 0x1Eu);
        }
      }
    }

    else
    {
      v22 = logForCSLogCategoryIndex(deviceFirstUnlockedInMKB);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = self->_dataclass;
        *buf = 138412290;
        v252 = v23;
        _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_INFO, "Skipping open of protected index for dataclass:%@ on locked device", buf, 0xCu);
      }
    }

LABEL_26:
    v11 = 0;
LABEL_256:

    goto LABEL_257;
  }

  v11 = -1;
LABEL_257:

  return v11;
}

uint64_t __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = sIndexQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2;
    v13[3] = &unk_278934CD8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = a3;
    v16 = a2;
    v11 = _setup_block(v13, 0, 6486);
    dispatch_async(v10, v11);
  }

  return 0;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_3()
{
  v0 = objc_alloc_init(_SPBucketSet);
  v1 = buckets;
  buckets = v0;

  openIndex_shouldReindexAll_readOnly_forcePC__lastTime = CFAbsoluteTimeGetCurrent();
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v48 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a7;
  v15 = [v13 hasPrefix:@"com.apple."];
  if (a3)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = [buckets valueForKey:v13];
    v16 = v18 < bulk_budget_threshold;
    v17 = v16;
  }

  v41 = v16;
  v40 = 0;
  Current = 0.0;
  if (a4 && (sTurboMode & 1) == 0)
  {
    buf[0] = 0;
    v39 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) checkAdmission:v13 background:a3 didBeginThrottle:&v39 + 1 didEndThrottle:&v39 live:&v41 slow:&v40 memoryPressure:buf];
  }

  duet_log_activity_start(1);
  v14[2](v14);

  duet_log_activity_stop();
  if (a4 && (sTurboMode & 1) == 0 && v40 == 1)
  {
    v20 = CFAbsoluteTimeGetCurrent() - Current;
    v21 = 0.00999999978;
    v22 = v20 * 10.0 + 0.00999999978;
    v23 = 20.0;
    if (a6 >= 100001)
    {
      v23 = a6 / 100000.0 * 20.0;
    }

    if (v22 >= v23)
    {
      v22 = v23;
    }

    if (v22 >= 0.0)
    {
      v21 = v22;
    }

    if (gIsSystemOnBattery)
    {
      v24 = v21;
    }

    else
    {
      v24 = v21 * 0.5;
    }

    if (v24 > 0.0)
    {
      v25 = usleep((v24 * 1000000.0));
      v26 = logForCSLogCategoryIndex(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = "live";
        *buf = 136315650;
        if (a3)
        {
          v27 = "background";
        }

        v43 = v27;
        v44 = 2112;
        v45 = v13;
        v46 = 2048;
        v47 = v24;
        _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "Slowed down %s journal playback for %@ by %f s", buf, 0x20u);
      }
    }
  }

  v28 = v17 | 2;
  if (!v15)
  {
    v28 = v17;
  }

  v29 = sIndexQueue;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_985;
  v33[3] = &unk_278934D28;
  v30 = *(a1 + 32);
  v35 = *(a1 + 40);
  v36 = a5;
  v38 = a3;
  v33[4] = v30;
  v34 = v13;
  v37 = v28;
  v31 = v13;
  v32 = _setup_block(v33, 0, 6579);
  dispatch_async(v29, v32);
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_985(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) += *(a1 + 56);
  if (*(*(*(a1 + 48) + 8) + 24) >= 0x2711uLL)
  {
    v2 = dispatch_group_create();
    [*(a1 + 32) commitUpdates:v2];
    v3 = _setup_block(&__block_literal_global_988, 0, 6557);
    dispatch_group_notify(v2, MEMORY[0x277D85CD0], v3);

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v4 = *&openIndex_shouldReindexAll_readOnly_forcePC__lastTime;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current > v4 + *&decay_time)
  {
    [buckets decay:((Current - *&openIndex_shouldReindexAll_readOnly_forcePC__lastTime) * bulk_budget_threshold / (*&decay_time * *&decay_denominator))];
    openIndex_shouldReindexAll_readOnly_forcePC__lastTime = *&Current;
  }

  if ((*(a1 + 68) & 1) != 0 || !*(a1 + 40) || ([*(a1 + 32) owner], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isForegroundFileProviderBundleID:", *(a1 + 40)), v6, (v7 & 1) == 0))
  {
    openIndex_shouldReindexAll_readOnly_forcePC__totalCost[*(a1 + 64)] += *(a1 + 56);
    [buckets addValue:? forKey:?];
    v8 = *(a1 + 64);
    v9 = openIndex_shouldReindexAll_readOnly_forcePC__totalCost[v8];
    if (v9 - openIndex_shouldReindexAll_readOnly_forcePC__lastReport[v8] > budget_check_threshold)
    {
      check_admission[v8] = 1;
      openIndex_shouldReindexAll_readOnly_forcePC__lastReport[v8] = v9;
    }
  }
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_986(uint64_t a1)
{
  v1 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "commitUpdates completed.", v2, 2u);
  }
}

uint64_t __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_992(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [SPConcreteCoreSpotlightIndexer fetchItemForURL:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 providerID];
    if (v4)
    {
      v5 = [v3 itemID];
      v6 = [v5 coreSpotlightIdentifier];

      if (v6)
      {
        v9[0] = v4;
        v9[1] = v6;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_3_995(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:0 timeout:a5];
  }

  v14 = [v5 firstObject];

  return v14;
}

id __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_4_998(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    v9 = *MEMORY[0x277CC62F8];
    if (a3)
    {
      v9 = a3;
    }

    v10 = MEMORY[0x277CC6400];
    v11 = v9;
    v12 = a2;
    v13 = [[v10 alloc] initWithProviderID:v12 domainIdentifier:v11 coreSpotlightIdentifier:a4];

    v5 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:v13 recursively:1 timeout:a5];
  }

  v14 = v5;

  return v14;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1030(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _expireCorruptIndexFilesWithPath:*(a1 + 40) keepLatest:1];

  objc_autoreleasePoolPop(v2);
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1031(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained)
  {
    v10 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 192);
      v12 = @"YES";
      if (!a3)
      {
        v12 = @"NO";
      }

      *buf = 138412802;
      v17 = v11;
      v18 = 2048;
      v19 = a2;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Dropping finish-draining-journal, dataclass:%@, index:%p, canceled:%@", buf, 0x20u);
    }
  }

  else
  {
    v8 = sIndexQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1032;
    v13[3] = &unk_278934870;
    v13[4] = WeakRetained;
    v15 = *(a1 + 56);
    v14 = *(a1 + 40);
    v9 = _setup_block(v13, 0, 6920);
    dispatch_async(v8, v9);
  }
}

void *__78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1032(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[19])
  {
    return [result fetchMeCard:1 isNotCreateNewIndex:*(a1 + 48) group:*(a1 + 40)];
  }

  return result;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1033(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained)
  {
    v12 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 192);
      v14 = @"YES";
      if (!a3)
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v20 = v13;
      v21 = 2048;
      v22 = a2;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "Dropping finish-draining-journal, dataclass:%@, index:%p, canceled:%@", buf, 0x20u);
    }
  }

  else
  {
    v8 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034;
    v15[3] = &unk_278934DC8;
    v15[4] = WeakRetained;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    v18 = *(a1 + 56);
    v11 = _setup_block(v15, 0, 7035);
    dispatch_async(v8, v11);
  }
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[19])
  {
    [v2 indexFinishedDrainingJournal];
    v3 = SICopyProperty();
    if (!v3 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) || (getSystemVersionString(isKindOfClass), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:v3], v5, (v6 & 1) == 0))
    {
      [*(a1 + 32) issueDuplicateOidCheck];
    }

    if (sPrivate)
    {
      goto LABEL_40;
    }

    v7 = [*(a1 + 32) dataclass];
    v8 = *MEMORY[0x277CCA1A0];
    v9 = [v7 isEqual:*MEMORY[0x277CCA1A0]];

    if (v9)
    {
      v10 = [*(a1 + 32) getPropertyForKey:@"MessagesFixupVersion"];
      if (([v10 isEqual:&unk_2846C95D8] & 1) == 0)
      {
        v11 = *(a1 + 32);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1038;
        v49[3] = &unk_2789348E8;
        v49[4] = v11;
        [v11 issueMessagesFixup:v49];
      }
    }

    v12 = [*(a1 + 32) getPropertyForKey:@"DeviceBootTime"];
    v13 = logForCSLogCategoryDefault(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 138412546;
      v51 = v14;
      v52 = 2112;
      v53 = v12;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "Comparing bootTime:%@ with stored bootTime:%@", buf, 0x16u);
    }

    if (v12 && *(a1 + 40) && ([v12 timeIntervalSince1970], v16 = v15, objc_msgSend(*(a1 + 40), "timeIntervalSince1970"), v16 - v17 <= 5.0))
    {
      [*(a1 + 40) timeIntervalSince1970];
      v43 = v42;
      [v12 timeIntervalSince1970];
      v18 = v43 - v44 <= 5.0;
    }

    else
    {
      v18 = 0;
    }

    v19 = (a1 + 40);
    v20 = [v12 isEqual:*(a1 + 40)];
    if ((v20 & 1) != 0 || v18)
    {
      if (v18)
      {
        [v12 timeIntervalSince1970];
        v31 = v30;
        v20 = [*v19 timeIntervalSince1970];
        if (v31 != v32)
        {
          v33 = logForCSLogCategoryDefault(v20);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034_cold_1();
          }
        }
      }

      v34 = logForCSLogCategoryDefault(v20);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *v19;
        *buf = 138412290;
        v51 = v35;
        _os_log_impl(&dword_231A35000, v34, OS_LOG_TYPE_DEFAULT, "BootTimeDate %@ (matched)", buf, 0xCu);
      }

      v28 = dispatch_group_create();
      [*(a1 + 32) requestRequiresImportWithoutSandboxExtension:v28 maxCount:0 depth:0];
      v36 = sIndexQueue;
      v37 = _setup_block(&__block_literal_global_1045, 0, 7007);
      dispatch_group_notify(v28, v36, v37);

      v38 = dispatch_group_create();
      [*(a1 + 32) restartAttachmentImport:v38 maxCount:256 depth:0];
      v39 = sIndexQueue;
      v40 = _setup_block(&__block_literal_global_1048, 0, 7013);
      dispatch_group_notify(v38, v39, v40);
    }

    else
    {
      v21 = logForCSLogCategoryDefault(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        [*v19 timeIntervalSince1970];
        v23 = v22;
        [v12 timeIntervalSince1970];
        *buf = 134218240;
        v51 = v23;
        v52 = 2048;
        v53 = v24;
        _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Mismatch! bootTime:%.0f with stored bootTime:%.0f", buf, 0x16u);
      }

      v25 = dispatch_group_create();
      [*(a1 + 32) removeSandboxExtensions:v25];
      v26 = sIndexQueue;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1039;
      v46[3] = &unk_278934130;
      v27 = *(a1 + 40);
      v46[4] = *(a1 + 32);
      v47 = v27;
      v48 = v25;
      v28 = v25;
      v29 = _setup_block(v46, 0, 6997);
      dispatch_group_notify(v28, v26, v29);
    }

    if (([*(a1 + 32) issuePriorityIndexFixup] & 1) == 0 && *(*(a1 + 32) + 152))
    {
      if (sUsePriorityIndex != 1)
      {
        goto LABEL_45;
      }

      if ([*(*(a1 + 48) + 192) isEqualToString:@"Priority"])
      {
LABEL_36:
        if (*(a1 + 56) == 2 || (v41 = [*(a1 + 32) getIntegerPropertyForKey:@"AppsFixupVersion"], v41 != objc_msgSend(&unk_2846C9650, "integerValue")))
        {
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1054;
          v45[3] = &unk_278934050;
          v45[4] = *(a1 + 32);
          [sDelegate updateApplicationsWithCompletion:v45 clean:0];
        }

        goto LABEL_39;
      }

      if ((sUsePriorityIndex & 1) == 0)
      {
LABEL_45:
        if ([*(*(a1 + 48) + 192) isEqualToString:v8])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_39:
    [*(a1 + 48) setHasPhotosOrText];

LABEL_40:
  }
}

id *__78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_2_1038(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] setProperty:&unk_2846C95D8 forKey:@"MessagesFixupVersion" sync:1];
  }

  return result;
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1039(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault([*(a1 + 32) setProperty:*(a1 + 40) forKey:@"DeviceBootTime" sync:1]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Set BootTimeDate %@ (post cleanup)", &v8, 0xCu);
  }

  v4 = logForCSLogCategoryDefault([*(a1 + 32) requestRequiresImportWithoutSandboxExtension:*(a1 + 48) maxCount:0 depth:0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "removeSandboxExtensions notify done", &v8, 2u);
  }

  v5 = *(a1 + 48);
  v6 = sIndexQueue;
  v7 = _setup_block(&__block_literal_global_1042, 0, 6996);
  dispatch_group_notify(v5, v6, v7);
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1040(uint64_t a1)
{
  v1 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "requestRequiresImportWithoutSandboxExtension notify done", v2, 2u);
  }
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1043(uint64_t a1)
{
  v1 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "requestRequiresImportWithoutSandboxExtension notify done", v2, 2u);
  }
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1046(uint64_t a1)
{
  v1 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "restartAttachmentImport notify done", v2, 2u);
  }
}

- (int)openJWLIndex
{
  v16 = *MEMORY[0x277D85DE8];
  if ((sShuttingDown & 1) == 0)
  {
    if (self->_jwlIndex)
    {
      return 0;
    }

    _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
    bzero(buffer, 0x400uLL);
    FileSystemRepresentation = CFStringGetFileSystemRepresentation(_indexPath, buffer, 1024);
    if (FileSystemRepresentation)
    {
      v6 = open(buffer, 0x8000);
      if ((v6 & 0x80000000) != 0)
      {
        v10 = logForCSLogCategoryIndex(v6);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          dataclass = self->_dataclass;
          *buf = 138412290;
          v14[0] = dataclass;
          _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "No index for for dataclass:%@ - can't open to journal", buf, 0xCu);
        }

        v2 = -1;
        goto LABEL_17;
      }

      v7 = v6;
      protectionClassIntValue(self->_dataclass);
      v2 = SIOpenJWLIndex();
      FileSystemRepresentation = close(v7);
      if ((v2 & 0x80000000) == 0)
      {
        self->_jwlIndex = 0;
        v8 = logForCSLogCategoryIndex(FileSystemRepresentation);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = self->_dataclass;
          *buf = 67109378;
          LODWORD(v14[0]) = v2;
          WORD2(v14[0]) = 2112;
          *(v14 + 6) = v9;
          _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "JWL index open, result:%d, dataclass:%@", buf, 0x12u);
        }

LABEL_13:

        self->_hasAssertion = 0;
        self->_assertionEndTime = 0.0;
        self->_suspended = 1;
LABEL_17:

        return v2;
      }
    }

    else
    {
      v2 = -1;
    }

    v8 = logForCSLogCategoryIndex(FileSystemRepresentation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer openJWLIndex];
    }

    goto LABEL_13;
  }

  return -1;
}

- (void)clientDidCheckin:(id)checkin service:(id)service completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  checkinCopy = checkin;
  handlerCopy = handler;
  serviceCopy = service;
  v11 = logForCSLogCategoryIndex(serviceCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    dataclass = self->_dataclass;
    checkedInClients = self->_checkedInClients;
    v14 = 138412802;
    v15 = checkinCopy;
    v16 = 2112;
    v17 = dataclass;
    v18 = 2112;
    v19 = checkedInClients;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "clientDidCheckin, bundleID:%@, dataclass:%@, checkedInClients:%@", &v14, 0x20u);
  }

  [(NSMapTable *)self->_checkedInClients setObject:serviceCopy forKey:checkinCopy];
  [(SPConcreteCoreSpotlightIndexer *)self checkInWithBundleID:checkinCopy completionHandler:handlerCopy];
}

- (BOOL)clientIsCheckedIn:(id)in
{
  if (!in)
  {
    return 0;
  }

  v3 = [(NSMapTable *)self->_checkedInClients objectForKey:?];
  v4 = v3 != 0;

  return v4;
}

- (void)checkInWithBundleID:(id)d completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_indexQueue);
  if (dCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    v9 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      index = self->_index;
      knownClients = self->_knownClients;
      checkedInClients = self->_checkedInClients;
      *buf = 138413314;
      v40 = dCopy;
      v41 = 2112;
      v42 = dataclass;
      v43 = 2048;
      v44 = index;
      v45 = 2112;
      v46 = knownClients;
      v47 = 2112;
      v48 = checkedInClients;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "checkInWithBundleID, bundleID:%@, dataclass:%@, index:%p, knownClients:%@, checkedInClients:%@", buf, 0x34u);
    }

    if (self->_knownClients)
    {
      v14 = [(__CFString *)dCopy isEqual:@"com.apple.mobilemail"];
      if (!v14 || sMailProtectionClass && (v14 = [(NSString *)self->_dataclass isEqual:?], (v14 & 1) != 0))
      {
        if ([(NSSet *)self->_knownClients containsObject:dCopy])
        {
          [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
          objc_initWeak(buf, self);
          v15 = self->_index;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_1069;
          v28[3] = &unk_278934E40;
          objc_copyWeak(&v31, buf);
          v29 = dCopy;
          selfCopy = self;
          SISynchedOpWithBlockPropagatingPriority(v15, 2, v28);

          objc_destroyWeak(&v31);
          objc_destroyWeak(buf);
        }

        else
        {
          v18 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
          dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
          v38 = dataclass;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          [v18 setProtectionClasses:v20];

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"no known client with bundle ID: %@  knownClients=%@", dCopy, self->_knownClients];;
          [v18 setReason:v21];

          v22 = [SPCoreSpotlightIndexerTask alloc];
          selfCopy2 = self;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy2 count:1];
          v24 = [(SPCoreSpotlightIndexerTask *)v22 initWithIndexJob:v18 indexers:v23];

          v36 = dCopy;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          [(SPCoreSpotlightIndexerTask *)v24 setBundleIDs:v25];

          -[SPCoreSpotlightIndexerTask setDataMigrationStage:](v24, "setDataMigrationStage:", [WeakRetained dataMigrationStage]);
          [(SPCoreSpotlightIndexerTask *)v24 setShouldResumeOnFailure:0];
          if ([(__CFString *)dCopy isEqualToString:@"com.apple.mobileslideshow"])
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"No known client: %@", self->_dataclass];
            _sendPhotosReindexABCReport(v26);
          }

          createCount = self->_createCount;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke;
          v32[3] = &unk_278934E18;
          v33 = dCopy;
          selfCopy3 = self;
          v35 = createCount;
          [(SPConcreteCoreSpotlightIndexer *)self performIndexerTask:v24 withIndexDelegatesAndCompletionHandler:v32];
        }
      }

      else
      {
        v17 = logForCSLogCategoryIndex(v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = @"com.apple.mobilemail";
          v41 = 2112;
          v42 = sMailProtectionClass;
          _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "*warn* client checkin %@ has wrong protection class for for %@", buf, 0x16u);
        }
      }
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }
}

void __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke(int8x16_t *a1, void *a2)
{
  if ([a2 containsObject:a1[2].i64[0]])
  {
    v3 = sIndexQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_2;
    v7[3] = &unk_2789344E0;
    v9 = a1[3].i64[0];
    v6 = a1[2];
    v4 = v6.i64[0];
    v8 = vextq_s8(v6, v6, 8uLL);
    v5 = _setup_block(v7, 0, 7294);
    dispatch_async(v3, v5);
  }
}

void __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  if (v2[19] && v2[8] == *(a1 + 48))
  {
    v3 = *(a1 + 40);

    [v2 _addNewClientWithBundleID:v3];
  }

  else
  {
    v4 = logForCSLogCategoryIndex(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) dataclass];
      v7 = [*(a1 + 32) index];
      v8 = *(*(a1 + 32) + 64);
      v9 = *(a1 + 48);
      v10 = 138413314;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Dropping check-in for new client, bundleID:%@, dataclass:%@, index:%p, createCount:%lu/%lu", &v10, 0x34u);
    }
  }
}

void __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_1069(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained)
  {
    v10 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(*(a1 + 40) + 192);
      v13 = @"YES";
      if (!a3)
      {
        v13 = @"NO";
      }

      *buf = 138413058;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2048;
      v21 = a2;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Dropping check-in for known client, bundleID:%@, dataclass:%@, index:%p, canceled:%@", buf, 0x2Au);
    }
  }

  else
  {
    v8 = sIndexQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__SPConcreteCoreSpotlightIndexer_checkInWithBundleID_completionHandler___block_invoke_1070;
    v14[3] = &unk_2789342C0;
    v14[4] = WeakRetained;
    v15 = *(a1 + 32);
    v9 = _setup_block(v14, 0, 7310);
    dispatch_async(v8, v9);
  }
}

- (void)addClients:(id)clients
{
  clientsCopy = clients;
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SPConcreteCoreSpotlightIndexer_addClients___block_invoke;
  v8[3] = &unk_2789342C0;
  v9 = clientsCopy;
  selfCopy = self;
  v6 = clientsCopy;
  v7 = _setup_block(v8, 0, 7326);
  dispatch_async(v5, v7);
}

void __45__SPConcreteCoreSpotlightIndexer_addClients___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 192);
    v6 = *(v4 + 32);
    *buf = 138412802;
    v20 = v3;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "addClients, bundleIDs:%@, dataclass:%@, checkedInClients:%@", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  [v7 setKnownClients:v8];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(*(a1 + 40) + 240);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 40) checkInWithBundleID:*(*(&v14 + 1) + 8 * v13++) completionHandler:{0, v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_addNewClientWithBundleID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_indexQueue);
  v5 = [(NSSet *)self->_knownClients setByAddingObject:dCopy];
  [(SPConcreteCoreSpotlightIndexer *)self setKnownClients:v5];

  inited = objc_initWeak(&location, self);
  index = self->_index;
  if (index)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke;
    v11[3] = &unk_278934E40;
    objc_copyWeak(&v13, &location);
    v11[4] = self;
    v12 = dCopy;
    SIBackgroundOpBlock(index, 0, v11);

    objc_destroyWeak(&v13);
  }

  else
  {
    v8 = logForCSLogCategoryIndex(inited);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
      readOnly = self->_readOnly;
      *buf = 138413058;
      v16 = dCopy;
      v17 = 2112;
      v18 = dataclass;
      v19 = 2048;
      v20 = MEMORY[0x277D85E38];
      v21 = 1024;
      v22 = readOnly;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Dropping check-in for new client, bundleID:%@, dataclass:%@, index:%p,  readOnly:%d", buf, 0x26u);
    }
  }

  objc_destroyWeak(&location);
}

void __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a3 || !WeakRetained || *(*(a1 + 32) + 120) == 1)
  {
    v8 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [v7 dataclass];
      v11 = v10;
      v12 = @"YES";
      v13 = *(*(a1 + 32) + 120);
      *buf = 138413314;
      if (!a3)
      {
        v12 = @"NO";
      }

      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2048;
      v29 = a2;
      v30 = 2112;
      v31 = v12;
      v32 = 1024;
      v33 = v13;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Dropping check-in for new client, bundleID:%@, dataclass:%@, index:%p, canceled:%@, readOnly:%d", buf, 0x30u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([WeakRetained denyOperationOnAssertedIndex:"_addNewClientWithBundleID"] & 1) == 0)
  {
    v21[0] = @"_kMDItemBundleID";
    v21[1] = @"_kMDItemExternalID";
    v14 = *(a1 + 40);
    v22[0] = @"com.apple.searchd";
    v22[1] = v14;
    v21[2] = @"_kMDClientCheckedIn";
    v22[2] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v23 = v15;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke_1075;
    v17[3] = &unk_278934E68;
    v18 = *(a1 + 40);
    v19 = v7;
    v20 = a2;
    v16 = [v17 copy];
    if (!SISetCSAttributes())
    {
      CFRelease(v16);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __60__SPConcreteCoreSpotlightIndexer__addNewClientWithBundleID___block_invoke_1075(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryIndex(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) dataclass];
    v7 = *(a1 + 48);
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Recorded check-in for new client, bundleID:%@, dataclass:%@, index:%p, error:%@", &v8, 0x2Au);
  }

  [*(a1 + 40) dirty];
}

- (void)performIndexerTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  owner = [(SPConcreteCoreSpotlightIndexer *)self owner];
  firstUnlockQueue = [(SPConcreteCoreSpotlightIndexer *)self firstUnlockQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke;
  v14[3] = &unk_278934EB8;
  v14[4] = self;
  v15 = taskCopy;
  v16 = owner;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = owner;
  v12 = taskCopy;
  v13 = _setup_block(v14, 0, 7399);
  dispatch_async(firstUnlockQueue, v13);
}

void __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = a1[4];
  v5 = a1[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2;
  v16[3] = &unk_278934E90;
  v6 = v2;
  v17 = v6;
  v18 = v3;
  v7 = v3;
  [v4 performIndexerTask:v5 withIndexDelegatesAndCompletionHandler:v16];
  v8 = [a1[4] firstUnlockQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3;
  v11[3] = &unk_278934EB8;
  v12 = a1[5];
  v13 = v6;
  v14 = a1[6];
  v15 = a1[7];
  v9 = v6;
  v10 = _setup_block(v11, 0, 7398);
  dispatch_group_notify(v7, v8, v10);
}

void __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __71__SPConcreteCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3(uint64_t a1)
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

- (void)performIndexerTask:(id)task withIndexDelegatesAndCompletionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke;
  v13[3] = &unk_278934F08;
  v14 = taskCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v8 = handlerCopy;
  v9 = taskCopy;
  v10 = MEMORY[0x2383760E0](v13);
  firstUnlockQueue = [(SPConcreteCoreSpotlightIndexer *)self firstUnlockQueue];
  v12 = _setup_block(v10, 0, 7468);
  dispatch_async(firstUnlockQueue, v12);
}

void __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke(id *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] job];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [a1[4] bundleIDs];
  if (v4)
  {
    v5 = [v3 initWithArray:v4];
  }

  else
  {
    v6 = [*(a1[5] + 4) keyEnumerator];
    v7 = [v6 allObjects];
    v5 = [v3 initWithArray:v7];
  }

  v8 = [a1[4] completedBundleIDs];
  v9 = [v8 count];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = [a1[4] completedBundleIDs];
    v12 = [v10 initWithArray:v11];
    [v5 minusSet:v12];
  }

  v13 = [a1[4] job];
  v14 = [v13 excludedBundleIDs];
  v15 = [v14 count];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CBEB98]);
    v17 = [a1[4] job];
    v18 = [v17 excludedBundleIDs];
    v19 = [v16 initWithArray:v18];
    [v5 minusSet:v19];
  }

  v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = dispatch_group_create();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v43 = v5;
  obj = [v5 allObjects];
  v21 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v58;
    v44 = *MEMORY[0x277CCA1A0];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v58 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v57 + 1) + 8 * i);
        v26 = [*(a1[5] + 4) objectForKey:v25];
        if (!v26)
        {
          if (![v25 isEqualToString:@"com.apple.mobileslideshow"])
          {
            continue;
          }

          v26 = [*(a1[5] + 4) objectForKey:@"com.apple.assetsd"];
          if (!v26)
          {
            continue;
          }
        }

        v27 = v26;
        v28 = [v2 jobType];
        if (v28 == 2)
        {
          v29 = [*(a1[5] + 5) containsObject:v25];
          if (v29)
          {
            v30 = logForCSLogCategoryIndex(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = a1[5];
              v32 = v31[24];
              v33 = v31[30];
              v34 = v31[5];
              *buf = 138413314;
              v62 = v2;
              v63 = 2112;
              v64 = v25;
              v65 = 2112;
              v66 = v32;
              v67 = 2112;
              v68 = v33;
              v69 = 2112;
              v70 = v34;
              _os_log_impl(&dword_231A35000, v30, OS_LOG_TYPE_INFO, "Dropping job:%@ with checked-in client for bundleID:%@, dataclass:%@, knownClients:%@, reindexAllDelegateBundleIDs:%@", buf, 0x34u);
            }

LABEL_29:

            continue;
          }

          v28 = [*(a1[5] + 5) addObject:v25];
        }

        v35 = logForCSLogCategoryIndex(v28);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = *(a1[5] + 24);
          *buf = 138412802;
          v62 = v2;
          v63 = 2112;
          v64 = v25;
          v65 = 2112;
          v66 = v36;
          _os_log_impl(&dword_231A35000, v35, OS_LOG_TYPE_INFO, "Performing job:%@ with the checked-in client for bundleID:%@, dataclass:%@", buf, 0x20u);
        }

        dispatch_group_enter(v20);
        v30 = *(a1[5] + 24);
        if (([*(a1[5] + 24) isEqual:@"Priority"] & 1) != 0 || sUseMailIndex == 1 && objc_msgSend(*(a1[5] + 24), "isEqual:", @"MobileMailIndex"))
        {
          v37 = v44;

          v30 = v37;
        }

        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1079;
        v50[3] = &unk_278934EE0;
        v38 = v2;
        v51 = v38;
        v52 = v25;
        v53 = a1[5];
        v54 = v46;
        v55 = a1[4];
        v56 = v20;
        [v27 performIndexJob:v38 protectionClass:v30 acknowledgementHandler:v50];

        goto LABEL_29;
      }

      v22 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
    }

    while (v22);
  }

  v39 = [a1[5] firstUnlockQueue];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1080;
  v47[3] = &unk_278934078;
  v40 = a1[6];
  v48 = v46;
  v49 = v40;
  v41 = v46;
  v42 = _setup_block(v47, 0, 7466);
  dispatch_group_notify(v20, v39, v42);
}

void __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1079(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryIndex(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 192);
    *buf = 138413058;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Done performing job:%@ with the checked-in client for bundleID:%@, dataclass:%@, error:%@", buf, 0x2Au);
  }

  if (!v3)
  {
    v8 = *(a1 + 56);
    objc_sync_enter(v8);
    [*(a1 + 56) addObject:*(a1 + 40)];
    objc_sync_exit(v8);
  }

  v9 = *(a1 + 48);
  v11 = *(a1 + 40);
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [v9 addCompletedBundleIDs:v10 forIndexerTask:*(a1 + 64)];

  dispatch_group_leave(*(a1 + 72));
}

void __92__SPConcreteCoreSpotlightIndexer_performIndexerTask_withIndexDelegatesAndCompletionHandler___block_invoke_1080(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) allObjects];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)startReindexAll
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"SPReindexAllStarted"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEBF8] forKey:@"SPReindexAllCompletedBundleIDs" sync:0];
    [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEC38] forKey:@"SPReindexAllStarted" sync:1];
    v4 = 0;
  }

  dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  SDTraceAdd(3, @"Reindexall start", 0, dataclass, 0, 0.0);

  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    dataclass2 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    v9 = @"NO";
    v10 = 138412802;
    v11 = dataclass2;
    v12 = 2112;
    if (v4)
    {
      v9 = @"YES";
    }

    v13 = @"SPReindexAllStarted";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "dataclass:%@, %@:%@/YES", &v10, 0x20u);
  }
}

- (void)finishReindexAll
{
  v11 = *MEMORY[0x277D85DE8];
  [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEC28] forKey:@"SPReindexAllStarted" sync:0];
  [(SPConcreteCoreSpotlightIndexer *)self setProperty:MEMORY[0x277CBEBF8] forKey:@"SPReindexAllCompletedBundleIDs" sync:1];
  dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  SDTraceAdd(3, @"Reindexall complete", 0, dataclass, 0, 0.0);

  v5 = logForCSLogCategoryIndex(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    dataclass2 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    v7 = 138412546;
    v8 = dataclass2;
    v9 = 2112;
    v10 = @"SPReindexAllStarted";
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "dataclass:%@, %@:NO", &v7, 0x16u);
  }
}

- (BOOL)reindexAllStarted
{
  v2 = [(SPConcreteCoreSpotlightIndexer *)self getPropertyForKey:@"SPReindexAllStarted"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)fetchAllCompletedBundleIDsForIndexerTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v8 = [taskCopy job];
  if ([v8 jobType] == 2 && (objc_msgSend(taskCopy, "shouldResumeOnFailure") & 1) != 0)
  {
    v9 = sIndexQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__SPConcreteCoreSpotlightIndexer_fetchAllCompletedBundleIDsForIndexerTask_completionHandler___block_invoke;
    v11[3] = &unk_278934F30;
    v11[4] = self;
    v12 = handlerCopy;
    v10 = _setup_block(v11, 0, 7521);
    dispatch_async(v9, v10);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __93__SPConcreteCoreSpotlightIndexer_fetchAllCompletedBundleIDsForIndexerTask_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) reindexAllStarted])
  {
    v2 = [*(a1 + 32) getPropertyForKey:@"SPReindexAllCompletedBundleIDs"];
    if (v2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    v5 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) dataclass];
      v8 = 138413314;
      v9 = v6;
      v10 = 2112;
      v11 = @"SPReindexAllStarted";
      v12 = 2112;
      v13 = @"YES";
      v14 = 2112;
      v15 = @"SPReindexAllCompletedBundleIDs";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "dataclass:%@, %@:%@, %@:%@", &v8, 0x34u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v4);
    }
  }
}

- (void)addCompletedBundleIDs:(id)ds forIndexerTask:(id)task
{
  dsCopy = ds;
  taskCopy = task;
  v8 = [taskCopy job];
  if ([v8 jobType] == 2 && objc_msgSend(dsCopy, "count") && objc_msgSend(taskCopy, "shouldResumeOnFailure"))
  {
    v9 = sIndexQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SPConcreteCoreSpotlightIndexer_addCompletedBundleIDs_forIndexerTask___block_invoke;
    v11[3] = &unk_2789342C0;
    v11[4] = self;
    v12 = dsCopy;
    v10 = _setup_block(v11, 0, 7547);
    dispatch_async(v9, v10);
  }
}

void __71__SPConcreteCoreSpotlightIndexer_addCompletedBundleIDs_forIndexerTask___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) reindexAllStarted])
  {
    v2 = [*(a1 + 32) getPropertyForKey:@"SPReindexAllCompletedBundleIDs"];
    v3 = MEMORY[0x277CBEBF8];
    if (v2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }
    }

    v4 = v3;
    v5 = [v4 count];
    v6 = [*(a1 + 40) count];
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v6 + v5];
    [v7 addObjectsFromArray:v4];

    [v7 addObjectsFromArray:*(a1 + 40)];
    v8 = [v7 allObjects];
    v9 = logForCSLogCategoryIndex(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) dataclass];
      v11 = *(a1 + 40);
      v12 = 138413570;
      v13 = v10;
      v14 = 2112;
      v15 = @"SPReindexAllStarted";
      v16 = 2112;
      v17 = @"YES";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = @"SPReindexAllCompletedBundleIDs";
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "dataclass:%@, %@:%@, bundleIDs:%@, %@:%@", &v12, 0x3Eu);
    }

    [*(a1 + 32) setProperty:v8 forKey:@"SPReindexAllCompletedBundleIDs" sync:1];
  }
}

- (void)commitUpdates:(id)updates
{
  v15 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v5 = updatesCopy;
  if (self->_index && !self->_suspended)
  {
    v6 = logForCSLogCategoryIndex(updatesCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      *buf = 138412290;
      v14 = dataclass;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "Index %@ sync", buf, 0xCu);
    }

    v8 = self->_dataclass;
    v12[0] = @"commit";
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v10 = SDTransactionCreate(v9);

    _cancelIdleTimer = [(SPConcreteCoreSpotlightIndexer *)self _cancelIdleTimer];
    if (SISyncIndex())
    {
      syncContextCreate(v5, v10);
      SIIndexInactive();
      SISynchedOp();
    }
  }
}

- (void)coolDown:(id)down
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_index)
  {
    downCopy = down;
    v5 = logForCSLogCategoryIndex(downCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v7 = 138412290;
      v8 = dataclass;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Index %@ coolDown", &v7, 0xCu);
    }

    [(SPConcreteCoreSpotlightIndexer *)self commitUpdates:downCopy];
  }
}

- (void)shrink:(unint64_t)shrink
{
  v9 = *MEMORY[0x277D85DE8];
  if (shrink == 16 && self->_index && s_last_memory_pressure_status == 16)
  {
    v5 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v7 = 138412290;
      v8 = dataclass;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Index %@ shrink", &v7, 0xCu);
    }

    SIIndexInactive();
  }
}

- (void)issueSplit
{
  if (self->_index)
  {
    MEMORY[0x282187368]();
  }
}

- (void)mergeWithGroup:(id)group
{
  if (self->_index)
  {
    _SIIssueFullMergeWithGroup();
  }
}

- (void)mergeWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [SPConcreteCoreSpotlightIndexer mergeWithCompletionHandler:];
  }

  v5 = handlerCopy;
  dispatch_assert_queue_V2(self->_indexQueue);
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && (!self->_suspended || self->_softSuspended))
  {
    v6 = dispatch_group_create();
    v7 = logForCSLogCategoryIndex(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      dataclass = self->_dataclass;
      *buf = 138412290;
      v14 = dataclass;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Performing full merge, dataclass:%@", buf, 0xCu);
    }

    _SIIssueFullMergeWithGroup();
    v9 = dispatch_get_global_queue(9, 2uLL);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__SPConcreteCoreSpotlightIndexer_mergeWithCompletionHandler___block_invoke;
    v11[3] = &unk_278934F30;
    v11[4] = self;
    v12 = v5;
    dispatch_group_notify(v6, v9, v11);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v5)[2](v5, v10);
  }
}

uint64_t __61__SPConcreteCoreSpotlightIndexer_mergeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 192);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Completed full merge, dataclass:%@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)cleanupStringsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [SPConcreteCoreSpotlightIndexer cleanupStringsWithCompletionHandler:];
  }

  v5 = handlerCopy;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended)
  {
    v6 = dispatch_group_create();
    [(SPConcreteCoreSpotlightIndexer *)self cleanupStringsWithActivity:0 group:v6 shouldDefer:0 flags:0];
    v7 = dispatch_get_global_queue(9, 2uLL);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__SPConcreteCoreSpotlightIndexer_cleanupStringsWithCompletionHandler___block_invoke;
    block[3] = &unk_2789341A8;
    v9 = v5;
    dispatch_group_notify(v6, v7, block);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v5)[2](v5, v6);
  }
}

- (void)cleanupStringsWithActivity:(id)activity group:(id)group shouldDefer:(BOOL *)defer flags:(int)flags
{
  if (self->_index)
  {
    MEMORY[0x2821872B0]();
  }
}

- (void)issueDefrag:(id)defrag
{
  v8[2] = *MEMORY[0x277D85DE8];
  defragCopy = defrag;
  if (self->_index)
  {
    dataclass = self->_dataclass;
    v8[0] = @"defrag";
    v8[1] = dataclass;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    v7 = SDTransactionCreate(v6);

    _SIIssueDefrag();
    if (defragCopy)
    {
      syncContextCreate(defragCopy, v7);
      SISynchedOp();
    }
  }
}

- (void)issueRepair
{
  index = self->_index;
  if (index)
  {
    MEMORY[0x282187360](index, a2);
  }
}

- (void)issueConsistencyCheck
{
  index = self->_index;
  if (index)
  {
    MEMORY[0x2821872B8](index, a2);
  }
}

- (void)issueDuplicateOidCheck
{
  index = self->_index;
  if (index)
  {
    MEMORY[0x2821872A8](index, a2);
  }
}

- (void)fixupMessageAttachmentsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_readOnly)
  {
    v6 = logForCSLogCategoryDefault(handlerCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SPConcreteCoreSpotlightIndexer fixupMessageAttachmentsWithCompletionHandler:];
    }

    goto LABEL_6;
  }

  v7 = [(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"fixupMessageAttachmentsWithCompletionHandler"];
  if (v7)
  {
LABEL_6:
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    if (v5)
    {
      (v5)[2](v5, v8);
    }

    goto LABEL_12;
  }

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__0;
  v34[4] = __Block_byref_object_dispose__0;
  v35 = 0;
  v9 = logForCSLogCategoryIndex(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "fixupMessageAttachments starting", buf, 2u);
  }

  v10 = SDTransactionCreate(&unk_2846C9290);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke;
  v30[3] = &unk_278934F58;
  v32 = v34;
  v12 = v11;
  v31 = v12;
  v13 = MEMORY[0x2383760E0](v30);
  index = self->_index;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2;
  v25[3] = &unk_278934FF8;
  v25[4] = self;
  v28 = v38;
  v15 = v12;
  v26 = v15;
  v29 = v36;
  v16 = v13;
  v27 = v16;
  SIBackgroundOpBlock(index, 0, v25);
  v17 = sIndexQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116;
  v20[3] = &unk_278935020;
  v23 = v34;
  v24 = v38;
  v22 = v5;
  v18 = v10;
  v21 = v18;
  v19 = _setup_block(v20, 0, 7819);
  dispatch_group_notify(v15, v17, v19);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
LABEL_12:
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
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

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 89;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3;
    v14[3] = &unk_278934FD0;
    v18 = a2;
    v4 = *(a1 + 56);
    v13 = *(a1 + 32);
    v5 = *(&v13 + 1);
    v17 = *(a1 + 64);
    *&v6 = *(a1 + 48);
    *(&v6 + 1) = v4;
    v15 = v13;
    v16 = v6;
    v7 = MEMORY[0x2383760E0](v14);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID=%@ && _kMDItemDomainIdentifier=attachmentDomain && _kMDItemUserActivityType!=* && kMDItemRelatedUniqueIdentifier=*", @"com.apple.MobileSMS"];
    v9 = *(a1 + 32);
    v10 = v9[19];
    v11 = *MEMORY[0x277CC3048];
    v19[0] = *MEMORY[0x277CC3208];
    v19[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    LOBYTE(v9) = [v9 _startInternalQueryWithIndex:v10 query:v8 fetchAttributes:v12 forBundleIds:&unk_2846C92A8 resultsHandler:v7];

    if (v9)
    {

      return;
    }

    *(*(*(a1 + 56) + 8) + 24) = 22;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      if ([*(a1 + 32) index] != *(a1 + 72))
      {
        v10 = *(*(a1 + 56) + 8);
        if (!*(v10 + 24))
        {
          *(v10 + 24) = 22;
        }
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else if ([*(a1 + 32) index] == *(a1 + 72))
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    VectorCount = _MDStoreOIDArrayGetVectorCount();
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:VectorCount];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_4;
    v26[3] = &unk_278934A00;
    v13 = v12;
    v27 = v13;
    [a6 enumerateQueryResults:2 stringCache:0 usingBlock:v26];
    v14 = [v13 count];
    v15 = logForCSLogCategoryIndex(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 67109632;
      v29 = v16;
      v30 = 1024;
      v31 = v14;
      v32 = 1024;
      v33 = VectorCount;
      _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEFAULT, "fixupMessageAttachments update batch %d count %d (%d)", buf, 0x14u);
    }

    if (v14)
    {
      dispatch_group_enter(*(a1 + 40));
      v17 = sIndexQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_1108;
      v22[3] = &unk_278934FA8;
      v18 = *(a1 + 72);
      v22[4] = *(a1 + 32);
      v25 = v18;
      v21 = *(a1 + 48);
      v19 = v21;
      v24 = v21;
      v23 = v13;
      v20 = _setup_block(v22, 0, 7785);
      dispatch_async(v17, v20);
    }
  }
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[1];
    if (v3)
    {
      if (v2 != *MEMORY[0x277CBEEE8] && v3 != *MEMORY[0x277CBEEE8])
      {
        v5 = *(a1 + 32);
        v6 = *MEMORY[0x277CC3048];
        v8[0] = *MEMORY[0x277CC3208];
        v8[1] = v6;
        v9[0] = v2;
        v9[1] = v3;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
        [v5 addObject:v7];
      }
    }
  }
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_1108(uint64_t a1)
{
  v2 = [*(a1 + 32) index];
  v3 = *(a1 + 64);
  if (v2 == v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2_1109;
    v7[3] = &unk_278934F80;
    v6 = *(a1 + 48);
    v5 = v6;
    v9 = v6;
    v8 = *(a1 + 40);
    SIBackgroundOpBlock(v3, 0, v7);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 22;
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_2_1109(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 89;
  }

  v4 = [*(a1 + 40) copy];
  if (!SISetCSAttributes())
  {
    v5 = *(*(a1 + 48) + 8);
    if (!*(v5 + 24))
    {
      *(v5 + 24) = 22;
    }

    (*(*(a1 + 40) + 16))();

    CFRelease(v4);
  }
}

id __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116(void *a1)
{
  v2 = a1 + 6;
  if (*(*(a1[6] + 8) + 40) || *(*(a1[7] + 8) + 24) && ([MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0], v6 = objc_claimAutoreleasedReturnValue(), v7 = *(*v2 + 8), v8 = *(v7 + 40), *(v7 + 40) = v6, v8, *(*(*v2 + 8) + 40)))
  {
    v3 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116_cold_1();
    }
  }

  else
  {
    v3 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "fixupMessageAttachments complete", v9, 2u);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(*v2 + 8) + 40));
  }

  return objc_opt_self();
}

- (void)issueMessagesFixup:(id)fixup
{
  fixupCopy = fixup;
  v5 = fixupCopy;
  if (self->_index && !self->_suspended)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__SPConcreteCoreSpotlightIndexer_issueMessagesFixup___block_invoke;
    v7[3] = &unk_278935048;
    v8 = fixupCopy;
    [(SPConcreteCoreSpotlightIndexer *)self fixupMessageAttachmentsWithCompletionHandler:v7];
  }

  else if (fixupCopy)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v5)[2](v5, v6);
  }
}

uint64_t __53__SPConcreteCoreSpotlightIndexer_issueMessagesFixup___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_appendRervseInfo:(id)info dictionary:(id)dictionary key:(id)key level:(unint64_t)level
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dictionaryCopy = dictionary;
  keyCopy = key;
  [infoCopy appendString:@"\n"];
  if (level)
  {
    levelCopy = level;
    do
    {
      [infoCopy appendString:@"  "];
      --levelCopy;
    }

    while (levelCopy);
  }

  [infoCopy appendFormat:@"%@", keyCopy];
  v14 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  if (v14)
  {
    [dictionaryCopy setObject:0 forKeyedSubscript:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(SPConcreteCoreSpotlightIndexer *)self _appendRervseInfo:infoCopy dictionary:dictionaryCopy key:*(*(&v20 + 1) + 8 * v19++) level:level + 1];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v17);
      }
    }

    else
    {
      [(SPConcreteCoreSpotlightIndexer *)self _appendRervseInfo:infoCopy dictionary:dictionaryCopy key:v14 level:level + 1];
    }
  }
}

- (void)issueDumpReverse:(unint64_t)reverse completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  index = self->_index;
  if (index)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke;
    v9[3] = &unk_278935098;
    reverseCopy = reverse;
    v9[4] = self;
    v10 = handlerCopy;
    SISynchedOpWithBlock(index, 4, v9);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke(void *a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    if (a1[6])
    {
      v5 = objc_opt_new();
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke_2;
      v23 = &unk_278935070;
      v6 = &v24;
      v7 = v5;
      v24 = v7;
      _SIReverseStoreIterate();
      if ([v7 count])
      {
        v8 = [MEMORY[0x277CCAB68] stringWithString:@"### Reverse Store"];
        bzero(v26, 0x1000uLL);
        processReverseInfo(v26, 0, v8, v7, &unk_2846C9638);
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [v7 allKeys];
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              processReverseInfo(v26, 0, v8, v7, *(*(&v16 + 1) + 8 * i));
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v25 count:16];
          }

          while (v11);
        }

        v4 = [v8 dataUsingEncoding:4];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      [MEMORY[0x277CCAB68] stringWithString:@"### Reverse Store"];
      v15 = v6 = &v15;
      v7 = v15;
      _SIReverseStoreIterate();
      v4 = [v7 dataUsingEncoding:4];
    }
  }

  v14 = a1[5];
  if (v14)
  {
    (*(v14 + 16))(v14, v4, 0);
  }
}

void __69__SPConcreteCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v7 = [v5 arrayByAddingObject:v6];
    }

    else
    {
      v9[0] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v9[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    }

    v8 = v7;
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  }
}

- (void)issueDumpForward:(unint64_t)forward completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  index = self->_index;
  if (index)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke;
    v8[3] = &unk_2789350E8;
    v9 = handlerCopy;
    SISynchedOpWithBlock(index, 4, v8);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = _SIGetIndexCount();
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v4 appendFormat:@"### Forward Store (%d)\n", i, v11, v12, v13, v14];
        v11 = MEMORY[0x277D85DD0];
        v12 = 3221225472;
        v13 = __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke_2;
        v14 = &unk_2789350C0;
        v8 = v4;
        _SIDirectoryStoreIterate();
      }

      v4 = v8;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v4 dataUsingEncoding:4];
    (*(v9 + 16))(v9, v10, 0);
  }
}

uint64_t __69__SPConcreteCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = 21 * a2 + 21;
  v7 = v18 - ((v6 + 15) & 0x1FFFFFFF0);
  bzero(v7, v6);
  *v7 = 0;
  v8 = v7;
  if (a2 >= 1)
  {
    if (a2 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = a2;
    }

    v8 = v7;
    do
    {
      v10 = *(a3 + 8 * (v9 - 1));
      *v8 = 47;
      v11 = -1;
      v12 = 1;
      v13 = v10;
      do
      {
        v14 = v12;
        v15 = v13 + 9;
        v13 /= 10;
        ++v11;
        ++v12;
      }

      while (v15 > 0x12);
      do
      {
        v8[v14--] = v10 % 10 + 48;
        v10 /= 10;
      }

      while (v14 > 0);
      v8 += v11 + 2;
    }

    while (v9-- > 1);
  }

  *v8 = 0;
  return [*(a1 + 32) appendFormat:@"%s\n", v7];
}

+ (BOOL)dumpCrashStates:(const char *)states toFile:(id)file
{
  fileCopy = file;
  v6 = fileCopy;
  if (!states)
  {
    goto LABEL_24;
  }

  v7 = dup([fileCopy fileDescriptor]);
  if (v7 < 0)
  {
LABEL_23:
    LOBYTE(states) = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = fdopen(v7, "a");
  if (!v9)
  {
    close(v8);
    goto LABEL_23;
  }

  v10 = v9;
  v11 = strrchr(states, 47);
  if (!v11 || v11 == states || (*v11 = 0, v12 = v11 + 1, v13 = strlen(states), (v14 = malloc_type_malloc(0x400uLL, 0x2934D7C0uLL)) == 0))
  {
LABEL_22:
    fclose(v10);
    goto LABEL_23;
  }

  v15 = v14;
  v16 = opendir(states);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[SPConcreteCoreSpotlightIndexer dumpCrashStates:toFile:];
    }

    free(v15);
    goto LABEL_22;
  }

  v17 = v16;
  v18 = readdir(v16);
  if (v18)
  {
    v19 = v18;
    v20 = v13 - 1014;
    v27 = &v15[v13];
    v28 = &v15[v13 + 2];
    __dst = &v15[v13 + 1];
    do
    {
      if (v19->d_type == 4 && v19->d_name[0] != 46 && v20 + v19->d_namlen >= 0xFFFFFFFFFFFFFC00)
      {
        v21 = strlen(v12);
        if (!strncmp(v19->d_name, v12, v21))
        {
          __strcpy_chk();
          *v27 = 47;
          strcpy(__dst, v19->d_name)[v19->d_namlen] = 47;
          strcpy((v28 + v19->d_namlen), "mds64-crash-state-v2");
          memset(&v30, 0, sizeof(v30));
          if (!stat(v15, &v30))
          {
            v22 = +[SPCoreSpotlightIndexer sharedInstance];
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nCrash State %s\n", v15];
            [v23 dataUsingEncoding:4];
            v25 = v24 = v20;
            [v22 writeData:v25 toFile:v6];

            v20 = v24;
            _SICrashStateDump();
            fflush(v10);
          }
        }
      }

      v19 = readdir(v17);
    }

    while (v19);
  }

  free(v15);
  closedir(v17);
  fclose(v10);
  LOBYTE(states) = 1;
LABEL_24:

  return states;
}

- (BOOL)writeDiagnostic:(id)diagnostic bundleID:(id)d identifier:(id)identifier
{
  v166 = *MEMORY[0x277D85DE8];
  diagnosticCopy = diagnostic;
  dCopy = d;
  identifierCopy = identifier;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v10 = +[SPCoreSpotlightIndexer sharedInstance];
  v11 = MEMORY[0x277CCACA8];
  dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v13 = [v11 stringWithFormat:@"=== Index %@\n\n", dataclass];
  v14 = [v13 dataUsingEncoding:4];
  v15 = [v10 writeData:v14 toFile:diagnosticCopy];
  *(v144 + 24) = v15;

  if (*(v144 + 24))
  {
    if (![dCopy length])
    {
      goto LABEL_7;
    }

    if ([identifierCopy length])
    {
      v16 = +[SPCoreSpotlightIndexer sharedInstance];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle: %@\nItem Identifier: %@\n\n", dCopy, identifierCopy];
    }

    else
    {
      v16 = +[SPCoreSpotlightIndexer sharedInstance];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle: %@\n\n", dCopy];
    }
    v17 = ;
    v18 = [v17 dataUsingEncoding:4];
    v19 = [v16 writeData:v18 toFile:diagnosticCopy];
    *(v144 + 24) = v19;

    if (*(v144 + 24))
    {
LABEL_7:
      _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
      v20 = _indexPath;
      fileSystemRepresentation = [_indexPath fileSystemRepresentation];
      v120 = strlen(fileSystemRepresentation);
      if (!self->_index || !SIValidIndex())
      {
LABEL_50:
        v85 = +[SPCoreSpotlightIndexer sharedInstance];
        v86 = [_indexPath stringByAppendingString:@"\n"];
        v87 = [v86 dataUsingEncoding:4];
        v88 = [v85 writeData:v87 toFile:diagnosticCopy];
        *(v144 + 24) = v88;

        if (*(v144 + 24))
        {
          v89 = v120 + 1;
          if (v120 + 1 <= 0x3FF)
          {
            bzero(v159, 0x400uLL);
            __strcpy_chk();
            v159[v120] = 47;
            v159[v89] = 0;
            v90 = opendir(v159);
            if (v90)
            {
              while (1)
              {
                v91 = readdir(v90);
                if (!v91)
                {
                  break;
                }

                d_type = v91->d_type;
                if (d_type != 4 && d_type != 10 && v89 + v91->d_namlen <= 0x3FE)
                {
                  d_name = v91->d_name;
                  strcpy(&v159[v89], v91->d_name);
                  memset(&v124, 0, sizeof(v124));
                  if (!stat(v159, &v124))
                  {
                    v157 = 0u;
                    v158 = 0u;
                    *v155 = 0u;
                    v156 = 0u;
                    v153 = 0u;
                    v154 = 0u;
                    *v151 = 0u;
                    v152 = 0u;
                    v149 = 0u;
                    v150 = 0u;
                    *v147 = 0u;
                    v148 = 0u;
                    memset(&v123, 0, sizeof(v123));
                    localtime_r(&v124.st_birthtimespec.tv_sec, &v123);
                    strftime(v155, 0x40uLL, "%F %T", &v123);
                    localtime_r(&v124.st_ctimespec.tv_sec, &v123);
                    strftime(v151, 0x40uLL, "%F %T", &v123);
                    localtime_r(&v124.st_mtimespec.tv_sec, &v123);
                    strftime(v147, 0x40uLL, "%F %T", &v123);
                    v95 = open(v159, 0x8000);
                    v96 = v95;
                    if (v95 == -1)
                    {
                      v97 = 0;
                    }

                    else
                    {
                      v97 = fcntl(v95, 63);
                      close(v96);
                    }

                    v98 = +[SPCoreSpotlightIndexer sharedInstance];
                    v147 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%s\t%ld\t%d\t%s\t%s\t%s\n", d_name, v124.st_size, v97, v155, v151, v147];
                    v100 = [v147 dataUsingEncoding:4];
                    v101 = [v98 writeData:v100 toFile:diagnosticCopy];
                    *(v144 + 24) = v101;

                    if (!*(v144 + 24))
                    {
                      goto LABEL_74;
                    }
                  }
                }
              }

              closedir(v90);
              [SPConcreteCoreSpotlightIndexer dumpCrashStates:fileSystemRepresentation toFile:diagnosticCopy];
            }
          }

          v102 = +[SPCoreSpotlightIndexer sharedInstance];
          v103 = [@"===\n\n" dataUsingEncoding:4];
          v104 = [v102 writeData:v103 toFile:diagnosticCopy];
          *(v144 + 24) = v104;

          if (*(v144 + 24))
          {
            v106 = SPLogDirectory(v105);
            dataclass2 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
            v108 = [dataclass2 stringByAppendingString:@".log"];
            v109 = [v106 stringByAppendingPathComponent:v108];

            v110 = [_indexPath stringByAppendingPathComponent:@"activityJournal.1"];
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager removeItemAtPath:v109 error:0];
            [defaultManager copyItemAtPath:v110 toPath:v109 error:0];

            v25 = 1;
LABEL_75:

            goto LABEL_76;
          }
        }

LABEL_74:
        v25 = 0;
        goto LABEL_75;
      }

      if (self->_suspended)
      {
        indexQueue = self->_indexQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke;
        block[3] = &unk_278934050;
        block[4] = self;
        dispatch_sync(indexQueue, block);
        if (self->_suspended)
        {
          v22 = +[SPCoreSpotlightIndexer sharedInstance];
          v23 = [@"   Index suspended\n\n" dataUsingEncoding:4];
          v24 = [v22 writeData:v23 toFile:diagnosticCopy];
          *(v144 + 24) = v24;

          if (!*(v144 + 24))
          {
            goto LABEL_74;
          }

          goto LABEL_50;
        }
      }

      v26 = SICopyProperties();
      v118 = v26;
      if (!v26)
      {
LABEL_39:
        v66 = SICopyCSClientStateCache();
        if (!v66)
        {
          goto LABEL_43;
        }

        v67 = +[SPCoreSpotlightIndexer sharedInstance];
        v68 = [@"ClientStateCache:\n" dataUsingEncoding:4];
        v69 = [v67 writeData:v68 toFile:diagnosticCopy];
        *(v144 + 24) = v69;

        if (*(v144 + 24))
        {
          *v159 = 0;
          v160 = v159;
          v161 = 0x2020000000;
          LOBYTE(v162) = 1;
          v125[0] = MEMORY[0x277D85DD0];
          v125[1] = 3221225472;
          v125[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_6;
          v125[3] = &unk_2789351B0;
          v70 = diagnosticCopy;
          v126 = v70;
          v127 = v159;
          [v66 enumerateKeysAndObjectsUsingBlock:v125];
          v71 = v160[24];
          *(v144 + 24) = v71;
          if (v71)
          {
            v72 = +[SPCoreSpotlightIndexer sharedInstance];
            v73 = [@"\n" dataUsingEncoding:4];
            v74 = [v72 writeData:v73 toFile:v70];
            *(v144 + 24) = v74;

            v75 = *(v144 + 24) == 0;
            _Block_object_dispose(v159, 8);
            if (!v75)
            {
LABEL_43:
              v76 = _SISchedulerCopyDump();
              if (v76)
              {
                v77 = +[SPCoreSpotlightIndexer sharedInstance];
                v78 = [v76 description];
                v79 = [v78 dataUsingEncoding:4];
                v80 = [v77 writeData:v79 toFile:diagnosticCopy];
                *(v144 + 24) = v80;

                if ((v144[3] & 1) == 0)
                {

                  goto LABEL_74;
                }

                v81 = +[SPCoreSpotlightIndexer sharedInstance];
                v82 = [@"\n\n" dataUsingEncoding:4];
                v83 = [v81 writeData:v82 toFile:diagnosticCopy];
                *(v144 + 24) = v83;

                v84 = *(v144 + 24) == 0;
                if (v84)
                {
                  goto LABEL_74;
                }
              }

              else
              {
              }

              goto LABEL_50;
            }
          }

          else
          {

            _Block_object_dispose(v159, 8);
          }
        }

        goto LABEL_74;
      }

      v27 = +[SPCoreSpotlightIndexer sharedInstance];
      v28 = [v26 description];
      v29 = [v28 dataUsingEncoding:4];
      v30 = [v27 writeData:v29 toFile:diagnosticCopy];
      *(v144 + 24) = v30;

      if (!*(v144 + 24) || (+[SPCoreSpotlightIndexer sharedInstance](SPCoreSpotlightIndexer, "sharedInstance"), v31 = objc_claimAutoreleasedReturnValue(), [@"\n\n" dataUsingEncoding:4], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "writeData:toFile:", v32, diagnosticCopy), *(v144 + 24) = v33, v32, v31, !*(v144 + 24)))
      {
LABEL_73:

        goto LABEL_74;
      }

      if (![dCopy length])
      {
        goto LABEL_39;
      }

      v34 = [v26 objectForKeyedSubscript:@"GroupAssignments"];
      v35 = [v34 objectForKeyedSubscript:dCopy];
      v115 = v34;

      if (!v35)
      {
        goto LABEL_36;
      }

      v36 = [v34 objectForKeyedSubscript:@"com.apple.searchd"];

      if (!v36)
      {
        goto LABEL_36;
      }

      v37 = dispatch_group_create();
      dispatch_group_enter(v37);
      *v159 = 0;
      v160 = v159;
      v161 = 0x3032000000;
      v162 = __Block_byref_object_copy__0;
      v163 = __Block_byref_object_dispose__0;
      v164 = 0;
      index = self->_index;
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_2;
      v138[3] = &unk_278935138;
      v139 = dCopy;
      v141 = v159;
      v39 = v37;
      v140 = v39;
      SISynchedOpWithBlock(index, 3, v138);
      dispatch_group_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
      v114 = v39;
      if ([*(v160 + 5) count])
      {
        v40 = [*(v160 + 5) objectForKeyedSubscript:*MEMORY[0x277CC24A8]];
        v113 = v40;
        if (v40 && (+[SPCoreSpotlightIndexer sharedInstance](SPCoreSpotlightIndexer, "sharedInstance"), v41 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"\n   AttributeChangeDate = %@\n", v40], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "dataUsingEncoding:", 4), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v41, "writeData:toFile:", v43, diagnosticCopy), *(v144 + 24) = v44, v43, v42, v41, v45 = v40, !*(v144 + 24)))
        {
LABEL_70:
        }

        else
        {
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          obj = *(v160 + 5);
          v46 = [obj countByEnumeratingWithState:&v134 objects:v165 count:16];
          if (v46)
          {
            v117 = *v135;
            while (2)
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v135 != v117)
                {
                  objc_enumerationMutation(obj);
                }

                v48 = *(*(&v134 + 1) + 8 * i);
                v49 = [*(v160 + 5) objectForKeyedSubscript:v48];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v49 encoding:4];
                  if (![v50 length])
                  {
                    v51 = [v49 description];

                    v50 = v51;
                  }

                  v52 = +[SPCoreSpotlightIndexer sharedInstance];
                  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"   %@ = %@\n", v48, v50];
                  v54 = [v53 dataUsingEncoding:4];
                  v55 = [v52 writeData:v54 toFile:diagnosticCopy];
                  *(v144 + 24) = v55;

                  LOBYTE(v52) = *(v144 + 24) == 0;
                  if (v52)
                  {

                    v45 = v113;
                    goto LABEL_70;
                  }
                }
              }

              v46 = [obj countByEnumeratingWithState:&v134 objects:v165 count:16];
              if (v46)
              {
                continue;
              }

              break;
            }
          }

          v56 = +[SPCoreSpotlightIndexer sharedInstance];
          v57 = [@"\n\n" dataUsingEncoding:4];
          v58 = [v56 writeData:v57 toFile:diagnosticCopy];
          *(v144 + 24) = v58;

          v59 = *(v144 + 24) == 0;
          if (!v59)
          {
            goto LABEL_35;
          }
        }

        _Block_object_dispose(v159, 8);
LABEL_72:

        goto LABEL_73;
      }

LABEL_35:

      _Block_object_dispose(v159, 8);
LABEL_36:
      if (!identifierCopy || (v60 = dispatch_group_create(), dispatch_group_enter(v60), v128[0] = MEMORY[0x277D85DD0], v128[1] = 3221225472, v128[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_4, v128[3] = &unk_278935188, v128[4] = self, v129 = dCopy, v130 = identifierCopy, v133 = &v143, v131 = diagnosticCopy, v61 = v60, v132 = v61, v62 = MEMORY[0x2383760E0](v128), v63 = sIndexQueue, _setup_block(v62, 0, 8145), v64 = objc_claimAutoreleasedReturnValue(), dispatch_async(v63, v64), v64, dispatch_group_wait(v61, 0xFFFFFFFFFFFFFFFFLL), v65 = *(v144 + 24) == 0, v62, v132, v131, v130, v129, v61, !v65))
      {

        goto LABEL_39;
      }

      goto LABEL_72;
    }
  }

  v25 = 0;
LABEL_76:
  _Block_object_dispose(&v143, 8);

  return v25;
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6[0] = *(a1 + 32);
    [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    v5 = *(a1 + 40);
    v4 = v5;
    if (SIGetCSAttributes())
    {
      dispatch_group_leave(*(a1 + 40));
    }
  }
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if ([v4 count] >= 2)
      {
        v5 = [v4 objectAtIndexedSubscript:1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count])
        {
          v6 = [v5 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
          }
        }
      }
    }
  }

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_5;
  v5[3] = &unk_278935160;
  v8 = *(a1 + 72);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 attributesForBundleId:v3 identifier:v4 completion:v5];
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[SPCoreSpotlightIndexer sharedInstance];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemSDBInfo = %@\n\n", v3];

  v6 = [v5 dataUsingEncoding:4];
  *(*(a1[6] + 8) + 24) = [v4 writeData:v6 toFile:a1[4]];

  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_6(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[SPCoreSpotlightIndexer sharedInstance];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tbundleID: %@\n", v7];
    v11 = [v10 dataUsingEncoding:4];
    v12 = [v9 writeData:v11 toFile:*(a1 + 32)];

    if (v12)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_7;
      v15[3] = &unk_2789351B0;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = v13;
      v17 = v14;
      [v8 enumerateKeysAndObjectsUsingBlock:v15];
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void __70__SPConcreteCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier___block_invoke_7(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    if (!v8)
    {
      v8 = [v7 description];
    }

    v9 = +[SPCoreSpotlightIndexer sharedInstance];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@: %@\n", v13, v8];
    v11 = [v10 dataUsingEncoding:4];
    v12 = [v9 writeData:v11 toFile:*(a1 + 32)];

    if ((v12 & 1) == 0)
    {
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

- (void)dropBackgroundAssertions:(BOOL)assertions
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_hasAssertion)
  {
    assertionsCopy = assertions;
    v5 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v7 = "NO";
      if (self->_suspended)
      {
        v7 = "YES";
      }

      *buf = 138412546;
      v16 = dataclass;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Dropping bg assertion on unlock, dataclass:%@, suspended:%s", buf, 0x16u);
    }

    self->_hasAssertion = 0;
    index = self->_index;
    if (index)
    {
      if (assertionsCopy)
      {
        v9 = dispatch_group_create();
        dispatch_group_enter(v9);
        index = self->_index;
      }

      else
      {
        v9 = 0;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke;
      v11[3] = &unk_278935200;
      v14 = assertionsCopy;
      v10 = v9;
      v12 = v10;
      selfCopy = self;
      SISynchedOpWithBlock(index, 3, v11);
      if (assertionsCopy)
      {
        dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      self->_assertionEndTime = 0.0;
    }
  }
}

void __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (*(a1 + 48) == 1)
    {
      v4 = *(a1 + 32);

      dispatch_group_leave(v4);
    }
  }

  else
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke_2;
    v9[3] = &unk_2789351D8;
    v7 = v6;
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    SIBackgroundOpBlock(a2, 0, v9);
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if (*(a1 + 48) == 1)
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }
}

void __59__SPConcreteCoreSpotlightIndexer_dropBackgroundAssertions___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 32);

    dispatch_group_leave(v4);
  }

  else
  {
    SISetBgAssertionFlag();
    if (CFAbsoluteTimeGetCurrent() <= *(*(a1 + 40) + 80))
    {
      v5 = SIDropAssertion();
      v6 = v5;
      *(*(a1 + 40) + 80) = 0;
      v7 = logForCSLogCategoryIndex(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 40) + 192);
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = v6;
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "dataclass:%@, SIDropAssertion returned: %d", &v9, 0x12u);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)closeIndex
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_index)
  {
    v3 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      dataclass = self->_dataclass;
      v5 = "NO";
      if (self->_suspended)
      {
        v5 = "YES";
      }

      v11 = 138412546;
      v12 = dataclass;
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Closing index, dataclass:%@, suspended:%s", &v11, 0x16u);
    }

    _cancelIdleTimer = [(SPConcreteCoreSpotlightIndexer *)self _cancelIdleTimer];
    if (self->_suspended)
    {
      if (!self->_softSuspended && !self->_hasAssertion)
      {
        SIResumeIndex();
      }

      *&self->_suspended = 0;
    }

    v7 = SICloseIndex();
    self->_index = 0;
    v8 = logForCSLogCategoryIndex(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_dataclass;
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Closed index, dataclass:%@", &v11, 0xCu);
    }

    v10 = objc_opt_self();
  }
}

void __45__SPConcreteCoreSpotlightIndexer_resumeIndex__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (!a3)
    {
      MEMORY[0x2821872C0](a2);
    }
  }
}

- (void)readyIndex:(BOOL)index
{
  indexCopy = index;
  v36 = *MEMORY[0x277D85DE8];
  if (self->_jwlIndex)
  {
    deviceUnlocked = [sDelegate deviceUnlocked];
    if ((deviceUnlocked & 1) == 0)
    {
      v10 = logForCSLogCategoryIndex(deviceUnlocked);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        dataclass = self->_dataclass;
        *buf = 138412290;
        v33 = dataclass;
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "JWL index open till unlock, dataclass:%@", buf, 0xCu);
      }

      return;
    }

    SICloseJWLIndex();
    self->_jwlIndex = 0;
  }

  if (self->_index)
  {
    goto LABEL_16;
  }

  onDemandOpen = self->_onDemandOpen;
  v7 = logForCSLogCategoryIndex(0);
  v8 = v7;
  if (onDemandOpen)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = self->_dataclass;
      *buf = 138412290;
      v33 = v9;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Opening index, dataclass:%@", buf, 0xCu);
    }

    [(SPConcreteCoreSpotlightIndexer *)self openIndex:indexCopy];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer readyIndex:];
    }
  }

  if (self->_index)
  {
LABEL_16:
    v12 = SIValidIndex();
    if (!v12)
    {
      v29 = logForCSLogCategoryIndex(v12);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = self->_dataclass;
        *buf = 138412290;
        v33 = v30;
        _os_log_impl(&dword_231A35000, v29, OS_LOG_TYPE_INFO, "Re-opening index, dataclass:%@", buf, 0xCu);
      }

      [(SPConcreteCoreSpotlightIndexer *)self closeIndex];
      selfCopy2 = self;
      v28 = 1;
      goto LABEL_45;
    }

    if (self->_index)
    {
      v13 = SIResumeForUnlock();
      if (self->_index)
      {
        if (self->_suspended)
        {
          v14 = logForCSLogCategoryIndex(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = self->_dataclass;
            v16 = "NO";
            if (self->_suspended)
            {
              v16 = "YES";
            }

            *buf = 138412546;
            v33 = v15;
            v34 = 2080;
            v35 = v16;
            _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "Try resume index, dataclass:%@, suspended:%s", buf, 0x16u);
          }

          if ([sDelegate deviceUnlocked])
          {
            if ((v17 = *MEMORY[0x277CCA190], !-[NSString isEqualToString:](self->_dataclass, "isEqualToString:", *MEMORY[0x277CCA190])) && !-[NSString isEqualToString:](self->_dataclass, "isEqualToString:", *MEMORY[0x277CCA198]) && (v18 = -[NSString isEqualToString:](self->_dataclass, "isEqualToString:", *MEMORY[0x277CCA1A8]), !v18) || (-[SPConcreteCoreSpotlightIndexer owner](self, "owner"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [sDelegate deviceFirstUnlockedInSB], v19, v20))
            {
              v21 = logForCSLogCategoryIndex(v18);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = self->_dataclass;
                *buf = 138412290;
                v33 = v22;
                _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_INFO, "Resuming the protected index for dataclass %@ since the device was unlocked", buf, 0xCu);
              }

              if (!self->_softSuspended && !self->_hasAssertion)
              {
                SIResumeIndex();
              }

              index = self->_index;
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __45__SPConcreteCoreSpotlightIndexer_readyIndex___block_invoke;
              v31[3] = &unk_278935248;
              v31[4] = self;
              SIBackgroundOpBlock(index, 0, v31);
              if (_os_feature_enabled_impl() && [(NSString *)self->_dataclass isEqualToString:v17])
              {
                SISyncIndex();
              }

              [(SPConcreteCoreSpotlightIndexer *)self dropBackgroundAssertions:SIIsLockedIndexingMode()];
              *&self->_suspended = 0;
              if (self->_index)
              {
                locked = SIIsLockedIndexingMode();
                if (locked)
                {
                  v25 = logForCSLogCategoryIndex(locked);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v26 = self->_dataclass;
                    *buf = 138412290;
                    v33 = v26;
                    _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_INFO, "reopening index as it was opened for locked indexing, dataclass:%@", buf, 0xCu);
                  }

                  [(SPConcreteCoreSpotlightIndexer *)self closeIndex];
                  selfCopy2 = self;
                  v28 = 0;
LABEL_45:
                  [(SPConcreteCoreSpotlightIndexer *)selfCopy2 openIndex:v28];
                }
              }
            }
          }
        }
      }
    }
  }
}

double __45__SPConcreteCoreSpotlightIndexer_readyIndex___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    if (_os_feature_enabled_impl() && [*(*(a1 + 32) + 192) isEqualToString:*MEMORY[0x277CCA190]])
    {
      SIReleaseJournalAssertion();
    }

    SISetLockedJournalingState();

    _SISetAssertedJournalNum();
  }

  return result;
}

- (void)ensureOpenIndexFiles:(id)files
{
  if (self->_index)
  {
    filesCopy = files;
    _SIOpenIndexFilesForMerge();
    [(SPConcreteCoreSpotlightIndexer *)self commitUpdates:filesCopy];
  }
}

- (void)suspendIndexForDeviceLock:(id)lock
{
  v41 = *MEMORY[0x277D85DE8];
  lockCopy = lock;
  v5 = SIIndexIsInPlayback();
  if (v5)
  {
LABEL_10:
    if (!self->_suspended)
    {
      v15 = logForCSLogCategoryIndex(v5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        dataclass = self->_dataclass;
        *buf = 138412290;
        *v40 = dataclass;
        _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "Maintenance mode, dataclass:%@", buf, 0xCu);
      }

      if (self->_index)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current >= self->_assertionEndTime)
        {
          v22 = 0;
        }

        else
        {
          v19 = logForCSLogCategoryIndex(v17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = (self->_assertionEndTime - Current);
            v21 = self->_dataclass;
            *buf = 67109378;
            *v40 = v20;
            *&v40[4] = 2112;
            *&v40[6] = v21;
            _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_INFO, "Holding assertion for: %d seconds dataclass:%@ as the device is locking", buf, 0x12u);
          }

          SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1207);
          v22 = 1;
        }

        self->_hasAssertion = v22;
        v23 = dispatch_get_global_queue(2, 2uLL);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_2;
        v37[3] = &unk_278935270;
        v37[4] = self;
        v38 = lockCopy;
        dispatch_apply(2uLL, v23, v37);
      }

      *&self->_suspended = 257;
    }

    goto LABEL_21;
  }

  outstandingMaintenance = [(SPConcreteCoreSpotlightIndexer *)self outstandingMaintenance];
  v7 = [outstandingMaintenance count];
  v8 = MEMORY[0x277CCA190];
  if (!v7 && !atomic_load(&self->_maintenanceOperations))
  {

    goto LABEL_25;
  }

  dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  if (dataclass == *v8)
  {
LABEL_9:

    goto LABEL_10;
  }

  dataclass2 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v12 = dataclass2;
  if (dataclass2 == *MEMORY[0x277CCA198])
  {

    goto LABEL_9;
  }

  dataclass3 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
  v14 = *MEMORY[0x277CCA1A8];

  if (dataclass3 == v14)
  {
    goto LABEL_10;
  }

LABEL_25:
  if (self->_index)
  {
    v26 = logForCSLogCategoryIndex(v5);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = self->_dataclass;
      v28 = "NO";
      if (self->_suspended)
      {
        v28 = "YES";
      }

      *buf = 138412546;
      *v40 = v27;
      *&v40[8] = 2080;
      *&v40[10] = v28;
      _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "Suspending index, dataclass:%@, suspended:%s", buf, 0x16u);
    }

    if (!self->_suspended)
    {
      self->_suspending = 1;
      v30 = CFAbsoluteTimeGetCurrent();
      if (v30 >= self->_assertionEndTime)
      {
        self->_hasAssertion = 0;
        if (_os_feature_enabled_impl() && [(NSString *)self->_dataclass isEqualToString:*v8])
        {
          SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1214);
        }

        self->_suspended = SIFlushAndSuspendIndex() != 0;
        if (_os_feature_enabled_impl() && [(NSString *)self->_dataclass isEqualToString:*v8])
        {
          SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1217);
        }
      }

      else
      {
        v31 = logForCSLogCategoryIndex(v29);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = (self->_assertionEndTime - v30);
          v33 = self->_dataclass;
          *buf = 67109378;
          *v40 = v32;
          *&v40[4] = 2112;
          *&v40[6] = v33;
          _os_log_impl(&dword_231A35000, v31, OS_LOG_TYPE_INFO, "Holding assertion for: %d seconds dataclass:%@ as the device is locking", buf, 0x12u);
        }

        SIBackgroundOpBlock(self->_index, 0, &__block_literal_global_1211);
        self->_hasAssertion = 1;
        self->_suspended = 1;
      }

      *&self->_softSuspended = 0;
      if (self->_suspended)
      {
        _cancelIdleTimer = [(SPConcreteCoreSpotlightIndexer *)self _cancelIdleTimer];
      }
    }

    dataclass4 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    v36 = *v8;

    if (dataclass4 == v36)
    {
      v5 = _SITemporarilyChangeProtectionClass();
    }
  }

LABEL_21:
  v24 = logForCSLogCategoryIndex(v5);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    dataclass5 = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
    *buf = 138412546;
    *v40 = 0;
    *&v40[8] = 2112;
    *&v40[10] = dataclass5;
    _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "Releasing assertion %@ (%@)", buf, 0x16u);
  }
}

uint64_t __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return SISetBgAssertionFlag();
  }

  return result;
}

void __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    dispatch_group_enter(*(a1 + 40));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 152);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_3;
    v8[3] = &unk_2789351D8;
    v8[4] = v4;
    v9 = v3;
    SIBackgroundOpBlock(v5, 9, v8);
  }

  else
  {
    v6 = [*(a1 + 32) dataclass];
    v7 = *MEMORY[0x277CCA190];

    if (v6 == v7)
    {

      _SITemporarilyChangeProtectionClass();
    }
  }
}

void __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    [*(a1 + 32) ensureOpenIndexFiles:*(a1 + 40)];
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

uint64_t __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_1209(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return SISetBgAssertionFlag();
  }

  return result;
}

void __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_2_1212(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    MEMORY[0x282186FF0](a2);
  }
}

uint64_t __60__SPConcreteCoreSpotlightIndexer_suspendIndexForDeviceLock___block_invoke_3_1215(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return SISetLockedJournalingState();
  }

  return result;
}

- (void)preheat
{
  if (self->_index)
  {
    v3 = self->_lastPreheat + 30.0;
    if (v3 < CFAbsoluteTimeGetCurrent())
    {
      SIPreHeatIndex();
      self->_lastPreheat = CFAbsoluteTimeGetCurrent();
    }
  }
}

- (void)processDecryptsForBundleID:(id)d persona:(id)persona infos:(id)infos group:(id)group
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  personaCopy = persona;
  infosCopy = infos;
  groupCopy = group;
  group = groupCopy;
  if (self->_readOnly)
  {
    v12 = logForCSLogCategoryDefault(groupCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "processDecryptsForBundleID failed: index is readOnly", buf, 2u);
    }
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(infosCopy, "count")}];
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(infosCopy, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = infosCopy;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v15)
    {
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          decryptInfo = [v18 decryptInfo];
          [v12 addObject:decryptInfo];

          externalID = [v18 externalID];
          [v13 addObject:externalID];
        }

        v15 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v15);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Process decrypts for  %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    if (group)
    {
      dispatch_group_enter(group);
    }

    v24 = v13;
    objc_copyWeak(&v28, buf);
    v25 = dCopy;
    v26 = personaCopy;
    groupCopy2 = group;
    _MDItemDecrypt();

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

void __81__SPConcreteCoreSpotlightIndexer_processDecryptsForBundleID_persona_infos_group___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = a3;
    _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Process decrypts (%@, %@)", buf, 0x16u);
  }

  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v8 = WeakRetained;
  v9 = WeakRetained[19];
  if (!v9)
  {
    v9 = WeakRetained[20];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SPConcreteCoreSpotlightIndexer_processDecryptsForBundleID_persona_infos_group___block_invoke_1218;
  v11[3] = &unk_278935298;
  objc_copyWeak(&v17, a1 + 8);
  v12 = a1[5];
  v13 = a1[4];
  v10 = v6;
  v14 = v10;
  v15 = a1[6];
  v16 = a1[7];
  SIBackgroundOpBlock(v9, 9, v11);

  objc_destroyWeak(&v17);
}

void __81__SPConcreteCoreSpotlightIndexer_processDecryptsForBundleID_persona_infos_group___block_invoke_1218(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a1;
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = WeakRetained;
  if (!a3)
  {
    v29 = WeakRetained;
    v7 = objc_alloc_init(MEMORY[0x277CC33A0]);
    [v7 beginArray];
    v8 = *(v4 + 48);
    v28 = v4;
    v9 = *(v4 + 40);
    v10 = v8;
    v32 = v7;
    obj = v9;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v35;
      v31 = *MEMORY[0x277CBEEE8];
      v30 = *MEMORY[0x277CC31A0];
      v15 = 0x277CBE000uLL;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v10 objectAtIndexedSubscript:v13];
          v19 = logForCSLogCategoryDefault(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            [v18 description];
            v20 = v14;
            v21 = v10;
            v23 = v22 = v15;
            v24 = [v23 UTF8String];
            *buf = 138412546;
            v39 = v17;
            v40 = 2080;
            v41 = v24;
            _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_INFO, "Updated attributeSet: %@ %s\n", buf, 0x16u);

            v15 = v22;
            v10 = v21;
            v14 = v20;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v18)
            {
              [MEMORY[0x277CBEB38] dictionaryWithDictionary:v18];
            }

            else
            {
              [MEMORY[0x277CBEB38] dictionary];
            }
            v25 = ;
            [v25 setObject:v31 forKeyedSubscript:@"_kMDItemEncryptedData"];
            [v25 setObject:v17 forKeyedSubscript:@"_kMDItemExternalID"];
            [v25 removeObjectForKey:v30];
            [v32 beginArray];
            [v32 encodeString:"__class:CSSearchableItemAttributeSet"];
            [v32 encodeInt64:8];
            [v32 encodeObject:v25];
            [v32 endArray];
          }

          ++v13;
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v12);
    }

    [v32 endArray];
    v26 = [v32 data];
    v4 = v28;
    SISetCodedAttributes();

    v6 = v29;
  }

  v27 = *(v4 + 64);
  if (v27)
  {
    dispatch_group_leave(v27);
  }
}

- (void)processImportForBundleID:(id)d withURLs:(id)ls contentTypes:(id)types sandboxExtensions:(id)extensions andIdentifiers:(id)identifiers options:(int64_t)options inGroup:(id)group additionalAttributes:(id)self0 computeUpdaterAttributesAfterImport:(BOOL)self1 cancelBlock:(id)self2
{
  dCopy = d;
  lsCopy = ls;
  typesCopy = types;
  extensionsCopy = extensions;
  identifiersCopy = identifiers;
  groupCopy = group;
  attributesCopy = attributes;
  blockCopy = block;
  v22 = blockCopy;
  v77 = lsCopy;
  if (lsCopy && identifiersCopy)
  {
    if (self->_readOnly)
    {
      v23 = logForCSLogCategoryDefault(blockCopy);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEFAULT, "processImportForBundleID failed: index is readOnly", buf, 2u);
      }
    }

    else
    {
      mEMORY[0x277CC3530] = [MEMORY[0x277CC3530] sharedManager];
      [mEMORY[0x277CC3530] loadExtensions];
      v73 = identifiersCopy;
      v25 = [identifiersCopy count];
      v26 = malloc_type_malloc(4 * v25, 0x100004052888210uLL);
      v27 = v26;
      if (v25 >= 1)
      {
        v28 = 0;
        v29 = vdupq_n_s64((v25 & 0x7FFFFFFF) - 1);
        v30 = xmmword_231AED7A0;
        v31 = xmmword_231AED7B0;
        v32 = v26 + 2;
        v33 = vdupq_n_s64(4uLL);
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v29, v31));
          if (vuzp1_s16(v34, *v29.i8).u8[0])
          {
            *(v32 - 2) = v28;
          }

          if (vuzp1_s16(v34, *&v29).i8[2])
          {
            *(v32 - 1) = v28 + 1;
          }

          if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
          {
            *v32 = v28 + 2;
            v32[1] = v28 + 3;
          }

          v28 += 4;
          v30 = vaddq_s64(v30, v33);
          v31 = vaddq_s64(v31, v33);
          v32 += 4;
        }

        while (((v25 + 3) & 0xFFFFFFFC) != v28);
      }

      __compar[0] = MEMORY[0x277D85DD0];
      __compar[1] = 3221225472;
      __compar[2] = __199__SPConcreteCoreSpotlightIndexer_processImportForBundleID_withURLs_contentTypes_sandboxExtensions_andIdentifiers_options_inGroup_additionalAttributes_computeUpdaterAttributesAfterImport_cancelBlock___block_invoke;
      __compar[3] = &unk_2789352E8;
      v71 = typesCopy;
      v84 = v71;
      qsort_b(v27, v25, 4uLL, __compar);
      v68 = mEMORY[0x277CC3530];
      v66 = v27;
      if (v25 < 1)
      {
        v36 = 0;
        v60 = 0;
        v37 = 0;
        v38 = 0;
        v63 = 0;
      }

      else
      {
        v35 = v27;
        v74 = dCopy;
        v64 = v22;
        v65 = typesCopy;
        v67 = groupCopy;
        v36 = 0;
        v72 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = v25 & 0x7FFFFFFF;
        v41 = 1;
        do
        {
          v42 = v40;
          v43 = *v35;
          v82 = v35 + 1;
          v81 = [v77 objectAtIndexedSubscript:v43];
          v44 = [v71 objectAtIndexedSubscript:v43];
          v79 = [v73 objectAtIndexedSubscript:v43];
          v78 = [extensionsCopy objectAtIndexedSubscript:v43];
          v45 = [v36 isEqual:v44];
          if (v41 & 1) != 0 && (v45)
          {
            v80 = v36;
            array2 = v39;
            v47 = v74;
            array = v38;
            v49 = v37;
          }

          else
          {
            v50 = v39;
            v51 = v38;
            v52 = v37;
            if (v72)
            {
              [v37 endArray];
              data = [v37 data];
              v54 = [data copy];
              [v72 setImportData:v54];

              [v72 setFileAttributeSets:v51];
              processItemsForImport(self, v74, v68, v72, v50, v67, import);
            }

            v55 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:13 jobOptions:options];

            [v55 setFileType:v44];
            v56 = v44;

            v57 = v50;
            v58 = objc_alloc_init(MEMORY[0x277CC33A0]);

            [v58 beginArray];
            array = [MEMORY[0x277CBEB18] array];

            array2 = [MEMORY[0x277CBEB18] array];

            v49 = v58;
            v72 = v55;
            v80 = v56;
            v47 = v74;
          }

          v37 = v49;
          [v49 encodeNSString:v78];
          v59 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:v44];
          [v59 setContentURL:v81];
          [v59 addAttributesFromDictionary:attributesCopy];
          [v59 setBundleIdentifier:v47];
          v38 = array;
          [array addObject:v59];
          v39 = array2;
          [array2 addObject:v79];

          v41 = 0;
          v40 = v42 - 1;
          v36 = v80;
          v35 = v82;
        }

        while (v42 != 1);
        v60 = v72;
        if (v72)
        {
          [v37 endArray];
          data2 = [v37 data];
          v62 = [data2 copy];
          [v72 setImportData:v62];

          [v72 setFileAttributeSets:v38];
          v63 = array2;
          dCopy = v74;
          groupCopy = v67;
          processItemsForImport(self, v74, v68, v72, array2, v67, import);
          v22 = v64;
          typesCopy = v65;
        }

        else
        {
          v22 = v64;
          typesCopy = v65;
          groupCopy = v67;
          v63 = v39;
          dCopy = v74;
        }
      }

      free(v66);

      identifiersCopy = v73;
      v23 = v68;
    }
  }
}

uint64_t __199__SPConcreteCoreSpotlightIndexer_processImportForBundleID_withURLs_contentTypes_sandboxExtensions_andIdentifiers_options_inGroup_additionalAttributes_computeUpdaterAttributesAfterImport_cancelBlock___block_invoke(uint64_t a1, int *a2, int *a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:*a2];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:*a3];
  v7 = [v5 compare:v6];

  return v7;
}

- (void)checkAdmission:(id)admission background:(BOOL)background didBeginThrottle:(BOOL *)throttle didEndThrottle:(BOOL *)endThrottle live:(BOOL *)live slow:(BOOL *)slow memoryPressure:(BOOL *)pressure
{
  v36 = *MEMORY[0x277D85DE8];
  admissionCopy = admission;
  if (admissionCopy && !background && (-[SPConcreteCoreSpotlightIndexer owner](self, "owner"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isForegroundFileProviderBundleID:admissionCopy], v16, (v17 & 1) != 0))
  {
    v19 = logForCSLogCategoryIndex(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = admissionCopy;
      _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_INFO, "Skipping admission check for foreground file provider %@", &v32, 0xCu);
    }
  }

  else
  {
    v20 = [admissionCopy hasPrefix:@"com.apple."];
    if (background)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v23 = [buckets valueForKey:admissionCopy];
      v21 = v23 < bulk_budget_threshold;
      v22 = v21;
    }

    *live = v21;
    if (v20)
    {
      v24 = v22 | 2u;
    }

    else
    {
      v24 = v22;
    }

    if (CFAbsoluteTimeGetCurrent() - check_admission_time[v24] > budget_check_threshold_delay || (check_admission[v24] & 1) != 0)
    {
      v26 = logForCSLogCategoryIndex(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v32 = 138412290;
        v33 = admissionCopy;
        _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "Running admission check for bundle id %@", &v32, 0xCu);
      }

      check_admission_time[v24] = CFAbsoluteTimeGetCurrent();
      check_admission[v24] = 0;
      if (s_last_memory_pressure_status != 1)
      {
        *pressure = 1;
      }

      if (sTurboMode == 1 || (v27 = [SPConcreteCoreSpotlightIndexer checkAdmission:v27 background:v28 didBeginThrottle:? didEndThrottle:? live:? slow:? memoryPressure:?], (v27 & 1) != 0))
      {
        v31 = logForCSLogCategoryIndex(v27);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = 138412546;
          v33 = admissionCopy;
          v34 = 2048;
          v35 = v24;
          _os_log_impl(&dword_231A35000, v31, OS_LOG_TYPE_INFO, "Passed admission, bundleID:%@, budgetIndex:%ld", &v32, 0x16u);
        }

        if (slow_admission[v24] == 1)
        {
          *endThrottle = 1;
        }

        v30 = 0;
        slow_admission[v24] = 0;
      }

      else
      {
        v29 = logForCSLogCategoryIndex(v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v32 = 138412546;
          v33 = admissionCopy;
          v34 = 2048;
          v35 = v24;
          _os_log_impl(&dword_231A35000, v29, OS_LOG_TYPE_INFO, "Failed admission, bundleID:%@, budgetIndex:%ld - slowing replies", &v32, 0x16u);
        }

        if ((slow_admission[v24] & 1) == 0)
        {
          *throttle = 1;
        }

        v30 = 1;
        slow_admission[v24] = 1;
      }
    }

    else
    {
      v30 = slow_admission[v24];
    }

    *slow = v30;
  }
}

- (void)completeIndexingItemFor:(id)for delegate:(id)delegate didBeginThrottle:(BOOL)throttle didEndThrottle:(BOOL)endThrottle error:(id)error live:(BOOL)live queue:(id)queue slow:(BOOL)self0 startTime:(double)self1 dataLen:(unint64_t)self2 completionHandler:(id)self3
{
  liveCopy = live;
  endThrottleCopy = endThrottle;
  v62 = *MEMORY[0x277D85DE8];
  forCopy = for;
  delegateCopy = delegate;
  errorCopy = error;
  queueCopy = queue;
  handlerCopy = handler;
  v24 = handlerCopy;
  if (slow)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v26 = 1.0;
    if (len >= 0x186A1)
    {
      v26 = len / 100000.0;
    }

    if (liveCopy)
    {
      v27 = live_delay;
      v28 = *&live_delay + *&live_delay_scaler * (Current - time);
      if (v28 >= v26 * *&live_delay_scaled_max)
      {
        v28 = v26 * *&live_delay_scaled_max;
      }
    }

    else
    {
      v30 = *&bulk_delay;
      v31 = [buckets count];
      v32 = v31;
      v33 = v32;
      if (!v31)
      {
        v33 = 1.0;
      }

      v34 = v30 + v33 * ((Current - time) * *&bulk_delay_scaler);
      v28 = v26 * *&bulk_delay_scaled_max;
      if (v34 < v28)
      {
        v28 = v34;
      }

      v27 = live_delay;
    }

    if (!liveCopy)
    {
      v27 = bulk_delay;
    }

    v35 = *&v27;
    if (v28 >= 0.0)
    {
      v35 = v28;
    }

    if (gIsSystemOnBattery)
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 * 0.5;
    }

    v37 = MEMORY[0x277D86220];
    v38 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      if (liveCopy)
      {
        v39 = *&live_delay + *&live_delay_scaler * (Current - time);
        v40 = "live";
      }

      else
      {
        v41 = *&bulk_delay;
        v42 = [buckets count];
        v43 = v42;
        v44 = v43;
        if (!v42)
        {
          v44 = 1.0;
        }

        v39 = v41 + v44 * ((Current - time) * *&bulk_delay_scaler);
        v40 = "bulk";
      }

      *buf = 138413314;
      v53 = forCopy;
      v54 = 2048;
      v55 = v36;
      v56 = 2048;
      v57 = v39;
      v58 = 2080;
      v59 = v40;
      v60 = 2048;
      lenCopy = len;
      _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Throttling indexing reply for %@ by %g s (%g s) (%s) (%lu)", buf, 0x34u);
    }

    v45 = dispatch_time(0, (v36 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __157__SPConcreteCoreSpotlightIndexer_completeIndexingItemFor_delegate_didBeginThrottle_didEndThrottle_error_live_queue_slow_startTime_dataLen_completionHandler___block_invoke;
    block[3] = &unk_278935310;
    v50 = v24;
    v47 = errorCopy;
    throttleCopy = throttle;
    v48 = delegateCopy;
    v49 = forCopy;
    dispatch_after(v45, queueCopy, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, errorCopy, 0);
    if (delegateCopy && endThrottleCopy)
    {
      v29 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:5 jobOptions:0];
      [delegateCopy indexRequestsPerformJob:v29 forBundle:forCopy completionHandler:0];
    }
  }
}

void __157__SPConcreteCoreSpotlightIndexer_completeIndexingItemFor_delegate_didBeginThrottle_didEndThrottle_error_live_queue_slow_startTime_dataLen_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  if (*(a1 + 64) == 1 && *(a1 + 40))
  {
    v2 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:4 jobOptions:0];
    [*(a1 + 40) indexRequestsPerformJob:v2 forBundle:*(a1 + 48) completionHandler:0];
  }
}

- (void)indexFromBundle:(id)bundle personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)state expectedClientState:(id)self0 clientStateName:(id)self1 deletes:(id)self2 canCreateNewIndex:(BOOL)self3 completionHandler:(id)self4
{
  bundleCopy = bundle;
  dCopy = d;
  itemsCopy = items;
  textCopy = text;
  lCopy = l;
  stateCopy = state;
  clientStateCopy = clientState;
  nameCopy = name;
  deletesCopy = deletes;
  handlerCopy = handler;
  v22 = [itemsCopy length];
  v23 = [deletesCopy length];
  if (clientStateCopy)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(clientStateCopy length:{"bytes"), objc_msgSend(clientStateCopy, "length")}];
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if ((options & 0x20) != 0)
  {
    if ([bundleCopy isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.MobileSMS"))
    {
      v26 = 1;
    }

    else
    {
      v26 = [bundleCopy isEqualToString:@"com.apple.usernotificationsd"];
    }
  }

  else
  {
    v26 = 0;
  }

  queue = sIndexQueue;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke;
  v47[3] = &unk_2789354C8;
  v60 = v26;
  indexCopy = index;
  v47[4] = self;
  v48 = bundleCopy;
  v49 = nameCopy;
  v50 = itemsCopy;
  v57 = handlerCopy;
  optionsCopy = options;
  v59 = v23 + v22;
  v51 = v25;
  v52 = stateCopy;
  v53 = dCopy;
  v54 = deletesCopy;
  v55 = textCopy;
  v56 = lCopy;
  v46 = lCopy;
  v38 = textCopy;
  v36 = deletesCopy;
  v43 = dCopy;
  v27 = stateCopy;
  v28 = v25;
  v29 = itemsCopy;
  v30 = nameCopy;
  v31 = bundleCopy;
  v32 = handlerCopy;
  v33 = _setup_block(v47, v26, 10517);
  dispatch_async(queue, v33);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_1();
  }

  v3 = (a1 + 32);
  [*(a1 + 32) readyIndex:*(a1 + 137)];
  v4 = *(a1 + 32);
  if (*(v4 + 19))
  {
    if (v4[120] != 1)
    {
      goto LABEL_5;
    }

LABEL_36:
    v24 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_3();
    }

    v23 = *(a1 + 112);
    if (v23)
    {
      goto LABEL_56;
    }

    return;
  }

  if (*(v4 + 20))
  {
    if (v4[120])
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  if (v4[96] != 1 || (v4[120] & 1) != 0)
  {
    goto LABEL_36;
  }

  v39 = _os_feature_enabled_impl();
  if (!v39 || (v39 = [*(*v3 + 24) isEqualToString:*MEMORY[0x277CCA190]], (v39 & 1) == 0))
  {
    v40 = logForCSLogCategoryIndex(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_2();
    }

    v23 = *(a1 + 112);
    if (v23)
    {
      goto LABEL_56;
    }

    return;
  }

  [*v3 openJWLIndex];
  v4 = *v3;
  if (!*(*v3 + 20))
  {
    v41 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_5();
    }

    v23 = *(a1 + 112);
    if (v23)
    {
      goto LABEL_56;
    }

    return;
  }

  if (!*(v4 + 19))
  {
LABEL_12:
    if (*(v4 + 20))
    {
      goto LABEL_13;
    }

LABEL_57:
    __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_4();
  }

LABEL_5:
  if (*(v4 + 20))
  {
    goto LABEL_57;
  }

  if (v4[24] != 1 || v4[72] == 1 && (v5 = CFAbsoluteTimeGetCurrent(), v4 = *v3, v5 <= *(*v3 + 10)))
  {
    v6 = 0;
LABEL_18:
    if (v4[24] == 1 && v4[72] == 1)
    {
      v11 = logForCSLogCategoryIndex(v4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 40);
        v13 = *(*(a1 + 32) + 192);
        *buf = 138412546;
        v58 = v12;
        v59 = 2112;
        v60 = v13;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "Allowing indexing activity while locked for bundle: %@, dataclass:%@", buf, 0x16u);
      }

      v4 = *v3;
    }

    v14 = [v4 dataclass];
    v15 = SDTraceAdd(3, v14, -1, *(a1 + 40), *(a1 + 48), 0.0);
    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(buf, *(a1 + 32));
    v17 = *(*(a1 + 32) + 176);
    v18 = logForCSLogCategoryIndex(v17);
    v19 = v18;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v56 = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "IndexLatency", &unk_231AF625D, v56, 2u);
    }

    v20 = *(*v3 + 19);
    if (!v20)
    {
      v20 = *(*v3 + 20);
    }

    if (*(a1 + 136) == 1)
    {
      v21 = qos_class_self();
    }

    else
    {
      v21 = 0;
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233;
    v43[3] = &unk_2789354A0;
    objc_copyWeak(v53, buf);
    v52 = *(a1 + 112);
    v54 = v6;
    v42 = *(a1 + 32);
    v25 = *(a1 + 56);
    v26 = *(a1 + 40);
    v53[1] = *(a1 + 120);
    v27 = *(a1 + 48);
    *&v28 = v26;
    *(&v28 + 1) = v27;
    *&v29 = v42;
    *(&v29 + 1) = v25;
    v44 = v29;
    v45 = v28;
    v46 = *(a1 + 64);
    v55 = *(a1 + 136);
    v30 = v17;
    v31 = *(a1 + 128);
    v47 = v30;
    v53[2] = v31;
    v32 = *(a1 + 72);
    v33 = *(a1 + 80);
    v34 = *(a1 + 88);
    v35 = *(a1 + 96);
    *&v36 = v34;
    *(&v36 + 1) = v35;
    *&v37 = v32;
    *(&v37 + 1) = v33;
    v48 = v37;
    v49 = v36;
    v50 = *(a1 + 104);
    v38 = v14;
    v51 = v38;
    v53[3] = v15;
    v53[4] = *&Current;
    SIBackgroundOpBlock(v20, v21, v43);

    objc_destroyWeak(v53);
    objc_destroyWeak(buf);
    goto LABEL_42;
  }

LABEL_13:
  v7 = _os_feature_enabled_impl();
  if (v7)
  {
    v7 = [*(*v3 + 24) isEqualToString:*MEMORY[0x277CCA190]];
    if (v7)
    {
      v8 = logForCSLogCategoryIndex(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 40);
        v10 = *(*(a1 + 32) + 192);
        *buf = 138412546;
        v58 = v9;
        v59 = 2112;
        v60 = v10;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Allowing journaling only while locked for bundle: %@, dataclass:%@", buf, 0x16u);
      }

      v4 = *v3;
      v6 = 1;
      goto LABEL_18;
    }
  }

  v22 = logForCSLogCategoryIndex(v7);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_3();
  }

  v23 = *(a1 + 112);
  if (v23)
  {
LABEL_56:
    v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v23 + 16))(v23, v38, 0);
LABEL_42:
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233(unsigned __int8 *a1, void *a2, int a3)
{
  v272 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 17);
  if ([WeakRetained index] == a2)
  {

LABEL_11:
    if (a1[176] == 1 && *(*(a1 + 4) + 72) == 1)
    {
      SISetBgAssertionFlag();
      v9 = SIDeleteBgAssertionFile();
      v10 = *(a1 + 4);
      if ((*(v10 + 25) & 1) == 0)
      {
        v9 = SIFlushAndSuspendIndex();
        v10 = *(a1 + 4);
      }

      *(v10 + 72) = 0;
    }

    if (*(*(a1 + 4) + 160) != a2)
    {
      if (*(a1 + 5))
      {
        if (*(a1 + 6))
        {
          if ((a1[144] & 0x10) != 0)
          {
            v9 = SIGetAccumulatedSizeForGroup();
            if (v9 >= 134217729)
            {
              v11 = *(a1 + 16);
              if (!v11)
              {
                return;
              }

              v186 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1004 userInfo:0];
              (*(v11 + 16))(v11);
              goto LABEL_4;
            }
          }
        }
      }
    }

    v187 = a1;
    v174 = a2;
    if (*(a1 + 7))
    {
      v9 = [objc_opt_class() _stateInfoAttributeNameWithClientStateName:*(a1 + 7)];
      v181 = v9;
    }

    else
    {
      v181 = 0;
    }

    if (*(a1 + 8) && *(a1 + 6) && *(a1 + 7))
    {
      v12 = SICopyCachedCSClientState();
      v13 = v12;
      if (!v12 || (v12 = CFEqual(v12, *(a1 + 8)), !v12))
      {
        v149 = logForCSLogCategoryDefault(v12);
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_1();
        }

        v150 = *(a1 + 16);
        if (v150)
        {
          v151 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1006 userInfo:0];
          (*(v150 + 16))(v150, v151, 0);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_256;
      }

      CFRelease(v13);
    }

    v257 = 0;
    v256 = 0;
    v254[0] = 0;
    v254[1] = v254;
    v254[2] = 0x2020000000;
    v255[0] = 0;
    v252[0] = 0;
    v252[1] = v252;
    v252[2] = 0x2020000000;
    v253[0] = 0;
    if ((a1[144] & 0x20) != 0)
    {
      v15 = logForCSLogCategoryDefault(v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 6);
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "Skipped admission check on critical index job for %@", buf, 0xCu);
      }
    }

    else
    {
      v14 = [*(a1 + 4) checkAdmission:*(a1 + 6) background:0 didBeginThrottle:v255 didEndThrottle:v253 live:&v257 slow:&v257 + 1 memoryPressure:&v256];
    }

    v17 = logForCSLogCategoryDefault(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 5) length];
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_2();
    }

    v183 = *(a1 + 5);
    [*(a1 + 5) bytes];
    [*(a1 + 5) length];
    v18 = _MDPlistContainerCreateWithBytes();
    if (v18)
    {
      v250 = 0uLL;
      v251 = 0;
      _MDPlistGetRootPlistObjectFromPlist();
      memset(buf, 0, sizeof(buf));
      if (_MDPlistGetPlistObjectType() == 240)
      {
        *buf = v250;
        *&buf[16] = v251;
        Count = _MDPlistArrayGetCount();
      }

      else
      {
        Count = 0;
      }

      cf = v18;
      v246 = 0;
      v247 = &v246;
      v248 = 0x2020000000;
      v249 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v270 = __Block_byref_object_copy__0;
      *&v271 = __Block_byref_object_dispose__0;
      *(&v271 + 1) = 0;
      if (Count)
      {
        v184 = 0;
        v175 = 0;
        v173 = 0;
        v20 = 0;
        v166 = *MEMORY[0x277CC2770];
        v21 = 1;
        v165 = *MEMORY[0x277CC24B0];
        v163 = *MEMORY[0x277CC3010];
        v164 = *MEMORY[0x277CC2E50];
        v162 = *MEMORY[0x277CC3028];
        v160 = *MEMORY[0x277CC3208];
        v161 = *MEMORY[0x277CC2760];
        v159 = *MEMORY[0x277CC22E8];
        while (1)
        {
          v244 = 0uLL;
          v245 = 0;
          v242 = v250;
          v243 = v251;
          _MDPlistArrayGetPlistObjectAtIndex();
          v242 = v244;
          v243 = v245;
          PlistObjectType = _MDPlistGetPlistObjectType();
          if (PlistObjectType != 240 || (v242 = v244, v243 = v245, PlistObjectType = _MDPlistArrayGetCount(), PlistObjectType < 3))
          {
            v24 = logForCSLogCategoryDefault(PlistObjectType);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v242 = v244;
              v243 = v245;
              v25 = _MDPlistGetPlistObjectType();
              v242 = v244;
              v243 = v245;
              v26 = _MDPlistArrayGetCount();
              LODWORD(v267) = 67109376;
              DWORD1(v267) = v25;
              WORD4(v267) = 1024;
              *(&v267 + 10) = v26;
              _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "Unexpected PlistBytes %d %d", &v267, 0xEu);
            }

            goto LABEL_54;
          }

          v242 = 0uLL;
          v243 = 0;
          v267 = v244;
          v268 = v245;
          _MDPlistArrayGetPlistObjectAtIndex();
          v267 = v242;
          v268 = v243;
          if (_MDPlistGetPlistObjectType() == 241)
          {
            break;
          }

LABEL_54:
          v21 = ++v20 < Count;
          if (Count == v20)
          {
            goto LABEL_190;
          }
        }

        v267 = 0uLL;
        v268 = 0;
        v240 = v242;
        v241 = v243;
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          v240 = v267;
          v241 = v268;
          v23 = _MDPlistNumberGetIntValue() == 0;
        }

        else
        {
          v23 = 1;
        }

        v240 = 0uLL;
        v241 = 0;
        v238 = v242;
        v239 = v243;
        if (_MDPlistDictionaryGetPlistObjectForKey() && (v238 = v240, v239 = v241, _MDPlistGetPlistObjectType() == 246))
        {
          v27 = MEMORY[0x277D86220];
          v28 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v238) = 0;
            _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_DEFAULT, "Found _kMDItemEncryptedData", &v238, 2u);
          }

          v29 = 1;
        }

        else
        {
          if (v23)
          {
            goto LABEL_85;
          }

          v29 = 0;
        }

        v238 = 0uLL;
        v239 = 0;
        *v266 = v242;
        *&v266[16] = v243;
        PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
        if (PlistObjectForKey)
        {
          *v266 = v238;
          *&v266[16] = v239;
          if (_MDPlistGetPlistObjectType() == 244 || (*v266 = v238, *&v266[16] = v239, PlistObjectForKey = _MDPlistGetPlistObjectType(), PlistObjectForKey == 245))
          {
            *v266 = v238;
            *&v266[16] = v239;
            v31 = _MDPlistContainerCopyObject();
            v32 = v31;
            if (v31)
            {
              v33 = v29;
            }

            else
            {
              v33 = 0;
            }

            v34 = v31;
            if (v33 == 1)
            {
              v35 = MEMORY[0x277D86220];
              v36 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *v266 = 138412290;
                *&v266[4] = v32;
                _os_log_impl(&dword_231A35000, v35, OS_LOG_TYPE_DEFAULT, "Matched _kMDItemEncryptedData with id %@", v266, 0xCu);
              }

              v37 = [CSDecryptInfo alloc];
              *v266 = v240;
              *&v266[16] = v241;
              v38 = [(CSDecryptInfo *)v37 initWithPlistObject:v266 externalID:v34];
              if (v38)
              {
                v39 = v175;
                if (!v175)
                {
                  v39 = objc_opt_new();
                }

                v175 = v39;
                [v39 addObject:v38];
              }

              v32 = v34;
            }

            if (!v23)
            {
              memset(v266, 0, 24);
              v236 = 0uLL;
              v237 = 0;
              v234 = 0uLL;
              v235 = 0;
              v264 = v242;
              v265 = v243;
              if (_MDPlistDictionaryGetPlistObjectForKey() && (v264 = *v266, v265 = *&v266[16], _MDPlistGetPlistObjectType() == 247))
              {
                v264 = *v266;
                v265 = *&v266[16];
                v178 = _MDPlistContainerCopyObject();
              }

              else
              {
                v178 = 0;
              }

              v264 = v242;
              v265 = v243;
              if (_MDPlistDictionaryGetPlistObjectForKey() && ((v264 = v236, v265 = v237, _MDPlistGetPlistObjectType() == 244) || (v264 = v236, v265 = v237, _MDPlistGetPlistObjectType() == 245)))
              {
                v264 = v236;
                v265 = v237;
                v177 = _MDPlistContainerCopyObject();
              }

              else
              {
                v177 = 0;
              }

              v264 = v242;
              v265 = v243;
              if (_MDPlistDictionaryGetPlistObjectForKey() && ((v264 = v234, v265 = v235, _MDPlistGetPlistObjectType() == 244) || (v264 = v234, v265 = v235, _MDPlistGetPlistObjectType() == 245)))
              {
                v264 = v234;
                v265 = v235;
                v176 = _MDPlistContainerCopyObject();
              }

              else
              {
                v176 = 0;
              }

              if (!v184)
              {
                v184 = [MEMORY[0x277CBEB38] dictionary];
              }

              v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v32, *(v187 + 6)];
              if (v178 && v177 && v176 && v32)
              {
                v60 = objc_alloc_init(CSImportInfo);
                [(CSImportInfo *)v60 setContentURL:v178];
                [(CSImportInfo *)v60 setContentType:v177];
                [(CSImportInfo *)v60 setSandboxExtension:v176];
                [(CSImportInfo *)v60 setExternalID:v32];
                [v184 setObject:v60 forKey:v59];
              }

              else
              {
                v61 = [MEMORY[0x277CBEB68] null];
                [v184 setObject:v61 forKey:v59];

                v63 = logForCSLogCategoryDefault(v62);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v264) = 138412290;
                  *(&v264 + 4) = v178;
                  _os_log_error_impl(&dword_231A35000, v63, OS_LOG_TYPE_ERROR, "RequiresImport missing: URL:%@", &v264, 0xCu);
                }

                v65 = logForCSLogCategoryDefault(v64);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v264) = 138412290;
                  *(&v264 + 4) = v177;
                  _os_log_error_impl(&dword_231A35000, v65, OS_LOG_TYPE_ERROR, "RequiresImport missing: ContentType:%@", &v264, 0xCu);
                }

                v60 = logForCSLogCategoryDefault(v66);
                if (os_log_type_enabled(&v60->super, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v264) = 138412290;
                  *(&v264 + 4) = v176;
                  _os_log_error_impl(&dword_231A35000, &v60->super, OS_LOG_TYPE_ERROR, "RequiresImport missing: SBX:%@", &v264, 0xCu);
                }
              }

              v32 = v34;
LABEL_87:
              v238 = 0uLL;
              v239 = 0;
              *v266 = v242;
              *&v266[16] = v243;
              if (_MDPlistDictionaryGetPlistObjectForKey() || (*v266 = v242, *&v266[16] = v243, _MDPlistDictionaryGetPlistObjectForKey()))
              {
                *v266 = v238;
                *&v266[16] = v239;
                v41 = _MDPlistContainerCopyObject();
              }

              else
              {
                v41 = 0;
              }

              v182 = v41;
              if ([*(v187 + 6) isEqualToString:@"com.apple.MobileSMS"])
              {
                if (!v41)
                {
                  goto LABEL_162;
                }

                memset(v266, 0, 24);
                v236 = 0uLL;
                v237 = 0;
                v234 = 0uLL;
                v235 = 0;
                v264 = 0uLL;
                v265 = 0;
                v232 = 0uLL;
                v233 = 0;
                v230 = 0uLL;
                v231 = 0;
                v228 = 0uLL;
                v229 = 0;
                v42 = objc_opt_new();
                v226 = v242;
                v227 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v226 = *v266, v227 = *&v266[16], (v179 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v42 setObject:v179 forKey:v166];
                }

                else
                {
                  v179 = 0;
                }

                v226 = v242;
                v227 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v226 = v236, v227 = v237, (v171 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v42 setObject:v171 forKey:v165];
                }

                else
                {
                  v171 = 0;
                }

                v226 = v242;
                v227 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v226 = v234, v227 = v235, (v169 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v42 setObject:v169 forKey:v164];
                }

                else
                {
                  v169 = 0;
                }

                v226 = v242;
                v227 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey() && (v226 = v264, v227 = v265, (v167 = _MDPlistContainerCopyObject()) != 0))
                {
                  [v42 setObject:v167 forKey:v163];
                }

                else
                {
                  v167 = 0;
                }

                v226 = v242;
                v227 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v226 = v232;
                  v227 = v233;
                  v53 = _MDPlistContainerCopyObject();
                  if (v53)
                  {
                    [v42 setObject:v53 forKey:v162];
                  }
                }

                else
                {
                  v53 = 0;
                }

                v226 = v242;
                v227 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v226 = v230;
                  v227 = v231;
                  v54 = _MDPlistContainerCopyObject();
                  if (v54)
                  {
                    [v42 setObject:v54 forKey:@"kMDItemCollaborationSourceChat"];
                  }
                }

                else
                {
                  v54 = 0;
                }

                v226 = v242;
                v227 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v226 = v228;
                  v227 = v229;
                  v55 = _MDPlistContainerCopyObject();

                  if (v55)
                  {
                    [v42 setObject:v55 forKey:@"kMDItemCollaborationSourceMessage"];
                  }
                }

                else
                {
                  v55 = v32;
                }

                if (kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueueOnce != -1)
                {
                  __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_4();
                }

                v67 = kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueue;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2;
                block[3] = &unk_278934310;
                v221 = v41;
                v68 = v42;
                v222 = v68;
                v69 = v55;
                v223 = v69;
                v70 = v179;
                v71 = *(v187 + 4);
                v224 = v70;
                v225 = v71;
                dispatch_async(v67, block);

                v32 = v69;
              }

              else
              {
                if (!v41)
                {
                  goto LABEL_162;
                }

                if (([*(v187 + 6) isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"] & 1) != 0 || (objc_msgSend(*(v187 + 6), "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider") & 1) != 0 || objc_msgSend(*(v187 + 6), "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
                {
                  v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"(_kMDItemBundleID = '%@') && (FPCollaborationIdentifier == '%@' || _kMDItemCollaborationIdentifier == '%@')", @"com.apple.MobileSMS", v41, v41];
                  v43 = objc_alloc_init(MEMORY[0x277CC34A0]);
                  v261[0] = v166;
                  v261[1] = v165;
                  v261[2] = v164;
                  v261[3] = v163;
                  v261[4] = v162;
                  v261[5] = v161;
                  v261[6] = v160;
                  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v261 count:7];
                  [v43 setFetchAttributes:v44];
                  v180 = v32;
                  v45 = [v43 fetchAttributes];
                  v46 = [v45 count];

                  v213[0] = MEMORY[0x277D85DD0];
                  v213[1] = 3221225472;
                  v213[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1284;
                  v213[3] = &unk_2789353B0;
                  v217 = v46;
                  v215 = &v246;
                  v168 = v44;
                  v214 = v168;
                  v216 = buf;
                  v218 = cf;
                  v219 = v20;
                  v47 = MEMORY[0x2383760E0](v213);
                  v48 = dispatch_group_create();
                  v49 = +[SPCoreSpotlightIndexer sharedInstance];
                  v211[0] = MEMORY[0x277D85DD0];
                  v211[1] = 3221225472;
                  v211[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_4_1286;
                  v211[3] = &unk_2789348E8;
                  v50 = v48;
                  v212 = v50;
                  v51 = [v49 taskForQueryWithQueryString:v170 queryContext:v43 eventHandler:0 resultsHandler:v47 completionHandler:v211];

                  if (v51)
                  {
                    [v51 setCritical:v187[177]];
                    dispatch_group_enter(v50);
                    v52 = +[SPCoreSpotlightIndexer sharedInstance];
                    [v52 startQueryTask:v51];

                    dispatch_group_wait(v50, 0xFFFFFFFFFFFFFFFFLL);
                  }

                  else
                  {
                    v56 = *(v187 + 16);
                    if (v56)
                    {
                      v57 = [MEMORY[0x277CCA9B8] errorWithDomain:v159 code:-1000 userInfo:0];
                      (*(v56 + 16))(v56, v57, 0);
                    }

                    CFRelease(cf);
                  }

                  if (!v51)
                  {
                    v58 = 0;
                    v41 = v182;
                    goto LABEL_187;
                  }

                  v32 = v180;
                }

                else
                {
                  v77 = [MEMORY[0x277CBEB68] null];
                  v78 = [v41 isEqual:v77];

                  if ((v78 & 1) == 0)
                  {
                    v80 = logForCSLogCategoryDefault(v79);
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                    {
                      v84 = *(v187 + 6);
                      *v266 = 138412546;
                      *&v266[4] = v41;
                      *&v266[12] = 2112;
                      *&v266[14] = v84;
                      _os_log_error_impl(&dword_231A35000, v80, OS_LOG_TYPE_ERROR, "Got collaboration identifier for item that isn't Messages or FileProvider: %@ bundleID:%@", v266, 0x16u);
                    }
                  }
                }
              }

              v41 = v182;
LABEL_162:
              v180 = v32;
              if ([*(v187 + 6) isEqualToString:@"com.apple.shortcuts"])
              {
                *v266 = v244;
                *&v266[16] = v245;
                if (_MDPlistArrayGetCount() >= 4)
                {
                  memset(v266, 0, 24);
                  v236 = v244;
                  v237 = v245;
                  _MDPlistArrayGetPlistObjectAtIndex();
                  v236 = *v266;
                  v237 = *&v266[16];
                  if (_MDPlistGetPlistObjectType() == 241)
                  {
                    v236 = 0uLL;
                    v237 = 0;
                    v234 = *v266;
                    v235 = *&v266[16];
                    if (_MDPlistDictionaryGetPlistObjectForKey())
                    {
                      v234 = v236;
                      v235 = v237;
                      if (_MDPlistGetPlistObjectType() == 240)
                      {
                        v234 = v236;
                        v235 = v237;
                        if (_MDPlistArrayGetCount())
                        {
                          v234 = 0uLL;
                          v235 = 0;
                          v264 = v236;
                          v265 = v237;
                          _MDPlistArrayGetPlistObjectAtIndex();
                          v264 = v234;
                          v265 = v235;
                          v72 = _MDPlistContainerCopyObject();
                          v73 = v72;
                          if (v72)
                          {
                            v74 = [v72 BOOLValue];

                            if (v74)
                            {
                              v234 = 0uLL;
                              v235 = 0;
                              v264 = v242;
                              v265 = v243;
                              if (_MDPlistDictionaryGetPlistObjectForKey())
                              {
                                v264 = v234;
                                v265 = v235;
                                v75 = _MDPlistContainerCopyObject();
                                if (v75)
                                {
                                  v76 = v173;
                                  if (!v173)
                                  {
                                    v76 = [MEMORY[0x277CBEB58] set];
                                  }

                                  v173 = v76;
                                  [v76 addObject:v75];
                                }
                              }

                              else
                              {
                                v75 = 0;
                              }
                            }

                            v41 = v182;
                          }
                        }
                      }
                    }
                  }
                }
              }

              memset(v266, 0, 24);
              v236 = v242;
              v237 = v243;
              if (_MDPlistDictionaryGetPlistObjectForKey())
              {
                v236 = *v266;
                v237 = *&v266[16];
                v81 = _MDPlistContainerCopyObject();
                v236 = 0uLL;
                v237 = 0;
                v234 = v242;
                v235 = v243;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v234 = v236;
                  v235 = v237;
                  v82 = _MDPlistContainerCopyObject();
                  v83 = [MEMORY[0x277CC33F0] sharedInstance];
                  [v83 addAppContainerOID:v82 forBundle:*(v187 + 6) fpBundle:v81];
                }

                v41 = v182;
              }

              v58 = 1;
LABEL_187:

              if ((v58 & 1) == 0)
              {
                goto LABEL_201;
              }

              goto LABEL_54;
            }

LABEL_86:
            v176 = 0;
            v177 = 0;
            v178 = 0;
            goto LABEL_87;
          }
        }

        v40 = logForCSLogCategoryDefault(PlistObjectForKey);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_3(v262, &v263, v40);
        }

LABEL_85:
        v32 = 0;
        goto LABEL_86;
      }

      v173 = 0;
      v175 = 0;
      v184 = 0;
LABEL_190:
      v85 = [*(v187 + 6) isEqualToString:@"com.apple.shortcuts"];
      v86 = cf;
      if (v173)
      {
        v87 = v85;
      }

      else
      {
        v87 = 0;
      }

      if (v87 == 1 && [v173 count])
      {
        v88 = objc_alloc_init(MEMORY[0x277CC34A0]);
        [v88 setInternal:1];
        [v88 setLowPriority:0];
        v89 = *MEMORY[0x277CC2BA0];
        v260[0] = *MEMORY[0x277CC2A80];
        v260[1] = v89;
        v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v260 count:2];
        [v88 setFetchAttributes:v90];

        v259 = *MEMORY[0x277CCA1A0];
        v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v259 count:1];
        [v88 setProtectionClasses:v91];

        [v88 setBundleIDs:&unk_2846C92D8];
        v92 = [MEMORY[0x277CBEB58] set];
        v208[0] = MEMORY[0x277D85DD0];
        v208[1] = 3221225472;
        v208[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1301;
        v208[3] = &unk_278935400;
        v209 = v173;
        v93 = v92;
        v210 = v93;
        v94 = MEMORY[0x2383760E0](v208);
        v95 = +[SPCoreSpotlightIndexer sharedInstance];
        v206[0] = MEMORY[0x277D85DD0];
        v206[1] = 3221225472;
        v206[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1306;
        v206[3] = &unk_278935428;
        v206[4] = *(v187 + 4);
        v96 = v93;
        v207 = v96;
        v97 = [v95 taskForQueryWithQueryString:@"(true)" queryContext:v88 eventHandler:0 resultsHandler:v94 completionHandler:v206];

        v99 = logForCSLogCategoryDefault(v98);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v244) = 0;
          _os_log_impl(&dword_231A35000, v99, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] indexFromBundle start", &v244, 2u);
        }

        v100 = +[SPCoreSpotlightIndexer sharedInstance];
        [v100 startQueryTask:v97];

        v86 = cf;
      }

      if (*(v247 + 24) == 1)
      {
        v101 = _MDPlistContainerCreateWithObject();
        Bytes = _MDPlistContainerGetBytes();
        v103 = [MEMORY[0x277CBEA90] dataWithBytes:Bytes length:_MDPlistContainerGetLength()];

        CFRelease(v101);
        v183 = v103;
        v86 = cf;
      }

      CFRelease(v86);
      v21 = 0;
LABEL_201:

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v246, 8);
      if (v21)
      {
        goto LABEL_255;
      }
    }

    else
    {
      v175 = 0;
      v184 = 0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v194[0] = MEMORY[0x277D85DD0];
    v194[1] = 3221225472;
    v194[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1310;
    v194[3] = &unk_278935450;
    objc_copyWeak(v202, v187 + 17);
    v184 = v184;
    v195 = v184;
    v203 = v187[176];
    v105 = *(v187 + 6);
    v106 = *(v187 + 18);
    v196 = v105;
    v202[1] = v106;
    v107 = *(v187 + 16);
    v197 = *(v187 + 4);
    v199 = v107;
    v200 = v254;
    v201 = v252;
    v204 = v257;
    v198 = *(v187 + 9);
    v205 = HIBYTE(v257);
    v202[2] = *&Current;
    v202[3] = *(v187 + 19);
    v108 = [v194 copy];

    v110 = v187;
    if (*(v187 + 5))
    {
      if (v187[145])
      {
        v109 = [*(v187 + 4) _interestedAttributesMaskForBundleID:*(v187 + 6)];
        v111 = v109;
        if (v109)
        {
          v112 = [objc_alloc(MEMORY[0x277CC33C8]) initWithData:v183];
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v113 = [objc_alloc(MEMORY[0x277CC34C0]) initWithItems:v112 itemsContent:0];
          v114 = [v113 countByEnumeratingWithState:&v190 objects:v258 count:16];
          v185 = v112;
          v115 = 0;
          v116 = 0;
          if (v114)
          {
            v117 = *v191;
            do
            {
              for (i = 0; i != v114; ++i)
              {
                if (*v191 != v117)
                {
                  objc_enumerationMutation(v113);
                }

                v119 = *(*(&v190 + 1) + 8 * i);
                v120 = [objc_opt_class() checkItemOfInterest:v119 mask:v111];
                v121 = [v119 isUpdate];
                if (v120)
                {
                  v122 = v121;
                }

                else
                {
                  v122 = 0;
                }

                if (v122 == 1)
                {
                  if (!v115)
                  {
                    v115 = objc_opt_new();
                  }

                  [v115 addObject:v119];
                  v116 |= v120;
                }
              }

              v114 = [v113 countByEnumeratingWithState:&v190 objects:v258 count:16];
            }

            while (v114);
          }

          [*(v187 + 4) notifyClientForItemUpdates:*(v187 + 6) updatedItems:v115 batchMask:v116];
          v110 = v187;
        }
      }
    }

    v123 = logForCSLogCategoryIndex(v109);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      v153 = v108;
      v155 = *(v110 + 6);
      v154 = *(v110 + 7);
      v156 = [*(v110 + 10) length];
      *buf = 138412802;
      *&buf[4] = v155;
      *&buf[12] = 2112;
      *&buf[14] = v154;
      *&buf[22] = 2048;
      v270 = v156;
      _os_log_debug_impl(&dword_231A35000, v123, OS_LOG_TYPE_DEBUG, "SISetCodedAttributes, bundleID:%@, state:%@(%ld bytes)", buf, 0x20u);
      v108 = v153;
    }

    v124 = v108;
    if (v187[177])
    {
      v125 = 16;
    }

    else
    {
      v125 = 0;
    }

    v126 = v125 & 0xFFFFFFFC | (*(v187 + 36) >> 14) & 0xFFFFFFFE | (*(v187 + 36) >> 8) & 1;
    if (v187[177])
    {
      v127 = v126;
    }

    else
    {
      v127 = v126 | 8;
    }

    locked = SIGetLockedJournalingState();
    v129 = locked;
    if (v187[176] == 1 && !locked)
    {
      SISetLockedJournalingState();
    }

    LODWORD(v158) = v127;
    v157 = v181;
    v130 = SISetCodedAttributes();
    (*(*(v187 + 16) + 16))(*(v187 + 16), 0, 1, v131);
    if (v187[176] == 1 && *(*(v187 + 4) + 160) != v174 && SIGetLockedJournalingState() >> 1 != v129 >> 1)
    {
      v188[0] = MEMORY[0x277D85DD0];
      v188[1] = 3221225472;
      v188[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1313;
      v188[3] = &unk_278935478;
      objc_copyWeak(&v189, v187 + 17);
      v132 = v188;
      v133 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
      v134 = [v132 copy];

      v135 = v134;
      *v133 = v174;
      v133[1] = v135;
      _SIScheduleOperationPostIndexUpdate();

      objc_destroyWeak(&v189);
    }

    v136 = [v175 count];
    v137 = v187;
    if (v136)
    {
      v136 = [*(v187 + 4) processDecryptsForBundleID:*(v187 + 6) persona:*(v187 + 11) infos:v175 group:0];
    }

    if (!v130)
    {
      v138 = *(v187 + 15);
      v139 = *(v187 + 20);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v136 = SDTraceAdd(3, v138, v139, *(v187 + 6), *(v187 + 7), v140 - *(v187 + 21));
      v141 = *(v187 + 16);
      if (v141)
      {
        v142 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        (*(v141 + 16))(v141, v142, 0);

        v137 = v187;
      }
    }

    v143 = logForCSLogCategoryIndex(v136);
    v144 = v143;
    v145 = *(v137 + 20);
    if (v145 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v143))
    {
      v146 = [*(v137 + 6) UTF8String];
      v147 = *(v187 + 5);
      if (v147)
      {
        v148 = [v147 length];
      }

      else
      {
        v148 = 0;
      }

      v152 = *(v187 + 12);
      if (v152)
      {
        v152 = [v152 length];
      }

      *buf = 136446979;
      *&buf[4] = v146;
      *&buf[12] = 2081;
      *&buf[14] = "indexFromBundle";
      *&buf[22] = 2050;
      v270 = v148;
      LOWORD(v271) = 2050;
      *(&v271 + 2) = v152;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v144, OS_SIGNPOST_INTERVAL_END, v145, "IndexLatency", "BundleID=%{public, signpost.telemetry:string1}s Method=%{private, signpost.telemetry:string2}s AddLength=%{public, signpost.telemetry:number1}lu DeleteLength=%{public, signpost.telemetry:number2}lu  enableTelemetry=YES ", buf, 0x2Au);
    }

    objc_destroyWeak(v202);
LABEL_255:

    _Block_object_dispose(v252, 8);
    _Block_object_dispose(v254, 8);
LABEL_256:

    return;
  }

  v7 = objc_loadWeakRetained(a1 + 17);
  v8 = [v7 jwlIndex];

  if (v8 == a2)
  {
    goto LABEL_11;
  }

LABEL_2:
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v186 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
  (*(v4 + 16))(v4);
LABEL_4:
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1260()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.corespotlight.collaborationquery", v0);
  v2 = kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueue;
  kSPReindexAllCompletedBundleIDs_block_invoke_4_sQueryQueue = v1;
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(_kMDItemBundleID='com.apple.CloudDocs.MobileDocumentsFileProvider' || _kMDItemBundleID='com.apple.CloudDocs.iCloudDriveFileProvider' ||  _kMDItemBundleID='com.apple.CloudDocs.iCloudDriveFileProviderManaged') && (FPCollaborationIdentifier='%@' || _kMDItemCollaborationIdentifier='%@') && kMDItemCollaborationSourceChat!=* && kMDItemCollaborationSourceMessage!=*", *(a1 + 32), *(a1 + 32)];
  v3 = objc_alloc_init(MEMORY[0x277CC34A0]);
  v19[0] = *MEMORY[0x277CC2FD0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v3 setFetchAttributes:v4];
  v5 = [v4 count];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3;
  v14[3] = &unk_278935360;
  v18 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 64);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v15 = v9;
  v16 = v8;
  v17 = *(a1 + 32);
  v10 = MEMORY[0x2383760E0](v14);
  v11 = +[SPCoreSpotlightIndexer sharedInstance];
  v12 = [v11 taskForQueryWithQueryString:v2 queryContext:v3 eventHandler:0 resultsHandler:v10 completionHandler:&__block_literal_global_1274];

  v13 = +[SPCoreSpotlightIndexer sharedInstance];
  [v13 startQueryTask:v12];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v19 = v5;
    v20 = v6;
    v9 = *(a1 + 72);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_4;
    v15[3] = &unk_278935338;
    v10 = (a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *&v13 = *(a1 + 48);
    *(&v13 + 1) = *v10;
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v16 = v14;
    v17 = v13;
    v18 = *(a1 + 64);
    [a5 enumerateQueryResults:v9 stringCache:0 usingBlock:v15];
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_4(uint64_t a1, id *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CC34B8];
  v6 = *a2;
  v7 = [[v5 alloc] initWithAttributes:*(a1 + 32)];
  v8 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:*(a1 + 40) domainIdentifier:*(a1 + 48) attributeSet:v7];
  [v8 setIsUpdate:1];
  v9 = [*(a1 + 56) owner];
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5;
  v11[3] = &unk_2789348E8;
  v12 = *(a1 + 64);
  [v9 indexSearchableItems:v10 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v6 forBundleID:@"com.apple.CloudDocs.MobileDocumentsFileProvider" options:0 completionHandler:v11];

  objc_autoreleasePoolPop(v4);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = logForCSLogCategoryDefault(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5_cold_1();
    }
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1284(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v18 = v5;
    v19 = v6;
    v9 = *(a1 + 56);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3_1285;
    v13[3] = &unk_278935388;
    v12 = *(a1 + 32);
    v10 = v12;
    v14 = v12;
    v11 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = v11;
    v17 = *(a1 + 72);
    [a5 enumerateQueryResults:v9 stringCache:0 usingBlock:v13];
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_3_1285(uint64_t a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = objc_opt_new();
  if ([*(a1 + 32) count])
  {
    v5 = 0;
    v6 = *MEMORY[0x277CC2760];
    v7 = *MEMORY[0x277CC3208];
    do
    {
      v8 = *(a2 + 8 * v5);
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      v10 = v9;
      if (v8)
      {
        if ([(__CFString *)v9 isEqualToString:v6])
        {
          v11 = v4;
          v12 = v8;
          v13 = @"kMDItemCollaborationSourceChat";
        }

        else if ([(__CFString *)v10 isEqualToString:v7])
        {
          v11 = v4;
          v12 = v8;
          v13 = @"kMDItemCollaborationSourceMessage";
        }

        else
        {
          v11 = v4;
          v12 = v8;
          v13 = v10;
        }

        [v11 setObject:v12 forKey:v13];
      }

      ++v5;
    }

    while (v5 < [*(a1 + 32) count]);
  }

  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (!v14)
  {
    v15 = _MDPlistContainerCopyRootObject();
    v16 = [v15 mutableCopy];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v14 = *(*(*(a1 + 48) + 8) + 40);
  }

  v19 = [v14 objectAtIndex:*(a1 + 64)];
  v20 = [v19 mutableCopy];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v20 atIndexedSubscript:*(a1 + 64)];
  v21 = [v20 objectAtIndex:2];
  v22 = [v21 mutableCopy];
  [v20 setObject:v22 atIndexedSubscript:2];
  [v22 addEntriesFromDictionary:v4];

  objc_autoreleasePoolPop(context);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1301(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v12 = v5;
    v13 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1302;
    v9[3] = &unk_2789353D8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    [a5 enumerateQueryResults:2 stringCache:0 usingBlock:v9];
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1302(uint64_t a1, id *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v8 = [*(a1 + 32) containsObject:v4];
  if (!(v7 & 1 | ((v8 & 1) == 0)))
  {
    v9 = logForCSLogCategoryDefault(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] set flag for %@", buf, 0xCu);
    }

    v13 = @":EA:_kMDItemHasTopHitAppShortcuts";
    v14 = *MEMORY[0x277CBED28];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v10];
    v12 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v4 domainIdentifier:0 attributeSet:v11];
    [v12 setBundleID:@"com.apple.application"];
    [v12 setIsUpdate:1];
    [*(a1 + 40) addObject:v12];
  }

LABEL_9:
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1306(uint64_t a1)
{
  v3 = [*(a1 + 32) owner];
  v2 = [*(a1 + 40) allObjects];
  [v3 indexSearchableItems:v2 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.application" options:0 completionHandler:&__block_literal_global_1309];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1307(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logForCSLogCategoryDefault(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1307_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] indexFromBundle complete", v5, 2u);
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1310(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = WeakRetained;
  if (!v3)
  {
    [WeakRetained dirty:0];
  }

  if (*(a1 + 32) && (*(a1 + 120) & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = _SIFilterValidatedCSImports();
    if ([v10 count])
    {
      v26 = a1;
      v27 = v5;
      v28 = v3;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v10;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        do
        {
          v15 = 0;
          do
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [v11 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * v15)];
            v17 = [v16 contentURL];
            [v6 addObject:v17];

            v18 = [v16 contentType];
            [v7 addObject:v18];

            v19 = [v16 sandboxExtension];
            [v8 addObject:v19];

            v20 = [v16 externalID];
            [v9 addObject:v20];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v13);
      }

      a1 = v26;
      v5 = v27;
      LOBYTE(v24) = 1;
      [v27 processImportForBundleID:*(v26 + 40) withURLs:v6 contentTypes:v7 sandboxExtensions:v8 andIdentifiers:v9 options:*(v26 + 96) inGroup:0 additionalAttributes:MEMORY[0x277CBEC10] computeUpdaterAttributesAfterImport:v24 cancelBlock:0];
      v3 = v28;
      v10 = v25;
    }
  }

  if (*(a1 + 64))
  {
    v21 = [*(a1 + 48) owner];
    v22 = [v21 extensionDelegate];

    LOBYTE(v23) = *(a1 + 122);
    [*(a1 + 48) completeIndexingItemFor:*(a1 + 40) delegate:v22 didBeginThrottle:*(*(*(a1 + 72) + 8) + 24) didEndThrottle:*(*(*(a1 + 80) + 8) + 24) error:v3 live:*(a1 + 121) queue:*(a1 + 104) slow:*(a1 + 56) startTime:v23 dataLen:*(a1 + 112) completionHandler:*(a1 + 64)];
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1313(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    group = dispatch_group_create();
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained restartAttachmentImport:group maxCount:256 depth:0];

    v6 = sIndexQueue;
    v7 = _setup_block(&__block_literal_global_1316, 0, 10485);
    dispatch_group_notify(group, v6, v7);
  }
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1314(uint64_t a1)
{
  v1 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "restartAttachmentImport journalingOnly notify done", v2, 2u);
  }
}

- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state expectedClientState:(id)clientState clientStateName:(id)name forBundleID:(id)d options:(int64_t)options completionHandler:(id)self0
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  stateCopy = state;
  clientStateCopy = clientState;
  nameCopy = name;
  dCopy = d;
  handlerCopy = handler;
  readOnly = self->_readOnly;
  v24 = logForCSLogCategoryIndex(handlerCopy);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  if (readOnly)
  {
    if (v25)
    {
      [SPConcreteCoreSpotlightIndexer indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:expectedClientState:clientStateName:forBundleID:options:completionHandler:];
    }

    if (handlerCopy)
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      handlerCopy[2](handlerCopy, v26);
    }
  }

  else
  {
    if (v25)
    {
      [SPConcreteCoreSpotlightIndexer indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:expectedClientState:clientStateName:forBundleID:options:completionHandler:];
    }

    v27 = [itemsCopy count];
    v28 = [identifiersCopy count];
    if (v27 | v28)
    {
      v29 = v28;
      queue = sIndexQueue;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke;
      v32[3] = &unk_278935540;
      v32[4] = self;
      v39 = handlerCopy;
      v33 = dCopy;
      v40 = v29;
      v41 = v27;
      optionsCopy = options;
      v34 = clientStateCopy;
      v35 = nameCopy;
      v36 = identifiersCopy;
      v37 = stateCopy;
      v38 = itemsCopy;
      v30 = _setup_block(v32, 0, 10809);
      dispatch_async(queue, v30);
    }

    else if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) readyIndex:1];
  v4 = *v2;
  if (!*(*v2 + 152) || (v4[120] & 1) != 0)
  {
    goto LABEL_3;
  }

  if (v4[24] != 1)
  {
LABEL_15:
    v11 = logForCSLogCategoryIndex(v3);
    v12 = os_signpost_id_generate(v11);

    v14 = logForCSLogCategoryIndex(v13);
    v15 = v14;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "IndexLatency", &unk_231AF625D, buf, 2u);
    }

    v16 = *(*(a1 + 32) + 152);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318;
    v28[3] = &unk_278935518;
    v17 = *(a1 + 88);
    v33 = *(a1 + 96);
    v18 = *(a1 + 40);
    v34 = *(a1 + 112);
    *&v19 = v18;
    *(&v19 + 1) = *(a1 + 32);
    v27 = v19;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    *&v22 = v20;
    *(&v22 + 1) = v21;
    v29 = v27;
    v30 = v22;
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    *&v25 = *(a1 + 80);
    *(&v25 + 1) = v17;
    *&v26 = v23;
    *(&v26 + 1) = v24;
    v31 = v26;
    v32 = v25;
    v35 = v12;
    SIBackgroundOpBlock(v16, 0, v28);

    v7 = *(&v32 + 1);
    goto LABEL_19;
  }

  if (v4[72] == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *v2;
    if (Current <= *(*v2 + 80))
    {
      if ((*(v9 + 24) & 1) != 0 && *(v9 + 72) == 1)
      {
        v10 = logForCSLogCategoryIndex(v3);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_1();
        }
      }

      goto LABEL_15;
    }
  }

LABEL_3:
  v5 = logForCSLogCategoryIndex(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_2();
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v6 + 16))(v6, v7);
LABEL_19:
  }
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318(void *a1, uint64_t a2, int a3)
{
  v3 = a1;
  v144 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v126[5] = MEMORY[0x277D85DD0];
    v126[6] = 3221225472;
    v126[7] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_2;
    v126[8] = &unk_2789354F0;
    v5 = a1 + 12;
    v128 = *(a1 + 6);
    v109 = a1 + 4;
    v127 = a1[4];
    v6 = AnalyticsSendEventLazy();
    if (v3[13])
    {
      if (*v109)
      {
        if ((v3[14] & 0x10) != 0)
        {
          v6 = SIGetAccumulatedSizeForGroup();
          if (v6 >= 134217729)
          {
            v92 = v3[11];
            if (!v92)
            {
              goto LABEL_139;
            }

            v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1004 userInfo:0];
            (*(v92 + 16))(v92, v9);
LABEL_138:

LABEL_139:
            return;
          }
        }
      }
    }

    if (*v5)
    {
      v7 = *(v3[5] + 192);
      v135[0] = @"delete";
      v135[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:2];
      v9 = SDTransactionCreate(v8);
    }

    else
    {
      v9 = 0;
    }

    if (v3[13])
    {
      v10 = *(v3[5] + 192);
      v134[0] = @"add";
      v134[1] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:2];
      v12 = SDTransactionCreate(v11);
    }

    else
    {
      v12 = 0;
    }

    if (v3[6])
    {
      v13 = SICopyCachedCSClientState();
      if (!v13)
      {
        v67 = v3[11];
        v68 = MEMORY[0x277CCA9B8];
        v69 = *MEMORY[0x277CC22E8];
        v70 = -1006;
LABEL_111:
        v71 = [v68 errorWithDomain:v69 code:v70 userInfo:0];
        (*(v67 + 16))(v67, v71);

LABEL_137:
        goto LABEL_138;
      }

      v14 = v13;
      if (!CFEqual(v13, v3[6]))
      {
        v72 = v3[11];
        v73 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1006 userInfo:0];
        (*(v72 + 16))(v72, v73);

        CFRelease(v14);
        goto LABEL_137;
      }

      CFRelease(v14);
    }

    if (!*v5)
    {
LABEL_25:
      if (v3[13])
      {
        v107 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3[10], "count")}];
        v98 = objc_opt_new();
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        obj = v3[10];
        v110 = [obj countByEnumeratingWithState:&v122 objects:v133 count:16];
        if (v110)
        {
          v95 = v12;
          v96 = v9;
          LOBYTE(v17) = 0;
          v106 = *v123;
          v113 = *MEMORY[0x277CBEEE8];
          v115 = *MEMORY[0x277CC31A0];
          v18 = *MEMORY[0x277CC2B80];
          v19 = *MEMORY[0x277CC2B88];
          v116 = *MEMORY[0x277CC2688];
          v101 = *MEMORY[0x277CC2678];
          v97 = *MEMORY[0x277CC2068];
          v99 = v3;
          v20 = v107;
          do
          {
            for (i = 0; i != v110; ++i)
            {
              if (*v123 != v106)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v122 + 1) + 8 * i);
              context = objc_autoreleasePoolPush();
              if ([v22 isUpdate] && objc_msgSend(objc_opt_class(), "checkItemOfInterest:mask:", v22, 0))
              {
                [v98 addObject:v22];
              }

              if ((v17 & 1) != [v22 isUpdate] && objc_msgSend(v20, "count"))
              {
                v121[0] = MEMORY[0x277D85DD0];
                v121[1] = 3221225472;
                v121[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_2_1338;
                v121[3] = &unk_2789348E8;
                v121[4] = v3[5];
                v23 = [v121 copy];

                if (!SISetCSAttributes())
                {
                  CFRelease(v23);
                }

                v24 = objc_alloc_init(MEMORY[0x277CBEB18]);

                v20 = v24;
              }

              v17 = [v22 isUpdate];
              v25 = *v109;
              v26 = v22;
              v27 = v25;
              v28 = v26;
              v29 = v27;
              v30 = logForCSLogCategoryIndex(v27);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v137 = v28;
                _os_log_debug_impl(&dword_231A35000, v30, OS_LOG_TYPE_DEBUG, "creating dictionary for %@", buf, 0xCu);
              }

              v31 = [v28 uniqueIdentifier];

              v112 = v29;
              if (v29 && v31)
              {
                v33 = [v28 attributeSet];
                v34 = [MEMORY[0x277CBEB38] dictionary];
                [v34 setObject:v112 forKey:@"_kMDItemBundleID"];
                v35 = [v28 uniqueIdentifier];
                [v34 setObject:v35 forKey:@"_kMDItemExternalID"];

                v36 = [v28 uniqueIdentifier];
                v114 = [v36 length];

                [v34 setObject:v113 forKey:@"_kMDItemWillModify"];
                v37 = [v33 textContent];
                v108 = v20;
                v105 = v17;
                v103 = v28;
                v104 = i;
                v117 = v34;
                if (v37)
                {
                  v102 = v37;
                  v38 = v115;
                  [v34 setObject:v37 forKey:v115];
                }

                else
                {
                  v41 = [v33 HTMLContentData];
                  v42 = v41;
                  if (v41 && ([v41 length], _MDPlainTextFromHTMLData(), (v43 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v102 = v43;
                    [v34 setObject:v43 forKey:v115];
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v38 = v115;
                }

                v44 = [v33 attributeDictionary];
                v45 = 0;
                v119 = v33;
                while (1)
                {
                  v131 = 0u;
                  v132 = 0u;
                  v129 = 0u;
                  v130 = 0u;
                  v46 = v44;
                  v47 = [v46 countByEnumeratingWithState:&v129 objects:buf count:16];
                  if (v47)
                  {
                    v48 = v47;
                    v49 = *v130;
                    do
                    {
                      for (j = 0; j != v48; ++j)
                      {
                        if (*v130 != v49)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v51 = *(*(&v129 + 1) + 8 * j);
                        if (v45)
                        {
                          v52 = [v51 keyName];
                        }

                        else
                        {
                          v52 = v51;
                        }

                        v53 = v52;
                        if (([v18 isEqualToString:v52] & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", v53) & 1) == 0 && (objc_msgSend(v53, "hasSuffix:", @"Dictionary") & 1) == 0 && (objc_msgSend(v53, "hasSuffix:", @"ContactProperties") & 1) == 0 && (objc_msgSend(v53, "hasSuffix:", @"Persons") & 1) == 0)
                        {
                          if ([v38 isEqualToString:v53])
                          {
                            v54 = [v119 textContent];
                            [v117 setObject:v54 forKeyedSubscript:v38];
                          }

                          else
                          {
                            v55 = [v116 isEqualToString:v53];
                            v54 = [v119 attributeForKey:v53];
                            if (v55)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v56 = [v54 absoluteString];
                                [v117 setObject:v56 forKeyedSubscript:v116];
                              }

                              else
                              {
                                [v117 setObject:v54 forKeyedSubscript:v116];
                              }

                              v38 = v115;
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v57 = [v54 localizedStrings];

                                v54 = v57;
                              }

                              v38 = v115;
                              if (v54)
                              {
                                [v117 setObject:v54 forKey:v53];
                                objc_opt_class();
                                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                                {
                                  v114 += [v54 length];
                                }
                              }

                              else
                              {
                                v58 = [v46 objectForKeyedSubscript:v53];

                                if (v58 == v113)
                                {
                                  [v117 setObject:? forKey:?];
                                }

                                v54 = 0;
                              }
                            }
                          }
                        }
                      }

                      v48 = [v46 countByEnumeratingWithState:&v129 objects:buf count:16];
                    }

                    while (v48);
                  }

                  if (v45)
                  {
                    break;
                  }

                  v39 = v119;
                  v44 = [v119 customAttributeDictionary];

                  v45 = 1;
                  if (!v44)
                  {
                    v46 = 0;
                    v3 = v99;
                    goto LABEL_90;
                  }
                }

                v3 = v99;
                v39 = v119;
LABEL_90:
                v59 = [v117 objectForKeyedSubscript:v101];
                v20 = v108;
                v17 = v105;
                v28 = v103;
                i = v104;
                if (v59)
                {
                }

                else if ([v112 isEqualToString:@"com.apple.mobilemail"])
                {
                  [v117 setObject:v97 forKeyedSubscript:v101];
                }

                if (([v103 isUpdate] & 1) == 0)
                {
                  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v114];
                  [v117 setObject:v60 forKey:@"_kMDItemStorageSize"];

                  v28 = v103;
                  v39 = v119;
                }

                v40 = v117;
              }

              else
              {
                v39 = logForCSLogCategoryIndex(v32);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v65 = [v28 uniqueIdentifier];
                  *buf = 138412546;
                  v137 = v112;
                  v138 = 2112;
                  v139 = v65;
                  _os_log_debug_impl(&dword_231A35000, v39, OS_LOG_TYPE_DEBUG, "Failure for %@ / %@", buf, 0x16u);
                }

                v40 = 0;
              }

              v62 = logForCSLogCategoryIndex(v61);
              v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
              if (v40)
              {
                if (v63)
                {
                  *buf = 138412546;
                  v137 = v28;
                  v138 = 2112;
                  v139 = v40;
                  _os_log_debug_impl(&dword_231A35000, v62, OS_LOG_TYPE_DEBUG, "Got metadata for %@: %@", buf, 0x16u);
                }

                v64 = v40;
                [v20 addObject:v40];
              }

              else
              {
                if (v63)
                {
                  *buf = 138412290;
                  v137 = v28;
                  _os_log_debug_impl(&dword_231A35000, v62, OS_LOG_TYPE_DEBUG, "No dictionary for %@; skipping", buf, 0xCu);
                }

                v64 = 0;
              }

              objc_autoreleasePoolPop(context);
            }

            v110 = [obj countByEnumeratingWithState:&v122 objects:v133 count:16];
          }

          while (v110);
          v107 = v20;
          if (v17)
          {
            v66 = 0x20000;
          }

          else
          {
            v66 = 0;
          }

          v12 = v95;
          v9 = v96;
        }

        else
        {
          v66 = 0;
        }

        v74 = [v3[5] _shouldNotifyForSearchableItemUpdates:v3[4]];
        if (v74)
        {
          v74 = [v98 count];
          if (v74)
          {
            v75 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:17];
            v76 = logForCSLogCategoryDefault([v75 setUpdatedItems:v98]);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              [SPConcreteCoreSpotlightIndexer notifyClientForItemUpdates:v98 updatedItems:? batchMask:?];
            }

            v77 = +[SpotlightDaemonServer sharedDaemonServer];
            v78 = v3[4];
            v79 = [v3[5] dataclass];
            LOBYTE(v78) = [v77 handleJob:v75 bundleID:v78 protectionClass:v79 completionHandler:&__block_literal_global_1341];

            if ((v78 & 1) == 0)
            {
              v80 = +[SPCoreSpotlightIndexer sharedInstance];
              v81 = [v80 extensionDelegate];

              if (v81)
              {
                [v81 indexRequestsPerformDataJob:v75 forBundle:*v109 completionHandler:&__block_literal_global_1344];
              }
            }
          }
        }

        v82 = logForCSLogCategoryIndex(v74);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          v93 = v3[4];
          v94 = v3[13];
          *buf = 138412802;
          v137 = v93;
          v138 = 2048;
          v139 = v94;
          v140 = 2048;
          v141 = v66;
          _os_log_debug_impl(&dword_231A35000, v82, OS_LOG_TYPE_DEBUG, "SISetCSAttributes, bundleID:%@, adds:%ld, flags:0x%08lx", buf, 0x20u);
        }

        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1345;
        v120[3] = &unk_2789348E8;
        v120[4] = v3[5];
        v83 = [v120 copy];

        if (SISetCSAttributes())
        {
          setClientStateForIndexing(v3[5], v3[4], v3[9], v3[7], v3[11], v12);
        }

        else
        {
          v84 = v3[11];
          if (v84)
          {
            v85 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
            (*(v84 + 16))(v84, v85);
          }

          CFRelease(v83);
        }
      }

      v86 = logForCSLogCategoryIndex(v6);
      v87 = v86;
      v88 = v3[15];
      if (v88 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
      {
        v89 = [v3[4] UTF8String];
        v91 = v3[12];
        v90 = v3[13];
        *buf = 136446979;
        v137 = v89;
        v138 = 2081;
        v139 = "indexSearchableItems";
        v140 = 2050;
        v141 = v90;
        v142 = 2050;
        v143 = v91;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v87, OS_SIGNPOST_INTERVAL_END, v88, "IndexLatency", "BundleID=%{public, signpost.telemetry:string1}s Method=%{private, signpost.telemetry:string2}s AddCount=%{public, signpost.telemetry:number1}lu DeleteCount=%{public, signpost.telemetry:number2}lu  enableTelemetry=YES ", buf, 0x2Au);
      }

      goto LABEL_137;
    }

    v15 = logForCSLogCategoryIndex(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318_cold_1();
    }

    v16 = v3[5];
    if (v3[13])
    {
      v6 = SIDeleteCSAttributes();
      goto LABEL_25;
    }

    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1337;
    v126[3] = &unk_2789348E8;
    v126[4] = v16;
    [v126 copy];
    if (SIDeleteCSAttributes())
    {
      setClientStateForIndexing(v3[5], v3[4], v3[9], v3[7], v3[11], v9);
      goto LABEL_137;
    }

    v67 = v3[11];
    if (!v67)
    {
      goto LABEL_137;
    }

    v68 = MEMORY[0x277CCA9B8];
    v69 = *MEMORY[0x277CC22E8];
    v70 = -1;
    goto LABEL_111;
  }

  v4 = a1[11];
  if (v4)
  {
    v118 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v4 + 16))(v4);
  }
}

id __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_2(void *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"deleteCount";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[5]];
  v8[0] = v2;
  v7[1] = @"addCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v7[2] = @"bundleID";
  v4 = a1[4];
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1339(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_2();
  }
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1342(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = logForCSLogCategoryDefault(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_2();
  }
}

- (void)validateConcreteIndexer:(BOOL)indexer outFileDescriptor:(int)descriptor
{
  if ((descriptor & 0x80000000) == 0)
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 1;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__0;
    v31[4] = __Block_byref_object_dispose__0;
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__0;
    v29[4] = __Block_byref_object_dispose__0;
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = dispatch_group_create();
    v8 = sIndexQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke;
    v22[3] = &unk_278935600;
    v22[4] = self;
    descriptorCopy = descriptor;
    v9 = v7;
    indexerCopy = indexer;
    v23 = v9;
    v24 = v31;
    v25 = v29;
    v26 = v33;
    v10 = _setup_block(v22, 0, 10938);
    dispatch_group_async(v9, v8, v10);

    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v12 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358;
    v15[3] = &unk_278935628;
    descriptorCopy2 = descriptor;
    indexerCopy2 = indexer;
    v15[4] = self;
    v17 = v33;
    v18 = v31;
    v19 = v29;
    v13 = v11;
    v16 = v13;
    v14 = _setup_block(v15, 0, 10969);
    dispatch_group_notify(v9, v12, v14);

    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v29, 8);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
  }
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (!v3 || (*(v2 + 24) & 1) != 0 || *(v2 + 26) == 1)
  {
    v4 = *(a1 + 72);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = logForCSLogCategoryDefault(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 152);
        v8 = *(v6 + 24);
        v9 = *(v6 + 26);
        LODWORD(v6) = *(v6 + 120);
        *buf = 134218752;
        v21 = v7;
        v22 = 1024;
        v23 = v8;
        v24 = 1024;
        v25 = v9;
        v26 = 1024;
        v27 = v6;
        _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d", buf, 0x1Eu);
      }
    }

    else
    {
      dprintf(v4, "Validate concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d\n", v3, *(v2 + 24), *(v2 + 26), *(v2 + 120));
    }
  }

  else
  {
    dispatch_group_enter(*(a1 + 40));
    v10 = *(*(a1 + 32) + 152);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1348;
    v13[3] = &unk_2789355D8;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v19 = *(a1 + 76);
    v18 = *(a1 + 72);
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    SIBackgroundOpBlock(v10, 0, v13);
  }
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1348(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    dispatch_group_leave(v4);
  }

  else
  {
    v5 = *(a1 + 32);
    _SIValidateActivityJournal();
    dispatch_group_leave(*(a1 + 32));
  }
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_2(uint64_t a1, const __CFString *a2, uint64_t *a3, unint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  Copy = CFStringCreateCopy(0, a2);
  if (([(__CFString *)Copy isEqualToString:@"com.apple.searchd"]& 1) == 0)
  {
    v8 = malloc_type_calloc(1uLL, (a4 >> 3) + 1, 0x9B5282F4uLL);
    v9 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
    v10 = v9;
    if (a4)
    {
      v11 = a4;
      v12 = v9;
      do
      {
        v13 = *a3++;
        *v12++ = v13;
        --v11;
      }

      while (v11);
    }

    v14 = *(a1 + 72);
    if (v14 < 0)
    {
      v16 = logForCSLogCategoryDefault(v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 76))
        {
          v17 = "Deletes";
        }

        else
        {
          v17 = "Items";
        }

        v18 = *(*(a1 + 32) + 192);
        *buf = 136315906;
        v39 = v17;
        v40 = 2112;
        v41 = v18;
        v42 = 2080;
        v43 = [(__CFString *)Copy UTF8String];
        v44 = 1024;
        v45 = a4;
        _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer: ### Validate %s %@ %s BatchCount:%d\n", buf, 0x26u);
      }
    }

    else
    {
      if (*(a1 + 76))
      {
        v15 = "Deletes";
      }

      else
      {
        v15 = "Items";
      }

      dprintf(v14, "### Validate %s %s %s BatchCount:%d\n", v15, [*(*(a1 + 32) + 192) UTF8String], -[__CFString UTF8String](Copy, "UTF8String"), a4);
    }

    v19 = MEMORY[0x277CCABB0];
    v20 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:Copy];
    v21 = [v19 numberWithInt:{objc_msgSend(v20, "intValue") + a4}];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v21 forKeyedSubscript:Copy];

    dispatch_group_enter(*(a1 + 40));
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1352;
    v28[3] = &unk_278935588;
    v32 = v10;
    v33 = a4;
    v34 = v8;
    v36 = *(a1 + 76);
    v35 = *(a1 + 72);
    v22 = Copy;
    v29 = v22;
    v31 = *(a1 + 56);
    v30 = *(a1 + 40);
    v23 = MEMORY[0x2383760E0](v28);
    v24 = *(a1 + 32);
    v25 = v24[19];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2500], v22];
    v37 = *MEMORY[0x277CC2C40];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    LOBYTE(v24) = [v24 _startInternalQueryWithIndex:v25 query:v26 fetchAttributes:v27 resultsHandler:v23];

    if ((v24 & 1) == 0)
    {
      free(v8);
      free(v10);
      dispatch_group_leave(*(a1 + 40));
    }
  }
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1352(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (a3 == 1)
  {
    v9 = *(a1 + 72);
    if (*(a1 + 92))
    {
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          if ((*(*(a1 + 80) + (i >> 3)) >> (i & 7)))
          {
            v11 = *(a1 + 88);
            if (v11 < 0)
            {
              v13 = logForCSLogCategoryDefault(v7);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                v17 = *(*(a1 + 64) + 8 * i);
                v18 = [*(a1 + 32) UTF8String];
                *buf = 134218498;
                v29 = v17;
                v30 = 2048;
                v31 = v17;
                v32 = 2080;
                v33 = v18;
                _os_log_error_impl(&dword_231A35000, v13, OS_LOG_TYPE_ERROR, "Validate concrete indexer: ### Error - Missed delete oid: 0x%llx (%lld) for bundle %s\n", buf, 0x20u);
              }
            }

            else
            {
              v12 = *(*(a1 + 64) + 8 * i);
              dprintf(v11, "### Error - Missed delete oid: 0x%llx (%lld) for bundle %s\n", v12, v12, [*(a1 + 32) UTF8String]);
            }

            v14 = MEMORY[0x277CCABB0];
            v15 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
            v16 = [v14 numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
            [*(*(*(a1 + 48) + 8) + 40) setObject:v16 forKeyedSubscript:*(a1 + 32)];

            *(*(*(a1 + 56) + 8) + 24) = 0;
            v9 = *(a1 + 72);
          }
        }
      }
    }

    else if (v9)
    {
      for (j = 0; j < v9; ++j)
      {
        if (((*(*(a1 + 80) + (j >> 3)) >> (j & 7)) & 1) == 0)
        {
          v20 = *(a1 + 88);
          if (v20 < 0)
          {
            v22 = logForCSLogCategoryDefault(v7);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v26 = *(*(a1 + 64) + 8 * j);
              v27 = [*(a1 + 32) UTF8String];
              *buf = 134218498;
              v29 = v26;
              v30 = 2048;
              v31 = v26;
              v32 = 2080;
              v33 = v27;
              _os_log_error_impl(&dword_231A35000, v22, OS_LOG_TYPE_ERROR, "Validate concrete indexer: ### Error - Missing oid: 0x%llx (%lld) for bundle %s\n", buf, 0x20u);
            }
          }

          else
          {
            v21 = *(*(a1 + 64) + 8 * j);
            dprintf(v20, "### Error - Missing oid: 0x%llx (%lld) for bundle %s\n", v21, v21, [*(a1 + 32) UTF8String]);
          }

          v23 = MEMORY[0x277CCABB0];
          v24 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
          v25 = [v23 numberWithInt:{objc_msgSend(v24, "intValue") + 1}];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v25 forKeyedSubscript:*(a1 + 32)];

          *(*(*(a1 + 56) + 8) + 24) = 0;
          v9 = *(a1 + 72);
        }
      }
    }

    free(*(a1 + 80));
    free(*(a1 + 64));
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3)
  {
    _MDStoreOIDArrayGetVectorCount();
    _MDStoreOIDArrayApplyBlock();
  }
}

void *__76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_2_1353(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    __key[7] = v5;
    __key[8] = v6;
    v7 = result;
    v8 = (a4 + 8);
    v9 = a5 - 1;
    do
    {
      v10 = *v8++;
      v12 = v7[4];
      v11 = v7[5];
      __key[0] = v10;
      if (v11 >= 1)
      {
        result = bsearch(__key, v12, v11, 8uLL, compareOID);
        if (result)
        {
          v13 = (result - v12) >> 3;
          if ((v13 & 0x8000000000000000) == 0)
          {
            *(v7[6] + (v13 >> 3)) |= 1 << (((result - v12) >> 3) & 7);
          }
        }
      }

      --v9;
    }

    while (v9);
  }

  return result;
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  if (v2 < 0)
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = logForCSLogCategoryDefault(a1);
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 192);
        if (*(a1 + 76))
        {
          v10 = "Deletes";
        }

        else
        {
          v10 = "Items";
        }

        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v11 = "Success";
        }

        else
        {
          v11 = "Failed";
        }

        *buf = 138412802;
        *v47 = v9;
        *&v47[8] = 2080;
        *&v47[10] = v10;
        *&v47[18] = 2080;
        *&v47[20] = v11;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "### Validation Complete for PC %@ validating %s: Result - %s\n", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358_cold_1();
    }
  }

  else
  {
    v3 = [*(*(a1 + 32) + 192) UTF8String];
    v4 = "Items";
    if (*(a1 + 76))
    {
      v4 = "Deletes";
    }

    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v5 = "Success";
    }

    else
    {
      v5 = "Failed";
    }

    dprintf(v2, "PC %s validating %s: Result - %s\n", v3, v4, v5);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(*(*(a1 + 56) + 8) + 40);
  v12 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    v39 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v16];
        v18 = [v17 intValue];

        v20 = *(a1 + 72);
        if (v18 < 1)
        {
          if (v20 < 0)
          {
            v21 = logForCSLogCategoryDefault(v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
              v35 = [v34 intValue];
              v36 = "Items";
              if (*(a1 + 76))
              {
                v36 = "Deletes";
              }

              v37 = *(*(a1 + 32) + 192);
              *buf = 67109890;
              *v47 = v35;
              *&v47[4] = 2080;
              *&v47[6] = v36;
              *&v47[14] = 2112;
              *&v47[16] = v37;
              *&v47[24] = 2112;
              *&v47[26] = v16;
              _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer: ### Validation Complete %d %s %@ bundle: %@\n", buf, 0x26u);
            }
          }

          else
          {
            v21 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
            v26 = [v21 intValue];
            if (*(a1 + 76))
            {
              v27 = "Deletes";
            }

            else
            {
              v27 = "Items";
            }

            dprintf(v20, "### Validation Complete %d %s %s bundle: %s\n", v26, v27, [*(*(a1 + 32) + 192) UTF8String], objc_msgSend(v16, "UTF8String"));
          }
        }

        else if (v20 < 0)
        {
          v21 = logForCSLogCategoryDefault(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v16];
            v29 = [v28 intValue];
            v30 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
            v31 = [v30 intValue];
            v32 = "Items";
            if (*(a1 + 76))
            {
              v32 = "Deletes";
            }

            v33 = *(*(a1 + 32) + 192);
            *buf = 67110146;
            *v47 = v29;
            *&v47[4] = 1024;
            *&v47[6] = v31;
            *&v47[10] = 2080;
            *&v47[12] = v32;
            *&v47[20] = 2112;
            *&v47[22] = v33;
            *&v47[30] = 2112;
            *&v47[32] = v16;
            _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Validate concrete indexer: ### Validation Error %d of %d %s %@ bundle: %@\n", buf, 0x2Cu);
          }
        }

        else
        {
          v21 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v16];
          v41 = [v21 intValue];
          v22 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v16];
          v23 = v13;
          v24 = [v22 intValue];
          if (*(a1 + 76))
          {
            v25 = "Deletes";
          }

          else
          {
            v25 = "Items";
          }

          v38 = v24;
          v13 = v23;
          v14 = v39;
          dprintf(v20, "### Validation Error %d of %d %s %s bundle: %s\n", v41, v38, v25, [*(*(a1 + 32) + 192) UTF8String], objc_msgSend(v16, "UTF8String"));
        }
      }

      v13 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v13);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)validateVectors:(int)vectors
{
  if ((vectors & 0x80000000) == 0)
  {
    v5 = dispatch_group_create();
    v6 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke;
    v15[3] = &unk_278934428;
    vectorsCopy = vectors;
    v15[4] = self;
    v16 = v5;
    v7 = v5;
    v8 = _setup_block(v15, 0, 11008);
    dispatch_group_async(v7, v6, v8);

    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = sIndexQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke_2;
    v13[3] = &unk_278934050;
    v14 = v9;
    v11 = v9;
    v12 = _setup_block(v13, 0, 11015);
    dispatch_group_notify(v7, v10, v12);

    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (!v3 || (*(v2 + 24) & 1) != 0 || *(v2 + 26) == 1)
  {
    v4 = *(a1 + 48);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = logForCSLogCategoryDefault(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 152);
        v8 = *(v6 + 24);
        v9 = *(v6 + 26);
        LODWORD(v6) = *(v6 + 120);
        *buf = 134218752;
        v16 = v7;
        v17 = 1024;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        v21 = 1024;
        v22 = v6;
        _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Validate vectors for concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d", buf, 0x1Eu);
      }
    }

    else
    {
      dprintf(v4, "Validate vectors for concrete indexer skipped: index:%p suspended:%d suspending:%d readOnly:%d\n", v3, *(v2 + 24), *(v2 + 26), *(v2 + 120));
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if ((v10 & 0x80000000) == 0)
    {
      dprintf(v10, "Validate vectors for concrete indexer pc: %s\n", [*(v2 + 192) UTF8String]);
    }

    dispatch_group_enter(*(a1 + 40));
    v11 = *(*(a1 + 32) + 152);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke_1366;
    v12[3] = &unk_278935650;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    SIBackgroundOpBlock(v11, 0, v12);
  }
}

void __50__SPConcreteCoreSpotlightIndexer_validateVectors___block_invoke_1366(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    _SIValidateVectors();
  }

  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

- (void)prepareIndexingWhileLocked:(id)locked holdAssertionFor:(double)for completionHandler:(id)handler
{
  lockedCopy = locked;
  handlerCopy = handler;
  v10 = sIndexQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__SPConcreteCoreSpotlightIndexer_prepareIndexingWhileLocked_holdAssertionFor_completionHandler___block_invoke;
  v14[3] = &unk_278935678;
  v15 = lockedCopy;
  v16 = handlerCopy;
  forCopy = for;
  v14[4] = self;
  v11 = lockedCopy;
  v12 = handlerCopy;
  v13 = _setup_block(v14, 0, 11063);
  dispatch_async(v10, v13);
}

void __96__SPConcreteCoreSpotlightIndexer_prepareIndexingWhileLocked_holdAssertionFor_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault([*(a1 + 32) readyIndex:0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    v5 = *(v3 + 24);
    v6 = *(v3 + 26);
    LODWORD(v3) = *(v3 + 120);
    v9 = 134218752;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "prepareIndexingWhileLocked failed: index:%p suspended:%d suspending:%d readOnly:%d", &v9, 0x1Eu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)finishIndexingWhileLocked:(id)locked completionHandler:(id)handler
{
  lockedCopy = locked;
  handlerCopy = handler;
  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__SPConcreteCoreSpotlightIndexer_finishIndexingWhileLocked_completionHandler___block_invoke;
  v12[3] = &unk_2789356A0;
  v13 = lockedCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v9 = lockedCopy;
  v10 = handlerCopy;
  v11 = _setup_block(v12, 0, 11112);
  dispatch_async(v8, v11);
}

void __78__SPConcreteCoreSpotlightIndexer_finishIndexingWhileLocked_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault([*(a1 + 32) readyIndex:0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    v5 = *(v3 + 24);
    v6 = *(v3 + 26);
    LODWORD(v3) = *(v3 + 120);
    v9 = 134218752;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "finishIndexingWhileLocked failed: index:%p suspended:%d suspending:%d readOnly:%d", &v9, 0x1Eu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

- (id)_startQueryWithQueryTask:(id)task eventHandler:(id)handler resultsHandler:(id)resultsHandler
{
  v44[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  if (!taskCopy)
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  v11 = resultsHandlerCopy;
  resultsQueue = [taskCopy resultsQueue];
  v13 = resultsQueue;
  if (!resultsQueue)
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  if (![resultsQueue siResultsQueue])
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  siQuery = [taskCopy siQuery];
  if (!siQuery)
  {
    [SPConcreteCoreSpotlightIndexer _startQueryWithQueryTask:eventHandler:resultsHandler:];
  }

  v15 = siQuery;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (!self->_index || self->_suspended || self->_suspending || [(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"_startQueryWithQueryTask"])
  {
    v16 = 0;
    goto LABEL_10;
  }

  v34 = MEMORY[0x2383760E0](handlerCopy);
  queryContext = [taskCopy queryContext];
  if (([queryContext internal] & 1) == 0)
  {

LABEL_17:
    clientBundleID = [taskCopy clientBundleID];

    if (clientBundleID)
    {
      clientBundleID2 = [taskCopy clientBundleID];
      v44[0] = clientBundleID2;
      [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    }

    goto LABEL_19;
  }

  queryContext2 = [taskCopy queryContext];
  bundleIDs = [queryContext2 bundleIDs];

  if (!bundleIDs)
  {
    goto LABEL_17;
  }

  queryContext3 = [taskCopy queryContext];
  [queryContext3 bundleIDs];

LABEL_19:
  v24 = SIExecuteQueryWithResultsCallbackForTags();
  if (v24)
  {
    queryString = [taskCopy queryString];
    [taskCopy queryID];
    v27 = v26;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v29 = v28;
    SIQueryRetain();
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __87__SPConcreteCoreSpotlightIndexer__startQueryWithQueryTask_eventHandler_resultsHandler___block_invoke;
    v35[3] = &unk_2789356C8;
    v38 = v42;
    v39 = v27;
    v37 = v11;
    v40 = v29;
    v30 = queryString;
    v36 = v30;
    v41 = v15;
    v31 = [v35 copy];
    v16 = [[SPQueryJob alloc] initWithSIJob:v24 dataclass:self->_dataclass eventHandler:handlerCopy resultsHandler:v31];
    queryContext4 = [taskCopy queryContext];
    disableResultStreaming = [queryContext4 disableResultStreaming];

    if (disableResultStreaming)
    {
      [v13 setDisableResultStreaming:1];
    }

    [v13 addJob:v16];

    _Block_object_dispose(v42, 8);
  }

  else
  {
    v16 = 0;
  }

LABEL_10:

  return v16;
}

uint64_t __87__SPConcreteCoreSpotlightIndexer__startQueryWithQueryTask_eventHandler_resultsHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = *(a1 + 40);
  v19 = v11;
  if (v12)
  {
    v12 = (*(v12 + 16))(v12, v11, a3, a4, a5, a6);
    v11 = v19;
  }

  if (a3 == 2 && a6)
  {
    v13 = *(a1 + 56);
    v14 = [v11 dataclass];
    SDTraceAdd(2, @"Performance", v13, v14, a6, 0.0);

    v11 = v19;
  }

  else if (a3 == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v15 = [v11 dataclass];
    v16 = *(a1 + 56);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    SDTraceAdd(2, v15, v16, *(a1 + 32), 0, v17 - *(a1 + 64));

    v12 = SIQueryRelease();
    v11 = v19;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8](v12, v11);
}

- (void)startQueryWithQueryTask:(id)task startHandler:(id)handler eventHandler:(id)eventHandler resultsHandler:(id)resultsHandler
{
  taskCopy = task;
  handlerCopy = handler;
  eventHandlerCopy = eventHandler;
  resultsHandlerCopy = resultsHandler;
  if (!handlerCopy)
  {
    [SPConcreteCoreSpotlightIndexer startQueryWithQueryTask:startHandler:eventHandler:resultsHandler:];
  }

  v13 = resultsHandlerCopy;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (!self->_index || self->_suspended || self->_suspending)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v14 = [(SPConcreteCoreSpotlightIndexer *)self _startQueryWithQueryTask:taskCopy eventHandler:eventHandlerCopy resultsHandler:v13];
    (handlerCopy[2])(handlerCopy, v14, self->_index, self->_dataclass);
  }
}

- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers forBundleID:(id)d completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  dCopy = d;
  handlerCopy = handler;
  if ([identifiersCopy count])
  {
    v11 = sIndexQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke;
    v13[3] = &unk_278934028;
    v13[4] = self;
    v16 = handlerCopy;
    v14 = identifiersCopy;
    v15 = dCopy;
    v12 = _setup_block(v13, 0, 11254);
    dispatch_async(v11, v12);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke(id *a1)
{
  v2 = a1 + 4;
  [a1[4] readyIndex:1];
  v3 = *v2;
  if (!*(*v2 + 19) || (v3[24] & 1) != 0 || v3[120] == 1)
  {
    v4 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_2();
    }

    v5 = a1[7];
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v5[2](v5, v6);
    }
  }

  else if ([v3 denyOperationOnAssertedIndex:"willModifySearchableItemsWithIdentifier"])
  {
    v7 = *MEMORY[0x277CC22E8];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v9 = a1[7];
    if (v9)
    {
      v12 = v8;
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:-1000 userInfo:0];
      v9[2](v9, v10);

      v8 = v12;
    }
  }

  else
  {
    v11 = *(a1[4] + 19);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_1378;
    v13[3] = &unk_2789347D0;
    v16 = a1[7];
    v14 = a1[5];
    v15 = a1[6];
    SIBackgroundOpBlock(v11, 0, v13);
  }
}

void __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_1378(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v4 + 16))(v4);
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = a1;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      v10 = *MEMORY[0x277CC3208];
      v11 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v26[0] = @"_kMDItemWillModify";
          v26[1] = v10;
          v27[0] = v11;
          v27[1] = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_2;
    v20[3] = &unk_278935048;
    v21 = v19[6];
    v15 = [v20 copy];
    if (!SISetCSAttributes())
    {
      v16 = v19[6];
      if (v16)
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
        v16[2](v16, v17);
      }

      CFRelease(v15);
    }
  }
}

uint64_t __105__SPConcreteCoreSpotlightIndexer_willModifySearchableItemsWithIdentifiers_forBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_backgroundDeleteItems:(id)items bundleID:(id)d completionHandler:(id)handler
{
  itemsCopy = items;
  dCopy = d;
  handlerCopy = handler;
  v11 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer _backgroundDeleteItems:bundleID:completionHandler:];
  }

  if (self->_index && !self->_readOnly)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"_backgroundDeleteItems"])
    {
      v13 = *MEMORY[0x277CC22E8];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      if (handlerCopy)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:-1000 userInfo:0];
        handlerCopy[2](handlerCopy, v14);
      }
    }

    else
    {
      index = self->_index;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke;
      v16[3] = &unk_2789347D0;
      v19 = handlerCopy;
      v17 = dCopy;
      v18 = itemsCopy;
      SIBackgroundOpBlock(index, 0, v16);

      v12 = v19;
    }

    goto LABEL_11;
  }

  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v12);
LABEL_11:
  }
}

void __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v4 + 16))(v4, v9);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke_2;
    v10[3] = &unk_278935048;
    v11 = *(a1 + 48);
    v5 = [v10 copy];
    v6 = SIDeleteCSAttributes();

    if (!v6)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
        (*(v7 + 16))(v7, v8);
      }
    }
  }
}

uint64_t __84__SPConcreteCoreSpotlightIndexer__backgroundDeleteItems_bundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteHasTopHitAppShortcutsWithResultsHandler:(id)handler completionHandler:(id)completionHandler
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CC34A0];
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  v8 = objc_alloc_init(v5);
  [v8 setInternal:1];
  [v8 setLowPriority:0];
  v16[0] = *MEMORY[0x277CC2A80];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 setFetchAttributes:v9];

  v15 = *MEMORY[0x277CCA1A0];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [v8 setProtectionClasses:v10];

  [v8 setBundleIDs:&unk_2846C92F0];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=1", *MEMORY[0x277CC2BA0]];
  v12 = +[SPCoreSpotlightIndexer sharedInstance];
  v13 = [v12 taskForQueryWithQueryString:v11 queryContext:v8 eventHandler:0 resultsHandler:handlerCopy completionHandler:completionHandlerCopy];

  v14 = +[SPCoreSpotlightIndexer sharedInstance];
  [v14 startQueryTask:v13];
}

- (void)finishDeleteBatchForQueryQueue:(id)queue bundleID:(id)d blockTime:(double)time
{
  v32 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  dCopy = d;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v10 = [(SPConcreteCoreSpotlightIndexer *)self checkAdmission:dCopy background:1 didBeginThrottle:&v27 + 1 didEndThrottle:&v27 live:&v26 + 1 slow:&v26 memoryPressure:&v25];
  v11 = v26;
  v12 = logForCSLogCategoryIndex(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11 == 1)
  {
    if (v13)
    {
      *buf = 138412546;
      v29 = dCopy;
      v30 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, "deleteItems Query bundleID:%@ delay by %f", buf, 0x16u);
    }

    v14 = dispatch_time(0, (time * 1000000000.0));
    indexQueue = self->_indexQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__SPConcreteCoreSpotlightIndexer_finishDeleteBatchForQueryQueue_bundleID_blockTime___block_invoke;
    block[3] = &unk_2789356F0;
    v16 = queueCopy;
    v24 = HIBYTE(v27);
    v21 = v16;
    selfCopy = self;
    v23 = dCopy;
    dispatch_after(v14, indexQueue, block);

    extensionDelegate = v21;
LABEL_10:

    goto LABEL_11;
  }

  if (v13)
  {
    *buf = 138412290;
    v29 = dCopy;
    _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, "deleteItems Query bundleID:%@ resume immediately", buf, 0xCu);
  }

  [queueCopy resumeResults];
  if (v27 == 1)
  {
    owner = [(SPConcreteCoreSpotlightIndexer *)self owner];
    extensionDelegate = [owner extensionDelegate];

    if (extensionDelegate)
    {
      v19 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:5 jobOptions:0];
      [extensionDelegate indexRequestsPerformJob:v19 forBundle:dCopy completionHandler:0];
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __84__SPConcreteCoreSpotlightIndexer_finishDeleteBatchForQueryQueue_bundleID_blockTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resumeResults];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) owner];
    v4 = [v2 extensionDelegate];

    if (v4)
    {
      v3 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:4 jobOptions:0];
      [v4 indexRequestsPerformJob:v3 forBundle:*(a1 + 48) completionHandler:0];
    }
  }
}

- (void)deleteItemsForQuery:(id)query bundleID:(id)d fromClient:(id)client completionHandler:(id)handler
{
  queryCopy = query;
  dCopy = d;
  clientCopy = client;
  handlerCopy = handler;
  v14 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteItemsForQuery:bundleID:fromClient:completionHandler:];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  index = self->_index;
  if (index)
  {
    if (!self->_readOnly)
    {
      if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"deleteItemsForQuery"])
      {
        v17 = *MEMORY[0x277CC22E8];
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        if (!handlerCopy)
        {
LABEL_18:

          goto LABEL_19;
        }

        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:v17 code:-1000 userInfo:0];
        handlerCopy[2](handlerCopy, v19, 0);
      }

      else
      {
        v27 = dispatch_group_create();
        dispatch_group_enter(v27);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke;
        v34[3] = &unk_2789357E0;
        v40 = &v46;
        v18 = v27;
        v35 = v18;
        selfCopy = self;
        v37 = clientCopy;
        v38 = dCopy;
        v39 = queryCopy;
        v41 = v43;
        SIBackgroundOpBlock(index, 0, v34);
        v28 = dispatch_get_global_queue(9, 2uLL);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_7;
        block[3] = &unk_278935808;
        v31 = &v46;
        v32 = v44;
        v30 = handlerCopy;
        v33 = v43;
        dispatch_group_notify(v18, v28, block);

        v19 = v35;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v20 = logForCSLogCategoryDefault(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer deleteItemsForQuery:bundleID:fromClient:completionHandler:];
    }

    if (!self->_readOnly)
    {
      goto LABEL_14;
    }
  }

  v21 = logForCSLogCategoryDefault(v15);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Cannot delete in deleteItemsForQuery because the index is read-only", buf, 2u);
  }

LABEL_14:
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v24 = [defaultManager fileExistsAtPath:_indexPath isDirectory:0];

  if (v24)
  {
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v26 = v47[5];
    v47[5] = v25;

    handlerCopy[2](handlerCopy, v47[5], 0);
  }

LABEL_19:
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);
}

void __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);

    dispatch_group_leave(v7);
  }

  else
  {
    SILogActivity(*(*(a1 + 40) + 152), "deleteItemsForQuery(%s/%s/%s)", [*(a1 + 48) UTF8String], objc_msgSend(*(a1 + 56), "UTF8String"), objc_msgSend(*(a1 + 64), "UTF8String"));
    v9 = [SPQueryResultsQueue alloc];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.internal.deletes.%@.%d", *(a1 + 56), atomic_fetch_add(kSPReindexAllCompletedBundleIDs_block_invoke_5_queueNum, 1u)];
    v11 = [*(a1 + 40) indexQueue];
    v12 = [(SPQueryResultsQueue *)v9 initWithIdentifier:v10 dispatchQueue:v11];

    [(SPQueryResultsQueue *)v12 setDisableResultStreaming:1];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_2;
    v29[3] = &unk_2789357B8;
    v35 = a2;
    v28 = *(a1 + 32);
    v13 = v28.i64[0];
    v30 = vextq_s8(v28, v28, 8uLL);
    v14 = *(a1 + 56);
    v15 = *(a1 + 80);
    v31 = v14;
    v33 = v15;
    v16 = v12;
    v17 = *(a1 + 72);
    v32 = v16;
    v34 = v17;
    v18 = MEMORY[0x2383760E0](v29);
    v19 = *(a1 + 40);
    v21 = *(a1 + 56);
    v20 = *(a1 + 64);
    if (v21)
    {
      v36[0] = *(a1 + 56);
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    }

    else
    {
      v22 = 0;
    }

    v23 = MEMORY[0x2383760E0](v18);
    v24 = [v19 _startInternalQueryWithIndex:a2 query:v20 fetchAttributes:MEMORY[0x277CBEBF8] forBundleIds:v22 resultsHandler:v23 resultQueue:v16];

    if (v21)
    {
    }

    if ((v24 & 1) == 0)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v26 = *(*(a1 + 72) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      dispatch_group_leave(*(a1 + 32));
    }
  }
}

void __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = a2;
  if (a3 == 1)
  {
    [*(a1 + 56) resumeResults];
    if ([*(a1 + 32) index] != *(a1 + 80))
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 80))
  {
    dispatch_group_enter(*(a1 + 40));
    CFRetain(a5);
    v9 = *(a1 + 80);
    v10 = qos_class_self();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_3;
    v22[3] = &unk_278935790;
    v26 = a5;
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v13 = *(a1 + 56);
    v25 = *(a1 + 64);
    v27 = v12;
    *&v14 = v11;
    *(&v14 + 1) = *(a1 + 32);
    v21 = v14;
    v15 = v13;
    v16 = *(a1 + 40);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v23 = v21;
    v24 = v17;
    SIBackgroundOpBlock(v9, v10, v22);
  }
}

void __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    [*(a1 + 48) resumeResults];
  }

  else
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    _MDStoreOIDArrayGetVectorCount();
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_4;
    v14 = &unk_278935740;
    v18 = a2;
    v15 = *(a1 + 32);
    v16 = v19;
    v17 = *(a1 + 64);
    _MDStoreOIDArrayApplyBlock();
    v5 = *(a1 + 80);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_6;
    v7[3] = &unk_278935768;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v6;
    v9 = *(a1 + 32);
    v10 = v19;
    SISynchedOpWithBlock(v5, 2, v7);

    _Block_object_dispose(v19, 8);
  }

  CFRelease(*(a1 + 72));
  dispatch_group_leave(*(a1 + 56));
}

uint64_t __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = (a5 - 1);
  result = SIDeleteCSItems();
  *(*(a1[6] + 8) + 24) += v6;
  return result;
}

double __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_5(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

uint64_t __92__SPConcreteCoreSpotlightIndexer_deleteItemsForQuery_bundleID_fromClient_completionHandler___block_invoke_7(void *a1)
{
  if (!*(*(a1[5] + 8) + 40) && *(*(a1[6] + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v3 = *(a1[5] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = a1[4];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)deleteItemsForEnumerator:(id)enumerator traceID:(int64_t)d bundleID:(id)iD fromClient:(id)client completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  iDCopy = iD;
  clientCopy = client;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (self->_index)
  {
    if (!self->_readOnly)
    {
      nextObject = [enumeratorCopy nextObject];
      if (nextObject)
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __105__SPConcreteCoreSpotlightIndexer_deleteItemsForEnumerator_traceID_bundleID_fromClient_completionHandler___block_invoke;
        v27 = &unk_278935858;
        v32 = v16;
        selfCopy = self;
        v29 = enumeratorCopy;
        dCopy = d;
        v18 = iDCopy;
        v30 = v18;
        v19 = clientCopy;
        v31 = v19;
        v20 = MEMORY[0x2383760E0](&v24);
        [(SPConcreteCoreSpotlightIndexer *)self deleteItemsForQuery:nextObject bundleID:v18 fromClient:v19 completionHandler:v20, v24, v25, v26, v27, selfCopy];
      }

      else
      {
        dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
        SDTraceAdd(3, @"deleteItemsForEnumerator complete", d, dataclass, iDCopy, 0.0);

        if (v16)
        {
          v16[2](v16, 0);
        }
      }

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v21 = logForCSLogCategoryDefault(handlerCopy);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Cannot delete in deleteItemsForEnumerator because index is null", buf, 2u);
  }

  if (self->_readOnly)
  {
LABEL_8:
    v22 = logForCSLogCategoryDefault(handlerCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "Cannot delete in deleteItemsForEnumerator because index is read-only", buf, 2u);
    }
  }

  if (v16)
  {
    nextObject = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v16)[2](v16, nextObject);
LABEL_13:
  }
}

void __105__SPConcreteCoreSpotlightIndexer_deleteItemsForEnumerator_traceID_bundleID_fromClient_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = sIndexQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __105__SPConcreteCoreSpotlightIndexer_deleteItemsForEnumerator_traceID_bundleID_fromClient_completionHandler___block_invoke_2;
    v12[3] = &unk_278935830;
    v11 = *(a1 + 32);
    v6 = *(&v11 + 1);
    v16 = *(a1 + 72);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v13 = v11;
    v14 = v9;
    v15 = *(a1 + 64);
    v10 = _setup_block(v12, 0, 11468);
    dispatch_async(v5, v10);
  }
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers forBundleID:(id)d fromClient:(id)client reason:(int64_t)reason completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  clientCopy = client;
  handlerCopy = handler;
  v16 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    *buf = 138413058;
    v29 = dCopy;
    v30 = 2112;
    v31 = dataclass;
    v32 = 2048;
    v33 = [identifiersCopy count];
    v34 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "deleteSearchableItemsWithDomainIdentifiers, bundleID:%@, protectionClass:%@, domainIdentifiers:%lu, reason:%lu", buf, 0x2Au);
  }

  v19 = logForCSLogCategoryIndex(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteSearchableItemsWithDomainIdentifiers:forBundleID:fromClient:reason:completionHandler:];
  }

  if ([dCopy length])
  {
    if ([identifiersCopy count])
    {
      v20 = sIndexQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke;
      v23[3] = &unk_278935970;
      v23[4] = self;
      v27 = handlerCopy;
      v24 = identifiersCopy;
      v25 = dCopy;
      v26 = clientCopy;
      v21 = _setup_block(v23, 0, 11614);
      dispatch_async(v20, v21);
    }

    else if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else if (handlerCopy)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v22);
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke(id *a1)
{
  [a1[4] readyIndex:0];
  v2 = a1[4];
  if (*(v2 + 19) && *(v2 + 24) != 1)
  {
    objc_initWeak(&location, v2);
    v7 = *(a1[4] + 19);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2;
    v21[3] = &unk_2789351D8;
    v22 = a1[5];
    v23 = a1[6];
    SIBackgroundOpBlock(v7, 9, v21);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3;
    v16[3] = &unk_278935948;
    v15 = a1[4];
    v8 = a1[6];
    v9 = a1[5];
    v10 = a1[7];
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v15;
    *(&v12 + 1) = v8;
    v17 = v12;
    v18 = v11;
    v19 = a1[8];
    v20[1] = v7;
    objc_copyWeak(v20, &location);
    v13 = MEMORY[0x2383760E0](v16);
    v13[2]();

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else if (a1[8])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [a1[4] _indexPath];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

    v6 = 0;
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    }

    v14 = v6;
    (*(a1[8] + 2))();
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          [v8 lengthOfBytesUsingEncoding:{4, v9}];
          [v8 UTF8String];
          SILogBulkDeleteEvent();
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v20 = SDTraceAdd(3, @"DeleteDomainIdentifiers start", -1, *(*(a1 + 32) + 192), *(a1 + 40), 0.0);
  v21 = a1;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v24 = v2;
  v25 = v3;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v25 count];
  if (v4 >= 1)
  {
    v5 = 0;
    v22 = *MEMORY[0x277CC2770];
    v23 = v4;
    do
    {
      v27 = v5;
      v6 = [v25 subarrayWithRange:?];
      v28 = v24;
      v29 = v6;
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if ([v29 count])
      {
        objc_msgSend(v7, "appendFormat:", @"%@ = %@ && FieldMatch(%@, "), @"_kMDItemBundleID", v28, v22;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v8 = v29;
        v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v9)
        {
          v10 = *v36;
          v11 = 1;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v36 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v35 + 1) + 8 * i);
              if ((v11 & 1) == 0)
              {
                [v7 appendString:{@", "}];
              }

              [v7 appendFormat:@"%@", v13];
              [v7 appendFormat:@", %@.*", v13];
              v11 = 0;
            }

            v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
            v11 = 0;
          }

          while (v9);
        }

        [v7 appendString:@""]);
      }

      [v26 addObject:v7];
      v5 = v27 + 64;
    }

    while (v27 + 64 < v23);
  }

  v14 = [v26 objectEnumerator];
  v16 = *(v21 + 32);
  v15 = *(v21 + 40);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4;
  v30[3] = &unk_278935920;
  v17 = *(v21 + 56);
  v33 = *(v21 + 64);
  v18 = *(v21 + 40);
  v19 = *(v21 + 80);
  v31 = v18;
  v34[1] = v19;
  objc_copyWeak(v34, (v21 + 72));
  v32 = *(v21 + 32);
  [v16 deleteItemsForEnumerator:v14 traceID:v20 bundleID:v15 fromClient:v17 completionHandler:v30];
  objc_destroyWeak(v34);
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
LABEL_2:
    v4 = v3;
    goto LABEL_7;
  }

  v5 = [*(a1 + 32) isEqualToString:@"com.apple.shortcuts"];
  if (v5)
  {
    v6 = *(a1 + 64);
    if (!v6)
    {
      v8 = logForCSLogCategoryDefault(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_cold_1();
      }

      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      goto LABEL_2;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1402;
    v9[3] = &unk_2789358F8;
    objc_copyWeak(&v10, (a1 + 56));
    v9[4] = *(a1 + 40);
    SIBackgroundOpBlock(v6, 0, v9);
    objc_destroyWeak(&v10);
  }

  v4 = 0;
LABEL_7:
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1402(uint64_t a1, void *a2, int a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained index];

    if (v6 == a2)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = objc_alloc_init(MEMORY[0x277CC34A0]);
      [v9 setInternal:1];
      [v9 setLowPriority:0];
      v30[0] = *MEMORY[0x277CC3038];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      [v9 setFetchAttributes:v10];

      v29 = *MEMORY[0x277CCA1A0];
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [v9 setProtectionClasses:v11];

      [v9 setBundleIDs:&unk_2846C9308];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=1", *MEMORY[0x277CC30B0]];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2_1406;
      v27[3] = &unk_278935880;
      v13 = v8;
      v28 = v13;
      v14 = MEMORY[0x2383760E0](v27);
      v15 = +[SPCoreSpotlightIndexer sharedInstance];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_1408;
      v23[3] = &unk_2789358D0;
      v24 = v7;
      v25 = v13;
      v26 = *(a1 + 32);
      v16 = v13;
      v17 = v7;
      v18 = [v15 taskForQueryWithQueryString:v12 queryContext:v9 eventHandler:0 resultsHandler:v14 completionHandler:v23];

      v20 = logForCSLogCategoryDefault(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] deleteSearchableItems start", buf, 2u);
      }

      v21 = +[SPCoreSpotlightIndexer sharedInstance];
      [v21 startQueryTask:v18];
    }
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_2_1406(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v10 = v5;
    v11 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3_1407;
    v8[3] = &unk_278934A00;
    v9 = *(a1 + 32);
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v8];
  }
}

id *__125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_3_1407(id *result, void *a2)
{
  if (*a2)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_1408(id *a1)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_5;
  v13[3] = &unk_278935880;
  v14 = a1[4];
  v2 = MEMORY[0x2383760E0](v13);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_7;
  v9 = &unk_2789358D0;
  v10 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v11 = v3;
  v12 = v4;
  v5 = MEMORY[0x2383760E0](&v6);
  [a1[6] deleteHasTopHitAppShortcutsWithResultsHandler:v2 completionHandler:{v5, v6, v7, v8, v9}];
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_5(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v10 = v5;
    v11 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_6;
    v8[3] = &unk_278934A00;
    v9 = *(a1 + 32);
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v8];
  }
}

id *__125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_6(id *result, void *a2)
{
  if (*a2)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_8;
  v6[3] = &unk_2789358A8;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v2;
  v8 = v4;
  [v3 enumerateObjectsUsingBlock:v6];
  if (v4 && [v4 count])
  {
    v5 = [*(a1 + 48) owner];
    [v5 indexSearchableItems:v4 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.application" options:0 completionHandler:&__block_literal_global_1412];
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    v5 = logForCSLogCategoryDefault(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] void flag for %@", buf, 0xCu);
    }

    v9 = *MEMORY[0x277CC2BA0];
    v10 = *MEMORY[0x277CBEEE8];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v6];
    v8 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v3 domainIdentifier:0 attributeSet:v7];
    [v8 setBundleID:@"com.apple.application"];
    [v8 setIsUpdate:1];
    [*(a1 + 40) addObject:v8];
  }
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1410(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logForCSLogCategoryDefault(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1410_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] deleteSearchableItems complete", v5, 2u);
  }
}

- (void)deleteSearchableItemsWithPersonaIds:(id)ids completionHandler:(id)handler
{
  idsCopy = ids;
  handlerCopy = handler;
  v8 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteSearchableItemsWithPersonaIds:completionHandler:];
  }

  v9 = sIndexQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke;
  v13[3] = &unk_2789356A0;
  v14 = idsCopy;
  v15 = handlerCopy;
  v13[4] = self;
  v10 = idsCopy;
  v11 = handlerCopy;
  v12 = _setup_block(v13, 0, 11700);
  dispatch_async(v9, v12);
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke(id *a1)
{
  [a1[4] readyIndex:0];
  v2 = a1[4];
  v3 = v2[19];
  if (v3 && *(v2 + 24) != 1)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2;
    v20[3] = &unk_278935248;
    v21 = a1[5];
    SIBackgroundOpBlock(v3, 9, v20);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_3;
    v17[3] = &unk_278934F08;
    v8 = a1[5];
    v17[4] = a1[4];
    v18 = v8;
    v19 = a1[6];
    v9 = MEMORY[0x2383760E0](v17);
    v10 = *(a1[4] + 19);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_4;
    v14[3] = &unk_2789359C0;
    v11 = a1[6];
    v14[4] = a1[4];
    v15 = v11;
    v16 = v9;
    v12 = v9;
    SISynchedOpWithBlock(v10, 2, v14);
  }

  else if (a1[6])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [a1[4] _indexPath];
    v6 = [v4 fileExistsAtPath:v5 isDirectory:0];

    v7 = 0;
    if (v6)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    }

    v13 = v7;
    (*(a1[6] + 2))();
  }
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          [v8 lengthOfBytesUsingEncoding:{4, v9}];
          [v8 UTF8String];
          SILogBulkDeleteEvent();
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v16 = SDTraceAdd(3, @"DeletePersonas start", -1, *(*(a1 + 32) + 192), 0, 0.0);
  v17 = a1;
  v19 = *(a1 + 40);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [v19 count];
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    v18 = v2;
    do
    {
      if (v3 - v4 >= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = v3 - v4;
      }

      v6 = [v19 subarrayWithRange:{v4, v5}];
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if ([v6 count])
      {
        v22 = v4;
        objc_msgSend(v7, "appendFormat:", @"FieldMatch(_kMDItemPersonaID, ");
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = v6;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          v12 = 1;
          do
          {
            v13 = 0;
            do
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v23 + 1) + 8 * v13);
              if ((v12 & 1) == 0)
              {
                [v7 appendString:{@", "}];
              }

              [v7 appendFormat:@"%@", v14];
              [v7 appendFormat:@", %@.*", v14];
              v12 = 0;
              ++v13;
            }

            while (v10 != v13);
            v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
            v12 = 0;
          }

          while (v10);
        }

        [v7 appendString:@""]);
        v3 = v18;
        v6 = v21;
        v4 = v22;
      }

      [v20 addObject:v7];
      v4 += 64;
    }

    while (v4 < v3);
  }

  v15 = [v20 objectEnumerator];
  [*(v17 + 32) deleteItemsForEnumerator:v15 traceID:v16 bundleID:0 fromClient:0 completionHandler:*(v17 + 48)];
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_5;
  v7[3] = &unk_278935998;
  v10 = a3;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v6 = _setup_block(v7, 0, 11698);
  dispatch_async(v4, v6);
}

void __88__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) || ([*(a1 + 32) readyIndex:0], v3 = *(a1 + 32), !*(v3 + 152)) || *(v3 + 24) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v2 + 16))(v2, v5);
    }
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

- (void)deleteSearchableItemsWithFileProviderDomains:(id)domains completionHandler:(id)handler
{
  domainsCopy = domains;
  handlerCopy = handler;
  v8 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteSearchableItemsWithFileProviderDomains:completionHandler:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke;
  v14[3] = &unk_2789356A0;
  v15 = domainsCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = domainsCopy;
  v10 = handlerCopy;
  v11 = MEMORY[0x2383760E0](v14);
  v12 = sIndexQueue;
  v13 = _setup_block(v11, 0, 11810);
  dispatch_async(v12, v13);
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) readyIndex:0];
  v2 = *(a1 + 32);
  if (!*(v2 + 152) || (*(v2 + 24) & 1) != 0 || *(v2 + 120) == 1)
  {
    v3 = logForCSLogCategoryDefault(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 152);
      v6 = *(v4 + 24);
      LODWORD(v4) = *(v4 + 120);
      *buf = 134218496;
      v24 = v5;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = v4;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "deleteSearchableItemsWithFileProviderDomains failed: index:%p suspended:%d readOnly:%d", buf, 0x18u);
    }

    if (*(a1 + 48))
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [*(a1 + 32) _indexPath];
      v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

      v10 = 0;
      if (v9)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else if ([v2 denyOperationOnAssertedIndex:"deleteSearchableItemsWithFileProviderDomains"])
  {
    v11 = *MEMORY[0x277CC22E8];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v13 = *(a1 + 48);
    if (v13)
    {
      v19 = v12;
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:-1000 userInfo:0];
      (*(v13 + 16))(v13, v14);

      v12 = v19;
    }
  }

  else
  {
    v15 = *(*(a1 + 32) + 152);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1417;
    v20[3] = &unk_2789347D0;
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v22 = v16;
    v20[4] = v17;
    v21 = v18;
    SISynchedOpWithBlock(v15, 2, v20);
  }
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1417(uint64_t a1, uint64_t a2, char a3)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2;
  v10[3] = &unk_278935A38;
  v13 = a3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v4;
  v10[4] = v5;
  v11 = v6;
  v7 = MEMORY[0x2383760E0](v10);
  v8 = sIndexQueue;
  v9 = _setup_block(v7, 0, 11807);
  dispatch_async(v8, v9);
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v44 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) || ([*(a1 + 32) readyIndex:0], v3 = *(v1 + 32), !*(v3 + 152)) || *(v3 + 24) == 1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v2 + 16))(v2);
    }
  }

  else
  {
    v25 = SDTraceAdd(3, @"DeleteFileProviderDomains start", -1, *(v3 + 192), 0, 0.0);
    v29 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(v1 + 40);
    v4 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v4)
    {
      v5 = v4;
      v27 = *v40;
      v6 = *MEMORY[0x277CC2500];
      v7 = *MEMORY[0x277CC2B38];
      v8 = *MEMORY[0x277CC2770];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v10 objectAtIndexedSubscript:1];
          v13 = [v10 objectAtIndexedSubscript:2];
          v14 = [v13 lengthOfBytesUsingEncoding:4];
          v15 = v1;
          v16 = *(*(v1 + 32) + 152);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_3;
          v34[3] = &unk_2789359E8;
          v35 = v11;
          v36 = v12;
          v38 = v14;
          v37 = v13;
          v17 = v13;
          v18 = v12;
          v19 = v11;
          SIBackgroundOpBlock(v16, 9, v34);
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@==%@", v6, v19, v7, v18, v8, v17];
          [v29 addObject:v20];

          v1 = v15;
        }

        v5 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v5);
    }

    v21 = [v29 objectEnumerator];
    v22 = *(v1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4;
    v30[3] = &unk_278935A10;
    v33 = *(v1 + 48);
    v23 = *(v1 + 40);
    v24 = *(v1 + 32);
    v31 = v23;
    v32 = v24;
    [v22 deleteItemsForEnumerator:v21 traceID:v25 bundleID:0 fromClient:@"com.apple.searchd" completionHandler:v30];
  }
}

uint64_t __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_3(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    [*(result + 48) UTF8String];

    return SILogBulkDeleteEvent();
  }

  return result;
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v26 = 0;
    v30 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v29 = *v35;
      v28 = *MEMORY[0x277CBEEE8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v34 + 1) + 8 * i);
          v9 = [v8 objectAtIndexedSubscript:{0, v26}];
          v10 = [v8 objectAtIndexedSubscript:1];
          v11 = [v8 objectAtIndexedSubscript:2];
          v12 = [@"com.apple.FileProvider" stringByAppendingPathComponent:v10];
          v13 = [v12 stringByAppendingPathComponent:v11];

          v14 = [objc_opt_class() _stateInfoAttributeNameWithClientStateName:v13];
          v15 = objc_alloc(MEMORY[0x277CC34B8]);
          v38 = v14;
          v39 = v28;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v17 = [v15 initWithAttributes:v16];

          v18 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v9 domainIdentifier:0 attributeSet:v17];
          [v18 setIsUpdate:1];
          [v30 addObject:v18];
        }

        v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v6);
    }

    v20 = *(*(a1 + 40) + 152);
    if (v20)
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1427;
      v31[3] = &unk_2789347D0;
      v21 = *(a1 + 48);
      v22 = *(a1 + 40);
      v33 = v21;
      v31[4] = v22;
      v32 = v30;
      SIBackgroundOpBlock(v20, 0, v31);

      v23 = v33;
    }

    else
    {
      v24 = logForCSLogCategoryDefault(v19);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4_cold_1();
      }

      v25 = *(a1 + 48);
      if (!v25)
      {
        goto LABEL_18;
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v25 + 16))(v25, v23);
    }

LABEL_18:
    v3 = v26;
    goto LABEL_19;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

LABEL_19:
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_1427(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v3 + 16))(v3, v6);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2_1428;
    v7[3] = &unk_278935048;
    v8 = *(a1 + 48);
    [v4 indexSearchableItems:v5 deleteSearchableItemsWithIdentifiers:0 clientState:0 forBundleID:@"com.apple.searchd" options:0 completionHandler:v7];
  }
}

uint64_t __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2_1428(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteAllUserActivities:(id)activities fromClient:(id)client completionHandler:(id)handler
{
  activitiesCopy = activities;
  clientCopy = client;
  handlerCopy = handler;
  v11 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer deleteAllUserActivities:fromClient:completionHandler:];
  }

  if ([activitiesCopy length])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke;
    v16[3] = &unk_278934028;
    v16[4] = self;
    v19 = handlerCopy;
    v17 = clientCopy;
    v18 = activitiesCopy;
    v12 = MEMORY[0x2383760E0](v16);
    v13 = sIndexQueue;
    v14 = _setup_block(v12, 0, 11852);
    dispatch_async(v13, v14);
  }

  else if (handlerCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

void __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke(id *a1)
{
  [a1[4] readyIndex:0];
  v2 = a1[4];
  if (v2[19] && *(v2 + 24) != 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2;
    v9[3] = &unk_278934EB8;
    v9[4] = v2;
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    v7 = MEMORY[0x2383760E0](v9);
    v7[2]();
  }

  else if (a1[7])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [a1[4] _indexPath];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

    v6 = 0;
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    }

    v8 = v6;
    (*(a1[7] + 2))();
  }
}

void __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2(uint64_t a1)
{
  SILogActivity(*(*(a1 + 32) + 152), "deleteAllUserActivities(%s/%s/%s)", [*(*(a1 + 32) + 192) UTF8String], objc_msgSend(*(a1 + 40), "UTF8String"), objc_msgSend(*(a1 + 48), "UTF8String"));
  v2 = SDTraceAdd(3, @"deleteAllUserActivities start", -1, *(*(a1 + 32) + 192), *(a1 + 48), 0.0);
  v3 = @"_kMDItemUserActivityType=* && _kMDItemUserActivityEligibleForPublicIndexing=*";
  if ([*(a1 + 48) length])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID=%@ && (%@)", *(a1 + 48), @"_kMDItemUserActivityType=* && _kMDItemUserActivityEligibleForPublicIndexing=*"];
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3;
  v7[3] = &unk_278935A60;
  v10 = v2;
  v7[4] = v6;
  v8 = v4;
  v9 = *(a1 + 56);
  [v6 deleteItemsForQuery:v3 bundleID:v8 fromClient:v5 completionHandler:v7];
}

void __87__SPConcreteCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  SDTraceAdd(3, @"deleteAllUserActivities complete", *(a1 + 56), *(*(a1 + 32) + 192), *(a1 + 40), 0.0);
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_scheduleStringsCleanupForBundleID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = logForCSLogCategoryIndex(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    *buf = 138412546;
    v11 = dCopy;
    v12 = 2112;
    v13 = dataclass;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling strings cleanup for bundleID:%@, dataclass:%@", buf, 0x16u);
  }

  v7 = sIndexQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke;
  v9[3] = &unk_278934050;
  v9[4] = self;
  v8 = _setup_block(v9, 0, 11886);
  dispatch_async(v7, v8);
}

void __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 27) & 1) == 0)
  {
    *(v1 + 27) = 1;
    v3 = dispatch_time(0, 10000000000);
    v4 = dispatch_get_global_queue(9, 2uLL);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_2;
    block[3] = &unk_278934050;
    block[4] = *(a1 + 32);
    dispatch_after(v3, v4, block);
  }
}

void __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_3;
  v6 = &unk_278935A88;
  objc_copyWeak(&v7, &location);
  v2 = [&v3 copy];
  [*(a1 + 32) scheduleMaintenance:v2 description:@"com.apple.searchd.strings.cleanup" forDarkWake:{1, v3, v4, v5, v6}];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __69__SPConcreteCoreSpotlightIndexer__scheduleStringsCleanupForBundleID___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[27] = 0;
    v13 = [WeakRetained index];
    if (v13 == a2)
    {
      v14 = logForCSLogCategoryIndex(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 dataclass];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEFAULT, "Running strings cleanup for dataclass:%@", &v16, 0xCu);
      }

      [v12 cleanupStringsWithActivity:v9 group:v10 shouldDefer:a4 flags:0];
    }
  }
}

- (void)zombifyAllContactItems:(id)items
{
  itemsCopy = items;
  dispatch_group_enter(itemsCopy);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke;
  v9[3] = &unk_2789342C0;
  v9[4] = self;
  v10 = itemsCopy;
  v5 = itemsCopy;
  v6 = MEMORY[0x2383760E0](v9);
  v7 = sIndexQueue;
  v8 = _setup_block(v6, 0, 11936);
  dispatch_async(v7, v8);
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_2;
  v11 = &unk_278935AB0;
  v2 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v2;
  v3 = MEMORY[0x2383760E0](&v8);
  v4 = *(a1 + 32);
  v5 = v4[19];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2500], @"com.apple.MobileAddressBook", v8, v9, v10, v11, v12];
  v14[0] = *MEMORY[0x277CC3208];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  LOBYTE(v4) = [v4 _startInternalQueryWithIndex:v5 query:v6 fetchAttributes:v7 forBundleIds:&unk_2846C9320 resultsHandler:v3];

  if ((v4 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  if (a3 == 1)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:_MDStoreOIDArrayGetVectorCount()];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:43200.0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_3;
    v19[3] = &unk_2789353D8;
    v12 = v11;
    v20 = v12;
    v13 = v10;
    v21 = v13;
    [a6 enumerateQueryResults:1 stringCache:0 usingBlock:v19];
    v14 = *(a1 + 32);
    if (*(v14 + 152) && *(v14 + 176))
    {
      v15 = sIndexQueue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_4;
      v17[3] = &unk_2789342C0;
      v17[4] = v14;
      v18 = v13;
      v16 = _setup_block(v17, 0, 11920);
      dispatch_async(v15, v16);
    }
  }
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_3(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v5 = objc_opt_new();
    [v5 setObject:*a2 forKey:*MEMORY[0x277CC3208]];
    [v5 setObject:*(a1 + 32) forKey:*MEMORY[0x277CC2A70]];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v5 setObject:v4 forKey:*MEMORY[0x277CC2CD0]];

    [*(a1 + 40) addObject:v5];
  }
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 152);
  if (v1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_5;
    v2[3] = &unk_278935248;
    v3 = *(a1 + 40);
    SIBackgroundOpBlock(v1, 0, v2);
  }
}

void __57__SPConcreteCoreSpotlightIndexer_zombifyAllContactItems___block_invoke_5(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "clearOutContactItems canceled", v5, 2u);
    }
  }

  else
  {

    SISetCSAttributes();
  }
}

- (void)restartAttachmentImport:(id)import maxCount:(unint64_t)count depth:(int64_t)depth
{
  importCopy = import;
  index = [(SPConcreteCoreSpotlightIndexer *)self index];
  if (!index || self->_readOnly || self->_suspended)
  {
    goto LABEL_18;
  }

  v10 = index;
  v11 = logForCSLogCategoryDefault(index);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SPConcreteCoreSpotlightIndexer restartAttachmentImport:maxCount:depth:];
  }

  v12 = [@"com.apple.searchd.restartAttachmentImport." stringByAppendingString:self->_dataclass];
  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  indexQueue = self->_indexQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke;
  v24[3] = &unk_278935C18;
  v24[4] = self;
  v27 = v10;
  countCopy = count;
  depthCopy = depth;
  v25 = importCopy;
  v26 = v12;
  [mEMORY[0x277CF0810] registerForTaskWithIdentifier:v12 usingQueue:indexQueue launchHandler:v24];

  v15 = _SIProtectionClass();
  v16 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v12];
  [v16 setRequiresNetworkConnectivity:0];
  [v16 setGroupName:@"com.apple.searchd.restartAttachmentImport"];
  [v16 setGroupConcurrencyLimit:1];
  [v16 setRequiresUserInactivity:0];
  [v16 setRequiresExternalPower:0];
  [v16 setResourceIntensive:0];
  [v16 setExpectedDuration:60.0];
  [v16 setPriority:2];
  [v16 setResources:5];
  switch(v15)
  {
    case 1:
      v17 = 1;
      goto LABEL_12;
    case 7:
      v17 = 3;
      goto LABEL_12;
    case 2:
      v17 = 2;
LABEL_12:
      [v16 setRequiresProtectionClass:v17];
      break;
  }

  mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
  v23 = 0;
  v19 = [mEMORY[0x277CF0810]2 submitTaskRequest:v16 error:&v23];
  v20 = v23;

  if ((v19 & 1) == 0)
  {
    v22 = logForCSLogCategoryDefault(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer restartAttachmentImport:maxCount:depth:];
    }
  }

LABEL_18:
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke(uint64_t a1, void *a2)
{
  v48[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v5 = [SPQueryResultsQueue alloc];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.internal.attachmentImports.%d", atomic_fetch_add(&kSPReindexAllCompletedBundleIDs_block_invoke_6_queueNum, 1u)];
  v7 = [*(a1 + 32) indexQueue];
  v8 = [(SPQueryResultsQueue *)v5 initWithIdentifier:v6 dispatchQueue:v7];

  v9 = logForCSLogCategoryDefault([(SPQueryResultsQueue *)v8 setDisableResultStreaming:1]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_cold_1();
  }

  v10 = dispatch_group_create();
  objc_initWeak(&location, *(a1 + 32));
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456;
  v26[3] = &unk_278935BC8;
  objc_copyWeak(v37, &location);
  v32 = v46;
  v11 = v3;
  v37[1] = *&Current;
  v33 = v42;
  v34 = v44;
  v37[2] = *(a1 + 56);
  v35 = v40;
  v36 = v39;
  v12 = *(a1 + 32);
  v27 = v11;
  v28 = v12;
  v29 = *(a1 + 40);
  v13 = v8;
  v30 = v13;
  v14 = v10;
  v31 = v14;
  v38 = *(a1 + 64);
  v15 = MEMORY[0x2383760E0](v26);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemRequiresImport==1 && _kMDItemImportHasSandboxExtension==1"];
  dispatch_group_enter(*(a1 + 40));
  v17 = *(a1 + 32);
  v18 = v17[19];
  v19 = *MEMORY[0x277CC3208];
  v48[0] = @"_kMDItemBundleID";
  v48[1] = v19;
  v20 = *MEMORY[0x277CC2678];
  v48[2] = *MEMORY[0x277CC2688];
  v48[3] = v20;
  v48[4] = *MEMORY[0x277CC2C00];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:5];
  LOBYTE(v17) = [v17 _startInternalQueryWithIndex:v18 query:v16 fetchAttributes:v21 forBundleIds:0 maxCount:*(a1 + 64) resultsHandler:v15 resultQueue:v13 postFilter:0];

  if ((v17 & 1) == 0)
  {
    v23 = logForCSLogCategoryDefault(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_INFO, "restartAttachmentImport done (never started)", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 40));
    [v11 setTaskCompleted];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1482;
  v24[3] = &unk_278935BF0;
  v24[4] = *(a1 + 48);
  v24[5] = v46;
  [v11 setExpirationHandler:v24];

  objc_destroyWeak(v37);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  objc_destroyWeak(&location);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v82 = *MEMORY[0x277D85DE8];
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  v12 = WeakRetained;
  v13 = atomic_load((*(*(a1 + 72) + 8) + 24));
  if (a3 == 1 || (v13 & 1) == 0)
  {
    if (a3 == 1)
    {
      v36 = logForCSLogCategoryDefault(WeakRetained);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = *(*(*(a1 + 96) + 8) + 24);
        *buf = 134217984;
        v81 = v37;
        _os_log_impl(&dword_231A35000, v36, OS_LOG_TYPE_INFO, "==== Completed restartAttachmentImport query finished) %ld", buf, 0xCu);
      }

      v39 = atomic_load((*(*(a1 + 88) + 8) + 24));
      if ((v39 & 1) == 0)
      {
        v38 = [*(a1 + 32) setTaskCompleted];
      }

      v40 = *(a1 + 136);
      if (*(*(*(a1 + 96) + 8) + 24) >= v40)
      {
        v49 = *(a1 + 104);
        if (!*(*(v49 + 8) + 24) || (v50 = *(a1 + 144) + 1, v50 > 5 * (v40 >> 8)))
        {
          v50 = 0;
          v40 *= 2;
        }

        v43 = *(a1 + 64);
        v44 = sIndexQueue;
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1477;
        v56[3] = &unk_278935B78;
        v58 = vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL);
        v57[1] = v49;
        v56[4] = v12;
        v46 = v57;
        v57[0] = *(a1 + 48);
        v59 = v40;
        v60 = v50;
        v47 = v56;
        v48 = 12102;
      }

      else
      {
        v41 = logForCSLogCategoryDefault(v38);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = *(*(*(a1 + 104) + 8) + 24);
          *buf = 134217984;
          v81 = v42;
          _os_log_impl(&dword_231A35000, v41, OS_LOG_TYPE_INFO, "==== Completed restartAttachmentImport query (%ld processed)", buf, 0xCu);
        }

        v43 = *(a1 + 64);
        v44 = sIndexQueue;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1478;
        v52[3] = &unk_278935BA0;
        v45 = *(a1 + 88);
        v53[1] = *(a1 + 104);
        v53[2] = v45;
        v54 = *(a1 + 72);
        v52[4] = v12;
        v46 = v53;
        v53[0] = *(a1 + 48);
        v55 = *(a1 + 136);
        v47 = v52;
        v48 = 12112;
      }

      v51 = _setup_block(v47, 0, v48);
      dispatch_group_notify(v43, v44, v51);
    }

    else if (!a3)
    {
      v20 = [WeakRetained index];
      if (v20 == *(a1 + 128))
      {
        v21 = logForCSLogCategoryDefault(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v81 = a4;
          _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_INFO, "==== restartAttachmentImport query results %ld", buf, 0xCu);
        }

        VectorCount = _MDStoreOIDArrayGetVectorCount();
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460;
        v71[3] = &unk_278935AD8;
        v76 = *(a1 + 96);
        v18 = v23;
        v72 = v18;
        v27 = v24;
        v73 = v27;
        v28 = v25;
        v74 = v28;
        v29 = v26;
        v30 = *(a1 + 104);
        v75 = v29;
        v77 = v30;
        v78 = VectorCount;
        [a6 enumerateQueryResults:5 stringCache:0 usingBlock:v71];
        v31 = *(a1 + 40);
        if (*(v31 + 152) && *(v31 + 176))
        {
          dispatch_group_enter(*(a1 + 48));
          v32 = sIndexQueue;
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1461;
          v61[3] = &unk_278935B50;
          v33 = *(a1 + 72);
          v34 = *(a1 + 48);
          v61[4] = *(a1 + 40);
          v70 = v33;
          v62 = v34;
          v63 = *(a1 + 56);
          v64 = v18;
          v65 = v27;
          v66 = v28;
          v67 = v29;
          v68 = v12;
          v69 = *(a1 + 64);
          v35 = _setup_block(v61, 0, 12078);
          dispatch_async(v32, v35);
        }

        else
        {
          [*(a1 + 56) resumeResults];
        }

        goto LABEL_8;
      }
    }

    [*(a1 + 56) resumeResults];
    goto LABEL_31;
  }

  v14 = *(a1 + 32);
  v15 = CFAbsoluteTimeGetCurrent() - *(a1 + 120);
  v79 = 0;
  v16 = [v14 setTaskExpiredWithRetryAfter:&v79 error:v15];
  v17 = v79;
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    v19 = logForCSLogCategoryIndex(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456_cold_1();
    }

    atomic_store(1u, (*(*(a1 + 80) + 8) + 24));
    [*(a1 + 32) setTaskCompleted];
  }

  atomic_store(1u, (*(*(a1 + 88) + 8) + 24));
  [v10 cancel];
LABEL_8:

LABEL_31:
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 64) + 8) + 24);
  if (*a2 && *(a2 + 8) && *(a2 + 16) && *(a2 + 24) && *(a2 + 32))
  {
    v4 = *a2;
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v6 = [*(a1 + 40) objectForKeyedSubscript:v4];
    v7 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v8 = [*(a1 + 56) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];

      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];

      [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v4];
      [*(a1 + 48) setObject:v10 forKeyedSubscript:v4];
      [*(a1 + 56) setObject:v11 forKeyedSubscript:v4];
      v8 = v11;
      v7 = v10;
      v6 = v9;
    }

    [v5 addObject:*(a2 + 8)];
    v12 = *(a2 + 16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];

      v12 = v13;
    }

    [v6 addObject:v12];
    [v7 addObject:*(a2 + 24)];
    v14 = [v8 addObject:*(a2 + 32)];
    ++*(*(*(a1 + 72) + 8) + 24);
    v15 = logForCSLogCategoryDefault(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a2 + 8);
      v17 = *(a2 + 24);
      v18 = *(a2 + 32);
      v19 = 138413058;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_debug_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEBUG, "~~ restartAttachmentImport id:%@ url:%@ uti:%@ se:%@", &v19, 0x2Au);
    }
  }

  else
  {
    v4 = logForCSLogCategoryDefault(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460_cold_1();
    }
  }
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1461(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (v2)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_2;
    v15[3] = &unk_278935B28;
    v20 = *(a1 + 104);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v16 = v8;
    v17 = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v14 = *(a1 + 88);
    v11 = *(&v14 + 1);
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v19 = v14;
    v18 = v12;
    SIBackgroundOpBlock(v2, 0, v15);
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
    v13 = *(a1 + 48);

    [v13 resumeResults];
  }
}

uint64_t __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3 || (v4 = atomic_load((*(*(a1 + 96) + 8) + 24)), (v4 & 1) != 0))
  {
    v5 = logForCSLogCategoryDefault(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "==== restartAttachmentImport canceled", buf, 2u);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = *(a1 + 48);
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v20 = *v23;
      obj = v5;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [*(a1 + 48) objectForKeyedSubscript:v9];
          v11 = [*(a1 + 56) objectForKeyedSubscript:v9];
          v12 = [*(a1 + 64) objectForKeyedSubscript:v9];
          v13 = [*(a1 + 72) objectForKeyedSubscript:v9];
          v14 = logForCSLogCategoryDefault(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "==== restartAttachmentImport import! items %@", buf, 0xCu);
          }

          v15 = *(a1 + 80);
          v16 = *(a1 + 88);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1475;
          v21[3] = &unk_278935B00;
          v21[4] = *(a1 + 96);
          LOBYTE(v18) = 0;
          [v15 processImportForBundleID:v9 withURLs:v11 contentTypes:v12 sandboxExtensions:v13 andIdentifiers:v10 options:0x8000 inGroup:v16 additionalAttributes:&unk_2846C9708 computeUpdaterAttributesAfterImport:v18 cancelBlock:v21];
        }

        v5 = obj;
        v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v7);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  return [*(a1 + 40) resumeResults];
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1477(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "==== restartAttachmentImport (recursive!) %ld", &v6, 0xCu);
  }

  v4 = atomic_load((*(*(a1 + 56) + 8) + 24));
  if (v4 & 1) == 0 || (v5 = atomic_load((*(*(a1 + 64) + 8) + 24)), (v5))
  {
    [*(a1 + 32) restartAttachmentImport:*(a1 + 40) maxCount:*(a1 + 72) depth:*(a1 + 80)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1478(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "==== Done restarting importers (%ld processed)", &v7, 0xCu);
  }

  v4 = atomic_load((*(*(a1 + 56) + 8) + 24));
  if (v4 & 1) == 0 && (v5 = atomic_load((*(*(a1 + 64) + 8) + 24)), (v5) || (v6 = atomic_load((*(*(a1 + 72) + 8) + 24)), (v6))
  {
    [*(a1 + 32) restartAttachmentImport:*(a1 + 40) maxCount:*(a1 + 80) depth:*(a1 + 88)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1482(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
  }

  atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
}

- (void)removeSandboxExtensions:(id)extensions
{
  v23[2] = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  dispatch_assert_queue_V2(self->_indexQueue);
  v6 = logForCSLogCategoryDefault(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "==== removeSandboxExtensions enter", buf, 2u);
  }

  dispatch_group_enter(extensionsCopy);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke;
  v19 = &unk_278935AB0;
  selfCopy = self;
  v7 = extensionsCopy;
  v21 = v7;
  v8 = MEMORY[0x2383760E0](&v16);
  index = self->_index;
  selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemRequiresImport==1 && _kMDItemImportHasSandboxExtension==1", v16, v17, v18, v19, selfCopy];
  v11 = *MEMORY[0x277CC3208];
  v23[0] = @"_kMDItemBundleID";
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v13 = [(SPConcreteCoreSpotlightIndexer *)self _startInternalQueryWithIndex:index query:selfCopy fetchAttributes:v12 resultsHandler:v8];

  if (!v13)
  {
    v15 = logForCSLogCategoryDefault(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "removeSandboxExtensions done", buf, 2u);
    }

    dispatch_group_leave(v7);
  }
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = v9;
  if (a3 == 1)
  {
    v18 = logForCSLogCategoryDefault(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_INFO, "removeSandboxExtensions done", v19, 2u);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3)
  {
    VectorCount = _MDStoreOIDArrayGetVectorCount();
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_2;
    v23[3] = &unk_278935C40;
    v13 = v12;
    v24 = v13;
    v25 = VectorCount;
    [a6 enumerateQueryResults:2 stringCache:0 usingBlock:v23];
    v14 = *(a1 + 32);
    if (*(v14 + 152) && *(v14 + 176))
    {
      dispatch_group_enter(*(a1 + 40));
      v15 = sIndexQueue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_3;
      v20[3] = &unk_278934130;
      v16 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      v21 = v16;
      v22 = v13;
      v17 = _setup_block(v20, 0, 12237);
      dispatch_async(v15, v17);
    }
  }
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_2(uint64_t a1, void *a2)
{
  if (*a2 && a2[1])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:?];
    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 40)];
      [*(a1 + 32) setObject:? forKeyedSubscript:?];
    }

    v4 = objc_opt_new();
    [v4 setObject:a2[1] forKey:*MEMORY[0x277CC3208]];
    v5 = *MEMORY[0x277CBEEE8];
    [v4 setObject:*MEMORY[0x277CBEEE8] forKey:*MEMORY[0x277CC2C00]];
    [v4 setObject:v5 forKey:*MEMORY[0x277CC2BF8]];
    [v6 addObject:v4];
  }
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 152);
  if (v1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_4;
    v3[3] = &unk_2789351D8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    SIBackgroundOpBlock(v1, 0, v3);
  }
}

void __58__SPConcreteCoreSpotlightIndexer_removeSandboxExtensions___block_invoke_4(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = logForCSLogCategoryIndex(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "removeSandboxExtensions canceled", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v16;
      *&v7 = 138412546;
      v14 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [*(a1 + 40) objectForKeyedSubscript:{v11, v14, v15}];
          v13 = logForCSLogCategoryDefault(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v14;
            v20 = v11;
            v21 = 2112;
            v22 = v12;
            _os_log_debug_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEBUG, "removeSandboxExtensions %@ %@", buf, 0x16u);
          }

          SISetCSAttributes();
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v8);
    }
  }
}

- (void)deleteAllSearchableItemsForBundleID:(id)d fromClient:(id)client shouldGC:(BOOL)c deleteAllReason:(int64_t)reason completionHandler:(id)handler
{
  cCopy = c;
  v84 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientCopy = client;
  handlerCopy = handler;
  v14 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    dataclass = self->_dataclass;
    v16 = "NO";
    *buf = 138412802;
    if (cCopy)
    {
      v16 = "YES";
    }

    *&buf[4] = dCopy;
    *&buf[12] = 2112;
    *&buf[14] = dataclass;
    *&buf[22] = 2080;
    v82 = v16;
    _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEFAULT, "deleteAllSearchableItemsForBundleID, bundleID:%@, protectionClass:%@, shouldGC:%s", buf, 0x20u);
  }

  v18 = logForCSLogCategoryDeleteAll(v17);
  spid = os_signpost_id_generate(v18);

  v20 = logForCSLogCategoryDeleteAll(v19);
  v21 = v20;
  v22 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    if ([dCopy length])
    {
      v23 = dCopy;
      uTF8String = [dCopy UTF8String];
    }

    else
    {
      uTF8String = "all";
    }

    if ([clientCopy length])
    {
      v25 = clientCopy;
      uTF8String2 = [clientCopy UTF8String];
    }

    else
    {
      uTF8String2 = "";
    }

    uTF8String3 = [(NSString *)self->_dataclass UTF8String];
    *buf = 136315906;
    *&buf[4] = uTF8String;
    *&buf[12] = 2080;
    *&buf[14] = uTF8String2;
    *&buf[22] = 2080;
    v82 = uTF8String3;
    LOWORD(v83) = 2048;
    *(&v83 + 2) = reason;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "deleteAll", "bid:%s, client:%s, pc:%s, reason:%ld", buf, 0x2Au);
  }

  if (self->_readOnly)
  {
    v29 = logForCSLogCategoryIndex(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_dataclass;
      *buf = 138412290;
      *&buf[4] = v30;
      _os_log_impl(&dword_231A35000, v29, OS_LOG_TYPE_DEFAULT, "Cannot delete items because the index is read-only. dataclass:%@", buf, 0xCu);
    }

    v32 = logForCSLogCategoryDeleteAll(v31);
    v33 = v32;
    if (v22 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v33, OS_SIGNPOST_INTERVAL_END, spid, "deleteAll", "err: read only", buf, 2u);
    }

    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v34);
  }

  else if (self->_hasAssertion)
  {
    v35 = logForCSLogCategoryIndex(v28);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = self->_dataclass;
      *buf = 138412290;
      *&buf[4] = v36;
      _os_log_impl(&dword_231A35000, v35, OS_LOG_TYPE_INFO, "Cannot deleteAllSearchableItemsForBundleID on asserted index when device is locked. dataclass:%@", buf, 0xCu);
    }

    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v38 = logForCSLogCategoryDeleteAll(v37);
    v39 = v38;
    if (v22 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v39, OS_SIGNPOST_INTERVAL_END, spid, "deleteAll", "err: device locked", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v37);
    }
  }

  else
  {
    v40 = [dCopy isEqualToString:@"com.apple.spotlight.contacts"];
    v53 = SDTraceAdd(3, @"DeleteAll start", -1, self->_dataclass, dCopy, 0.0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v82 = __Block_byref_object_copy__0;
    *&v83 = __Block_byref_object_dispose__0;
    *(&v83 + 1) = 0;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2020000000;
    v80 = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v78 = 0;
    if (-[NSString isEqualToString:](self->_dataclass, "isEqualToString:", *MEMORY[0x277CCA1A0]) && (![dCopy length] || objc_msgSend(dCopy, "isEqualToString:", @"com.apple.mobileslideshow")))
    {
      _sendPhotosReindexABCReport(@"Call to delete SPI");
    }

    v41 = dispatch_group_create();
    v42 = cCopy & ~v40;
    if ([dCopy isEqualToString:@"com.apple.MobileAddressBook"])
    {
      [(SPConcreteCoreSpotlightIndexer *)self zombifyAllContactItems:v41];
    }

    else
    {
      v43 = sIndexQueue;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke;
      v70[3] = &unk_278935D28;
      v71 = dCopy;
      selfCopy = self;
      v75 = buf;
      v44 = v41;
      v73 = v44;
      v74 = clientCopy;
      v76 = v42;
      v45 = _setup_block(v70, 0, 12423);
      dispatch_group_async(v44, v43, v45);
    }

    v46 = dispatch_group_create();
    dispatch_group_enter(v46);
    v47 = sIndexQueue;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1512;
    v64[3] = &unk_278935D50;
    v68 = buf;
    v69 = v79;
    v48 = dCopy;
    v65 = v48;
    v49 = v46;
    v66 = v49;
    selfCopy2 = self;
    v50 = _setup_block(v64, 0, 12463);
    dispatch_group_notify(v41, v47, v50);

    v51 = sIndexQueue;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514;
    v56[3] = &unk_278935DA0;
    v61 = spid;
    v62 = v53;
    v56[4] = self;
    v57 = v48;
    v59 = buf;
    v58 = handlerCopy;
    v60 = v77;
    v63 = v42;
    v52 = _setup_block(v56, 0, 12523);
    dispatch_group_notify(v49, v51, v52);

    _Block_object_dispose(v77, 8);
    _Block_object_dispose(v79, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) length])
  {
    v2 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 40) + 192);
      *buf = 138412290;
      v56 = v3;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "#index wipe, dataclass:%@", buf, 0xCu);
    }

    [*(a1 + 40) closeIndex];
    v4 = [*(a1 + 40) _indexPath];
    v54 = 0;
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4 isDirectory:&v54];

    if (v6)
    {
      v8 = logForCSLogCategoryIndex(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v4;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Removing index at %@", buf, 0xCu);
      }

      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = *(*(a1 + 64) + 8);
      obj = *(v10 + 40);
      v11 = [v9 removeItemAtPath:v4 error:&obj];
      objc_storeStrong((v10 + 40), obj);

      if ((v11 & 1) == 0)
      {
        v13 = logForCSLogCategoryIndex(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_1();
        }

        v14 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = *(*(a1 + 64) + 8);
        v52 = *(v15 + 40);
        v16 = [v14 removeItemAtPath:v4 error:&v52];
        objc_storeStrong((v15 + 40), v52);

        if ((v16 & 1) == 0)
        {
          v18 = logForCSLogCategoryIndex(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_2();
          }

          v19 = [MEMORY[0x277CCAA00] defaultManager];
          v40 = v4;
          v20 = [v19 contentsOfDirectoryAtPath:v4 error:0];

          v51 = 0u;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v48 objects:v59 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v49;
            do
            {
              v25 = 0;
              do
              {
                if (*v49 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v48 + 1) + 8 * v25);
                v27 = logForCSLogCategoryIndex(v22);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = *(*(a1 + 40) + 192);
                  *buf = 138412546;
                  v56 = v28;
                  v57 = 2112;
                  v58 = v26;
                  _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_DEFAULT, "(%@) Failed to remove %@", buf, 0x16u);
                }

                ++v25;
              }

              while (v23 != v25);
              v22 = [v21 countByEnumeratingWithState:&v48 objects:v59 count:16];
              v23 = v22;
            }

            while (v22);
          }

          v4 = v40;
        }
      }

      goto LABEL_29;
    }
  }

  [*(a1 + 40) readyIndex:0];
  v29 = *(a1 + 40);
  v30 = *(v29 + 152);
  if (!v30)
  {
    v35 = [v29 _indexPath];
    buf[0] = 0;
    v36 = [MEMORY[0x277CCAA00] defaultManager];
    v37 = [v36 fileExistsAtPath:v35 isDirectory:buf];

    if ((v37 & 1) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

  if (*(v29 + 24) == 1)
  {
LABEL_28:
    v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v39 = *(*(a1 + 64) + 8);
    v4 = *(v39 + 40);
    *(v39 + 40) = v38;
    goto LABEL_29;
  }

  dispatch_group_enter(*(a1 + 48));
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1498;
  v42[3] = &unk_278935D00;
  v45 = *(a1 + 64);
  *&v31 = *(a1 + 48);
  *(&v31 + 1) = *(a1 + 40);
  v41 = v31;
  v32 = *(a1 + 56);
  v47 = *(a1 + 72);
  v33 = *(a1 + 32);
  *&v34 = v32;
  *(&v34 + 1) = v33;
  v43 = v41;
  v44 = v34;
  v46 = v30;
  SISynchedOpWithBlock(v30, 3, v42);

  v4 = v43;
LABEL_29:
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1498(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);

    dispatch_group_leave(v7);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2;
    v14[3] = &unk_278935D00;
    v17 = *(a1 + 64);
    *&v9 = *(a1 + 32);
    *(&v9 + 1) = *(a1 + 40);
    v13 = v9;
    v10 = *(a1 + 48);
    v19 = *(a1 + 80);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v15 = v13;
    v16 = v12;
    v18 = *(a1 + 72);
    SIBackgroundOpBlock(a2, 0, v14);
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v0;
  v43 = *MEMORY[0x277D85DE8];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v5 = *(*(v2 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(v2 + 32);

    dispatch_group_leave(v7);
  }

  else
  {
    v8 = v1;
    SILogActivity(*(*(v0 + 40) + 152), "deleteAllSearchableItemsForBundleID(%s/%s/%d/%s)", [*(*(v0 + 40) + 192) UTF8String], objc_msgSend(*(v0 + 48), "UTF8String"), *(v0 + 80), objc_msgSend(*(v0 + 56), "UTF8String"));
    v9 = [SPQueryResultsQueue alloc];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.searchd.internal.bundle.deletes.%@.%d", *(v2 + 56), atomic_fetch_add(kSPReindexAllCompletedBundleIDs_block_invoke_7_queueNum, 1u)];
    v11 = [*(v2 + 40) indexQueue];
    v12 = [(SPQueryResultsQueue *)v9 initWithIdentifier:v10 dispatchQueue:v11];

    [(SPQueryResultsQueue *)v12 setDisableResultStreaming:1];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3;
    v33[3] = &unk_278935CB8;
    v38 = *(v2 + 72);
    v32 = *(v2 + 32);
    v13 = v32.i64[0];
    v34 = vextq_s8(v32, v32, 8uLL);
    v35 = *(v2 + 56);
    v14 = v12;
    v15 = *(v2 + 64);
    v36 = v14;
    v37 = v15;
    v16 = MEMORY[0x2383760E0](v33);
    v17 = *(v2 + 56);
    if (v17)
    {
      v18 = [v17 isEqualToString:@"com.apple.mobilemail"];
      if ((v18 & 1) != 0 || (v18 = [*(v2 + 56) isEqualToString:@"com.apple.mail"], v18))
      {
        v19 = logForCSLogCategoryIndex(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "Attempting text store deletion by predicate", buf, 2u);
        }

        bzero(buf, 0x1000uLL);
        if ([*(v2 + 56) getBytes:buf maxLength:0 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(*(v2 + 56), "length"), 0}])
        {
          v20 = si_text_store_delete_by_predicate();
          if (v20)
          {
            v21 = v20;
            v22 = logForCSLogCategoryIndex(v20);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = strerror(-v21);
              *v40 = 136315138;
              v41 = v23;
              _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "*warn* si_text_store_delete_by_predicate: %s", v40, 0xCu);
            }
          }
        }
      }
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID = %@", *(v2 + 56)];
    v25 = *(v2 + 40);
    v39 = *(v2 + 56);
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    v27 = MEMORY[0x2383760E0](v16);
    v28 = [v25 _startInternalQueryWithIndex:v8 query:v24 fetchAttributes:0 forBundleIds:v26 resultsHandler:v27 resultQueue:v14];

    if ((v28 & 1) == 0)
    {
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v30 = *(*(v2 + 64) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      dispatch_group_leave(*(v2 + 32));
    }
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = a2;
  if (a3 == 1)
  {
    if ([*(a1 + 32) index] != *(a1 + 72))
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    [*(a1 + 56) resumeResults];
    dispatch_group_leave(*(a1 + 40));
  }

  else if (!a3 && [*(a1 + 32) index] == *(a1 + 72))
  {
    dispatch_group_enter(*(a1 + 40));
    CFRetain(a5);
    v9 = *(a1 + 72);
    v10 = qos_class_self();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_4;
    v19[3] = &unk_278935C90;
    v22 = a5;
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = *(a1 + 32);
    v18 = v11;
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v20 = v18;
    v21 = v14;
    SIBackgroundOpBlock(v9, v10, v19);
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    [*(a1 + 48) resumeResults];
  }

  else
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    _MDStoreOIDArrayGetVectorCount();
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_5;
    v13 = &unk_278935C68;
    v16 = a2;
    v14 = *(a1 + 32);
    v15 = v17;
    _MDStoreOIDArrayApplyBlock();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_7;
    v6[3] = &unk_278935768;
    v5 = *(a1 + 48);
    v6[4] = *(a1 + 40);
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = v17;
    SISynchedOpWithBlock(a2, 2, v6);

    _Block_object_dispose(v17, 8);
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 56));
}

double __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_6(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1512(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 40) || *(*(*(a1 + 64) + 8) + 24) == 1 && ([MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0], v3 = objc_claimAutoreleasedReturnValue(), v4 = *(*(a1 + 56) + 8), v5 = *(v4 + 40), *(v4 + 40) = v3, v5, *(*(*(a1 + 56) + 8) + 40)) || !objc_msgSend(*(a1 + 32), "length"))
  {
    v2 = *(a1 + 40);

    dispatch_group_leave(v2);
  }

  else
  {
    [*(a1 + 48) readyIndex:0];
    v6 = *(a1 + 48);
    if (*(v6 + 152))
    {
      if (*(v6 + 24) != 1)
      {
        SIDeleteCSClientStateCache();
        v7 = *(a1 + 48);
        v20[0] = *(a1 + 32);
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1513;
        v16[3] = &unk_278934F58;
        v18 = *(a1 + 56);
        v17 = *(a1 + 40);
        v9 = [v16 copy];
        [v7 _backgroundDeleteItems:v8 bundleID:@"com.apple.searchd" completionHandler:v9];

        return;
      }

      goto LABEL_13;
    }

    v10 = [*(a1 + 48) _indexPath];
    v19 = 0;
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 fileExistsAtPath:v10 isDirectory:&v19];

    if (v12)
    {

LABEL_13:
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      dispatch_group_leave(*(a1 + 40));
      return;
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1513(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t (**__124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514(uint64_t a1))(void *, void)
{
  v2 = logForCSLogCategoryDeleteAll(a1);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v3, OS_SIGNPOST_INTERVAL_END, v4, "deleteAll", &unk_231AF625D, buf, 2u);
  }

  SDTraceAdd(3, @"DeleteAll complete", *(a1 + 80), *(*(a1 + 32) + 192), *(a1 + 40), 0.0);
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v5 = *(*(a1 + 32) + 152);
  v6 = [*(a1 + 40) isEqualToString:@"com.apple.shortcuts"];
  if (v6)
  {
    if (v5)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1518;
      v12[3] = &unk_278935D78;
      v12[4] = *(a1 + 32);
      v12[5] = v5;
      SIBackgroundOpBlock(v5, 0, v12);
    }

    else
    {
      v7 = logForCSLogCategoryDefault(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514_cold_1();
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = result[2](result, *(*(*(a1 + 56) + 8) + 40));
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(a1 + 88) == 1)
  {
    return [*(a1 + 32) _scheduleStringsCleanupForBundleID:*(a1 + 40)];
  }

  return result;
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1518(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v21 = v6;
    v22 = v5;
    v23 = v3;
    v24 = v4;
    if (*(a1 + 40) == a2)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1519;
      v19[3] = &unk_278935880;
      v9 = v8;
      v20 = v9;
      v10 = MEMORY[0x2383760E0](v19);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1521;
      v16[3] = &unk_278935428;
      v11 = *(a1 + 32);
      v17 = v9;
      v18 = v11;
      v12 = v9;
      v13 = MEMORY[0x2383760E0](v16);
      v14 = logForCSLogCategoryDefault(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] deleteAllSearchableItems start", v15, 2u);
      }

      [*(a1 + 32) deleteHasTopHitAppShortcutsWithResultsHandler:v10 completionHandler:v13];
    }
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1519(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v10 = v5;
    v11 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1520;
    v8[3] = &unk_278934A00;
    v9 = *(a1 + 32);
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v8];
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1520(uint64_t a1, id *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryDefault(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "[TopHitAppShortcuts] void flag for %@", buf, 0xCu);
    }

    v9 = *MEMORY[0x277CC2BA0];
    v10 = *MEMORY[0x277CBEEE8];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v6];
    v8 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v4 domainIdentifier:0 attributeSet:v7];
    [v8 setBundleID:@"com.apple.application"];
    [v8 setIsUpdate:1];
    [*(a1 + 32) addObject:v8];
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_1521(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3 && [v3 count])
  {
    v4 = [*(a1 + 40) owner];
    [v4 indexSearchableItems:*(a1 + 32) deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.application" options:0 completionHandler:&__block_literal_global_1524];
  }
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1522(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logForCSLogCategoryDefault(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1522_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[TopHitAppShortcuts] deleteAllSearchableItems complete", v5, 2u);
  }
}

- (void)_deleteSearchableItemsMatchingQuery:(id)query forBundleIds:(id)ids completionHandler:(id)handler
{
  queryCopy = query;
  idsCopy = ids;
  handlerCopy = handler;
  v11 = sIndexQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke;
  v16[3] = &unk_278934028;
  v16[4] = self;
  v17 = queryCopy;
  v18 = idsCopy;
  v19 = handlerCopy;
  v12 = idsCopy;
  v13 = queryCopy;
  v14 = handlerCopy;
  v15 = _setup_block(v16, 0, 12590);
  dispatch_async(v11, v15);
}

void __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  [a1[4] readyIndex:0];
  v2 = a1[4];
  if (!*(v2 + 19) || (*(v2 + 24) & 1) != 0 || *(v2 + 120) == 1)
  {
    v3 = logForCSLogCategoryDefault(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = v4[19];
      v6 = *(v4 + 24);
      LODWORD(v4) = *(v4 + 120);
      *buf = 134218496;
      v24 = v5;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = v4;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Cannot delete attributes in _deleteSearchableItmesMatchingQuery: index:%p suspended:%d readOnly:%d", buf, 0x18u);
    }

    if (a1[7])
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [a1[4] _indexPath];
      v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

      if (v9)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      }

      else
      {
        v10 = 0;
      }

      (*(a1[7] + 2))();
    }
  }

  else if ([v2 denyOperationOnAssertedIndex:"_deleteSearchableItemsMatchingQuery"])
  {
    v11 = *MEMORY[0x277CC22E8];
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v12 = a1[7];
    if (v12)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:-1000 userInfo:0];
      v12[2](v12, v13);
    }
  }

  else
  {
    v14 = SDTraceAdd(3, @"DeleteMatchingQuey start", -1, a1[5], 0, 0.0);
    objc_initWeak(buf, a1[4]);
    v15 = *(a1[4] + 19);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_1529;
    v18[3] = &unk_278935DF0;
    v21 = a1[7];
    objc_copyWeak(v22, buf);
    v16 = a1[4];
    v22[1] = v14;
    v18[4] = v16;
    v19 = a1[5];
    v20 = a1[6];
    SIBackgroundOpBlock(v15, 0, v18);

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

void __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_1529(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v4 + 16))(v4, v11);
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_2;
    v12[3] = &unk_278935DC8;
    objc_copyWeak(v14, (a1 + 64));
    v14[1] = a2;
    v6 = *(a1 + 56);
    v7 = *(a1 + 72);
    v13 = v6;
    v14[2] = v7;
    v8 = MEMORY[0x2383760E0](v12);
    SILogActivity(*(*(a1 + 32) + 152), "deleteSearchableItemsMatchingQuery(%s)", [*(a1 + 40) UTF8String]);
    if (([*(a1 + 32) _startInternalQueryWithIndex:a2 query:*(a1 + 40) fetchAttributes:0 forBundleIds:*(a1 + 48) resultsHandler:v8] & 1) == 0)
    {
      v9 = *(a1 + 56);
      if (v9)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        (*(v9 + 16))(v9, v10);
      }
    }

    objc_destroyWeak(v14);
  }
}

uint64_t __101__SPConcreteCoreSpotlightIndexer__deleteSearchableItemsMatchingQuery_forBundleIds_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (a3 == 1)
  {
    v17 = WeakRetained;
    WeakRetained = [WeakRetained index];
    if (WeakRetained == *(a1 + 48))
    {
      SDTraceAdd(3, @"DeleteMatchingQuey complete", *(a1 + 56), 0, 0, 0.0);
      WeakRetained = *(a1 + 32);
      v8 = v17;
      if (!WeakRetained)
      {
        goto LABEL_14;
      }

      WeakRetained = WeakRetained[2](WeakRetained, 0);
    }

    else
    {
      v14 = *(a1 + 32);
      v8 = v17;
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (*(v14 + 16))(v14, v15);
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    v17 = WeakRetained;
    WeakRetained = [WeakRetained index];
    v8 = v17;
    if (WeakRetained == *(a1 + 48))
    {
      WeakRetained = _MDStoreOIDArrayGetVectorCount();
      v8 = v17;
      if (WeakRetained >= 2)
      {
        v9 = WeakRetained;
        v10 = *(a1 + 48);
        v11 = (_MDStoreOIDArrayGetVector() + 8);
        v12 = v9 - 1;
        do
        {
          v13 = *v11++;
          MEMORY[0x238374D70](v10, v13);
          --v12;
        }

        while (v12);
        WeakRetained = [v17 dirty];
LABEL_13:
        v8 = v17;
      }
    }
  }

LABEL_14:

  return MEMORY[0x2821F96F8](WeakRetained, v8);
}

- (void)deleteSearchableItemsSinceDate:(id)date forBundleID:(id)d completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = MEMORY[0x277CCAAB0];
  handlerCopy = handler;
  dateCopy = date;
  v12 = [v9 archivedDataWithRootObject:dateCopy requiringSecureCoding:1 error:0];
  index = self->_index;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __95__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsSinceDate_forBundleID_completionHandler___block_invoke;
  v24 = &unk_2789351D8;
  v25 = dCopy;
  v26 = v12;
  v14 = v12;
  v15 = dCopy;
  SIBackgroundOpBlock(index, 9, &v21);
  v16 = MEMORY[0x277CCACA8];
  [dateCopy timeIntervalSinceReferenceDate];
  v18 = v17;

  v19 = [v16 stringWithFormat:@"_kMDItemBundleID = %@ && kMDItemCreationDate>=$time.absolute(%f)", v15, v18, v21, v22, v23, v24];
  v27[0] = v15;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:v19 forBundleIds:v20 completionHandler:handlerCopy];
}

uint64_t __95__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsSinceDate_forBundleID_completionHandler___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = result;
    [*(result + 40) length];
    [*(v4 + 40) bytes];

    return SILogBulkDeleteEvent();
  }

  return result;
}

- (void)deleteActionsBeforeTime:(double)time completionHandler:(id)handler
{
  v6 = MEMORY[0x277CCACA8];
  handlerCopy = handler;
  v8 = [v6 stringWithFormat:@"_kMDItemUserActivityType=* && kMDItemContentType=com.apple.siri.* && kMDItemContentCreationDate<$time.absolute(%f)", *&time];
  [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:v8 forBundleIds:0 completionHandler:handlerCopy];
}

- (void)deleteActionsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if ([identifiersCopy count])
  {
    v8 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"_kMDItemUserActivityType=* && kMDItemContentType=com.apple.siri.* && FieldMatch(kMDItemIdentifier");
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = identifiersCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 appendFormat:@", %@", *(*(&v15 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [v8 appendString:@""]);
    [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:v8 forBundleIds:0 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v14);
  }
}

- (void)deleteAllInteractionsWithBundleID:(id)d completionHandler:(id)handler
{
  v11[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if ([dCopy length])
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID = %@ && _kMDItemUserActivityType=* && kMDItemContentType=com.apple.siri.*", dCopy];
    v11[0] = dCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(SPConcreteCoreSpotlightIndexer *)self _deleteSearchableItemsMatchingQuery:dCopy forBundleIds:v9 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v10);
  }
}

+ (id)_stateInfoAttributeNameWithClientStateName:(id)name
{
  v3 = MEMORY[0x277CCACA8];
  nameCopy = name;
  nameCopy = [[v3 alloc] initWithFormat:@"_kMDItemStateInfo_%@", nameCopy];

  return nameCopy;
}

- (void)_sendPhotosNilClientStateSignpost:(__SI *)signpost retCode:(int)code
{
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = (2 * code) | 1;
  if (self->_creationDate < 0)
  {
    v13 = 0;
  }

  else
  {
    self = time(0);
    v7 = self - selfCopy->_creationDate;
    if (v7 >= 0x15181)
    {
      v8 = 112;
    }

    else
    {
      v8 = 96;
    }

    if (v7 >= 0xA8C1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 80;
    }

    if (v7 >= 0x2A31)
    {
      v10 = v9;
    }

    else
    {
      v10 = 64;
    }

    if (v7 >= 0xE11)
    {
      v11 = v10;
    }

    else
    {
      v11 = 48;
    }

    if (v7 >= 0x259)
    {
      v12 = v11;
    }

    else
    {
      v12 = 32;
    }

    if (v7 >= 61)
    {
      v13 = v12;
    }

    else
    {
      v13 = 16;
    }
  }

  v14 = v24;
  v15 = *(v24 + 6) | v13;
  *(v24 + 6) = v15;
  if (selfCopy->_aggregateWipeCount >= 1)
  {
    *(v14 + 6) = v15 | 0x100;
  }

  if (signpost && (code & 0xFFFFFFFB) != 0)
  {
    SIFetchClientsMetaInfo();
  }

  else
  {
    v16 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v24 + 6);
      *buf = 136315394;
      v28 = "photos_nil_cs_signpost";
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEFAULT, "Emitting %s signpost with sid: %d", buf, 0x12u);
    }

    v19 = logForCSSignpostPhotosNilCS(v18);
    v20 = logForCSSignpostPhotosNilCS(v19);
    v21 = os_signpost_id_generate(v20);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = *(v24 + 6);
      *buf = 67109120;
      LODWORD(v28) = v22;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v19, OS_SIGNPOST_EVENT, v21, "photos_nil_cs_signpost", " enableTelemetry=YES indexState=%{signpost.telemetry:number1}d", buf, 8u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

void __76__SPConcreteCoreSpotlightIndexer__sendPhotosNilClientStateSignpost_retCode___block_invoke(uint64_t a1, int a2, int a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = a2;
  }

  if (a3 >= 7)
  {
    v6 = 7;
  }

  else
  {
    v6 = a3;
  }

  if (a4 >= 7)
  {
    v7 = 7;
  }

  else
  {
    v7 = a4;
  }

  *(*(*(a1 + 32) + 8) + 24) |= v5 << 9;
  *(*(*(a1 + 32) + 8) + 24) |= v6 << 12;
  *(*(*(a1 + 32) + 8) + 24) |= v7 << 15;
  v8 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 32) + 8) + 24);
    v15 = 136315394;
    v16 = "photos_nil_cs_signpost";
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Emitting %s signpost with sid: %d", &v15, 0x12u);
  }

  v11 = logForCSSignpostPhotosNilCS(v10);
  v12 = logForCSSignpostPhotosNilCS(v11);
  v13 = os_signpost_id_generate(v12);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 32) + 8) + 24);
    v15 = 67109120;
    LODWORD(v16) = v14;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v11, OS_SIGNPOST_EVENT, v13, "photos_nil_cs_signpost", " enableTelemetry=YES indexState=%{signpost.telemetry:number1}d", &v15, 8u);
  }
}

- (void)fetchLastClientStateForBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  v13 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SPConcreteCoreSpotlightIndexer fetchLastClientStateForBundleID:clientStateName:options:completionHandler:];
  }

  v14 = sIndexQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke;
  v19[3] = &unk_278935E90;
  v24 = (optionsCopy & 0x20000) != 0;
  v20 = dCopy;
  selfCopy = self;
  v22 = nameCopy;
  v23 = handlerCopy;
  v15 = nameCopy;
  v16 = handlerCopy;
  v17 = dCopy;
  v18 = _setup_block(v19, 0, 12874);
  dispatch_async(v14, v18);
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) length])
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 56);
    if (v5 == 1)
    {
      v7 = -2009;
    }

    else
    {
      v7 = -1;
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:v7 userInfo:0];
    (*(v6 + 16))(v6, 0, v23);
    goto LABEL_23;
  }

  v2 = (a1 + 40);
  [*(a1 + 40) readyIndex:1];
  v3 = *(a1 + 40);
  if (*(v3 + 19))
  {
    if ((v3[24] & 1) == 0 && (v3[26] & 1) == 0)
    {
      v4 = 0;
      goto LABEL_14;
    }
  }

  else if (!*(v3 + 20) && v3[96] != 1)
  {
    goto LABEL_20;
  }

  if (!_os_feature_enabled_impl() || (v8 = *MEMORY[0x277CCA190], ([*(*v2 + 24) isEqualToString:*MEMORY[0x277CCA190]] & 1) == 0))
  {
LABEL_20:
    v18 = *(a1 + 56);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v18 + 16))(v18, 0, v23);
LABEL_23:

    return;
  }

  v3 = *v2;
  if (*(*v2 + 19))
  {
LABEL_13:
    v4 = 1;
LABEL_14:
    if (!*(v3 + 20))
    {
LABEL_15:
      v9 = [v3 dataclass];
      v10 = SDTraceAdd(3, @"FetchClientState start", -1, v9, *(a1 + 32), 0.0);
      v11 = [objc_opt_class() _stateInfoAttributeNameWithClientStateName:*(a1 + 48)];
      v12 = *(a1 + 40);
      v13 = *(v12 + 152);
      if (!v13)
      {
        v13 = *(v12 + 160);
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_2;
      v24[3] = &unk_278935E68;
      v25 = *(a1 + 32);
      v26 = v11;
      v31 = v4;
      v32 = *(a1 + 64);
      v14 = *(a1 + 56);
      v15 = *(a1 + 40);
      v29 = v14;
      v30 = v10;
      v27 = v15;
      v28 = v9;
      v16 = v9;
      v17 = v11;
      SIBackgroundOpBlock(v13, 9, v24);

      goto LABEL_18;
    }

    goto LABEL_42;
  }

  if (*(v3 + 20))
  {
LABEL_27:
    if (*(v3 + 20))
    {
      v4 = 1;
      goto LABEL_15;
    }

LABEL_42:
    __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_cold_2();
  }

  v19 = _os_feature_enabled_impl();
  if (v19 && (v19 = [*(*v2 + 24) isEqualToString:v8], (v19 & 1) != 0))
  {
    [*v2 openJWLIndex];
    v3 = *v2;
    if (*(*v2 + 20))
    {
      if (*(v3 + 19))
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

    v22 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_5();
    }
  }

  else
  {
    v20 = logForCSLogCategoryIndex(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_2();
    }
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v21 + 16))(v21, 0, v17);
LABEL_18:
  }
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 64);
    if (*(a1 + 81) == 1)
    {
      v5 = -2013;
    }

    else
    {
      v5 = -1;
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:v5 userInfo:0];
    (*(v4 + 16))(v4, 0, v6);
  }

  else
  {
    v7 = *(a1 + 32);
    v9 = *(a1 + 64);
    v8 = *(a1 + 56);
    SIFetchCSClientState();
  }
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2;
    if (a3)
    {
      __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_3_cold_1();
    }

    v6 = v5;
    v7 = logForCSLogCategoryIndex(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *&v8 = COERCE_DOUBLE([v6 length]);
      v9 = *(a1 + 32);
      *buf = 134218242;
      v40 = *&v8;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "#index fetch state dataLen:%ld bundle:%@", buf, 0x16u);
    }

    if ([v6 length])
    {
      v10 = @"ClientState complete";
    }

    else
    {
      v10 = @"ClientState empty data";
    }

    SDTraceAdd(3, v10, *(a1 + 72), *(a1 + 48), *(a1 + 32), 0.0);
    if (![v6 length] && objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.mobileslideshow"))
    {
      [*(a1 + 40) _sendPhotosNilClientStateSignpost:*(a1 + 64) retCode:0];
    }

    v38 = 0;
    v37 = 0;
    v36 = 0;
    v11 = [*(a1 + 40) checkAdmission:*(a1 + 32) background:0 didBeginThrottle:&v38 + 1 didEndThrottle:&v38 live:&v37 + 1 slow:&v37 memoryPressure:&v36];
    if (v37 == 1)
    {
      v12 = logForCSLogCategoryIndex(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v6 length];
        v14 = 0.01;
        v15 = 1.0;
        if (v13)
        {
          v15 = 0.01;
        }

        if (!HIBYTE(v37))
        {
          v14 = 0.1;
        }

        *buf = 134217984;
        v40 = v15 + v14;
        _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, "Slow client state fetch reply by %f seconds", buf, 0xCu);
      }

      v16 = [v6 length];
      v17 = 0.01;
      v18 = 1.0;
      if (v16)
      {
        v18 = 0.01;
      }

      if (!HIBYTE(v37))
      {
        v17 = 0.1;
      }

      v19 = dispatch_time(0, ((v18 + v17) * 1000000000.0));
      v20 = *(*(a1 + 40) + 176);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_1569;
      block[3] = &unk_278935310;
      v34 = *(a1 + 56);
      v32 = v6;
      v35 = HIBYTE(v38);
      v30 = *(a1 + 32);
      v21 = v30.i64[0];
      v33 = vextq_s8(v30, v30, 8uLL);
      dispatch_after(v19, v20, block);

      v22 = v34;
    }

    else
    {
      (*(*(a1 + 56) + 16))();
      if (v38 != 1)
      {
LABEL_33:

        return;
      }

      v26 = [*(a1 + 40) owner];
      v22 = [v26 extensionDelegate];

      if (v22)
      {
        v27 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:5 jobOptions:0];
        [v22 indexRequestsPerformJob:v27 forBundle:*(a1 + 32) completionHandler:0];
      }
    }

    goto LABEL_33;
  }

  v23 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    *buf = 138412546;
    v40 = v24;
    v41 = 1024;
    LODWORD(v42) = a3;
    _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEFAULT, "SIFetchCSClientState nil for bundleID:%@ retCode:%d", buf, 0x12u);
  }

  if (*(a1 + 80))
  {
    if (a3 > 1)
    {
      switch(a3)
      {
        case 2:
          v25 = -2011;
          goto LABEL_48;
        case 3:
          v25 = -2012;
          goto LABEL_48;
        case 4:
          v25 = -2013;
          goto LABEL_48;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v25 = -2010;
        goto LABEL_48;
      }

      if (!a3)
      {
        __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_3_cold_2();
      }
    }

    v25 = -1;
LABEL_48:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:v25 userInfo:0];
    (*(*(a1 + 56) + 16))();
    if ([*(a1 + 32) isEqualToString:@"com.apple.mobileslideshow"])
    {
      [*(a1 + 40) _sendPhotosNilClientStateSignpost:*(a1 + 64) retCode:a3];
    }

    goto LABEL_33;
  }

  v28 = *(a1 + 56);
  if (a3 == 4)
  {
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    (*(v28 + 16))(v28, 0, v29);
  }

  else
  {
    (*(v28 + 16))(*(a1 + 56), 0, 0);
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.mobileslideshow"])
  {
    [*(a1 + 40) _sendPhotosNilClientStateSignpost:*(a1 + 64) retCode:a3];
  }
}

void __108__SPConcreteCoreSpotlightIndexer_fetchLastClientStateForBundleID_clientStateName_options_completionHandler___block_invoke_1569(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 40) owner];
    v4 = [v2 extensionDelegate];

    if (v4)
    {
      v3 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:4 jobOptions:0];
      [v4 indexRequestsPerformJob:v3 forBundle:*(a1 + 48) completionHandler:0];
    }
  }
}

- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state forBundleID:(id)d
{
  if (state == 2)
  {
    [(SPConcreteCoreSpotlightIndexer *)self indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:ds clientState:0 expectedClientState:0 clientStateName:0 forBundleID:d options:0 completionHandler:0, v5, v6];
  }
}

- (void)fetchCacheFileDescriptorsForBundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completionHandler:(id)handler
{
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  handlerCopy = handler;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"fetchCacheFileDescriptors"])
    {
      v15 = *MEMORY[0x277CC22E8];
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      if (handlerCopy)
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:-1000 userInfo:0];
        handlerCopy[2](handlerCopy, 0, v17);
      }

      goto LABEL_15;
    }

    v18 = objc_autoreleasePoolPush();
    if (self->_index && [dCopy length])
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __115__SPConcreteCoreSpotlightIndexer_fetchCacheFileDescriptorsForBundleID_identifiers_userCtx_flags_completionHandler___block_invoke;
      v20[3] = &unk_278935EB8;
      handlerCopy = handlerCopy;
      v21 = handlerCopy;
      v19 = MEMORY[0x2383760E0](v20);
      if (!SIGetCacheFileDescriptors())
      {

        handlerCopy = 0;
      }
    }

    objc_autoreleasePoolPop(v18);
  }

  if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v16);
LABEL_15:
  }
}

- (void)fetchAttributes:(id)attributes bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completionHandler:(id)handler
{
  attributesCopy = attributes;
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  handlerCopy = handler;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"fetchAttributes"])
    {
      v18 = *MEMORY[0x277CC22E8];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      if (handlerCopy)
      {
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:v18 code:-1000 userInfo:0];
        handlerCopy[2](handlerCopy, 0, v20);
      }

      goto LABEL_15;
    }

    v21 = objc_autoreleasePoolPush();
    if (self->_index && [dCopy length])
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __103__SPConcreteCoreSpotlightIndexer_fetchAttributes_bundleID_identifiers_userCtx_flags_completionHandler___block_invoke;
      v23[3] = &unk_278935EE0;
      handlerCopy = handlerCopy;
      v24 = handlerCopy;
      v22 = MEMORY[0x2383760E0](v23);
      if (!SIGetCSAttributes())
      {

        handlerCopy = 0;
      }
    }

    objc_autoreleasePoolPop(v21);
  }

  if (handlerCopy)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v19);
LABEL_15:
  }
}

- (void)fetchAttributes:(id)attributes bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completion:(id)completion
{
  v9 = *&flags;
  attributesCopy = attributes;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__SPConcreteCoreSpotlightIndexer_fetchAttributes_bundleID_identifiers_userCtx_flags_completion___block_invoke;
  v20[3] = &unk_278935F08;
  v21 = identifiersCopy;
  v22 = attributesCopy;
  v23 = completionCopy;
  v17 = completionCopy;
  v18 = attributesCopy;
  v19 = identifiersCopy;
  [(SPConcreteCoreSpotlightIndexer *)self fetchAttributes:v18 bundleID:d identifiers:v19 userCtx:ctx flags:v9 completionHandler:v20];
}

void __96__SPConcreteCoreSpotlightIndexer_fetchAttributes_bundleID_identifiers_userCtx_flags_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (a2 && !a3)
  {
    v4 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [*(a1 + 32) count], objc_msgSend(v4, "count") - 1 == v5))
    {
      v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v5];
      v6 = [*(a1 + 40) count];
      if (v5)
      {
        v7 = v6;
        v8 = 0;
        do
        {
          v9 = v8 + 1;
          v10 = [v4 objectAtIndexedSubscript:v8 + 1];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v7 == [v10 count])
          {
            v11 = [*(a1 + 32) objectAtIndexedSubscript:v8];
            [v12 setObject:v10 forKeyedSubscript:v11];
          }

          v8 = v9;
        }

        while (v5 != v9);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)attributesForBundleId:(id)id identifier:(id)identifier completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = logForCSLogCategoryIndex(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = idCopy;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "Fetching all the attributes for identifier:%@, bundleID:%@", buf, 0x16u);
  }

  if (idCopy && identifierCopy)
  {
    v12 = identifierCopy;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v11 = completionCopy;
    if (SIGetCSAttributes())
    {
      v11[2](v11, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __78__SPConcreteCoreSpotlightIndexer_attributesForBundleId_identifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v3 = _MDPlistBytesCopyPlistAtIndex()) == 0)
  {
    v7 = 0;
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v7 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] < 2)
  {
    goto LABEL_10;
  }

  v4 = [v7 objectAtIndex:1];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 count])
      {
        v5 = *(a1 + 32);
        v6 = [v4 objectAtIndexedSubscript:0];
        (*(v5 + 16))(v5, v6);

        goto LABEL_12;
      }
    }
  }

LABEL_11:
  (*(*(a1 + 32) + 16))();
LABEL_12:
}

- (void)powerStateChanged
{
  if ((gIsSystemOnBattery & 1) == 0)
  {
    group = dispatch_group_create();
    [(SPConcreteCoreSpotlightIndexer *)self revokeExpiredItems:group activity:0];
    v4 = sIndexQueue;
    v5 = _setup_block(&__block_literal_global_1579, 0, 13023);
    dispatch_group_notify(group, v4, v5);
  }
}

void __51__SPConcreteCoreSpotlightIndexer_powerStateChanged__block_invoke(uint64_t a1)
{
  v1 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "Revoke completed.", v2, 2u);
  }
}

- (BOOL)_shouldNotifyForSearchableItemUpdates:(id)updates
{
  updatesCopy = updates;
  if ([updatesCopy isEqualToString:@"com.apple.mobilemail"])
  {
    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  if ([updatesCopy isEqualToString:@"com.apple.MobileSMS"])
  {
    v5 = _os_feature_enabled_impl();
  }

  else
  {
    v5 = 0;
  }

  v6 = [updatesCopy isEqualToString:@"com.apple.usernotificationsd"];
  if (v6)
  {
    LOBYTE(v6) = _os_feature_enabled_impl();
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 | v6;
  }

  return v7 & 1;
}

- (BOOL)_startInternalQueryWithIndex:(__SI *)index query:(id)query fetchAttributes:(id)attributes forBundleIds:(id)ids maxCount:(unint64_t)count resultsHandler:(id)handler resultQueue:(id)queue postFilter:(id)self0 clientBundleID:(id)self1
{
  v67[2] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  attributesCopy = attributes;
  idsCopy = ids;
  handlerCopy = handler;
  queueCopy = queue;
  filterCopy = filter;
  dCopy = d;
  if (!queueCopy)
  {
    queueCopy = [SPQueryResultsQueue sharedInstanceMaintenanceDispatchQueue:0];
  }

  siResultsQueue = [queueCopy siResultsQueue];
  if (!index || self->_suspended || self->_suspending)
  {
    v23 = logForCSLogCategoryQuery(siResultsQueue);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v36 = "NO";
      suspending = self->_suspending;
      if (self->_suspended)
      {
        v38 = "YES";
      }

      else
      {
        v38 = "NO";
      }

      *buf = 138413058;
      if (suspending)
      {
        v36 = "YES";
      }

      v56 = queryCopy;
      v57 = 2048;
      indexCopy4 = index;
      v59 = 2080;
      v60 = v38;
      v61 = 2080;
      v62 = v36;
      _os_log_error_impl(&dword_231A35000, v23, OS_LOG_TYPE_ERROR, "Failed to execute internal query:%@, index:%p, _suspended:%s, _suspending:%s", buf, 0x2Au);
    }
  }

  else
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"_startInternalQueryWithIndex"])
    {
      v24 = 0;
      goto LABEL_9;
    }

    v46 = idsCopy;
    add = atomic_fetch_add(&gQueryID_0, 1u);
    v26 = SIUserCtxCreateWithLanguages();
    SIUserCtxSetEntitlements();
    v27 = SIQueryCreateWithItems();
    CFRelease(v26);
    if (!v27)
    {
      v23 = logForCSLogCategoryQuery(v28);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v56 = queryCopy;
        v57 = 2048;
        indexCopy4 = index;
        v59 = 2048;
        v60 = add;
        _os_log_error_impl(&dword_231A35000, v23, OS_LOG_TYPE_ERROR, "Failed to create internal query:%@, index:%p, queryID:%ld", buf, 0x20u);
      }

      v24 = 0;
      idsCopy = v46;
      goto LABEL_8;
    }

    dataclass = self->_dataclass;
    v67[0] = @"query";
    v67[1] = dataclass;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:{2, 0, 0, filterCopy, 0, dCopy}];
    SDTransactionCreate(v30);
    v23 = v45 = v27;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v32 = v31;
    idsCopy = v46;
    v33 = SIExecuteQueryWithResultsCallbackForTags();
    if (v33)
    {
      v43 = v33;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __160__SPConcreteCoreSpotlightIndexer__startInternalQueryWithIndex_query_fetchAttributes_forBundleIds_maxCount_resultsHandler_resultQueue_postFilter_clientBundleID___block_invoke;
      v48[3] = &unk_278935F30;
      v51 = handlerCopy;
      v52 = v32;
      v54 = add;
      v41 = queryCopy;
      v49 = v41;
      v53 = v45;
      v23 = v23;
      v50 = v23;
      v42 = [v48 copy];
      v34 = logForCSLogCategoryQuery(v42);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        dataclass = [(SPConcreteCoreSpotlightIndexer *)self dataclass];
        *buf = 138413570;
        v56 = v41;
        v57 = 2048;
        indexCopy4 = index;
        v59 = 2048;
        v60 = v45;
        v61 = 2048;
        v62 = v43;
        v63 = 2048;
        v64 = add;
        v65 = 2112;
        v66 = dataclass;
        _os_log_debug_impl(&dword_231A35000, v34, OS_LOG_TYPE_DEBUG, "Starting internal query:%@, index:%p, siQuery:%p, siJob:%p, queryID:%ld, dataclass:%@", buf, 0x3Eu);

        idsCopy = v46;
      }

      v35 = [[SPQueryJob alloc] initWithSIJob:v43 dataclass:self->_dataclass eventHandler:0 resultsHandler:v42];
      [queueCopy addJob:v35];
      v24 = v35 != 0;

      goto LABEL_8;
    }

    v39 = logForCSLogCategoryQuery(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v56 = queryCopy;
      v57 = 2048;
      indexCopy4 = index;
      v59 = 2048;
      v60 = v45;
      v61 = 2048;
      v62 = add;
      _os_log_error_impl(&dword_231A35000, v39, OS_LOG_TYPE_ERROR, "Failed to execute query:%@, index:%p, siQuery:%p, queryID:%ld", buf, 0x2Au);
    }

    SIQueryRelease();
    SDTransactionDone(v23);
  }

  v24 = 0;
LABEL_8:

LABEL_9:
  return v24;
}

void __160__SPConcreteCoreSpotlightIndexer__startInternalQueryWithIndex_query_fetchAttributes_forBundleIds_maxCount_resultsHandler_resultQueue_postFilter_clientBundleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, a3, a4, a5, a6);
  }

  if (a3 == 1)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = v13 - *(a1 + 56);
    v15 = [v11 dataclass];
    SDTraceAdd(2, v15, *(a1 + 72), *(a1 + 32), 0, v14);

    v17 = logForCSLogCategoryQuery(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 64);
      v19 = [v11 siJob];
      v20 = *(a1 + 72);
      v21 = 134218752;
      v22 = (v14 * 1000.0);
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      _os_log_debug_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEBUG, "Finished internal query (%lldms), siQuery:%p, siJob:%p, queryID:%ld", &v21, 0x2Au);
    }

    SIQueryRelease();
    SDTransactionDone(*(a1 + 40));
  }
}

- (void)_fetchAccumulatedStorageSizeForBundleId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [SPConcreteCoreSpotlightIndexer _fetchAccumulatedStorageSizeForBundleId:completionHandler:];
  }

  v8 = handlerCopy;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  index = self->_index;
  if (index && !self->_suspended)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __92__SPConcreteCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke;
    v11[3] = &unk_278935F58;
    v11[4] = self;
    v13 = v8;
    v12 = idCopy;
    SIBackgroundOpBlock(index, 0, v11);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v8)[2](v8, 0, v10);
  }
}

void __92__SPConcreteCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  if (!a3 && [*(a1 + 32) index] == a2)
  {
    if (SIGetAccumulatedStorageSizeForBundleId())
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
    }

    else
    {
      v4 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_setOfTokensToCorrect:(id)correct tokenMatchInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = [SPConcreteCoreSpotlightIndexer _lastTokenWithQueryString:correct tokenMatchInfo:infoCopy];
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = v7;
  if (v6)
  {
    v19 = v7;
    v22 = [infoCopy count];
    allKeys = [infoCopy allKeys];
    v10 = [allKeys mutableCopy];

    [v10 removeObject:v6];
    [v10 addObject:v6];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v21 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [infoCopy objectForKeyedSubscript:v15];
          if (+[SPConcreteCoreSpotlightIndexer _spellingCorrectionConditional:isSingleToken:isPreviousTokenCorrected:isLastToken:tokenLength:](SPConcreteCoreSpotlightIndexer, "_spellingCorrectionConditional:isSingleToken:isPreviousTokenCorrected:isLastToken:tokenLength:", [v16 intValue], v22 == 1, v13 & 1, objc_msgSend(v15, "isEqualToString:", v6), objc_msgSend(v15, "length")))
          {
            [v19 addObject:v15];
            v13 = 1;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v8 = v19;
    v17 = [v19 copy];
  }

  else
  {
    v17 = v7;
  }

  return v17;
}

+ (id)_tokensMaxCountFromMatchInfo:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([infoCopy count])
  {
    v33 = 0;
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\S+)cdw" options:1 error:&v33];
    v24 = v33;
    v25 = infoCopy;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = infoCopy;
    v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = *v30;
    v26 = v4;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v4 firstMatchInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 rangeAtIndex:1];
          v14 = [v9 substringWithRange:{v12, v13}];
          if ([v14 length])
          {
            if ([v14 characterAtIndex:{objc_msgSend(v14, "length") - 1}] != 42)
            {
              goto LABEL_12;
            }

            if ([v14 length] != 1)
            {
              v15 = [v14 substringToIndex:{objc_msgSend(v14, "length") - 1}];

              v14 = v15;
LABEL_12:
              v16 = MEMORY[0x277CCABB0];
              v17 = [v27 objectForKeyedSubscript:v14];
              intValue = [v17 intValue];

              v19 = [obj objectForKeyedSubscript:v9];
              intValue2 = [v19 intValue];

              if (intValue <= intValue2)
              {
                v21 = intValue2;
              }

              else
              {
                v21 = intValue;
              }

              v22 = [v16 numberWithInt:v21];
              [v27 setObject:v22 forKeyedSubscript:v14];

              v4 = v26;
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v6)
      {
LABEL_19:

        infoCopy = v25;
        break;
      }
    }
  }

  return v27;
}

+ (id)_sharedSynonyms
{
  if (_sharedSynonyms_onceToken != -1)
  {
    +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
  }

  v3 = _sharedSynonyms_synonyms;

  return v3;
}

uint64_t __49__SPConcreteCoreSpotlightIndexer__sharedSynonyms__block_invoke()
{
  v0 = objc_alloc_init(SDPommesSynonyms);
  v1 = _sharedSynonyms_synonyms;
  _sharedSynonyms_synonyms = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_stringWithRewriteType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_278937348[type - 1];
  }
}

+ (id)_descriptionWithTokenRewrites:(id)rewrites
{
  v36 = *MEMORY[0x277D85DE8];
  rewritesCopy = rewrites;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"{\n"];
  v6 = CSRedactString(v5, 0);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = rewritesCopy;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v30 + 1) + 8 * v7);
        originalToken = [v8 originalToken];
        v10 = CSRedactString(originalToken, 0);
        [v6 appendFormat:@"  %@ -->\n", v10];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        variations = [v8 variations];
        v12 = [variations countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(variations);
              }

              v16 = *(*(&v26 + 1) + 8 * i);
              variation = [v16 variation];
              v18 = CSRedactString(variation, 0);
              v19 = [self _stringWithRewriteType:{objc_msgSend(v16, "type")}];
              v20 = CSRedactString(v19, 0);
              [v6 appendFormat:@"    %@ (%@)\n", v18, v20];
            }

            v13 = [variations countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v13);
        }

        v7 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  [v6 appendString:@"}"];

  return v6;
}

+ (BOOL)_spellingCorrectionConditional:(int)conditional isSingleToken:(BOOL)token isPreviousTokenCorrected:(BOOL)corrected isLastToken:(BOOL)lastToken tokenLength:(unint64_t)length
{
  v7 = conditional < 3 && lastToken;
  v8 = v7 & ~(token || corrected);
  if (length <= 3)
  {
    v8 = 0;
  }

  return !conditional || v8;
}

+ (id)_lastTokenWithQueryString:(id)string tokenMatchInfo:(id)info
{
  v27 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  infoCopy = info;
  if ([infoCopy count] && objc_msgSend(stringCopy, "length"))
  {
    v7 = [stringCopy length];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = infoCopy;
    obj = [infoCopy allKeys];
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      v12 = -1;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        lowercaseString = [stringCopy lowercaseString];
        v16 = [lowercaseString rangeOfString:v14 options:4 range:{0, v7}];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v16 > v12)
          {
            v17 = v14;

            v10 = v17;
            v12 = v16;
          }

          v18 = [v14 length] + v16;
          if (v18 >= [stringCopy length])
          {
            break;
          }
        }

        if (v9 == ++v13)
        {
          v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    infoCopy = v20;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_indexIndependentTokenRewritesWithMatchInfo:(id)info queryID:(int64_t)d setOfTokensToCorrect:(id)correct
{
  v5 = MEMORY[0x277CBEB18];
  infoCopy = info;
  v7 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__SPConcreteCoreSpotlightIndexer__indexIndependentTokenRewritesWithMatchInfo_queryID_setOfTokensToCorrect___block_invoke;
  v10[3] = &unk_278935F80;
  v8 = v7;
  v11 = v8;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v10];

  return v8;
}

void __107__SPConcreteCoreSpotlightIndexer__indexIndependentTokenRewritesWithMatchInfo_queryID_setOfTokensToCorrect___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = SDPommesStemWord(v3, 100);
  if ([v5 length] >= 3)
  {
    v6 = objc_alloc(MEMORY[0x277D286C0]);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@*", v5];
    LODWORD(v8) = 1060320051;
    v9 = [v6 initWithVariation:v7 type:3 confidence:v8];

    [v4 addObject:v9];
  }

  v10 = +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
  v11 = [v10 getSecondPassSynonymsForWord:v3];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        v18 = objc_alloc(MEMORY[0x277D286C0]);
        LODWORD(v19) = 1050253722;
        v20 = [v18 initWithVariation:v17 type:4 confidence:v19];
        [v4 addObject:v20];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  if ([v4 count])
  {
    v21 = *(a1 + 32);
    v22 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v3 variations:v4];
    [v21 addObject:v22];
  }
}

+ (id)_getBundleIndexesFrom:(id)from
{
  v36 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = fromCopy;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v31 + 1) + 8 * i) cStringUsingEncoding:4];
        v11 = strlen(v10);
        v12 = v11 + 1;
        if (v11 >= -1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v11 + 4;
        }

        v14 = &v10[v13 & 0xFFFFFFFC];
        if ((v11 + 4) >= 7)
        {
          v18 = -(v13 >> 2);
          v19 = -1789642873;
          v20 = 718793509;
          v17 = -1759636613;
          do
          {
            v19 = 5 * v19 + 2071795100;
            v20 = 5 * v20 + 1808688022;
            HIDWORD(v21) = v19 * *&v14[4 * v18];
            LODWORD(v21) = HIDWORD(v21);
            v22 = (v21 >> 21) * v20;
            HIDWORD(v21) = v17;
            LODWORD(v21) = v17;
            v17 = v22 ^ (5 * (v21 >> 19) + 1390208809);
          }

          while (!__CFADD__(v18++, 1));
          v16 = 5 * v19 + 2071795100;
          v15 = 5 * v20 + 1808688022;
        }

        else
        {
          v15 = 1107688271;
          v16 = 1713515327;
          v17 = -1759636613;
        }

        v24 = 0;
        if ((v12 & 3u) > 1)
        {
          if ((v12 & 3) != 2)
          {
            v24 = *(v14 + 2) << 16;
          }

          v24 |= *(v14 + 1) << 8;
LABEL_21:
          HIDWORD(v25) = (v24 ^ *v14) * v16;
          LODWORD(v25) = HIDWORD(v25);
          v26 = (v25 >> 21) * v15;
          HIDWORD(v25) = v17;
          LODWORD(v25) = v17;
          v17 = v26 ^ (5 * (v25 >> 19) + 1390208809);
          goto LABEL_22;
        }

        if ((v12 & 3) != 0)
        {
          goto LABEL_21;
        }

LABEL_22:
        v27 = -1028477387 * ((-2048144789 * (v17 ^ v12)) ^ ((-2048144789 * (v17 ^ v12)) >> 13));
        v28 = CFStringCreateWithFormat(v8, 0, @"%d", v27 & 0x7FFFFFFF ^ HIWORD(v27));
        [v4 addObject:v28];
        CFRelease(v28);
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)_indexDependentTokenRewritesWithMatchInfo:(id)info topK:(id)k setOfTokensToCorrect:(id)correct queryID:(int64_t)d bundleIds:(id)ids clientBundleId:(id)id
{
  kCopy = k;
  correctCopy = correct;
  idsCopy = ids;
  idCopy = id;
  infoCopy = info;
  v17 = logForCSLogCategoryDefault(infoCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    +[SPConcreteCoreSpotlightIndexer _indexDependentTokenRewritesWithMatchInfo:topK:setOfTokensToCorrect:queryID:bundleIds:clientBundleId:];
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __135__SPConcreteCoreSpotlightIndexer__indexDependentTokenRewritesWithMatchInfo_topK_setOfTokensToCorrect_queryID_bundleIds_clientBundleId___block_invoke;
  v27[3] = &unk_278935FA8;
  v28 = correctCopy;
  v29 = idsCopy;
  v30 = kCopy;
  v31 = idCopy;
  v19 = v18;
  v32 = v19;
  v20 = idCopy;
  v21 = kCopy;
  v22 = idsCopy;
  v23 = correctCopy;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v27];

  v24 = v32;
  v25 = v19;

  return v19;
}

void __135__SPConcreteCoreSpotlightIndexer__indexDependentTokenRewritesWithMatchInfo_topK_setOfTokensToCorrect_queryID_bundleIds_clientBundleId___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([*(a1 + 32) containsObject:v3])
  {
    if (*(a1 + 40))
    {
      v5 = [SPConcreteCoreSpotlightIndexer _getBundleIndexesFrom:?];
    }

    else
    {
      v6 = [*(a1 + 48) allKeys];
      v7 = v6;
      if (v6 && [v6 count])
      {
        v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v7];
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = *(a1 + 56);
    if (v8 && ![v8 isEqualToString:@"com.apple.spotlight"])
    {
      v28 = 0;
    }

    else
    {
      v28 = &unk_2846C95F0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v5;
    v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v29)
    {
      v27 = *v35;
      do
      {
        v9 = 0;
        do
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v10 = a1;
          v11 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v34 + 1) + 8 * v9)];
          v12 = v3;
          v13 = [v3 lowercaseString];
          v14 = SDPommesCorrectionsWithTopKAndToken(v11, v13, v28);

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            do
            {
              v19 = 0;
              do
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v30 + 1) + 8 * v19);
                v21 = objc_alloc(MEMORY[0x277D286C0]);
                LODWORD(v22) = 1057132380;
                v23 = [v21 initWithVariation:v20 type:2 confidence:v22];
                [v4 addObject:v23];

                ++v19;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v17);
          }

          ++v9;
          v3 = v12;
          a1 = v10;
        }

        while (v9 != v29);
        v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v29);
    }
  }

  if ([v4 count])
  {
    v24 = *(a1 + 64);
    v25 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v3 variations:v4];
    [v24 addObject:v25];
  }
}

- (void)indexDependentTokenRewritesWithQueryString:(id)string context:(id)context matchInfo:(id)info setOfTokensToCorrect:(id)correct tokenRewritesHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  infoCopy = info;
  correctCopy = correct;
  handlerCopy = handler;
  queryID = [contextCopy queryID];
  v18 = logForCSLogCategoryDefault(queryID);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    dataclass = self->_dataclass;
    v24 = CSRedactString(stringCopy, 0);
    *buf = 134218498;
    v29 = queryID;
    v30 = 2112;
    v31 = dataclass;
    v32 = 2112;
    v33 = v24;
    _os_log_debug_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEBUG, "[qid=%ld][%@][rewrite] rewriteQueryWithQueryString=%@", buf, 0x20u);
  }

  [(SPConcreteCoreSpotlightIndexer *)self index];
  v25 = contextCopy;
  v26 = correctCopy;
  v27 = infoCopy;
  v19 = handlerCopy;
  v20 = infoCopy;
  v21 = correctCopy;
  v22 = contextCopy;
  SIFetchTopKTerms();
}

void __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  PlistObjectType = objc_opt_new();
  v33 = PlistObjectType;
  if (a2)
  {
    memset(buf, 0, sizeof(buf));
    _MDPlistGetRootPlistObjectFromPlist();
    PlistObjectType = _MDPlistGetPlistObjectType();
    if (PlistObjectType == 241)
    {
      v5 = [*(a1 + 32) bundleIDs];
      v6 = [SPConcreteCoreSpotlightIndexer _getBundleIndexesFrom:v5];

      v26 = v6;
      v27 = *(a1 + 40);
      _MDPlistDictionaryIterate();
    }
  }

  v7 = logForCSLogCategoryDefault(PlistObjectType);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 72);
    v20 = *(*(a1 + 48) + 192);
    v21 = [v29[5] count];
    v22 = v35[3];
    *buf = 134218754;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    *&buf[22] = 2048;
    v39 = v21;
    v40 = 2048;
    v41 = v22;
    _os_log_debug_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEBUG, "[qid=%ld][%@][rewrite] number of topK terms that are inflated in memory from plist: bundleCount=%lu, termCount=%lu", buf, 0x2Au);
  }

  v8 = *(a1 + 56);
  v9 = v29[5];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) queryID];
  v12 = [*(a1 + 32) bundleIDs];
  v13 = [*(a1 + 32) clientBundleID];
  v14 = [SPConcreteCoreSpotlightIndexer _indexDependentTokenRewritesWithMatchInfo:v8 topK:v9 setOfTokensToCorrect:v10 queryID:v11 bundleIds:v12 clientBundleId:v13];

  v16 = logForCSLogCategoryDefault(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 72);
    v24 = *(*(a1 + 48) + 192);
    v25 = [v14 count];
    *buf = 134218498;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    *&buf[22] = 2048;
    v39 = v25;
    _os_log_debug_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEBUG, "[qid=%ld][%@][rewrite] indexDependentTokenRewritesWithQueryString found %lu rewrites", buf, 0x20u);
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v14, v17, v18);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
}

void __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if (![*(a1 + 32) count] || objc_msgSend(*(a1 + 32), "containsObject:", v6))
  {
    v10 = *a4;
    v11 = *(a4 + 2);
    if (_MDPlistGetPlistObjectType() == 241)
    {
      *&v10 = 0;
      *(&v10 + 1) = &v10;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__0;
      v13 = __Block_byref_object_dispose__0;
      v14 = objc_opt_new();
      v9 = *(a1 + 40);
      v7 = *a4;
      v8 = *(a4 + 2);
      _MDPlistDictionaryIterate();
      if ([*(*(&v10 + 1) + 40) count])
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:*(*(&v10 + 1) + 40) forKeyedSubscript:v6];
        *(*(*(a1 + 56) + 8) + 24) += [*(*(&v10 + 1) + 40) count];
      }

      _Block_object_dispose(&v10, 8);
    }
  }
}

void __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a2 && verifyCandidateLength(a3))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_4;
    v11[3] = &unk_278935FD0;
    v11[4] = &v12;
    v11[5] = a2;
    [v7 enumerateObjectsUsingBlock:v11];
    if (v13[3])
    {
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{_MDPlistNumberGetIntValue(), *a4, *(a4 + 1), *(a4 + 2)}];
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }

    _Block_object_dispose(&v12, 8);
  }
}

BOOL __137__SPConcreteCoreSpotlightIndexer_indexDependentTokenRewritesWithQueryString_context_matchInfo_setOfTokensToCorrect_tokenRewritesHandler___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  result = isCandidate(*(a1 + 40), a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)transferDeleteJournalsToDirectory:(int)directory completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (!self->_index || self->_suspended || self->_readOnly)
  {
    v8 = logForCSLogCategoryDefault(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      index = self->_index;
      suspended = self->_suspended;
      readOnly = self->_readOnly;
      *buf = 134218496;
      v20 = index;
      v21 = 1024;
      v22 = suspended;
      v23 = 1024;
      v24 = readOnly;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "transferDeleteJournalsToDirectory failed: index:%p suspended:%d readOnly:%d", buf, 0x18u);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    if (![(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"transferDeleteJournalsToDirectory"])
    {
      v15 = self->_index;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __86__SPConcreteCoreSpotlightIndexer_transferDeleteJournalsToDirectory_completionHandler___block_invoke;
      v16[3] = &unk_278936098;
      v17 = handlerCopy;
      directoryCopy = directory;
      SIBackgroundOpBlock(v15, 0, v16);

      goto LABEL_8;
    }

    v13 = *MEMORY[0x277CC22E8];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    if (handlerCopy)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:-1000 userInfo:0];
      handlerCopy[2](handlerCopy, v14);
    }
  }

LABEL_8:
}

void __86__SPConcreteCoreSpotlightIndexer_transferDeleteJournalsToDirectory_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    SITransferDeletionJournals();
  }
}

void __86__SPConcreteCoreSpotlightIndexer_transferDeleteJournalsToDirectory_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (id)purgeableIndexTouchFilePath
{
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v3 = [_indexPath stringByAppendingPathComponent:@"purgeableIndexMarker"];

  return v3;
}

- (void)_createPurgeableTouchFile
{
  OUTLINED_FUNCTION_6();
  __error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (BOOL)_removePurgeableTouchFile
{
  purgeableIndexTouchFilePath = [(SPConcreteCoreSpotlightIndexer *)self purgeableIndexTouchFilePath];
  v3 = open([purgeableIndexTouchFilePath fileSystemRepresentation], 0, 438);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
    fileSystemRepresentation = [purgeableIndexTouchFilePath fileSystemRepresentation];
    v7 = remove(fileSystemRepresentation, v6);
    if (v7)
    {
      v8 = logForCSLogCategoryDefault(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer _removePurgeableTouchFile];
      }
    }
  }

  return v4 >= 0;
}

- (BOOL)_hasPurgeableTouchFile
{
  purgeableIndexTouchFilePath = [(SPConcreteCoreSpotlightIndexer *)self purgeableIndexTouchFilePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:purgeableIndexTouchFilePath];

  return v4;
}

- (int64_t)getIndexDirectorySize:(id)size
{
  v25 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v5 = opendir([sizeCopy UTF8String]);
  v6 = logForCSLogCategoryIndex(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SPConcreteCoreSpotlightIndexer getIndexDirectorySize:];
    }

    v8 = readdir(v5);
    for (i = 0; v8; v8 = readdir(v5))
    {
      d_name = v8->d_name;
      if (v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2]))
      {
        memset(&v20, 0, sizeof(v20));
        v11 = dirfd(v5);
        v12 = fstatat(v11, d_name, &v20, 32);
        if ((v12 & 0x80000000) != 0)
        {
          v16 = logForCSLogCategoryIndex(v12);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = __error();
            v18 = strerror(*v17);
            *buf = 136315394;
            v22 = d_name;
            v23 = 2080;
            v24 = v18;
            _os_log_error_impl(&dword_231A35000, v16, OS_LOG_TYPE_ERROR, "Failed to obtain index file info:%s (%s)", buf, 0x16u);
          }
        }

        else
        {
          if ((v20.st_mode & 0xF000) == 0x4000)
          {
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:d_name];
            v14 = [sizeCopy stringByAppendingPathComponent:v13];

            st_size = [(SPConcreteCoreSpotlightIndexer *)self getIndexDirectorySize:v14];
          }

          else
          {
            st_size = v20.st_size;
          }

          i += st_size;
        }
      }
    }

    closedir(v5);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer getIndexDirectorySize:];
    }

    i = 0;
  }

  return i;
}

- (BOOL)_shouldPurge
{
  _indexPath = [(SPConcreteCoreSpotlightIndexer *)self _indexPath];
  v4 = [(SPConcreteCoreSpotlightIndexer *)self getIndexDirectorySize:_indexPath];

  return v4 > 3221225471;
}

- (void)markDirectoryAtomicallyPurgeable:(id)purgeable purgeableOrNot:(BOOL)not
{
  notCopy = not;
  v60 = *MEMORY[0x277D85DE8];
  purgeableCopy = purgeable;
  v6 = opendir([purgeableCopy UTF8String]);
  if (v6)
  {
    v7 = v6;
    v8 = dirfd(v6);
    v9 = v8;
    v10 = 98309;
    if (!notCopy)
    {
      v10 = 0;
    }

    v23 = v10;
    v11 = ffsctl(v8, 0xC0084A44uLL, &v23, 0);
    v12 = v11;
    v13 = logForCSLogCategoryIndex(v11);
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        if (notCopy)
        {
          v15 = "mark";
        }

        else
        {
          v15 = "clear";
        }

        v16 = *__error();
        buf = 136315906;
        *buf_4 = v15;
        *&buf_4[8] = 2112;
        *&buf_4[10] = purgeableCopy;
        *&buf_4[18] = 1024;
        *&buf_4[20] = v9;
        *&buf_4[24] = 1024;
        *&buf_4[26] = v16;
        _os_log_error_impl(&dword_231A35000, v14, OS_LOG_TYPE_ERROR, "Failed to %s index directory %@ atomically purgable. fd:%d errno:%d", &buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "Cleared";
      buf = 136315650;
      if (notCopy)
      {
        v18 = "Marked";
      }

      *buf_4 = v18;
      *&buf_4[8] = 2112;
      *&buf_4[10] = purgeableCopy;
      *&buf_4[18] = 2048;
      *&buf_4[20] = v23;
      _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEFAULT, "%s index directory %@ atomically purgable. flags=0x%llx", &buf, 0x20u);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *buf_4 = 0;
    memset(&buf_4[12], 0, 32);
    buf = 3;
    *&buf_4[4] = 1;
    v19 = ffsctl(v9, 0xC1104A71uLL, &buf, 0);
    v20 = v19;
    v21 = logForCSLogCategoryIndex(v19);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SPConcreteCoreSpotlightIndexer markDirectoryAtomicallyPurgeable:purgeableOrNot:];
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 67111426;
      v25 = buf;
      v26 = 2048;
      v27 = *&buf_4[4];
      v28 = 2048;
      v29 = *&buf_4[28];
      v30 = 2048;
      v31 = v46;
      v32 = 2048;
      v33 = *(&v46 + 1);
      v34 = 2048;
      v35 = v47;
      v36 = 2048;
      v37 = *(&v47 + 1);
      v38 = 2048;
      v39 = v48;
      v40 = 1024;
      v41 = BYTE8(v48);
      v42 = 2112;
      v43 = purgeableCopy;
      _os_log_debug_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEBUG, "Getting dir stats version:%d flags:0x%llx dir_stats_id:%llu gen_count:%llu descendants:%llu physical_size:%llu clone_size:%llu purgeable_size:%llu purgeable_urgency:%d.%@", v24, 0x5Eu);
    }

    closedir(v7);
  }

  else
  {
    v17 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer getIndexDirectorySize:];
    }
  }
}

- (void)closeCache:(id)cache
{
  cacheCopy = cache;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"closeCache"])
    {
      if (cacheCopy)
      {
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2006 userInfo:0];
        cacheCopy[2](cacheCopy, 0, v5);
      }
    }

    else
    {
      index = self->_index;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __45__SPConcreteCoreSpotlightIndexer_closeCache___block_invoke;
      v7[3] = &unk_2789360C0;
      v7[4] = self;
      v8 = cacheCopy;
      SISynchedOpWithBlock(index, 2, v7);
    }
  }
}

void __45__SPConcreteCoreSpotlightIndexer_closeCache___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2007 userInfo:0];
      (*(v4 + 16))(v4, 0, v8);
    }
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SPConcreteCoreSpotlightIndexer_closeCache___block_invoke_2;
    v9[3] = &unk_2789348E8;
    v9[4] = *(a1 + 32);
    v5 = [v9 copy];
    if (!SICloseCache())
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2008 userInfo:0];
        (*(v6 + 16))(v6, 0, v7);
      }

      CFRelease(v5);
    }
  }
}

- (void)cacheEntryForKeys:(id)keys bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  keysCopy = keys;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"cacheEntryForKeys"])
    {
      if (handlerCopy)
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CC22E8];
        v16 = -2006;
LABEL_15:
        v21 = [v14 errorWithDomain:v15 code:v16 userInfo:{0, v22, v23, v24, v25}];
        handlerCopy[2](handlerCopy, 0, v21);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v17 = objc_autoreleasePoolPush();
    if (self->_index && [dCopy length])
    {
      v18 = dispatch_group_create();
      dispatch_group_enter(v18);
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __95__SPConcreteCoreSpotlightIndexer_cacheEntryForKeys_bundleID_protectionClass_completionHandler___block_invoke;
      v25 = &unk_2789360E8;
      handlerCopy = handlerCopy;
      v27 = handlerCopy;
      v19 = v18;
      v26 = v19;
      v20 = MEMORY[0x2383760E0](&v22);
      if (!SIGetCacheEntry())
      {

        handlerCopy = 0;
      }

      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    }

    objc_autoreleasePoolPop(v17);
  }

  if (handlerCopy)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CC22E8];
    v16 = -2008;
    goto LABEL_15;
  }

LABEL_16:
}

void __95__SPConcreteCoreSpotlightIndexer_cacheEntryForKeys_bundleID_protectionClass_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = _MDPlistBytesCopyPlistAtIndex();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
    {
      if (v4)
      {
        v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:0];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v3 = 0;
  v4 = 0;
LABEL_8:
  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

- (void)cacheInsertForKey:(id)key value:(id)value bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  keyCopy = key;
  valueCopy = value;
  dCopy = d;
  handlerCopy = handler;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"cacheInsertForKey"])
    {
      if (handlerCopy)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2006 userInfo:0];
        handlerCopy[2](handlerCopy, 0, v15);
      }
    }

    else
    {
      index = self->_index;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __101__SPConcreteCoreSpotlightIndexer_cacheInsertForKey_value_bundleID_protectionClass_completionHandler___block_invoke;
      v17[3] = &unk_278936110;
      v22 = handlerCopy;
      v18 = dCopy;
      v19 = valueCopy;
      v20 = keyCopy;
      selfCopy = self;
      SISynchedOpWithBlock(index, 2, v17);
    }
  }
}

void __101__SPConcreteCoreSpotlightIndexer_cacheInsertForKey_value_bundleID_protectionClass_completionHandler___block_invoke(void *a1, uint64_t a2, int a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a1[8];
    if (v4)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2007 userInfo:0];
      (*(v4 + 16))(v4, 0);
    }
  }

  else
  {
    v5 = &stru_2846BD100;
    v6 = a1[5];
    if (a1[4])
    {
      v5 = a1[4];
    }

    v14[0] = @"_kMDItemBundleID";
    v14[1] = v6;
    v7 = a1[6];
    v15[0] = v5;
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__SPConcreteCoreSpotlightIndexer_cacheInsertForKey_value_bundleID_protectionClass_completionHandler___block_invoke_2;
    v13[3] = &unk_2789348E8;
    v13[4] = a1[7];
    v9 = [v13 copy];
    if (!SISetCacheEntry())
    {
      v10 = a1[8];
      if (v10)
      {
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2008 userInfo:0];
        (*(v10 + 16))(v10, 0, v11);
      }

      CFRelease(v9);
    }
  }
}

- (void)cacheDeleteForKey:(id)key value:(id)value bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  keyCopy = key;
  valueCopy = value;
  dCopy = d;
  handlerCopy = handler;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"cacheDeleteForKey"])
    {
      if (handlerCopy)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2006 userInfo:0];
        handlerCopy[2](handlerCopy, 0, v15);
      }
    }

    else
    {
      index = self->_index;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __101__SPConcreteCoreSpotlightIndexer_cacheDeleteForKey_value_bundleID_protectionClass_completionHandler___block_invoke;
      v17[3] = &unk_278936110;
      v22 = handlerCopy;
      v18 = dCopy;
      v19 = valueCopy;
      v20 = keyCopy;
      selfCopy = self;
      SISynchedOpWithBlock(index, 2, v17);
    }
  }
}

void __101__SPConcreteCoreSpotlightIndexer_cacheDeleteForKey_value_bundleID_protectionClass_completionHandler___block_invoke(void *a1, uint64_t a2, int a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a1[8];
    if (v4)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2007 userInfo:0];
      (*(v4 + 16))(v4, 0);
    }
  }

  else
  {
    v5 = &stru_2846BD100;
    v6 = a1[5];
    if (a1[4])
    {
      v5 = a1[4];
    }

    v14[0] = @"_kMDItemBundleID";
    v14[1] = v6;
    v7 = a1[6];
    v15[0] = v5;
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__SPConcreteCoreSpotlightIndexer_cacheDeleteForKey_value_bundleID_protectionClass_completionHandler___block_invoke_2;
    v13[3] = &unk_2789348E8;
    v13[4] = a1[7];
    v9 = [v13 copy];
    if (!SIDeleteCacheEntry())
    {
      v10 = a1[8];
      if (v10)
      {
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2008 userInfo:0];
        (*(v10 + 16))(v10, 0, v11);
      }

      CFRelease(v9);
    }
  }
}

- (void)spotlightCacheFileDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  [(SPConcreteCoreSpotlightIndexer *)self readyIndex:0];
  if (self->_index && !self->_suspended && !self->_suspending)
  {
    if ([(SPConcreteCoreSpotlightIndexer *)self denyOperationOnAssertedIndex:"spotlightCacheFileDescriptor"])
    {
      if (handlerCopy)
      {
        v8 = MEMORY[0x277CCA9B8];
        v9 = *MEMORY[0x277CC22E8];
        v10 = -2006;
LABEL_14:
        v19 = [v8 errorWithDomain:v9 code:v10 userInfo:{0, v20, v21, v22, v23}];
        handlerCopy[2](handlerCopy, 0, v19);

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = objc_autoreleasePoolPush();
    if (self->_index)
    {
      v12 = xpc_dictionary_get_remote_connection(descriptorCopy);
      v13 = xpc_null_create();
      v14 = dispatch_group_create();
      dispatch_group_enter(v14);
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke;
      v23 = &unk_278936138;
      v24 = descriptorCopy;
      v15 = v13;
      v25 = v15;
      v16 = v12;
      v26 = v16;
      v17 = v14;
      v27 = v17;
      v18 = MEMORY[0x2383760E0](&v20);
      if (!SIGetCacheFd())
      {

        handlerCopy = 0;
      }

      dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    objc_autoreleasePoolPop(v11);
  }

  if (handlerCopy)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CC22E8];
    v10 = -2008;
    goto LABEL_14;
  }

LABEL_15:
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t fd, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if ((fd & 0x80000000) == 0)
  {
    v7 = fd;
    v8 = xpc_fd_create(fd);
    v9 = *(a1 + 32);
    if (v8)
    {
      xpc_dictionary_set_value(v9, "cache-node-fd", v8);
    }

    else
    {
      xpc_dictionary_set_value(v9, "cache-node-fd", *(a1 + 40));
      v11 = logForCSLogCategoryDefault(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_1();
      }
    }

    close(v7);
  }

  if ((v5 & 0x80000000) == 0)
  {
    v12 = xpc_fd_create(v5);
    v13 = *(a1 + 32);
    if (v12)
    {
      xpc_dictionary_set_value(v13, "cache-container-fd", v12);
    }

    else
    {
      xpc_dictionary_set_value(v13, "cache-container-fd", *(a1 + 40));
      v15 = logForCSLogCategoryDefault(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_2();
      }
    }

    close(v5);
  }

  if ((v4 & 0x80000000) == 0)
  {
    v16 = xpc_fd_create(v4);
    v17 = *(a1 + 32);
    if (v16)
    {
      xpc_dictionary_set_value(v17, "cache-payload-fd", v16);
    }

    else
    {
      xpc_dictionary_set_value(v17, "cache-payload-fd", *(a1 + 40));
      v19 = logForCSLogCategoryDefault(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_3();
      }
    }

    close(v4);
  }

  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  dispatch_group_leave(*(a1 + 56));
}

- (void)setHasPhotosOrText
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__SPConcreteCoreSpotlightIndexer_setHasPhotosOrText__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = v5;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = v5;
    [v5 cancel];
  }

  v5 = v6;
LABEL_6:
}

void __52__SPConcreteCoreSpotlightIndexer_setHasPhotosOrText__block_invoke_1655(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = v5;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = v5;
    [v5 cancel];
  }

  v5 = v6;
LABEL_6:
}

uint64_t __52__SPConcreteCoreSpotlightIndexer_setHasPhotosOrText__block_invoke_1656(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    SISetHasPhotos();
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    SISetHasText();
  }

  v2 = a1[4];

  return [v2 setProperty:&unk_2846C95D8 forKey:@"kSPHasInitializedPhotosAndText" sync:1];
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_2(uint64_t a1, const char *a2)
{
  Property = gDASManager;
  if (gDASManager)
  {
    Property = objc_getProperty(gDASManager, a2, 8, 1);
  }

  v4 = [Property allowsDiscretionaryWorkForTask:@"com.apple.searchd.index.commit" withPriority:*MEMORY[0x277D06AA0] withParameters:0];
  v5 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_3;
  v7[3] = &unk_278934820;
  v10 = v4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6 = _setup_block(v7, 0, 3418);
  dispatch_async(v5, v6);
}

- (void)notifyClientForItemUpdates:(void *)a1 updatedItems:batchMask:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __84__SPConcreteCoreSpotlightIndexer_notifyClientForItemUpdates_updatedItems_batchMask___block_invoke_278_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOn_key___block_invoke_302_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SPConcreteCoreSpotlightIndexer_issuePriorityIndexFixupOff__block_invoke_316_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)issuePriorityIndexFixup
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)reindexAttributes:ofItemsMatchingQuery:indexAttrName:withVersion:perItemCompletionAttributeArray:completionValueArray:alwaysReindexWithCompletionAttribute:force:postFilter:group:forceMerge:.cold.1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __223__SPConcreteCoreSpotlightIndexer_reindexAttributes_ofItemsMatchingQuery_indexAttrName_withVersion_perItemCompletionAttributeArray_completionValueArray_alwaysReindexWithCompletionAttribute_force_postFilter_group_forceMerge___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_cancelIdleTimer
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __40__SPConcreteCoreSpotlightIndexer_dirty___block_invoke_cold_1()
{
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_652_cold_1()
{
  OUTLINED_FUNCTION_29(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __63__SPConcreteCoreSpotlightIndexer_indexFinishedDrainingJournal___block_invoke_656_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 dataclass];
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __51__SPConcreteCoreSpotlightIndexer_fixupPathTimeouts__block_invoke_cold_1(void *a1)
{
  v1 = [a1 dataclass];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(*a1 + 40);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Request reimport of %ld items for bundleID:%@ (expired items)", buf, 0x16u);
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_679_cold_1()
{
  OUTLINED_FUNCTION_26();
  [*(*(*v0 + 8) + 40) count];
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __62__SPConcreteCoreSpotlightIndexer_revokeExpiredItems_activity___block_invoke_680_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43(v0);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)updateMeCardInfo:middleName:familyName:emailAddresses:isFirstTimeCheck:isNotCreateNewIndex:group:.cold.1()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)fetchMeCard:isNotCreateNewIndex:group:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeIndexSuccessfulOpenDate:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v2 = [OUTLINED_FUNCTION_38(v0 v1)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)writeIndexDropAnalyticsDate:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v2 = [OUTLINED_FUNCTION_38(v0 v1)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)writeIndexCreationDate:.cold.1()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)writeIndexCreationDate:.cold.2()
{
  OUTLINED_FUNCTION_33();
  v2 = [OUTLINED_FUNCTION_38(v0 v1)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)writeSDBObjectCount:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v2 = [OUTLINED_FUNCTION_38(v0 v1)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(void *)a1 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.1(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"rebuildreason"];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(void *)a1 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.2(void *a1)
{
  v1 = [a1 dataclass];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.3()
{
  OUTLINED_FUNCTION_26();
  v1 = [v0 dataclass];
  [v1 UTF8String];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(void *)a1 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.4(void *a1)
{
  v1 = [a1 dataclass];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.5()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)indexLossAnalyticsDictWithPreviousIndexCreationDate:(NSObject *)a3 size:openingInReadOnly:fullyCreated:markedPurgeable:vectorIndexDrop:forAnalytics:.cold.6(void *a1, void *a2, NSObject *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [a1 dataclass];
  v6 = [v5 UTF8String];
  v7 = [a2 objectForKeyedSubscript:@"indexrebuildcount"];
  v8 = [v7 integerValue];
  v9 = [a2 objectForKeyedSubscript:@"readonly"];
  v10 = [v9 BOOLValue];
  v11 = [a2 objectForKeyedSubscript:@"prefix"];
  v12 = [a2 objectForKeyedSubscript:@"propertyname"];
  v13 = [a2 objectForKeyedSubscript:@"dropreason"];
  [v13 integerValue];
  v16 = 136316418;
  v17 = v6;
  OUTLINED_FUNCTION_23();
  v18 = v8;
  v19 = 1024;
  v20 = v10;
  v21 = 2112;
  v22 = v11;
  v23 = 2112;
  v24 = v12;
  v25 = v14;
  v26 = v15;
  _os_log_error_impl(&dword_231A35000, a3, OS_LOG_TYPE_ERROR, "[VectorIndexDrop] (%s) count %ld, rdonly %d, prefix %@, property %@, reason %ld", &v16, 0x3Au);
}

- (void)writeIndexLossEventToFile:vector:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeIndexLossEventToFile:vector:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeIndexLossEventToFile:vector:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeIndexLossEventToFile:vector:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeIndexLossEventToFile:vector:.cold.5()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeIndexLossEventToFile:vector:.cold.6()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)trialIntentionalDropUUID
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__SPConcreteCoreSpotlightIndexer_fetchItemForURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __76__SPConcreteCoreSpotlightIndexer_fetchParentsForItemID_recursively_timeout___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __73__SPConcreteCoreSpotlightIndexer__sendIndexDropABCEvent_markedPurgeable___block_invoke_cold_1(void *a1)
{
  v1 = [a1 valueForKey:*MEMORY[0x277D6B168]];
  [v1 integerValue];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_saveCorruptIndexWithPath:shouldSendABC:fullyCreated:markedPurgeable:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __103__SPConcreteCoreSpotlightIndexer__saveCorruptIndexWithPath_shouldSendABC_fullyCreated_markedPurgeable___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)openIndexForUpgradeSynchronous:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 dataclass];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)openIndexForUpgradeSynchronous:.cold.3()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)openIndex:(void *)a1 shouldReindexAll:readOnly:forcePC:.cold.1(void *a1)
{
  v1 = [a1 dataclass];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.3()
{
  OUTLINED_FUNCTION_6();
  __error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)openIndex:(void *)a1 shouldReindexAll:readOnly:forcePC:.cold.4(void *a1)
{
  v1 = [a1 dataclass];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.6()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.9()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.10()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34(v0, 5.778e-34, v1, v2);
  OUTLINED_FUNCTION_42();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.11()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34(v0, 5.778e-34, v1, v2);
  OUTLINED_FUNCTION_42();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.12()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  OUTLINED_FUNCTION_35(v0, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_42();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)openIndex:shouldReindexAll:readOnly:forcePC:.cold.13()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __78__SPConcreteCoreSpotlightIndexer_openIndex_shouldReindexAll_readOnly_forcePC___block_invoke_1034_cold_1()
{
  OUTLINED_FUNCTION_26();
  [*v1 timeIntervalSince1970];
  [v0 timeIntervalSince1970];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)openJWLIndex
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)fixupMessageAttachmentsWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__SPConcreteCoreSpotlightIndexer_fixupMessageAttachmentsWithCompletionHandler___block_invoke_3_1116_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)dumpCrashStates:toFile:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)readyIndex:.cold.1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (uint64_t)checkAdmission:(uint64_t)a1 background:(const char *)a2 didBeginThrottle:didEndThrottle:live:slow:memoryPressure:.cold.1(uint64_t a1, const char *a2)
{
  Property = gDASManager;
  if (gDASManager)
  {
    Property = objc_getProperty(gDASManager, a2, 8, 1);
  }

  return [Property allowsDiscretionaryWorkForTask:@"indexing" withPriority:*MEMORY[0x277D06AA0] withParameters:0];
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_2()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  *v2 = 67109378;
  *(v2 + 4) = v3;
  *(v2 + 8) = 2112;
  *(v2 + 10) = v1;
  _os_log_debug_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEBUG, "ABOUT TO DECODE 4 %d %@", v4, 0x12u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_1233_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 138412290;
  *a2 = 0;
  OUTLINED_FUNCTION_40(&dword_231A35000, a2, a3, "RequiresImport missing: UI:%@", a1);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_29(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __186__SPConcreteCoreSpotlightIndexer_indexFromBundle_personaID_options_items_itemsText_itemsHTML_clientState_expectedClientState_clientStateName_deletes_canCreateNewIndex_completionHandler___block_invoke_2_1307_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:expectedClientState:clientStateName:forBundleID:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __178__SPConcreteCoreSpotlightIndexer_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_expectedClientState_clientStateName_forBundleID_options_completionHandler___block_invoke_1318_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "SIDeleteCSAttributes, bundleID:%@, deletes:%ld");
}

void __76__SPConcreteCoreSpotlightIndexer_validateConcreteIndexer_outFileDescriptor___block_invoke_1358_cold_1()
{
  OUTLINED_FUNCTION_29(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)deleteItemsForQuery:bundleID:fromClient:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteSearchableItemsWithDomainIdentifiers:forBundleID:fromClient:reason:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __125__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithDomainIdentifiers_forBundleID_fromClient_reason_completionHandler___block_invoke_1410_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deleteSearchableItemsWithPersonaIds:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "deleteSearchableItemsWithPersonaIds, protectionClass:%@, domainIdentifiers:%@");
}

- (void)deleteSearchableItemsWithFileProviderDomains:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "deleteSearchableItemsWithFileProviderDomains, protectionClass:%@, domains:%@");
}

void __97__SPConcreteCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)restartAttachmentImport:maxCount:depth:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)restartAttachmentImport:maxCount:depth:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1456_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __73__SPConcreteCoreSpotlightIndexer_restartAttachmentImport_maxCount_depth___block_invoke_1460_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_3_1514_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __124__SPConcreteCoreSpotlightIndexer_deleteAllSearchableItemsForBundleID_fromClient_shouldGC_deleteAllReason_completionHandler___block_invoke_2_1522_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchLastClientStateForBundleID:clientStateName:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_indexDependentTokenRewritesWithMatchInfo:topK:setOfTokensToCorrect:queryID:bundleIds:clientBundleId:.cold.1()
{
  OUTLINED_FUNCTION_26();
  [v0 count];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_removePurgeableTouchFile
{
  OUTLINED_FUNCTION_6();
  __error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)getIndexDirectorySize:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getIndexDirectorySize:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)markDirectoryAtomicallyPurgeable:purgeableOrNot:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __81__SPConcreteCoreSpotlightIndexer_spotlightCacheFileDescriptor_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end