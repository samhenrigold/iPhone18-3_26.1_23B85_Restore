@interface SGSqlEntityStore
+ (id)_cachedVIPEmailAddresses;
+ (id)_serializeDate:(id)date;
+ (id)defaultStore;
+ (void)setCachedVIPEmailAddresses:(id)addresses;
- (BOOL)_analyzeMergeBlobsIncremental:(id)incremental;
- (BOOL)_isBlobAnalysisQueueEmpty;
- (BOOL)_processBatchOfSerializedContactJobs;
- (BOOL)anyEmailAddressIsSignificant:(id)significant;
- (BOOL)anyHandleIsSignificant:(id)significant;
- (BOOL)areSubModelsEmpty;
- (BOOL)clearDatabases;
- (BOOL)contactIsSignificant:(id)significant usingCoreRecents:(BOOL)recents;
- (BOOL)contactIsSignificantOrSignificanceIsDisabled:(id)disabled usingCoreRecents:(BOOL)recents;
- (BOOL)databasecheck_BrokenEntityIDReferences;
- (BOOL)databasecheck_IntegrityCheck;
- (BOOL)databasecheck_contactMergeGroupConsistency;
- (BOOL)deleteURLsFromBundleIdentifier:(id)identifier;
- (BOOL)deleteURLsFromBundleIdentifier:(id)identifier documentIdentifiers:(id)identifiers;
- (BOOL)deleteURLsFromBundleIdentifier:(id)identifier groupIdentifierGlobs:(id)globs;
- (BOOL)deleteURLsOlderThanDate:(id)date deletionCount:(int64_t *)count;
- (BOOL)entityWantsFullDownload:(id)download;
- (BOOL)mayHaveSentMessageToEmail:(id)email;
- (BOOL)mayHaveSentMessageToHandle:(id)handle;
- (BOOL)performDatabaseCheck;
- (BOOL)performIntegrityCheckOnly;
- (BOOL)processContactEnrichment:(id)enrichment recordId:(id)id;
- (BOOL)processPseudoContactEntity:(id)entity recordId:(id)id;
- (BOOL)realtimeContactIsSignificant:(id)significant;
- (BOOL)realtimeContactIsSignificantOrSignificanceIsDisabled:(id)disabled;
- (BOOL)rebuildIdentityTables;
- (BOOL)recentsContainSomeOfEmails:(id)emails phoneNumbers:(id)numbers instantMessageAddresses:(id)addresses;
- (BOOL)registerAndLinkIdentity:(id)identity recordId:(id)id phones:(id)phones socialProfiles:(id)profiles email:(id)email curated:(BOOL)curated isSent:(BOOL)sent;
- (BOOL)registerURLFeedback:(unsigned __int8)feedback absoluteURL:(id)l;
- (BOOL)reimportRequestsContainBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier;
- (BOOL)syncNewBlobsIfChanged;
- (BOOL)trimURLTableDownToLimit:(int64_t)limit deletionCount:(int64_t *)count;
- (BOOL)trimURLs;
- (BOOL)writeURL:(id)l;
- (SGUnixTimestamp_)lastSeenTimestampForKey:(id)key;
- (_PASDBIterAction_)_updateURLs:(id)ls stmt:(id)stmt;
- (double)incStatsCounterWithKey:(id)key byValue:(double)value;
- (float)_scoreContactDetail:(id)detail;
- (id)_computeBlobsRaw:(id *)raw;
- (id)_computePseudoContactContentHash:(id)hash contactDetails:(id)details;
- (id)_deleteChildEntitiesByRecordIdsInTable:(id)table;
- (id)_deleteEntitiesByDuplicateKeyNoRecurse:(id)recurse;
- (id)_deleteMessageMetadataByDuplicateKeyNoRecurse:(id)recurse;
- (id)_derefChildrenOf:(id)of;
- (id)_journalEntryFromEntity:(id)entity;
- (id)_journalEntryFromReminderEntity:(id)entity;
- (id)_labelIdentityBlobs:(id)blobs;
- (id)_loadIdentityBlobs;
- (id)_loadMessageByKey:(id)key;
- (id)_loadReimportRequestsWithWhereClause:(id)clause;
- (id)_makeBlobsFromConnectedComponents:(id)components edges:(id)edges;
- (id)_popMergeBlobForAnalysis;
- (id)_uniqueGoodDetailMatchFrom:(id)from toDetails:(id)details nonUnique:(BOOL *)unique;
- (id)allContactsWithEntityType:(unint64_t)type;
- (id)allDeliveriesWithLimit:(unint64_t)limit;
- (id)allEntitiesOfType:(int64_t)type limitedTo:(unint64_t)to onlyMLExtractions:(BOOL)extractions;
- (id)allRemindersLimitedTo:(unint64_t)to;
- (id)batch:(id)batch;
- (id)childrenFromParentKey:(id)key;
- (id)columnQueryPrefixSelect;
- (id)computeBlobs;
- (id)contactDetailEntityIdForDuplicateKey:(id)key;
- (id)curatedRecordIds;
- (id)dbStats;
- (id)entityFromSqlResult:(sqlite3_stmt *)result withSnippets:(BOOL)snippets;
- (id)entityKeyCountsForEntityType:(int64_t)type startDate:(id)date endDate:(id)endDate;
- (id)getAllLinks;
- (id)getForKey:(id)key binder:(id)binder;
- (id)getNSDateForKey:(id)key;
- (id)getNewBlobsIfChanged;
- (id)getReminder:(int64_t)reminder;
- (id)getReminderWithDuplicateKey:(id)key;
- (id)getReminderWithRecordId:(id)id;
- (id)getSGMIStoredAddresses;
- (id)getUnsubscriptionOpportunitiesSuggestionsDenyListForField:(int64_t)field;
- (id)highlyDiscriminantTokensForFeature:(int64_t)feature minCount:(unint64_t)count minRatio:(double)ratio;
- (id)loadAllContactDetailsForRecordId:(id)id;
- (id)loadAllContactDetailsFromTableForRecordId:(id)id;
- (id)loadAllContactDetailsFromTableForRecordId:(id)id type:(unint64_t)type;
- (id)loadAllContactDetailsWithWhereClause:(id)clause onPrep:(id)prep dedupeAgainst:(id)against;
- (id)loadAllSerializedContacts;
- (id)loadContactDetailsForRecordId:(id)id type:(unint64_t)type;
- (id)loadContactDetailsWithWhereClause:(id)clause onPrep:(id)prep type:(unint64_t)type dedupeAgainst:(id)against recordId:(id)id;
- (id)loadContactForStorageContact:(id)contact usingSerializedContactCache:(BOOL)cache;
- (id)loadDuplicateKeyByRecordId:(id)id;
- (id)loadEntitiesByEntityKey:(id)key entityType:(int64_t)type resolveDuplicates:(id)duplicates;
- (id)loadEntitiesFoundInEmail:(id)email entityType:(int64_t)type;
- (id)loadEntityByKey:(id)key;
- (id)loadEntityByRecordId:(id)id;
- (id)loadEventByDuplicateKey:(id)key;
- (id)loadEventByKeyForOldCodePathTesting:(id)testing;
- (id)loadEventsWithInteractionIdentifiers:(id)identifiers fromBundleIdentifier:(id)identifier;
- (id)loadInterdicts;
- (id)loadOriginByRecordId:(id)id;
- (id)loadReminderByKeyOld:(id)old;
- (id)loadReminderByRecordIdOld:(id)old;
- (id)loadSerializedContactForId:(int64_t)id;
- (id)loadSourceKeyByRecordId:(id)id;
- (id)loadStatsCounterWithKey:(id)key;
- (id)loadStorageContactByRecordId:(id)id error:(id *)error;
- (id)loadUnseenReimportItemsForRequest:(unint64_t)request;
- (id)mailIntelligenceStagedLogsForMessageId:(id)id;
- (id)makeInterdictsForBlob:(id)blob withContactStore:(id)store;
- (id)masterEntityIdForContactOrContactDetailRecord:(id)record;
- (id)naiveBayesModelQueryResultForFeature:(int64_t)feature unigramTokens:(id)tokens bigramTokens:(id)bigramTokens;
- (id)normalizeHandleForRecipientFilterAndRemoveFromDetailsCache:(id)cache;
- (id)recentURLsWithLimit:(int64_t)limit;
- (id)reimportRequestDBStats;
- (id)reminderDuplicateKeyForEntityId:(id)id;
- (id)reminderEntityIdForDuplicateKey:(id)key;
- (id)reminderEntityIdForPrimaryKey:(int64_t)key;
- (id)reminderOriginForPrimaryKey:(int64_t)key;
- (id)reminderSourceKeyForDuplicateKey:(id)key;
- (id)saliencyForMessageId:(id)id;
- (id)selectEntityQuery:(id)query;
- (id)serializedEntityIds;
- (id)sortedSaliencyResultsRestrictedToMailboxTypes:(id)types mailboxIds:(id)ids receivedOnOrAfter:(id)after ascending:(BOOL)ascending limit:(unint64_t)limit;
- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)field minCount:(unint64_t)count minScore:(double)score limit:(unint64_t)limit;
- (id)splitBlob:(id)blob withInterdicts:(id)interdicts edges:(id)edges curatedRecordIds:(id)ids;
- (id)splitNeededFor:(id)for withInterdicts:(id)interdicts curatedRecordIds:(id)ids;
- (id)storageLocationWithPrimaryKey:(int64_t)key;
- (id)subModelsStats;
- (id)topSalienciesForMailboxId:(id)id limit:(int64_t)limit;
- (id)uniqueIdentifierForMessageId:(id)id;
- (id)unmergedCandidatesLimitedTo:(int)to;
- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate bundleIdentifier:(id)identifier;
- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate excludingBundleIdentifiers:(id)identifiers containingSubstring:(id)substring flagFilter:(unsigned __int8)filter limit:(int64_t)limit;
- (int64_t)_popQueuedSerializedContactId;
- (int64_t)_writeEnrichmentToDb:(id)db;
- (int64_t)_writeMessageEntityToDb:(id)db;
- (int64_t)_writeOneEntityToDb:(id)db;
- (int64_t)checkExistsSaliencyForMessageId:(id)id;
- (int64_t)commitContactDetail:(id)detail;
- (int64_t)commitSaliency:(id)saliency;
- (int64_t)commitStorageLocation:(id)location withEventId:(int64_t)id;
- (int64_t)commitStorageReminder:(id)reminder;
- (int64_t)contactDetailPrimaryKeyForDuplicateKey:(id)key;
- (int64_t)insertSaliency:(id)saliency;
- (int64_t)reminderPrimaryKeyForEntityId:(id)id;
- (int64_t)updateSaliency:(int64_t)saliency saliency:(id)a4;
- (int64_t)updateSaliencyCreationTimestampForTesting:(int64_t)testing timestamp:(SGUnixTimestamp_)timestamp;
- (int64_t)writeEnrichment:(id)enrichment;
- (int64_t)writeEntity:(id)entity;
- (int64_t)writeEntity:(id)entity withSpotlightReferenceForBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier domainIdentifier:(id)domainIdentifier;
- (unint64_t)entityCount;
- (unint64_t)storeReimportRequest:(id)request;
- (void)_addIndexingTagsTo:(id)to;
- (void)_addIndexingTagsToParent:(id)parent;
- (void)_addLocations:(id)locations toEntityWriteDictionary:(id)dictionary;
- (void)_addTimeRange:(id)range toEntityWriteDictionary:(id)dictionary;
- (void)_contentWriteEnrichmentToDb:(id)db;
- (void)_deleteContactDetailsByRecordIds:(id)ids;
- (void)_deleteEventsByRecordIds:(id)ids;
- (void)_deleteOldInteractionContactDetails:(id)details currentIdentifiers:(id)identifiers;
- (void)_deleteOrphanedItems;
- (void)_deleteRemindersByRecordIds:(id)ids;
- (void)_dumpTable:(id)table columns:(id)columns limitTo:(int)to;
- (void)_emitChangeNotificationForEnrichment:(id)enrichment;
- (void)_emitChangeNotifications:(id)notifications;
- (void)_hashAttachedPseudoContacts:(id)contacts;
- (void)_joinIncompleteIdentityEmailWithOthersOfItsIlk:(id)ilk name:(id)name recordId:(id)id;
- (void)_joinIncompleteIdentityPhonesWithOthersOfTheirIlk:(id)ilk name:(id)name recordId:(id)id;
- (void)_joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk:(id)ilk name:(id)name recordId:(id)id;
- (void)_linkNamelessEmailsIfAppropriate:(graph_t *)appropriate nameToVertex:(id)vertex disjointSets:(DisjointSetHandle *)sets edges:(id)edges;
- (void)_linkNamelessPhonesIfAppropriate:(graph_t *)appropriate nameToVertex:(id)vertex disjointSets:(DisjointSetHandle *)sets edges:(id)edges;
- (void)_linkNamelessSocialProfilesIfAppropriate:(graph_t *)appropriate nameToVertex:(id)vertex disjointSets:(DisjointSetHandle *)sets edges:(id)edges;
- (void)_logConfirmPercentWithConfirmCount:(double)count rejectCount:(double)rejectCount domain:(id)domain suffix:(id)suffix;
- (void)_prunePseudoContactGeneratingEmails:(id)emails;
- (void)_recordPseudoContactsWithDeletedDetailsInTable:(id)table deletedChildrenTable:(id)childrenTable;
- (void)_removeSnippetsForEmails:(id)emails;
- (void)_reportDbStatsBackground;
- (void)_trimSerializedContacts;
- (void)_writeContactDetails:(id)details;
- (void)_writeContactEntityToJournal:(id)journal;
- (void)_writeEnrichmentToSnippetsDb:(id)db;
- (void)_writeEntityParentageFor:(id)for entityId:(int64_t)id;
- (void)_writeEventEntitiesToJournal:(id)journal;
- (void)_writeEventEntityToJournal:(id)journal;
- (void)_writeFTSTermsForEnrichment:(id)enrichment entityId:(int64_t)id;
- (void)_writeLabeledBlobs:(id)blobs deletedMasterEntityIds:(id)ids;
- (void)_writeMergeBlobSnapshotForAnalysis:(id)analysis;
- (void)_writeMessageEntityToSnippetsDb:(id)db;
- (void)_writeReminderEntitiesToJournal:(id)journal;
- (void)addInterdictFrom:(id)from with:(id)with;
- (void)analyzeMergeBlobs:(id)blobs;
- (void)applyCappingPolicy:(id)policy byDiscardingTokensCounts:(id)counts withMargin:(float)margin;
- (void)clearAllTables;
- (void)clearMailIntelligence;
- (void)clearMailIntelligenceSaliencyDetection;
- (void)clearSaliencyTable;
- (void)commitNaiveBayesModel:(id)model probabilityFeatureName:(int64_t)name;
- (void)commitNaiveBayesModel:(id)model probabilityFeatureName:(int64_t)name updateDate:(id)date;
- (void)deleteAllReimportRequestsOlderThanDate:(id)date;
- (void)deleteByRecordId:(id)id;
- (void)deleteCompletedReimportRequests;
- (void)deleteEntitiesByDuplicateKey:(id)key preserveEventConfirmationHistory:(BOOL)history emitChangeNotifications:(BOOL)notifications;
- (void)deleteInteractionEntitiesExceedingLimit:(id)limit withSuspensionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id;
- (void)deleteInteractionsWithBundleId:(id)id groupIdentifiers:(id)identifiers;
- (void)deleteInteractionsWithBundleId:(id)id identifiers:(id)identifiers;
- (void)deleteItemsWithEntityTag:(id)tag preserveEventConfirmationHistory:(BOOL)history;
- (void)deleteMailIntelligenceForMessageIds:(id)ids;
- (void)deleteMessages:(id)messages;
- (void)deleteMessagesByDuplicateKey:(id)key;
- (void)deleteNaiveBayesModelForProbabilityFeatureName:(int64_t)name;
- (void)deleteSerializedContactForId:(int64_t)id;
- (void)deleteSerializedContactsForIdSet:(id)set;
- (void)deleteTokensForDeletedEmailAddresses:(id)addresses;
- (void)deleteValueForKey:(id)key;
- (void)forceBlobSync;
- (void)incrementInt64NSNumber:(id)number forKey:(id)key;
- (void)link:(id)link to:(id)to type:(unsigned int)type strength:(double)strength;
- (void)logConfirmPercentAfterContactConfirmation;
- (void)logConfirmPercentAfterContactDetailConfirmation;
- (void)logConfirmPercentAfterContactDetailRejection;
- (void)logConfirmPercentAfterContactRejection;
- (void)markEntityAsDupeByRecordId:(id)id;
- (void)markMailIntelligenceStagedLogsAsLoggedAndClearLogPayloadForMessageId:(id)id;
- (void)markReimportItemAsSeenByReceiverWithBundleId:(id)id uniqueId:(id)uniqueId;
- (void)markReimportItemsAsSeenByReceiverWithBundleId:(id)id items:(id)items;
- (void)markReimportRequestAsExecutedWithRequestId:(unint64_t)id;
- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)field toValues:(id)values;
- (void)pruneDuplicateEventExtractions:(id)extractions;
- (void)pruneEntitiesOlderThan:(SGUnixTimestamp_)than suspensionHandler:(id)handler batchSize:(unint64_t)size;
- (void)pruneEntitiesOlderThanOneYearWithSuspensionHandler:(id)handler;
- (void)pruneMailIntelligenceOlderThanOneYearWithSuspensionHandler:(id)handler;
- (void)pruneNLEventEntitiesOlderThan:(SGUnixTimestamp_)than;
- (void)pruneNLEventEntitiesOlderThanTwoWeeks;
- (void)pruneReminders;
- (void)purgeTokensWhichLastUpdateWasBefore:(id)before;
- (void)registerCachePrecomputationWithCTS;
- (void)registerSentHandles:(id)handles;
- (void)registerSentMailMessage:(id)message;
- (void)registerSentTextMessage:(id)message;
- (void)removeSnippetsForEntities:(id)entities;
- (void)reportDbStats;
- (void)selectAuthoritativeDetailsForContactWithId:(int64_t)id;
- (void)setAllMailIntelligenceAsNotSalient;
- (void)setAllMailIntelligenceAsSalient;
- (void)setCRLookupForTesting:(id)testing;
- (void)setDoubleNSNumber:(id)number forKey:(id)key;
- (void)setInt64NSNumber:(id)number forKey:(id)key;
- (void)setMailIntelligenceStagedLogs:(id)logs forMessageId:(id)id;
- (void)setMalformedEventWhenRangeForTesting;
- (void)setNSDate:(id)date forKey:(id)key;
- (void)setNSString:(id)string forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key binder:(id)binder;
- (void)stopJournaling;
- (void)storeReimportItems:(id)items requestId:(unint64_t)id;
- (void)storeStatsCounterWithKey:(id)key value:(double)value;
- (void)updateReimportItemUniqueIdForBundleId:(id)id oldValue:(id)value newValue:(id)newValue;
- (void)updateSerializedContacts:(id)contacts;
- (void)vacuum;
- (void)writeEmailVerificationResultForEmailWithKey:(id)key eventEntities:(id)entities;
- (void)writeEntityGeocodeResultToDb:(id)db;
- (void)writeIdentityBlobs:(id)blobs forceRewrite:(BOOL)rewrite;
- (void)writeInteractionEventEntities:(id)entities;
- (void)writeSerializedContact:(id)contact;
- (void)writeSerializedContactPlaceholder:(int64_t)placeholder;
@end

@implementation SGSqlEntityStore

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_defaultStoreInitLock);
  if (!defaultStore_instance)
  {
    v2 = sgLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "Attempting to instantiate the shared default store", v7, 2u);
    }

    v3 = [SGSqlEntityStore storeWithDefaultLocationAndExecuteJournals:1];
    v4 = defaultStore_instance;
    defaultStore_instance = v3;
  }

  pthread_mutex_unlock(&defaultStore_defaultStoreInitLock);
  v5 = defaultStore_instance;

  return v5;
}

void __67__SGSqlEntityStore_ContentProtection__registerJournalUnlockHandler__block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SGSqlEntityStore_ContentProtection__registerJournalUnlockHandler__block_invoke_2;
  v4[3] = &unk_278954D38;
  objc_copyWeak(&v5, (a1 + 40));
  v6 = a2;
  dispatch_async(v3, v4);
  objc_destroyWeak(&v5);
}

- (void)stopJournaling
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SGDatabaseJournal *)selfCopy->_snippetsJournal journaling])
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "stopping journaling", buf, 2u);
    }

    snippetDb = selfCopy->_snippetDb;
    if (snippetDb || ([SGSqlEntityStore initializeDatabase:selfCopy->_snippetDbPath withProtection:1 sharedLock:selfCopy->_sharedWriteLock newDatabaseCreated:0], v5 = objc_claimAutoreleasedReturnValue(), v6 = selfCopy->_snippetDb, selfCopy->_snippetDb = v5, v6, (snippetDb = selfCopy->_snippetDb) != 0))
    {
      if (!selfCopy->_executeJournals)
      {
        v8 = sgLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 0;
          _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "non-primary store not executing journals", v12, 2u);
        }

        goto LABEL_14;
      }

      if ([(SGSqliteDatabase *)snippetDb userVersion]<= 4)
      {
        v7 = sgLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Ignoring existing journal because there is no snippet database.", v11, 2u);
        }

        [(SGDatabaseJournal *)selfCopy->_snippetsJournal deleteAllJournaledQueries];
        goto LABEL_14;
      }

      if ([(SGDatabaseJournal *)selfCopy->_snippetsJournal executeQueriesOnDatabase:selfCopy->_snippetDb])
      {
LABEL_14:
        [(SGDatabaseJournal *)selfCopy->_snippetsJournal stopJournaling];
        goto LABEL_21;
      }

      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "tried to replay journal to snippets and something failed, so will try again later.", v10, 2u);
      }
    }

    else
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Failed to reopen snippets database while trying to replay journals, will try again later", v13, 2u);
      }
    }
  }

LABEL_21:
  objc_sync_exit(selfCopy);
}

void __67__SGSqlEntityStore_ContentProtection__registerJournalUnlockHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeviceLockStateEvent:*(a1 + 40)];
}

- (BOOL)deleteURLsFromBundleIdentifier:(id)identifier documentIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_documentIdentifiers___block_invoke;
  v13[3] = &unk_27894D420;
  v16 = &v22;
  v13[4] = self;
  v9 = identifierCopy;
  v14 = v9;
  v10 = identifiersCopy;
  v15 = v10;
  v17 = &v18;
  [(SGSqliteDatabase *)db writeTransaction:v13];
  if (v19[3])
  {
    +[SGDNotificationBroadcaster emitURLChanged];
  }

  v11 = *(v23 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

void __77__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_documentIdentifiers___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __77__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_documentIdentifiers___block_invoke_2;
  v6 = &unk_2789559D0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) = [v2 prepAndRunSQL:@"DELETE FROM urls WHERE bundle_id = :bundleIdentifier AND doc_id IN _pas_nsarray(:documentIdentifiers)" onPrep:&v3 onRow:0 onError:0];
  *(*(*(a1 + 64) + 8) + 24) = sqlite3_changes([*(*(a1 + 32) + 8) handle]);
}

void __77__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_documentIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleIdentifier" toNonnullNSString:v3];
  [v4 bindNamedParam:":documentIdentifiers" toNSArray:*(a1 + 40)];
}

- (BOOL)deleteURLsFromBundleIdentifier:(id)identifier groupIdentifierGlobs:(id)globs
{
  identifierCopy = identifier;
  globsCopy = globs;
  v8 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"DELETE FROM urls WHERE bundle_id = ? AND ((group_id GLOB ?) ");
  if (objc_msgSend_count(globsCopy) >= 2)
  {
    v9 = 1;
    do
    {
      [v8 appendString:@"OR (group_id GLOB ?) "];
      ++v9;
    }

    while (objc_msgSend_count(globsCopy) > v9);
  }

  [v8 appendString:@""]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  db = self->_db;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __78__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_groupIdentifierGlobs___block_invoke;
  v19 = &unk_27894AE40;
  v24 = &v30;
  selfCopy = self;
  v11 = v8;
  v21 = v11;
  v12 = identifierCopy;
  v22 = v12;
  v13 = globsCopy;
  v23 = v13;
  v25 = &v26;
  [(SGSqliteDatabase *)db writeTransaction:&v16];
  if (v27[3])
  {
    [SGDNotificationBroadcaster emitURLChanged:v16];
  }

  v14 = *(v31 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void __78__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_groupIdentifierGlobs___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __78__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_groupIdentifierGlobs___block_invoke_2;
  v7 = &unk_2789559D0;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(*(*(a1 + 64) + 8) + 24) = [v3 prepAndRunSQL:v2 onPrep:&v4 onRow:0 onError:0];
  *(*(*(a1 + 72) + 8) + 24) = sqlite3_changes([*(*(a1 + 32) + 8) handle]);
}

void __78__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier_groupIdentifierGlobs___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 bindParam:1 toNonnullNSString:*(a1 + 32)];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        [v3 bindParam:v10 toNonnullNSString:{*(*(&v11 + 1) + 8 * v9++), v11}];
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)deleteURLsFromBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  db = self->_db;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __57__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier___block_invoke;
  v12 = &unk_278956180;
  v15 = &v21;
  selfCopy = self;
  v6 = identifierCopy;
  v14 = v6;
  v16 = &v17;
  [(SGSqliteDatabase *)db writeTransaction:&v9];
  if (v18[3])
  {
    [SGDNotificationBroadcaster emitURLChanged:v9];
  }

  v7 = *(v22 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v7;
}

void __57__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SGSqlEntityStore_URLs__deleteURLsFromBundleIdentifier___block_invoke_2;
  v3[3] = &unk_278955E30;
  v4 = *(a1 + 40);
  *(*(*(a1 + 48) + 8) + 24) = [v2 prepAndRunSQL:@"DELETE FROM urls WHERE bundle_id = :bundleIdentifier" onPrep:v3 onRow:0 onError:0];
  *(*(*(a1 + 56) + 8) + 24) = sqlite3_changes([*(*(a1 + 32) + 8) handle]);
}

- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate bundleIdentifier:(id)identifier
{
  v38 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  v11 = objc_opt_new();
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [dateCopy timeIntervalSince1970];
    v23 = v22;
    [endDateCopy timeIntervalSince1970];
    *buf = 134218754;
    v31 = v23;
    v32 = 2048;
    v33 = v24;
    v34 = 2112;
    v35 = dateCopy;
    v36 = 2112;
    v37 = endDateCopy;
    _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "SGURL: urlsFoundBetweenStartDate+bundle query: %f - %f (%@ - %@)", buf, 0x2Au);
  }

  db = self->_db;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_bundleIdentifier___block_invoke;
  v25[3] = &unk_278954AC8;
  v25[4] = self;
  v26 = identifierCopy;
  v27 = dateCopy;
  v28 = endDateCopy;
  v14 = v11;
  v29 = v14;
  v15 = endDateCopy;
  v16 = dateCopy;
  v17 = identifierCopy;
  [(SGSqliteDatabase *)db readTransaction:v25];
  v18 = sgLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138739971;
    v31 = v14;
    _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "SGURL: urlsFoundBetweenStartDate+bundle results: %{sensitive}@", buf, 0xCu);
  }

  v19 = v29;
  v20 = v14;

  return v14;
}

void __77__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_bundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_bundleIdentifier___block_invoke_2;
  v5[3] = &unk_278955440;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_bundleIdentifier___block_invoke_3;
  v3[3] = &unk_278955980;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 64);
  [v2 prepAndRunSQL:@"SELECT  url onPrep:title onRow:received_from_handle onError:{bundle_id, group_id, doc_id, seconds_from_1970, document_title, document_seconds_from_1970, document_time_interval, flags  FROM urls WHERE bundle_id = :bundleId AND COALESCE(document_seconds_from_1970, seconds_from_1970) BETWEEN :startDate AND :endDate", v5, v3, 0}];
}

void __77__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_bundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNonnullNSString:v3];
  [*(a1 + 40) timeIntervalSince1970];
  [v4 bindNamedParam:":startDate" toDouble:?];
  [*(a1 + 48) timeIntervalSince1970];
  [v4 bindNamedParam:":endDate" toDouble:?];
}

- (BOOL)deleteURLsOlderThanDate:(id)date deletionCount:(int64_t *)count
{
  dateCopy = date;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SGSqlEntityStore_URLs__deleteURLsOlderThanDate_deletionCount___block_invoke;
  v10[3] = &unk_278954758;
  v12 = &v14;
  v10[4] = self;
  v8 = dateCopy;
  v11 = v8;
  countCopy = count;
  [(SGSqliteDatabase *)db writeTransaction:v10];
  LOBYTE(count) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return count;
}

void __64__SGSqlEntityStore_URLs__deleteURLsOlderThanDate_deletionCount___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SGSqlEntityStore_URLs__deleteURLsOlderThanDate_deletionCount___block_invoke_2;
  v5[3] = &unk_278955E30;
  v6 = *(a1 + 40);
  v3 = [v2 prepAndRunSQL:@"DELETE FROM urls WHERE seconds_from_1970 < :seconds" onPrep:v5 onRow:0 onError:0];
  v4 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = v3;
  if (v4)
  {
    **(a1 + 56) = sqlite3_changes([*(*(a1 + 32) + 8) handle]);
  }
}

void __64__SGSqlEntityStore_URLs__deleteURLsOlderThanDate_deletionCount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":seconds" toDouble:?];
}

- (BOOL)trimURLTableDownToLimit:(int64_t)limit deletionCount:(int64_t *)count
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SGSqlEntityStore_URLs__trimURLTableDownToLimit_deletionCount___block_invoke;
  v7[3] = &unk_27894AE18;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = limit;
  v7[7] = count;
  [(SGSqliteDatabase *)db writeTransaction:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __64__SGSqlEntityStore_URLs__trimURLTableDownToLimit_deletionCount___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SGSqlEntityStore_URLs__trimURLTableDownToLimit_deletionCount___block_invoke_2;
  v4[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v4[4] = *(a1 + 48);
  result = [v2 prepAndRunSQL:@"DELETE FROM urls ORDER BY id DESC LIMIT -1 OFFSET :keepThisMany" onPrep:v4 onRow:0 onError:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(a1 + 56))
  {
    result = sqlite3_changes([*(*(a1 + 32) + 8) handle]);
    **(a1 + 56) = result;
  }

  return result;
}

- (BOOL)trimURLs
{
  v8 = 0;
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
  v4 = [(SGSqlEntityStore *)self deleteURLsOlderThanDate:v3 deletionCount:&v8];
  v7 = 0;
  v5 = [(SGSqlEntityStore *)self trimURLTableDownToLimit:64 deletionCount:&v7];
  if (v8 + v7)
  {
    +[SGDNotificationBroadcaster emitURLChanged];
  }

  return v4 && v5;
}

- (BOOL)writeURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__SGSqlEntityStore_URLs__writeURL___block_invoke;
  v9[3] = &unk_278955830;
  v9[4] = self;
  v6 = lCopy;
  v10 = v6;
  [(SGSqliteDatabase *)db writeTransaction:v9];
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138739971;
    v12 = v6;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGURL: written: %{sensitive}@", buf, 0xCu);
  }

  return 1;
}

void __35__SGSqlEntityStore_URLs__writeURL___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__SGSqlEntityStore_URLs__writeURL___block_invoke_2;
  v2[3] = &unk_278955E30;
  v3 = *(a1 + 40);
  [v1 prepAndRunSQL:@"INSERT OR REPLACE INTO urls (url onPrep:title onRow:received_from_handle onError:{bundle_id, group_id, doc_id, seconds_from_1970, document_title, document_seconds_from_1970, document_time_interval, flags) VALUES (:url, :title, :receivedFromHandle, :bundleIdentifier, :groupIdentifier, :documentIdentifier, :secondsFrom1970, :documentTitle, :documentDate, :documentTimeInterval, :flags)", v2, 0, 0}];
}

void __35__SGSqlEntityStore_URLs__writeURL___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) url];
  v4 = [v3 absoluteString];
  [v14 bindNamedParam:":url" toNSString:v4];

  v5 = [*(a1 + 32) title];
  [v14 bindNamedParam:":title" toNSString:v5];

  v6 = [*(a1 + 32) receivedFromHandle];
  [v14 bindNamedParam:":receivedFromHandle" toNSString:v6];

  v7 = [*(a1 + 32) bundleIdentifier];
  [v14 bindNamedParam:":bundleIdentifier" toNSString:v7];

  v8 = [*(a1 + 32) groupIdentifier];
  [v14 bindNamedParam:":groupIdentifier" toNSString:v8];

  v9 = [*(a1 + 32) documentIdentifier];
  [v14 bindNamedParam:":documentIdentifier" toNSString:v9];

  v10 = [*(a1 + 32) receivedAt];
  [v10 timeIntervalSince1970];
  [v14 bindNamedParam:":secondsFrom1970" toDouble:?];

  v11 = [*(a1 + 32) documentTitle];
  [v14 bindNamedParam:":documentTitle" toNSString:v11];

  v12 = [*(a1 + 32) documentDate];

  if (v12)
  {
    v13 = [*(a1 + 32) documentDate];
    [v13 timeIntervalSince1970];
    [v14 bindNamedParam:":documentDate" toDouble:?];
  }

  [*(a1 + 32) documentTimeInterval];
  [v14 bindNamedParam:":documentTimeInterval" toDouble:?];
  [v14 bindNamedParam:":flags" toInteger:{objc_msgSend(*(a1 + 32), "flags")}];
}

- (_PASDBIterAction_)_updateURLs:(id)ls stmt:(id)stmt
{
  lsCopy = ls;
  stmtCopy = stmt;
  v7 = [stmtCopy nonnullNSStringForColumnName:"url" table:"urls"];
  v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
  if (v8)
  {
    v25 = v7;
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    [stmtCopy getDoubleForColumnName:"seconds_from_1970" table:"urls"];
    v26 = [v9 initWithTimeIntervalSince1970:?];
    if ([stmtCopy isNullForColumnName:"document_seconds_from_1970" table:"urls"])
    {
      v24 = 0;
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277CBEAA8]);
      [stmtCopy getDoubleForColumnName:"document_seconds_from_1970" table:"urls"];
      v24 = [v11 initWithTimeIntervalSince1970:?];
    }

    [stmtCopy getDoubleForColumnName:"document_time_interval" table:"urls"];
    v13 = v12;
    v23 = [stmtCopy nonnullNSStringForColumnName:"bundle_id" table:"urls"];
    v22 = [stmtCopy nonnullNSStringForColumnName:"doc_id" table:"urls"];
    v14 = objc_alloc(MEMORY[0x277D02128]);
    v21 = [stmtCopy getNSStringForColumnName:"title" table:"urls"];
    v15 = [stmtCopy getNSStringForColumnName:"received_from_handle" table:"urls"];
    v16 = [stmtCopy getNSStringForColumnName:"group_id" table:"urls"];
    v17 = [stmtCopy getNSStringForColumnName:"document_title" table:"urls"];
    LOBYTE(v20) = [stmtCopy getIntegerForColumnName:"flags" table:"urls"];
    v18 = [v14 initWithURL:v8 title:v21 receivedFromHandle:v15 bundleIdentifier:v23 groupIdentifier:v16 documentIdentifier:v22 documentTitle:v13 documentDate:v17 documentTimeInterval:v24 receivedAt:v26 flags:v20];
    [lsCopy addObject:v18];

    v10.var0 = *MEMORY[0x277D42690];
    v7 = v25;
  }

  else
  {
    v10.var0 = *MEMORY[0x277D42690];
  }

  return v10;
}

- (BOOL)registerURLFeedback:(unsigned __int8)feedback absoluteURL:(id)l
{
  feedbackCopy = feedback;
  lCopy = l;
  v7 = 0x80204u >> (8 * feedbackCopy);
  v8 = feedbackCopy >= 3;
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SGSqlEntityStore_URLs__registerURLFeedback_absoluteURL___block_invoke;
  v12[3] = &unk_27894BB08;
  if (v8)
  {
    LOBYTE(v7) = 0;
  }

  v14 = v7;
  v12[4] = self;
  v13 = lCopy;
  v10 = lCopy;
  [(SGSqliteDatabase *)db writeTransaction:v12];

  return 1;
}

void __58__SGSqlEntityStore_URLs__registerURLFeedback_absoluteURL___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__SGSqlEntityStore_URLs__registerURLFeedback_absoluteURL___block_invoke_2;
  v2[3] = &unk_27894ADF0;
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  [v1 prepAndRunSQL:@"UPDATE urls SET flags = (flags | :flagsToSet) WHERE _pas_block(:block onPrep:url)" onRow:v2 onError:{0, 0}];
}

void __58__SGSqlEntityStore_URLs__registerURLFeedback_absoluteURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":flagsToSet" toInt64:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SGSqlEntityStore_URLs__registerURLFeedback_absoluteURL___block_invoke_3;
  v5[3] = &unk_27894AD78;
  v6 = *(a1 + 32);
  [v4 bindNamedParam:":block" toBlock:v5];
}

id __58__SGSqlEntityStore_URLs__registerURLFeedback_absoluteURL___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "compare:options:", v3, 1) == 0}];
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  return v4;
}

- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate excludingBundleIdentifiers:(id)identifiers containingSubstring:(id)substring flagFilter:(unsigned __int8)filter limit:(int64_t)limit
{
  filterCopy = filter;
  v49 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  identifiersCopy = identifiers;
  substringCopy = substring;
  v17 = objc_opt_new();
  if (substringCopy)
  {
    v18 = @" AND _pas_block(:containingSubstringBlock, url) ";
  }

  else
  {
    v18 = &stru_284703F00;
  }

  if (filterCopy)
  {
    v19 = @" AND (flags & :flagFilter) = 0 ";
  }

  else
  {
    v19 = &stru_284703F00;
  }

  v20 = sgLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [dateCopy timeIntervalSince1970];
    v32 = v31;
    [endDateCopy timeIntervalSince1970];
    *buf = 134218240;
    v46 = v32;
    v47 = 2048;
    v48 = v33;
    _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "SGURL: query: %f - %f ", buf, 0x16u);
  }

  db = self->_db;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __124__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit___block_invoke;
  v35[3] = &unk_27894ADC8;
  v35[4] = self;
  v36 = v18;
  v37 = v19;
  v38 = identifiersCopy;
  v39 = dateCopy;
  v40 = endDateCopy;
  limitCopy = limit;
  v41 = substringCopy;
  v44 = filterCopy;
  v22 = v17;
  v42 = v22;
  v23 = substringCopy;
  v24 = endDateCopy;
  v25 = dateCopy;
  v26 = identifiersCopy;
  [(SGSqliteDatabase *)db readTransaction:v35];
  v27 = sgLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138739971;
    v46 = v22;
    _os_log_debug_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEBUG, "SGURL: urlsFoundBetweenStartDate results: %{sensitive}@", buf, 0xCu);
  }

  v28 = v42;
  v29 = v22;

  return v22;
}

void __124__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT  url, title, received_from_handle, bundle_id, group_id, doc_id, seconds_from_1970, document_title, document_seconds_from_1970, document_time_interval, flags  FROM urls WHERE bundle_id NOT IN _pas_nsset(:excludingBundleIdentifiers)   AND (seconds_from_1970 BETWEEN :startDate AND :endDate        OR document_seconds_from_1970 BETWEEN :startDate AND :endDate)   %@ %@ ORDER BY seconds_from_1970 DESC LIMIT :limit", *(a1 + 40), *(a1 + 48)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __124__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit___block_invoke_2;
  v12[3] = &unk_27894ADA0;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v15 = *(a1 + 96);
  v7 = *(a1 + 80);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v16 = *(a1 + 104);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __124__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit___block_invoke_4;
  v10[3] = &unk_278955980;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 88);
  [v2 prepAndRunSQL:v3 onPrep:v12 onRow:v10 onError:0];
}

void __124__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 bindNamedParam:":excludingBundleIdentifiers" toNSSet:?];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
    [v4 bindNamedParam:":excludingBundleIdentifiers" toNSSet:v5];
  }

  [*(a1 + 40) timeIntervalSince1970];
  [v4 bindNamedParam:":startDate" toDouble:?];
  [*(a1 + 48) timeIntervalSince1970];
  [v4 bindNamedParam:":endDate" toDouble:?];
  [v4 bindNamedParam:":limit" toInt64:*(a1 + 64)];
  v6 = *(a1 + 56);
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __124__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit___block_invoke_3;
    v7[3] = &unk_27894AD78;
    v8 = v6;
    [v4 bindNamedParam:":containingSubstringBlock" toBlock:v7];
  }

  if (*(a1 + 72))
  {
    [v4 bindNamedParam:":flagFilter" toInt64:?];
  }
}

id __124__SGSqlEntityStore_URLs__urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 rangeOfString:*(a1 + 32) options:1] != 0x7FFFFFFFFFFFFFFFLL;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  return v5;
}

- (id)recentURLsWithLimit:(int64_t)limit
{
  v5 = objc_opt_new();
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__SGSqlEntityStore_URLs__recentURLsWithLimit___block_invoke;
  v13[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v13[4] = limit;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SGSqlEntityStore_URLs__recentURLsWithLimit___block_invoke_2;
  v11[3] = &unk_278955980;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT  url onPrep:title onRow:received_from_handle onError:bundle_id, group_id, doc_id, seconds_from_1970, document_title, document_seconds_from_1970, document_time_interval, flags  FROM urls ORDER BY seconds_from_1970 DESC LIMIT :limit", v13, v11, 0];
  v8 = v12;
  v9 = v7;

  return v7;
}

- (int64_t)reminderPrimaryKeyForEntityId:(id)id
{
  idCopy = id;
  numericValue = [idCopy numericValue];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SGSqlEntityStore_Reminders__reminderPrimaryKeyForEntityId___block_invoke;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = numericValue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SGSqlEntityStore_Reminders__reminderPrimaryKeyForEntityId___block_invoke_2;
  v9[3] = &unk_278954658;
  v9[4] = &v11;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT id FROM reminders WHERE entityId = ?" onPrep:v10 onRow:v9 onError:0];
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v7;
}

uint64_t __61__SGSqlEntityStore_Reminders__reminderPrimaryKeyForEntityId___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_nsstring(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];

  return 1;
}

- (id)reminderEntityIdForPrimaryKey:(int64_t)key
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SGSqlEntityStore_Reminders__reminderEntityIdForPrimaryKey___block_invoke;
  v10[3] = &unk_278954658;
  v10[4] = &v11;
  v5 = MEMORY[0x2383809F0](v10, a2);
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SGSqlEntityStore_Reminders__reminderEntityIdForPrimaryKey___block_invoke_2;
  v9[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v9[4] = key;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT entityId FROM reminders WHERE id = ?" onPrep:v9 onRow:v5 onError:0];
  v7 = [MEMORY[0x277D020C8] recordIdWithNumericValue:v12[3]];

  _Block_object_dispose(&v11, 8);

  return v7;
}

- (id)reminderOriginForPrimaryKey:(int64_t)key
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1154;
  v21 = __Block_byref_object_dispose__1155;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1154;
  v15 = __Block_byref_object_dispose__1155;
  v16 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SGSqlEntityStore_Reminders__reminderOriginForPrimaryKey___block_invoke;
  v10[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v10[4] = key;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SGSqlEntityStore_Reminders__reminderOriginForPrimaryKey___block_invoke_2;
  v9[3] = &unk_278953EE8;
  v9[4] = &v17;
  v9[5] = &v11;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT duplicateKey onPrep:sourceKey FROM reminders WHERE id = :primaryKey" onRow:v10 onError:v9, 0];
  v6 = [MEMORY[0x277D02070] originForDuplicateKey:v18[5] sourceKey:v12[5] store:self];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Reminders.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"origin"}];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

uint64_t __59__SGSqlEntityStore_Reminders__reminderOriginForPrimaryKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"duplicateKey" table:0];
  v5 = [[SGDuplicateKey alloc] initWithSerialized:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 getNSStringForColumnName:"sourceKey" table:0];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = MEMORY[0x277D42698];
  return *v11;
}

- (id)reminderEntityIdForDuplicateKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1154;
  v16 = __Block_byref_object_dispose__1155;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SGSqlEntityStore_Reminders__reminderEntityIdForDuplicateKey___block_invoke;
  v10[3] = &unk_278956070;
  v6 = keyCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SGSqlEntityStore_Reminders__reminderEntityIdForDuplicateKey___block_invoke_2;
  v9[3] = &unk_278954658;
  v9[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT entityId FROM reminders WHERE duplicateKey = ?" onPrep:v10 onRow:v9 onError:0];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__SGSqlEntityStore_Reminders__reminderEntityIdForDuplicateKey___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) serialize];
  v3 = v4;
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __63__SGSqlEntityStore_Reminders__reminderEntityIdForDuplicateKey___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277D020C8] recordIdWithNumericValue:{sqlite3_column_int64(a2, 0)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)reminderDuplicateKeyForEntityId:(id)id
{
  idCopy = id;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1154;
  v17 = __Block_byref_object_dispose__1155;
  v18 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SGSqlEntityStore_Reminders__reminderDuplicateKeyForEntityId___block_invoke;
  v11[3] = &unk_278956070;
  v6 = idCopy;
  v12 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SGSqlEntityStore_Reminders__reminderDuplicateKeyForEntityId___block_invoke_2;
  v10[3] = &unk_278954658;
  v10[4] = &v13;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT duplicateKey FROM reminders WHERE entityId = ?" onPrep:v11 onRow:v10 onError:0];
  v7 = [SGDuplicateKey alloc];
  v8 = [(SGDuplicateKey *)v7 initWithSerialized:v14[5]];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __63__SGSqlEntityStore_Reminders__reminderDuplicateKeyForEntityId___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) numericValue];

  return sqlite3_bind_int(a2, 1, v3);
}

uint64_t __63__SGSqlEntityStore_Reminders__reminderDuplicateKeyForEntityId___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_nsstring(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)reminderSourceKeyForDuplicateKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1154;
  v16 = __Block_byref_object_dispose__1155;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SGSqlEntityStore_Reminders__reminderSourceKeyForDuplicateKey___block_invoke;
  v10[3] = &unk_278956070;
  v6 = keyCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SGSqlEntityStore_Reminders__reminderSourceKeyForDuplicateKey___block_invoke_2;
  v9[3] = &unk_278954658;
  v9[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT sourceKey FROM reminders WHERE duplicateKey = ?" onPrep:v10 onRow:v9 onError:0];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__SGSqlEntityStore_Reminders__reminderSourceKeyForDuplicateKey___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) serialize];
  v3 = v4;
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __64__SGSqlEntityStore_Reminders__reminderSourceKeyForDuplicateKey___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_nsstring(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (int64_t)commitStorageReminder:(id)reminder
{
  reminderCopy = reminder;
  duplicateKey = [reminderCopy duplicateKey];
  if (duplicateKey && ([(SGSqlEntityStore *)self reminderEntityIdForDuplicateKey:duplicateKey], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(SGSqlEntityStore *)self reminderPrimaryKeyForEntityId:v6];
  }

  else
  {
    toReminder = [reminderCopy toReminder];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__SGSqlEntityStore_Reminders__commitStorageReminder___block_invoke;
    v22[3] = &unk_27894DC30;
    v23 = reminderCopy;
    v7 = toReminder;
    v24 = v7;
    selfCopy = self;
    v10 = MEMORY[0x2383809F0](v22);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = -1;
    db = self->_db;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__SGSqlEntityStore_Reminders__commitStorageReminder___block_invoke_33;
    v14[3] = &unk_278955E58;
    v14[4] = self;
    v15 = @"INSERT INTO reminders (entityId, duplicateKey, sourceKey, title, dueDateComponents, dueLocationId, dueLocationType, dueLocationTrigger, sourceUrl, creationDate, opaqueKey, uniqueKey, contactIdentifier, reminderStatus) VALUES (:entityId, :duplicateKey, :sourceKey, :title, :dueDateComponents, :dueLocationId, :dueLocationType, :dueLocationTrigger, :sourceUrl, :creationDate, :opaqueKey, :uniqueKey, :contactIdentifier, :reminderStatus)";
    v12 = v10;
    v16 = v12;
    v17 = &v18;
    [(SGSqliteDatabase *)db writeTransaction:v14];
    v8 = v19[3];

    _Block_object_dispose(&v18, 8);
  }

  return v8;
}

void __53__SGSqlEntityStore_Reminders__commitStorageReminder___block_invoke(id *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [a1[4] recordId];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":entityId", [v4 numericValue]);

  v5 = [a1[4] duplicateKey];
  v6 = [v5 serialize];
  [SGSqliteDatabase bindParam:a2 name:":duplicateKey" nsstring:v6];

  v7 = [a1[4] origin];
  v8 = [v7 sourceKey];

  if (v8)
  {
    v9 = [a1[4] origin];
    v10 = [v9 sourceKey];
    [SGSqliteDatabase bindParam:a2 name:":sourceKey" nsstring:v10];
  }

  else
  {
    [SGSqliteDatabase bindParamToNull:a2 name:":sourceKey"];
  }

  v11 = [a1[4] title];
  [SGSqliteDatabase bindParam:a2 name:":title" nsstring:v11];

  v12 = [a1[5] dueDateComponents];

  if (v12)
  {
    v13 = [a1[5] dueDateComponents];
    v14 = [v13 date];

    if (v14)
    {
      v15 = [SGSqlEntityStore _serializeDate:v14];
      [SGSqliteDatabase bindParam:a2 name:":dueDateComponents" nsstring:v15];
    }

    else
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v24 = [a1[5] dueDateComponents];
        v25 = 138412290;
        v26 = v24;
        _os_log_fault_impl(&dword_231E60000, v16, OS_LOG_TYPE_FAULT, "null date derived from reminder.dueDateComponents is unexpected: %@", &v25, 0xCu);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }

      [SGSqliteDatabase bindParamToNull:a2 name:":dueDateComponents"];
    }
  }

  else
  {
    [SGSqliteDatabase bindParamToNull:a2 name:":dueDateComponents"];
  }

  v17 = [a1[4] dueStorageLocation];
  if (v17)
  {
    +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":dueLocationId", [a1[6] commitStorageLocation:v17]);
  }

  else
  {
    [SGSqliteDatabase bindParamToNull:a2 name:":dueLocationId"];
  }

  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":dueLocationType", [a1[4] dueLocationType]);
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":dueLocationTrigger", [a1[4] dueLocationTrigger]);
  v18 = [a1[4] sourceURL];
  v19 = [v18 absoluteString];
  [SGSqliteDatabase bindParam:a2 name:":sourceUrl" nsstring:v19];

  v20 = [a1[4] creationDate];
  [v20 timeIntervalSince1970];
  [SGSqliteDatabase bindParam:a2 name:":creationDate" double:?];

  v21 = [a1[4] opaqueKey];
  [SGSqliteDatabase bindParam:a2 name:":opaqueKey" nsstring:v21];

  v22 = [a1[4] uniqueKey];
  [SGSqliteDatabase bindParam:a2 name:":uniqueKey" nsstring:v22];

  v23 = [a1[4] contactIdentifier];
  [SGSqliteDatabase bindParam:a2 name:":contactIdentifier" nsstring:v23];

  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":reminderStatus", [a1[4] reminderStatus]);
}

sqlite3_int64 __53__SGSqlEntityStore_Reminders__commitStorageReminder___block_invoke_33(void *a1)
{
  [*(a1[4] + 8) prepAndRunQuery:a1[5] onPrep:a1[6] onRow:0 onError:0];
  result = sqlite3_last_insert_rowid([*(a1[4] + 8) handle]);
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (id)getReminder:(int64_t)reminder
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__SGSqlEntityStore_Reminders__getReminder___block_invoke;
  v16[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[4] = reminder;
  v5 = MEMORY[0x2383809F0](v16, a2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1154;
  v14 = __Block_byref_object_dispose__1155;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SGSqlEntityStore_Reminders__getReminder___block_invoke_11;
  v9[3] = &unk_27894B000;
  v9[5] = &v10;
  v9[6] = reminder;
  v9[4] = self;
  v6 = MEMORY[0x2383809F0](v9);
  [(SGSqliteDatabase *)self->_db prepAndRunQuery:@"SELECT title onPrep:dueDateComponents onRow:dueLocationId onError:dueLocationType, dueLocationTrigger, creationDate, contactIdentifier, reminderStatus FROM reminders WHERE id = ?", v5, v6, 0];
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __43__SGSqlEntityStore_Reminders__getReminder___block_invoke_11(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) reminderEntityIdForPrimaryKey:*(a1 + 48)];
  v5 = [*(a1 + 32) reminderDuplicateKeyForEntityId:v4];
  v6 = [*(a1 + 32) reminderSourceKeyForDuplicateKey:v5];
  v27 = [*(a1 + 32) reminderOriginForPrimaryKey:*(a1 + 48)];
  v7 = sqlite3_column_nsstring(a2, 0);
  v8 = sqlite3_column_nsstring(a2, 1);
  v9 = [SGSqlEntityStore _deserializeDateComponents:v8];

  if (!v9)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v11 = "SGSQLEntityStore+Reminders: unable to deserialize date components.";
      v12 = &v29;
LABEL_9:
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }

LABEL_10:
    v13 = v27;
    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "SGSQLEntityStore+Reminders: unable to fetch title.";
      v12 = buf;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v26 = v6;
  if (sqlite3_column_type(a2, 2) == 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = [*(a1 + 32) storageLocationWithPrimaryKey:{sqlite3_column_int64(a2, 2)}];
  }

  v25 = sqlite3_column_int(a2, 3);
  v14 = sqlite3_column_int(a2, 4);
  v15 = sqlite3_column_double(a2, 5);
  v16 = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v15];
  objc_autoreleasePoolPop(v16);
  v18 = sqlite3_column_nsstring(a2, 6);
  LOBYTE(v24) = sqlite3_column_int(a2, 7);
  LOBYTE(v23) = v14;
  v13 = v27;
  v19 = [[SGStorageReminder alloc] initWithRecordId:v4 duplicateKey:v5 sourceKey:v26 origin:v27 dueDate:v9 dueLocationType:v25 dueLocation:v10 dueLocationTrigger:v23 title:v7 reminderStatus:v24 contactIdentifier:v18 creationDate:v17];
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v6 = v26;
LABEL_13:

  return 1;
}

- (id)getReminderWithDuplicateKey:(id)key
{
  v4 = [(SGSqlEntityStore *)self reminderEntityIdForDuplicateKey:key];
  v5 = [(SGSqlEntityStore *)self getReminder:[(SGSqlEntityStore *)self reminderPrimaryKeyForEntityId:v4]];

  return v5;
}

- (id)getReminderWithRecordId:(id)id
{
  v4 = [(SGSqlEntityStore *)self reminderPrimaryKeyForEntityId:id];

  return [(SGSqlEntityStore *)self getReminder:v4];
}

+ (id)_serializeDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [v4 stringFromDate:dateCopy];

  return v5;
}

- (id)getNSDateForKey:(id)key
{
  v3 = [(SGSqlEntityStore *)self getForKey:key binder:&__block_literal_global_29];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v4 dateFromString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setNSDate:(id)date forKey:(id)key
{
  keyCopy = key;
  dateCopy = date;
  v8 = objc_opt_new();
  v9 = [v8 stringFromDate:dateCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SGSqlEntityStore_KVStore__setNSDate_forKey___block_invoke;
  v11[3] = &unk_278955E30;
  v12 = v9;
  v10 = v9;
  [(SGSqlEntityStore *)self setValue:v10 forKey:keyCopy binder:v11];
}

- (void)setNSString:(id)string forKey:(id)key
{
  stringCopy = string;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SGSqlEntityStore_KVStore__setNSString_forKey___block_invoke;
  v8[3] = &unk_278955E30;
  v9 = stringCopy;
  v7 = stringCopy;
  [(SGSqlEntityStore *)self setValue:v7 forKey:key binder:v8];
}

- (void)setDoubleNSNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SGSqlEntityStore_KVStore__setDoubleNSNumber_forKey___block_invoke;
  v8[3] = &unk_278955E30;
  v9 = numberCopy;
  v7 = numberCopy;
  [(SGSqlEntityStore *)self setValue:v7 forKey:key binder:v8];
}

- (void)incrementInt64NSNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  v8 = [(SGSqlEntityStore *)self getInt64NSNumberForKey:keyCopy];
  v9 = v8;
  v10 = &unk_284749158;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = MEMORY[0x277CCABB0];
  intValue = [v11 intValue];

  v14 = [v12 numberWithInt:{objc_msgSend(numberCopy, "intValue") + intValue}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__SGSqlEntityStore_KVStore__incrementInt64NSNumber_forKey___block_invoke;
  v16[3] = &unk_278955E30;
  v17 = numberCopy;
  v15 = numberCopy;
  [(SGSqlEntityStore *)self setValue:v14 forKey:keyCopy binder:v16];
}

- (void)setInt64NSNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SGSqlEntityStore_KVStore__setInt64NSNumber_forKey___block_invoke;
  v8[3] = &unk_278955E30;
  v9 = numberCopy;
  v7 = numberCopy;
  [(SGSqlEntityStore *)self setValue:v7 forKey:key binder:v8];
}

- (id)getForKey:(id)key binder:(id)binder
{
  keyCopy = key;
  binderCopy = binder;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1471;
  v23 = __Block_byref_object_dispose__1472;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SGSqlEntityStore_KVStore__getForKey_binder___block_invoke;
  v17[3] = &unk_278955E30;
  v8 = keyCopy;
  v18 = v8;
  v9 = MEMORY[0x2383809F0](v17);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__SGSqlEntityStore_KVStore__getForKey_binder___block_invoke_2;
  v14[3] = &unk_2789554B8;
  v16 = &v19;
  v10 = binderCopy;
  v15 = v10;
  v11 = MEMORY[0x2383809F0](v14);
  [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"SELECT value FROM metadata WHERE key = :key LIMIT 1" onPrep:v9 onRow:v11 onError:0];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

uint64_t __46__SGSqlEntityStore_KVStore__getForKey_binder___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *MEMORY[0x277D42698];
}

- (void)deleteValueForKey:(id)key
{
  keyCopy = key;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SGSqlEntityStore_KVStore__deleteValueForKey___block_invoke;
  v7[3] = &unk_278955830;
  v8 = keyCopy;
  selfCopy = self;
  v6 = keyCopy;
  [(SGSqliteDatabase *)db writeTransaction:v7];
}

void __47__SGSqlEntityStore_KVStore__deleteValueForKey___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SGSqlEntityStore_KVStore__deleteValueForKey___block_invoke_2;
  v3[3] = &unk_278955E30;
  v4 = *(a1 + 32);
  v2 = MEMORY[0x2383809F0](v3);
  [*(*(a1 + 40) + 8) prepAndRunSQL:@"DELETE FROM metadata WHERE key = :key" onPrep:v2 onRow:0 onError:0];
}

- (void)setValue:(id)value forKey:(id)key binder:(id)binder
{
  keyCopy = key;
  binderCopy = binder;
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SGSqlEntityStore_KVStore__setValue_forKey_binder___block_invoke;
  v12[3] = &unk_278955A98;
  selfCopy = self;
  v15 = binderCopy;
  v13 = keyCopy;
  v10 = binderCopy;
  v11 = keyCopy;
  [(SGSqliteDatabase *)db writeTransaction:v12];
}

void __52__SGSqlEntityStore_KVStore__setValue_forKey_binder___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __52__SGSqlEntityStore_KVStore__setValue_forKey_binder___block_invoke_2;
  v6 = &unk_278955490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v2 = MEMORY[0x2383809F0](&v3);
  [*(*(a1 + 40) + 8) prepAndRunSQL:@"INSERT OR REPLACE INTO metadata (key onPrep:value) VALUES (:key onRow::value)" onError:{v2, 0, 0, v3, v4, v5, v6}];
}

void __52__SGSqlEntityStore_KVStore__setValue_forKey_binder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":key" toNSString:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)markMailIntelligenceStagedLogsAsLoggedAndClearLogPayloadForMessageId:(id)id
{
  idCopy = id;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__SGSqlEntityStore_Saliency__markMailIntelligenceStagedLogsAsLoggedAndClearLogPayloadForMessageId___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  [(SGSqliteDatabase *)db writeTransaction:v7];
}

void __99__SGSqlEntityStore_Saliency__markMailIntelligenceStagedLogsAsLoggedAndClearLogPayloadForMessageId___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __99__SGSqlEntityStore_Saliency__markMailIntelligenceStagedLogsAsLoggedAndClearLogPayloadForMessageId___block_invoke_2;
  v2[3] = &unk_278955E30;
  v3 = *(a1 + 40);
  [v1 prepAndRunSQL:@"UPDATE mailIntelligence_saliency SET isLogged = TRUE onPrep:stagedLog = NULL WHERE messageId = :messageId" onRow:v2 onError:{0, 0}];
}

- (void)setMailIntelligenceStagedLogs:(id)logs forMessageId:(id)id
{
  idCopy = id;
  data = [logs data];
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SGSqlEntityStore_Saliency__setMailIntelligenceStagedLogs_forMessageId___block_invoke;
  v11[3] = &unk_278956130;
  v11[4] = self;
  v12 = idCopy;
  v13 = data;
  v9 = data;
  v10 = idCopy;
  [(SGSqliteDatabase *)db writeTransaction:v11];
}

void __73__SGSqlEntityStore_Saliency__setMailIntelligenceStagedLogs_forMessageId___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SGSqlEntityStore_Saliency__setMailIntelligenceStagedLogs_forMessageId___block_invoke_2;
  v3[3] = &unk_2789559D0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 prepAndRunSQL:@"UPDATE mailIntelligence_saliency SET stagedLog=:stagedLog WHERE messageId = :messageId" onPrep:v3 onRow:0 onError:0];
}

void __73__SGSqlEntityStore_Saliency__setMailIntelligenceStagedLogs_forMessageId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":messageId" toNSString:v3];
  [v4 bindNamedParam:":stagedLog" toNSData:*(a1 + 40)];
}

- (id)mailIntelligenceStagedLogsForMessageId:(id)id
{
  idCopy = id;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2618;
  v34 = __Block_byref_object_dispose__2619;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  db = self->_db;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SGSqlEntityStore_Saliency__mailIntelligenceStagedLogsForMessageId___block_invoke;
  v24[3] = &unk_278955E30;
  v6 = idCopy;
  v25 = v6;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__SGSqlEntityStore_Saliency__mailIntelligenceStagedLogsForMessageId___block_invoke_2;
  v23[3] = &unk_278953EE8;
  v23[4] = &v30;
  v23[5] = &v26;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT stagedLog onPrep:isLogged FROM mailIntelligence_saliency WHERE messageId = :messageId" onRow:v24 onError:v23, 0];
  if (*(v27 + 24) == 1)
  {
    v7 = [SGMIStagedLogRecord alloc];
    v8 = [(SGMIStagedLogRecord *)v7 initWithLog:0 isLogged:*(v27 + 24)];
  }

  else
  {
    if (v31[5])
    {
      v9 = [SGMIMetricsMailIntelligenceForMessage alloc];
      v10 = [(SGMIMetricsMailIntelligenceForMessage *)v9 initWithData:v31[5]];
    }

    else
    {
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      [(SGMIMetricsMailIntelligenceForMessage *)v10 setActive:v11];

      v12 = objc_opt_new();
      active = [(SGMIMetricsMailIntelligenceForMessage *)v10 active];
      [active setMissingAttachments:v12];

      v14 = objc_opt_new();
      active2 = [(SGMIMetricsMailIntelligenceForMessage *)v10 active];
      [active2 setMissingRecipients:v14];

      v16 = objc_opt_new();
      active3 = [(SGMIMetricsMailIntelligenceForMessage *)v10 active];
      [active3 setSubmodelsProbabilities:v16];

      v18 = objc_opt_new();
      trialMetadata = [v18 trialMetadata];
      active4 = [(SGMIMetricsMailIntelligenceForMessage *)v10 active];
      [active4 setTrialMetadata:trialMetadata];
    }

    v21 = [SGMIStagedLogRecord alloc];
    v8 = [(SGMIStagedLogRecord *)v21 initWithLog:v10 isLogged:*(v27 + 24)];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v8;
}

uint64_t __69__SGSqlEntityStore_Saliency__mailIntelligenceStagedLogsForMessageId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumnName:"stagedLog" table:"mailIntelligence_saliency"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 getIntegerForColumnName:"isLogged" table:"mailIntelligence_saliency"];
  *(*(*(a1 + 40) + 8) + 24) = v7 != 0;
  return *MEMORY[0x277D42698];
}

- (void)setAllMailIntelligenceAsNotSalient
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__SGSqlEntityStore_Saliency__setAllMailIntelligenceAsNotSalient__block_invoke;
  v3[3] = &unk_278954A30;
  v3[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v3];
}

- (void)setAllMailIntelligenceAsSalient
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__SGSqlEntityStore_Saliency__setAllMailIntelligenceAsSalient__block_invoke;
  v3[3] = &unk_278954A30;
  v3[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v3];
}

- (void)clearSaliencyTable
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SGSqlEntityStore_Saliency__clearSaliencyTable__block_invoke;
  v3[3] = &unk_278954A30;
  v3[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v3];
}

- (int64_t)updateSaliencyCreationTimestampForTesting:(int64_t)testing timestamp:(SGUnixTimestamp_)timestamp
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SGSqlEntityStore_Saliency__updateSaliencyCreationTimestampForTesting_timestamp___block_invoke;
  v10[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v10[4] = testing;
  v10[5] = *&timestamp.secondsFromUnixEpoch;
  v5 = MEMORY[0x2383809F0](v10, a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__SGSqlEntityStore_Saliency__updateSaliencyCreationTimestampForTesting_timestamp___block_invoke_2;
  v9[3] = &unk_278955EA0;
  v9[4] = &v11;
  v6 = MEMORY[0x2383809F0](v9);
  [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"UPDATE mailIntelligence_saliency SET creationTimestamp = :creationTimestamp WHERE id = :id" onPrep:v5 onRow:v6 onError:0];
  v7 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v7;
}

void __82__SGSqlEntityStore_Saliency__updateSaliencyCreationTimestampForTesting_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":id" toInt64:v3];
  [v4 bindNamedParam:":creationTimestamp" toDouble:*(a1 + 40)];
}

- (int64_t)commitSaliency:(id)saliency
{
  saliencyCopy = saliency;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SGSqlEntityStore_Saliency__commitSaliency___block_invoke;
  v9[3] = &unk_2789561A8;
  v11 = &v12;
  v9[4] = self;
  v6 = saliencyCopy;
  v10 = v6;
  [(SGSqliteDatabase *)db writeTransaction:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__45__SGSqlEntityStore_Saliency__commitSaliency___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) messageId];
  *(*(*(a1 + 48) + 8) + 24) = [v2 checkExistsSaliencyForMessageId:v3];

  v4 = *(a1 + 32);
  if ((*(*(*(a1 + 48) + 8) + 24) & 0x8000000000000000) != 0)
  {
    result = [v4 insertSaliency:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
  }

  else
  {
    result = [v4 updateSaliency:? saliency:?];
    v6 = *(*(a1 + 48) + 8);
    if (result != -1)
    {
      result = *(v6 + 24);
    }
  }

  *(v6 + 24) = result;
  return result;
}

- (int64_t)insertSaliency:(id)saliency
{
  saliencyCopy = saliency;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__SGSqlEntityStore_Saliency__insertSaliency___block_invoke;
  v18[3] = &unk_278955E30;
  v19 = saliencyCopy;
  v5 = saliencyCopy;
  v6 = MEMORY[0x2383809F0](v18);
  db = self->_db;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __45__SGSqlEntityStore_Saliency__insertSaliency___block_invoke_2;
  v14 = &unk_278955A98;
  selfCopy = self;
  v16 = @"INSERT INTO mailIntelligence_saliency (creationTimestamp, messageId, mailboxId, score, isSalient, isGteSalient, isCounted) VALUES (:creationTimestamp, :messageId, :mailboxId, :score, :isSalient, :isGteSalient, :isCounted)";
  v17 = v6;
  v8 = v6;
  [(SGSqliteDatabase *)db writeTransaction:&v11];
  insert_rowid = sqlite3_last_insert_rowid([(SGSqliteDatabase *)self->_db handle:v11]);

  return insert_rowid;
}

void __45__SGSqlEntityStore_Saliency__insertSaliency___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = a2;
  v4 = [v3 creationDate];
  if (v4)
  {
    v5 = [*(a1 + 32) creationDate];
    [v5 timeIntervalSinceReferenceDate];
    Current = v6;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  [v11 bindNamedParam:":creationTimestamp" toDouble:Current];
  v8 = [*(a1 + 32) messageId];
  [v11 bindNamedParam:":messageId" toNSString:v8];

  v9 = [*(a1 + 32) mailboxId];
  [v11 bindNamedParam:":mailboxId" toNSString:v9];

  v10 = [*(a1 + 32) score];
  [v11 bindNamedParam:":score" toDoubleAsNSNumber:v10];

  [v11 bindNamedParam:":isSalient" toInteger:{objc_msgSend(*(a1 + 32), "isSalient")}];
  [v11 bindNamedParam:":isGteSalient" toInteger:{objc_msgSend(*(a1 + 32), "gteSaliency")}];
  [v11 bindNamedParam:":isCounted" toInteger:{objc_msgSend(*(a1 + 32), "isCounted")}];
}

- (int64_t)updateSaliency:(int64_t)saliency saliency:(id)a4
{
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SGSqlEntityStore_Saliency__updateSaliency_saliency___block_invoke;
  v20[3] = &unk_2789559F8;
  saliencyCopy = saliency;
  v7 = v6;
  v21 = v7;
  v8 = MEMORY[0x2383809F0](v20);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__SGSqlEntityStore_Saliency__updateSaliency_saliency___block_invoke_2;
  v19[3] = &unk_278955EA0;
  v19[4] = &v23;
  v9 = MEMORY[0x2383809F0](v19);
  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__SGSqlEntityStore_Saliency__updateSaliency_saliency___block_invoke_3;
  v15[3] = &unk_27894BC20;
  v15[4] = self;
  v16 = @"UPDATE mailIntelligence_saliency SET messageId = :messageId, mailboxId = :mailboxId, score = :score, isSalient = :isSalient, isGteSalient = :isGteSalient, isCounted = :isCounted WHERE id = :id";
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  [(SGSqliteDatabase *)db writeTransaction:v15];
  v13 = v24[3];

  _Block_object_dispose(&v23, 8);
  return v13;
}

void __54__SGSqlEntityStore_Saliency__updateSaliency_saliency___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":id" toInt64:v3];
  v5 = [*(a1 + 32) score];
  [v5 doubleValue];
  [v4 bindNamedParam:":score" toDouble:?];

  [v4 bindNamedParam:":isSalient" toInteger:{objc_msgSend(*(a1 + 32), "isSalient")}];
  [v4 bindNamedParam:":isGteSalient" toInteger:{objc_msgSend(*(a1 + 32), "gteSaliency")}];
  [v4 bindNamedParam:":isCounted" toInteger:{objc_msgSend(*(a1 + 32), "isCounted")}];
  v6 = [*(a1 + 32) messageId];
  [v4 bindNamedParam:":messageId" toNSString:v6];

  v7 = [*(a1 + 32) mailboxId];
  [v4 bindNamedParam:":mailboxId" toNSString:v7];
}

- (int64_t)checkExistsSaliencyForMessageId:(id)id
{
  idCopy = id;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SGSqlEntityStore_Saliency__checkExistsSaliencyForMessageId___block_invoke;
  v11[3] = &unk_278955E30;
  v5 = idCopy;
  v12 = v5;
  v6 = MEMORY[0x2383809F0](v11);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__SGSqlEntityStore_Saliency__checkExistsSaliencyForMessageId___block_invoke_2;
  v10[3] = &unk_278955EA0;
  v10[4] = &v13;
  v7 = MEMORY[0x2383809F0](v10);
  [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"SELECT id FROM mailIntelligence_saliency WHERE messageId = :messageId" onPrep:v6 onRow:v7 onError:0];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (id)sortedSaliencyResultsRestrictedToMailboxTypes:(id)types mailboxIds:(id)ids receivedOnOrAfter:(id)after ascending:(BOOL)ascending limit:(unint64_t)limit
{
  ascendingCopy = ascending;
  typesCopy = types;
  idsCopy = ids;
  afterCopy = after;
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:limit];
  if (typesCopy)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "SGMI SGSqlEntityStore+Saliency: The sortedSaliencyResults method do not currently use mailboxType", buf, 2u);
    }

    objc_autoreleasePoolPop(v16);
  }

  if (idsCopy)
  {
    v18 = objc_autoreleasePoolPush();
    mailboxId = [CFSTR(""SELECT messageId mailboxId];
    objc_autoreleasePoolPop(v18);
    if (!afterCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  mailboxId = @"SELECT messageId, mailboxId, score, isSalient, creationTimestamp FROM mailIntelligence_saliency WHERE 1";
  if (afterCopy)
  {
LABEL_7:
    v20 = objc_autoreleasePoolPush();
    v21 = [(__CFString *)mailboxId stringByAppendingString:@" AND creationTimestamp > :minDate"];

    objc_autoreleasePoolPop(v20);
    mailboxId = v21;
  }

LABEL_8:
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v23 = @"DESC";
  if (ascendingCopy)
  {
    v23 = @"ASC";
  }

  v24 = [v22 initWithFormat:@"%@ ORDER BY score %@ LIMIT :limit", mailboxId, v23];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __121__SGSqlEntityStore_Saliency__sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit___block_invoke;
  v35[3] = &unk_27894B490;
  v36 = typesCopy;
  v37 = idsCopy;
  v38 = afterCopy;
  limitCopy = limit;
  v25 = afterCopy;
  v26 = idsCopy;
  v27 = typesCopy;
  v28 = MEMORY[0x2383809F0](v35);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __121__SGSqlEntityStore_Saliency__sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit___block_invoke_2;
  v33[3] = &unk_278955A20;
  v29 = v15;
  v34 = v29;
  v30 = MEMORY[0x2383809F0](v33);
  [(SGSqliteDatabase *)self->_db prepAndRunSQL:v24 onPrep:v28 onRow:v30 onError:0];
  v31 = v29;

  return v29;
}

void __121__SGSqlEntityStore_Saliency__sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = v3;
  if (a1[4])
  {
    [v3 bindNamedParam:":mailboxTypes" toNSArray:?];
    v4 = v6;
  }

  if (a1[5])
  {
    [v4 bindNamedParam:":mailboxIds" toNSArray:?];
    v4 = v6;
  }

  v5 = a1[6];
  if (v5)
  {
    [v5 timeIntervalSinceReferenceDate];
    [v6 bindNamedParam:":minDate" toDouble:?];
    v4 = v6;
  }

  [v4 bindNamedParam:":limit" toInteger:a1[7]];
}

uint64_t __121__SGSqlEntityStore_Saliency__sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"messageId" table:"mailIntelligence_saliency"];
  v5 = [v3 getNSStringForColumnName:"mailboxId" table:"mailIntelligence_saliency"];
  v6 = [v3 doubleAsNonnullNSNumberForColumnName:"score" table:"mailIntelligence_saliency"];
  v7 = [v3 getIntegerForColumnName:"isSalient" table:"mailIntelligence_saliency"] != 0;
  [v3 getDoubleForColumnName:"creationTimestamp" table:"mailIntelligence_saliency"];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = *(a1 + 32);
  v12 = objc_alloc(MEMORY[0x277D02030]);
  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = @"Unknown Mailbox";
  }

  v14 = [v12 initWithMessageId:v4 mailboxId:v13 score:v6 isSalient:v7 creationDate:v10];
  [v11 addObject:v14];

  v15 = MEMORY[0x277D42690];
  return *v15;
}

- (id)topSalienciesForMailboxId:(id)id limit:(int64_t)limit
{
  idCopy = id;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:limit];
  if (idCopy)
  {
    score = [CFSTR(""SELECT messageId score];
  }

  else
  {
    score = @"SELECT messageId, score, isSalient, creationTimestamp FROM mailIntelligence_saliency WHERE isSalient != 0";
  }

  v9 = [(__CFString *)score stringByAppendingString:@" ORDER BY creationTimestamp DESC LIMIT :limit"];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__SGSqlEntityStore_Saliency__topSalienciesForMailboxId_limit___block_invoke;
  v23[3] = &unk_2789559F8;
  v10 = idCopy;
  v24 = v10;
  limitCopy = limit;
  v11 = MEMORY[0x2383809F0](v23);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __62__SGSqlEntityStore_Saliency__topSalienciesForMailboxId_limit___block_invoke_2;
  v20 = &unk_278955980;
  v12 = v7;
  v21 = v12;
  v22 = v10;
  v13 = v10;
  v14 = MEMORY[0x2383809F0](&v17);
  [(SGSqliteDatabase *)self->_db prepAndRunSQL:v9 onPrep:v11 onRow:v14 onError:0, v17, v18, v19, v20];
  v15 = v12;

  return v12;
}

void __62__SGSqlEntityStore_Saliency__topSalienciesForMailboxId_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 bindNamedParam:":mailboxId" toNSString:?];
    v3 = v4;
  }

  [v3 bindNamedParam:":limit" toInteger:*(a1 + 40)];
}

uint64_t __62__SGSqlEntityStore_Saliency__topSalienciesForMailboxId_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"messageId" table:"mailIntelligence_saliency"];
  v5 = [v3 doubleAsNonnullNSNumberForColumnName:"score" table:"mailIntelligence_saliency"];
  v6 = [v3 getIntegerForColumnName:"isSalient" table:"mailIntelligence_saliency"] != 0;
  [v3 getDoubleForColumnName:"creationTimestamp" table:"mailIntelligence_saliency"];
  v8 = v7;

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
  v10 = *(a1 + 32);
  v11 = objc_alloc(MEMORY[0x277D02030]);
  if (*(a1 + 40))
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v12 = @"All Mailboxes";
  }

  v13 = [v11 initWithMessageId:v4 mailboxId:v12 score:v5 isSalient:v6 creationDate:v9];
  [v10 addObject:v13];

  v14 = MEMORY[0x277D42690];
  return *v14;
}

- (id)saliencyForMessageId:(id)id
{
  idCopy = id;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__SGSqlEntityStore_Saliency__saliencyForMessageId___block_invoke;
  v20[3] = &unk_278955E30;
  v5 = idCopy;
  v21 = v5;
  v6 = MEMORY[0x2383809F0](v20);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2618;
  v18 = __Block_byref_object_dispose__2619;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SGSqlEntityStore_Saliency__saliencyForMessageId___block_invoke_27;
  v11[3] = &unk_27894E310;
  v13 = &v14;
  v7 = v5;
  v12 = v7;
  v8 = MEMORY[0x2383809F0](v11);
  [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"SELECT score onPrep:mailboxId onRow:isSalient onError:isGteSalient, isCounted, creationTimestamp FROM mailIntelligence_saliency WHERE messageId = :messageId", v6, v8, 0];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __51__SGSqlEntityStore_Saliency__saliencyForMessageId___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 doubleAsNonnullNSNumberForColumnName:"score" table:"mailIntelligence_saliency"];
  v5 = [v3 getIntegerForColumnName:"isSalient" table:"mailIntelligence_saliency"] != 0;
  v6 = [v3 getIntegerForColumnName:"isGteSalient" table:"mailIntelligence_saliency"] != 0;
  v7 = [v3 getIntegerForColumnName:"isCounted" table:"mailIntelligence_saliency"] != 0;
  v8 = [v3 nonnullNSStringForColumnName:"mailboxId" table:"mailIntelligence_saliency"];
  [v3 getDoubleForColumnName:"creationTimestamp" table:"mailIntelligence_saliency"];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v10];
  v12 = [objc_alloc(MEMORY[0x277D02030]) initWithMessageId:*(a1 + 32) mailboxId:v8 score:v4 isSalient:v5 gteSaliency:v6 isCounted:v7 creationDate:v11];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = MEMORY[0x277D42698];
  return *v15;
}

- (id)uniqueIdentifierForMessageId:(id)id
{
  idCopy = id;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3352;
  v17 = __Block_byref_object_dispose__3353;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SGSqlEntityStore_SpotlightMapping_Internal__uniqueIdentifierForMessageId___block_invoke;
  v11[3] = &unk_278955E30;
  v5 = idCopy;
  v12 = v5;
  v6 = MEMORY[0x2383809F0](v11);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__SGSqlEntityStore_SpotlightMapping_Internal__uniqueIdentifierForMessageId___block_invoke_2;
  v10[3] = &unk_278955EA0;
  v10[4] = &v13;
  v7 = MEMORY[0x2383809F0](v10);
  [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"SELECT uniqueIdentifier FROM mailIntelligence_spotlightMapping WHERE messageId = :messageId" onPrep:v6 onRow:v7 onError:0];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __76__SGSqlEntityStore_SpotlightMapping_Internal__uniqueIdentifierForMessageId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"uniqueIdentifier" table:"mailIntelligence_spotlightMapping"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

- (void)logConfirmPercentAfterContactDetailRejection
{
  [(SGSqlEntityStore *)self incStatsCounterWithKey:@"contactDetailRejections"];
  v3 = [(SGSqlEntityStore *)self loadStatsCounterWithKey:@"contactDetailConfirmations"];
  [v3 doubleValue];
  [SGSqlEntityStore _logConfirmPercentWithConfirmCount:"_logConfirmPercentWithConfirmCount:rejectCount:domain:suffix:" rejectCount:@"behavior.scalar.confirmPercent" domain:@"contacts.detail" suffix:?];
}

- (void)logConfirmPercentAfterContactDetailConfirmation
{
  [(SGSqlEntityStore *)self incStatsCounterWithKey:@"contactDetailConfirmations"];
  v4 = v3;
  v6 = [(SGSqlEntityStore *)self loadStatsCounterWithKey:@"contactDetailRejections"];
  [v6 doubleValue];
  [(SGSqlEntityStore *)self _logConfirmPercentWithConfirmCount:@"behavior.scalar.confirmPercent" rejectCount:@"contacts.detail" domain:v4 suffix:v5];
}

- (void)logConfirmPercentAfterContactRejection
{
  [(SGSqlEntityStore *)self incStatsCounterWithKey:@"contactRejections"];
  v3 = [(SGSqlEntityStore *)self loadStatsCounterWithKey:@"contactConfirmations"];
  [v3 doubleValue];
  [SGSqlEntityStore _logConfirmPercentWithConfirmCount:"_logConfirmPercentWithConfirmCount:rejectCount:domain:suffix:" rejectCount:@"behavior.scalar.confirmPercent" domain:@"contacts.contact" suffix:?];
}

- (void)logConfirmPercentAfterContactConfirmation
{
  [(SGSqlEntityStore *)self incStatsCounterWithKey:@"contactConfirmations"];
  v4 = v3;
  v6 = [(SGSqlEntityStore *)self loadStatsCounterWithKey:@"contactRejections"];
  [v6 doubleValue];
  [(SGSqlEntityStore *)self _logConfirmPercentWithConfirmCount:@"behavior.scalar.confirmPercent" rejectCount:@"contacts.contact" domain:v4 suffix:v5];
}

- (void)_logConfirmPercentWithConfirmCount:(double)count rejectCount:(double)rejectCount domain:(id)domain suffix:(id)suffix
{
  v6 = count + rejectCount;
  if (v6 > 15.0)
  {
    [SGAggregateLogging setKeyWithDomain:domain suffix:suffix toValue:(count * 100.0 / v6)];
  }
}

- (double)incStatsCounterWithKey:(id)key byValue:(double)value
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SGSqlEntityStore_StatsCounters__incStatsCounterWithKey_byValue___block_invoke;
  v11[3] = &unk_278954758;
  v11[4] = self;
  v8 = keyCopy;
  v12 = v8;
  v13 = &v15;
  valueCopy = value;
  [(SGSqliteDatabase *)db writeTransaction:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

void __66__SGSqlEntityStore_StatsCounters__incStatsCounterWithKey_byValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadStatsCounterWithKey:*(a1 + 40)];
  v5 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3 + *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 56);
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
  [*(a1 + 32) storeStatsCounterWithKey:*(a1 + 40) value:*(*(*(a1 + 48) + 8) + 24)];
}

- (id)loadStatsCounterWithKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6630;
  v16 = __Block_byref_object_dispose__6631;
  v17 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SGSqlEntityStore_StatsCounters__loadStatsCounterWithKey___block_invoke;
  v10[3] = &unk_278956070;
  v6 = keyCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SGSqlEntityStore_StatsCounters__loadStatsCounterWithKey___block_invoke_2;
  v9[3] = &unk_278954658;
  v9[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT value FROM statsCounters WHERE key = :key" onPrep:v10 onRow:v9 onError:0];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __59__SGSqlEntityStore_StatsCounters__loadStatsCounterWithKey___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(a2, 0)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)storeStatsCounterWithKey:(id)key value:(double)value
{
  keyCopy = key;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SGSqlEntityStore_StatsCounters__storeStatsCounterWithKey_value___block_invoke;
  v9[3] = &unk_278955958;
  v9[4] = self;
  v10 = keyCopy;
  valueCopy = value;
  v8 = keyCopy;
  [(SGSqliteDatabase *)db writeTransaction:v9];
}

void __66__SGSqlEntityStore_StatsCounters__storeStatsCounterWithKey_value___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v5[1] = @"value";
  v6[0] = v1;
  v5[0] = @"key";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 insertOrReplaceIntoTable:@"statsCounters" dictionary:v4 onError:0];
}

- (void)analyzeMergeBlobs:(id)blobs
{
  selfCopy = self;
  blobsCopy = blobs;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Starting identity blob analysis.", buf, 2u);
  }

  v18 = +[SGContactStoreFactory contactStore];
  v5 = dispatch_semaphore_create(0);
  v6 = v21;
  v7 = off_278949000;
LABEL_4:
  v8 = objc_autoreleasePoolPush();
  v9 = v7[36];
  context = v8;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v10 = v6;
  v21[0] = __53__SGSqlEntityStore_IdentityStore__analyzeMergeBlobs___block_invoke;
  v21[1] = &unk_278954A30;
  v11 = v5;
  v22 = v11;
  [(__objc2_class *)v9 notifyWhenFlushed:v20];
  while (1)
  {
    if (blobsCopy)
    {
      v12 = +[SGXPCActivityManager sharedInstance];
      v13 = [v12 shouldDefer:blobsCopy];

      if (v13)
      {
        break;
      }
    }

    if ([MEMORY[0x277D425A0] waitForSemaphore:v11 timeoutSeconds:{0.5, selfCopy}] != 1)
    {
      if (![(SGSqlEntityStore *)selfCopy _analyzeMergeBlobsIncremental:v18])
      {

        objc_autoreleasePoolPop(context);
        v7 = off_278949000;
        v6 = v10;
        goto LABEL_4;
      }

      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_INFO, "Blob analysis complete.", buf, 2u);
      }

      v15 = context;
      goto LABEL_15;
    }
  }

  v14 = sgLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_INFO, "Blob analysis deferring.", buf, 2u);
  }

  v15 = context;
  if (!xpc_activity_set_state(blobsCopy, 3))
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "Could not defer blob analysis.", buf, 2u);
    }

LABEL_15:
  }

  objc_autoreleasePoolPop(v15);
}

- (BOOL)_analyzeMergeBlobsIncremental:(id)incremental
{
  incrementalCopy = incremental;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke;
  v12[3] = &unk_2789561A8;
  v12[4] = self;
  v6 = incrementalCopy;
  v13 = v6;
  v14 = &v15;
  [(SGSqliteDatabase *)db writeTransaction:v12];
  if (*(v16 + 24) == 1)
  {
    v7 = [(SGSqlEntityStore *)self _computeBlobsRaw:0];
    [(SGSqlEntityStore *)self _writeMergeBlobSnapshotForAnalysis:v7];
  }

  _isBlobAnalysisQueueEmpty = [(SGSqlEntityStore *)self _isBlobAnalysisQueueEmpty];
  if (_isBlobAnalysisQueueEmpty)
  {
    v9 = self->_db;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_5;
    v11[3] = &unk_278954A30;
    v11[4] = self;
    [(SGSqliteDatabase *)v9 writeTransaction:v11];
  }

  _Block_object_dispose(&v15, 8);
  return _isBlobAnalysisQueueEmpty;
}

void __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _popMergeBlobForAnalysis];
  if (v2)
  {
    v21 = a1;
    v19 = v2;
    [*(a1 + 32) makeInterdictsForBlob:v2 withContactStore:*(a1 + 40)];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v26;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v26 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v25 + 1) + 8 * i);
          v8 = [v7 first];
          v9 = sgMap();
          v10 = [v9 sortedArrayUsingSelector:sel_compare_];
          v11 = SGDelimitedStringsSerializeArray();

          v12 = [v7 second];
          v13 = sgMap();
          v14 = [v13 sortedArrayUsingSelector:sel_compare_];
          v15 = SGDelimitedStringsSerializeArray();

          v16 = *(*(v21 + 32) + 8);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_4;
          v22[3] = &unk_278954630;
          v23 = v11;
          v24 = v15;
          v17 = v15;
          v18 = v11;
          [v16 prepAndRunQuery:@"INSERT INTO identityInterdictNext (a onPrep:b) VALUES (? onRow:?)" onError:{v22, 0, 0}];
        }

        v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v4);
    }

    v2 = v19;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_5(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) prepAndRunSQL:@"DROP TABLE identityInterdict" onPrep:0 onRow:0 onError:0];
  [*(*(a1 + 32) + 8) prepAndRunSQL:@"CREATE TABLE identityInterdict (a TEXT NOT NULL onPrep:b TEXT NOT NULL)" onRow:0 onError:{0, 0}];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_6;
  v20[3] = &unk_278955A20;
  v5 = v2;
  v21 = v5;
  [v4 prepAndRunSQL:@"SELECT a onPrep:b FROM identityInterdictNext" onRow:0 onError:{v20, 0}];
  do
  {
    do
    {
      v6 = simplifyInterdicts(v5, v3);
      [v5 removeAllObjects];
      v7 = simplifyInterdicts(v3, v5);
      [v3 removeAllObjects];
    }

    while ((v6 & 1) != 0);
  }

  while ((v7 & 1) != 0);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = *(*(a1 + 32) + 8);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_7;
        v15[3] = &unk_278956070;
        v15[4] = v13;
        [v14 prepAndRunQuery:@"INSERT INTO identityInterdict (a onPrep:b) VALUES (? onRow:?)" onError:{v15, 0, 0}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  [*(*(a1 + 32) + 8) prepAndRunQuery:@"DELETE FROM identityInterdictNext" onPrep:0 onRow:0 onError:0];
  [*(a1 + 32) _markIdentityStoreDirty];
  [*(a1 + 32) syncNewBlobsIfChanged];
}

uint64_t __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"a" table:0];
  v5 = [v3 nonnullNSStringForColumnName:"b" table:0];

  v6 = [v4 compare:v5];
  if (v6 == 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v6 == 1)
  {
    v4 = v5;
  }

  v8 = *(a1 + 32);
  v9 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v4 second:v7];
  [v8 addObject:v9];

  v10 = MEMORY[0x277D42690];
  return *v10;
}

void __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_7(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) first];
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [*(a1 + 32) second];
  v5 = v6;
  sqlite3_bind_text(a2, 2, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0xFFFFFFFFFFFFFFFFLL);
}

id __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 numericValue];

  v6 = [v4 initWithFormat:@"%lld", v5];

  return v6;
}

id __65__SGSqlEntityStore_IdentityStore___analyzeMergeBlobsIncremental___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 numericValue];

  v6 = [v4 initWithFormat:@"%lld", v5];

  return v6;
}

- (BOOL)_isBlobAnalysisQueueEmpty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SGSqlEntityStore_IdentityStore___isBlobAnalysisQueueEmpty__block_invoke;
  v5[3] = &unk_278954658;
  v5[4] = &v6;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT 1 FROM identityBlobAnalysisJobs LIMIT 1" onPrep:0 onRow:v5 onError:0];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_popMergeBlobForAnalysis
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9953;
  v10 = __Block_byref_object_dispose__9954;
  v11 = 0;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SGSqlEntityStore_IdentityStore___popMergeBlobForAnalysis__block_invoke;
  v5[3] = &unk_2789561D0;
  v5[4] = self;
  v5[5] = &v6;
  [(SGSqliteDatabase *)db writeTransaction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__SGSqlEntityStore_IdentityStore___popMergeBlobForAnalysis__block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v2 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SGSqlEntityStore_IdentityStore___popMergeBlobForAnalysis__block_invoke_2;
  v6[3] = &unk_27894E5A0;
  v3 = *(a1 + 40);
  v6[4] = &v7;
  v6[5] = v3;
  [v2 prepAndRunQuery:@"SELECT id onPrep:mergeBlob FROM identityBlobAnalysisJobs" onRow:0 onError:{v6, 0}];
  if (v8[3] != -1)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__SGSqlEntityStore_IdentityStore___popMergeBlobForAnalysis__block_invoke_3;
    v5[3] = &unk_27894F760;
    v5[4] = &v7;
    [v4 prepAndRunQuery:@"DELETE FROM identityBlobAnalysisJobs WHERE id = :blobId" onPrep:v5 onRow:0 onError:0];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __59__SGSqlEntityStore_IdentityStore___popMergeBlobForAnalysis__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int64(a2, 0);
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v8 = sqlite3_column_nssecurecoding(a2, 1, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

- (void)_writeMergeBlobSnapshotForAnalysis:(id)analysis
{
  analysisCopy = analysis;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SGSqlEntityStore_IdentityStore___writeMergeBlobSnapshotForAnalysis___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = analysisCopy;
  v6 = analysisCopy;
  [(SGSqliteDatabase *)db writeTransaction:v7];
}

void __70__SGSqlEntityStore_IdentityStore___writeMergeBlobSnapshotForAnalysis___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) prepAndRunQuery:@"DELETE FROM identityBlobAnalysisJobs" onPrep:0 onRow:0 onError:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412290;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:{0, v13}];
        v10 = v9;
        if (v9)
        {
          v11 = *(*(a1 + 32) + 8);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __70__SGSqlEntityStore_IdentityStore___writeMergeBlobSnapshotForAnalysis___block_invoke_302;
          v14[3] = &unk_278956070;
          v15 = v9;
          [v11 prepAndRunQuery:@"INSERT INTO identityBlobAnalysisJobs (mergeBlob) VALUES (:mergeBlob)" onPrep:v14 onRow:0 onError:0];
        }

        else
        {
          v12 = sgLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = v13;
            v21 = v8;
            _os_log_fault_impl(&dword_231E60000, v12, OS_LOG_TYPE_FAULT, "Failed to encode mergeBlob: %@", buf, 0xCu);
          }

          if (_PASEvaluateLogFaultAndProbCrashCriteria())
          {
            abort();
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

- (id)makeInterdictsForBlob:(id)blob withContactStore:(id)store
{
  v80 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  storeCopy = store;
  if (!objc_msgSend_count(blobCopy))
  {
    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_48;
  }

  if (objc_msgSend_count(blobCopy) >= 0x65)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v77 = objc_msgSend_count(blobCopy);
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "Can't create interdicts for blob of size %lu; skipping.", buf, 0xCu);
    }

    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_47;
  }

  v9 = objc_opt_new();
  v10 = sgMap();
  db = self->_db;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __74__SGSqlEntityStore_IdentityStore__makeInterdictsForBlob_withContactStore___block_invoke_2;
  v71[3] = &unk_278955E30;
  v12 = v10;
  v72 = v12;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __74__SGSqlEntityStore_IdentityStore__makeInterdictsForBlob_withContactStore___block_invoke_3;
  v69[3] = &unk_278955A20;
  v7 = v9;
  v70 = v7;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT recordId onPrep:fullname onRow:phones onError:email, socialProfileIdentifiers FROM identityPerson WHERE recordId IN _pas_nsarray(:ids)", v71, v69, 0];
  if (objc_msgSend_count(v7) >= 6)
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_msgSend_count(v7);
      *buf = 134218240;
      v77 = v43;
      v78 = 2048;
      v79 = 5;
      _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "Merge group containing %lu names exceeds limit of %lu; skipping interdict construction.", buf, 0x16u);
    }

    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_46;
  }

  v45 = v12;
  v47 = blobCopy;
  v14 = *MEMORY[0x277CBD098];
  v75[0] = *MEMORY[0x277CBD018];
  v75[1] = v14;
  v15 = *MEMORY[0x277CBD038];
  v75[2] = *MEMORY[0x277CBCFC0];
  v75[3] = v15;
  v75[4] = *MEMORY[0x277CBD138];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:5];
  v16 = objc_opt_new();
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __74__SGSqlEntityStore_IdentityStore__makeInterdictsForBlob_withContactStore___block_invoke_290;
  v67[3] = &unk_27894D038;
  v48 = v16;
  v68 = v48;
  v17 = MEMORY[0x2383809F0](v67);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = v7;
  v18 = v7;
  v53 = [v18 countByEnumeratingWithState:&v63 objects:v74 count:16];
  v50 = v13;
  v51 = storeCopy;
  if (v53)
  {
    v52 = *v64;
    v49 = v18;
    do
    {
      v19 = 0;
      do
      {
        if (*v64 != v52)
        {
          objc_enumerationMutation(v18);
        }

        v55 = v19;
        v20 = *(*(&v63 + 1) + 8 * v19);
        context = objc_autoreleasePoolPush();
        v21 = objc_opt_new();
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __74__SGSqlEntityStore_IdentityStore__makeInterdictsForBlob_withContactStore___block_invoke_2_293;
        v61[3] = &unk_2789540B0;
        v22 = v21;
        v62 = v22;
        [SGContactsInterface enumerateContactsMatchingName:v20 withKeysToFetch:v13 usingContactStore:storeCopy error:0 usingBlock:v61];
        if (objc_msgSend_count(v22) && objc_msgSend_count(v22) <= 4)
        {
          v23 = [v18 objectForKeyedSubscript:v20];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v57 objects:v73 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v58;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v58 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v57 + 1) + 8 * i);
                v30 = objc_autoreleasePoolPush();
                if (objc_msgSend_count(v22) == 1)
                {
                  v31 = [v22 objectAtIndexedSubscript:0];
                  (v17)[2](v17, v31, v29);
                }

                else
                {
                  v31 = [v24 objectForKeyedSubscript:v29];
                  buf[0] = 0;
                  v32 = [(SGSqlEntityStore *)self _uniqueGoodDetailMatchFrom:v22 toDetails:v31 nonUnique:buf];
                  if (v32)
                  {
                    (v17)[2](v17, v32, v29);
                  }
                }

                objc_autoreleasePoolPop(v30);
              }

              v26 = [v24 countByEnumeratingWithState:&v57 objects:v73 count:16];
            }

            while (v26);
          }

          v13 = v50;
          storeCopy = v51;
          v18 = v49;
        }

        objc_autoreleasePoolPop(context);
        v19 = v55 + 1;
      }

      while (v55 + 1 != v53);
      v53 = [v18 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v53);
  }

  v33 = v48;
  if (objc_msgSend_count(v48) < 6)
  {
    v35 = objc_autoreleasePoolPush();
    allValues = [v48 allValues];
    objc_autoreleasePoolPop(v35);
    v8 = objc_opt_new();
    if (objc_msgSend_count(allValues))
    {
      v36 = 0;
      do
      {
        v37 = objc_autoreleasePoolPush();
        v38 = [allValues objectAtIndexedSubscript:v36];
        if (v36)
        {
          for (j = 0; j != v36; ++j)
          {
            v40 = [allValues objectAtIndexedSubscript:j];
            v41 = [MEMORY[0x277D42648] tupleWithFirst:v38 second:v40];
            [v8 addObject:v41];
          }
        }

        objc_autoreleasePoolPop(v37);
        ++v36;
      }

      while (v36 < objc_msgSend_count(allValues));
      v13 = v50;
      storeCopy = v51;
      v7 = v46;
      v33 = v48;
      goto LABEL_45;
    }
  }

  else
  {
    allValues = sgLogHandle();
    if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_msgSend_count(v48);
      *buf = 134218240;
      v77 = v44;
      v78 = 2048;
      v79 = 5;
      _os_log_debug_impl(&dword_231E60000, allValues, OS_LOG_TYPE_DEBUG, "Merge group mapping to %lu CNContacts exceeds limit of %lu; skipping interdict construction.", buf, 0x16u);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  v7 = v46;
LABEL_45:

  blobCopy = v47;
  v12 = v45;
LABEL_46:

LABEL_47:
LABEL_48:

  return v8;
}

uint64_t __74__SGSqlEntityStore_IdentityStore__makeInterdictsForBlob_withContactStore___block_invoke_3(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(v3, "getInt64ForColumnName:table:", "recordId", "identityPerson")}];
  v6 = [v3 getNSStringForColumnName:"fullname" table:"identityPerson"];
  v7 = objc_opt_new();
  v8 = [v3 getNSStringForColumnName:"phones" table:"identityPerson"];
  v9 = SGDelimitedStringsDeserialize();
  [v7 setPhones:v9];

  v10 = [v3 getNSStringForColumnName:"email" table:"identityPerson"];
  [v7 setEmail:v10];

  v11 = [v3 getNSStringForColumnName:"socialProfileIdentifiers" table:"identityPerson"];
  v12 = SGDelimitedStringsDeserialize();
  [v7 setSocialProfileIdentifiers:v12];

  if (v6)
  {
    v13 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v13)
    {
      v14 = v13;
      v15 = v7;
      v16 = v5;
    }

    else
    {
      v19 = v5;
      v20[0] = v7;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v14 = [v17 mutableCopy];

      v13 = *(a1 + 32);
      v15 = v14;
      v16 = v6;
    }

    [v13 setObject:v15 forKeyedSubscript:v16];
  }

  objc_autoreleasePoolPop(v4);
  return *MEMORY[0x277D42690];
}

void __74__SGSqlEntityStore_IdentityStore__makeInterdictsForBlob_withContactStore___block_invoke_290(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];

  if (!v7)
  {
    v8 = objc_opt_new();
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v10];
  [v9 addObject:v6];
}

uint64_t __74__SGSqlEntityStore_IdentityStore__makeInterdictsForBlob_withContactStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 rowId];

  return [v2 numberWithLongLong:v3];
}

- (id)_uniqueGoodDetailMatchFrom:(id)from toDetails:(id)details nonUnique:(BOOL *)unique
{
  fromCopy = from;
  detailsCopy = details;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__SGSqlEntityStore_IdentityStore___uniqueGoodDetailMatchFrom_toDetails_nonUnique___block_invoke;
  v22[3] = &unk_27894CFE8;
  v9 = detailsCopy;
  v23 = v9;
  v10 = MEMORY[0x2383809F0](v22);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__SGSqlEntityStore_IdentityStore___uniqueGoodDetailMatchFrom_toDetails_nonUnique___block_invoke_4;
  v19[3] = &unk_27894D010;
  uniqueCopy = unique;
  v11 = fromCopy;
  v20 = v11;
  v12 = MEMORY[0x2383809F0](v19);
  v13 = [MEMORY[0x277D01FE0] map:v11 f:v10];
  *unique = 0;
  v14 = (v12)[2](v12, 0, v13);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
LABEL_5:
    v17 = v16;
    goto LABEL_6;
  }

  if (*unique)
  {
    *unique = 0;
    v16 = (v12)[2](v12, 1, v13);
    goto LABEL_5;
  }

  v17 = 0;
LABEL_6:

  return v17;
}

id __82__SGSqlEntityStore_IdentityStore___uniqueGoodDetailMatchFrom_toDetails_nonUnique___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) phones];
  if (!objc_msgSend_count(v4))
  {

    goto LABEL_12;
  }

  v5 = [v3 phoneNumbers];
  v6 = objc_msgSend_count(v5);

  if (!v6)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  v7 = MEMORY[0x277D01FE0];
  v8 = [v3 phoneNumbers];
  v9 = [v7 map:v8 f:&__block_literal_global_274];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v10 = [*(a1 + 32) phones];
  v11 = [v10 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v61;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 += [v9 containsObject:*(*(&v60 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

LABEL_15:
  v16 = [*(a1 + 32) email];
  if ([v16 length])
  {
    v17 = [v3 emailAddresses];
    v18 = objc_msgSend_count(v17);

    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = MEMORY[0x277D01FE0];
    v20 = [v3 emailAddresses];
    v16 = [v19 map:v20 f:&__block_literal_global_277];

    v21 = [*(a1 + 32) email];
    v22 = [v16 containsObject:v21];

    v13 += v22;
  }

LABEL_19:
  v23 = [*(a1 + 32) socialProfileIdentifiers];
  if (objc_msgSend_count(v23))
  {
    v24 = [v3 socialProfiles];
    v25 = objc_msgSend_count(v24);

    if (!v25)
    {
      goto LABEL_45;
    }

    v45 = a1;
    v46 = v3;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [v3 socialProfiles];
    v26 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v56 + 1) + 8 * j);
          v31 = [SGSocialProfileDetails alloc];
          v32 = [v30 value];
          v33 = [(SGSocialProfileDetails *)v31 initWithCNSocialProfile:v32];

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v34 = [(SGSocialProfileDetails *)v33 uniqueIdentifiers];
          v35 = [v34 countByEnumeratingWithState:&v52 objects:v65 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v53;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v53 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                [0 addObject:*(*(&v52 + 1) + 8 * k)];
              }

              v36 = [v34 countByEnumeratingWithState:&v52 objects:v65 count:16];
            }

            while (v36);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v27);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v23 = [*(v45 + 32) socialProfileIdentifiers];
    v39 = [v23 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v49;
      v3 = v46;
      do
      {
        for (m = 0; m != v40; ++m)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(v23);
          }

          v13 += [0 containsObject:*(*(&v48 + 1) + 8 * m)];
        }

        v40 = [v23 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v40);
    }

    else
    {
      v3 = v46;
    }
  }

LABEL_45:
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];

  return v43;
}

id __82__SGSqlEntityStore_IdentityStore___uniqueGoodDetailMatchFrom_toDetails_nonUnique___block_invoke_4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (objc_msgSend_count(v5))
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v5 objectAtIndexedSubscript:v6];
      v9 = [v8 unsignedIntegerValue];

      if (v9 > a2)
      {
        if (v7)
        {
          v10 = 0;
          **(a1 + 40) = 1;
          goto LABEL_11;
        }

        v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
      }

      if (++v6 >= objc_msgSend_count(v5))
      {
        goto LABEL_9;
      }
    }
  }

  v7 = 0;
LABEL_9:
  v7 = v7;
  v10 = v7;
LABEL_11:

  return v10;
}

id __82__SGSqlEntityStore_IdentityStore___uniqueGoodDetailMatchFrom_toDetails_nonUnique___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];
  v4 = SGNormalizePhoneNumber();

  return v4;
}

- (id)unmergedCandidatesLimitedTo:(int)to
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  db = self->_db;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __63__SGSqlEntityStore_IdentityStore__unmergedCandidatesLimitedTo___block_invoke;
  v43[3] = &__block_descriptor_36_e23_v16__0__sqlite3_stmt__8l;
  toCopy = to;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __63__SGSqlEntityStore_IdentityStore__unmergedCandidatesLimitedTo___block_invoke_2;
  v41[3] = &unk_278954708;
  v7 = v5;
  v42 = v7;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT (CASE WHEN e.masterEntityId > 0 THEN e.masterEntityId ELSE e.id END) onPrep:i.nameSketches FROM entity AS e INNER JOIN identityPerson AS i ON e.id = i.recordId LIMIT :limit" onRow:v43 onError:v41, 0];
  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = MEMORY[0x277D42648];
        v16 = [v9 objectForKeyedSubscript:v14];
        v17 = [v15 tupleWithFirst:v14 second:v16];
        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v11);
  }

  v18 = objc_opt_new();
  if (objc_msgSend_count(v8))
  {
    v19 = 0;
    v36 = 1;
    do
    {
      v34 = v19 + 1;
      if (objc_msgSend_count(v8) > v19 + 1)
      {
        v20 = v36;
        do
        {
          v21 = [v8 objectAtIndexedSubscript:{v19, v34}];
          second = [v21 second];
          v23 = [v8 objectAtIndexedSubscript:v20];
          second2 = [v23 second];
          v25 = [second intersectsSet:second2];

          if (v25)
          {
            v26 = MEMORY[0x277D42648];
            v27 = [v8 objectAtIndexedSubscript:v19];
            first = [v27 first];
            v29 = [v8 objectAtIndexedSubscript:v20];
            first2 = [v29 first];
            v31 = [v26 tupleWithFirst:first second:first2];
            [v18 addObject:v31];
          }

          ++v20;
        }

        while (objc_msgSend_count(v8) > v20);
      }

      v32 = objc_msgSend_count(v8, v34);
      ++v36;
      v19 = v35;
    }

    while (v32 > v35);
  }

  return v18;
}

uint64_t __63__SGSqlEntityStore_IdentityStore__unmergedCandidatesLimitedTo___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  v6 = sqlite3_column_nsstring(a2, 1);
  v7 = SGDelimitedStringsDeserializeSet();

  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9 = v8;
  if (v8)
  {
    [v8 unionSet:v7];
  }

  else
  {
    v10 = [v7 mutableCopy];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

- (id)splitBlob:(id)blob withInterdicts:(id)interdicts edges:(id)edges curatedRecordIds:(id)ids
{
  v115[1] = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  interdictsCopy = interdicts;
  edgesCopy = edges;
  selfCopy = self;
  idsCopy = ids;
  v80 = interdictsCopy;
  v13 = [(SGSqlEntityStore *)self splitNeededFor:blobCopy withInterdicts:interdictsCopy curatedRecordIds:?];
  v14 = v13;
  if (v13)
  {
    v73 = edgesCopy;
    v76 = [v13 objectAtIndexedSubscript:0];
    v71 = v14;
    v74 = [v14 objectAtIndexedSubscript:1];
    v107 = 0x400000000;
    v108 = malloc_type_malloc(0x60uLL, 0x1080040CC6EE3FDuLL);
    if (!v108)
    {
      freeGraph(&v107);
      [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1144}];
    }

    v15 = objc_opt_new();
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v72 = blobCopy;
    obj = blobCopy;
    v16 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v104;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v104 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v103 + 1) + 8 * i);
          if (newVertex(&v107, v20))
          {
            freeGraph(&v107);
            [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1149}];
          }

          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v107 - 1)];
          [v15 setObject:v21 forKeyedSubscript:v20];
        }

        v17 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
      }

      while (v17);
    }

    v22 = obj;

    if (newVertex(&v107, 0))
    {
      freeGraph(&v107);
      [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1153}];
    }

    if (newVertex(&v107, 0))
    {
      freeGraph(&v107);
      [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1153}];
    }

    v82 = v107;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v85 = v73;
    v23 = [v85 countByEnumeratingWithState:&v99 objects:v113 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v100;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v100 != v25)
          {
            objc_enumerationMutation(v85);
          }

          v27 = *(*(&v99 + 1) + 8 * j);
          if ([v22 containsObject:*(v27 + 8)] && objc_msgSend(v22, "containsObject:", *(v27 + 16)))
          {
            v28 = v108;
            v29 = [v15 objectForKeyedSubscript:*(v27 + 8)];
            v30 = &v28[24 * [v29 intValue]];

            v31 = v108;
            v32 = [v15 objectForKeyedSubscript:*(v27 + 16)];
            v33 = &v31[24 * [v32 intValue]];

            if (addEdge(v30, v33, *(v27 + 24)))
            {
              freeGraph(&v107);
              [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1161}];
            }

            v34 = addEdge(v33, v30, *(v27 + 24));
            v22 = obj;
            if (v34)
            {
              freeGraph(&v107);
              [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1162}];
            }
          }
        }

        v24 = [v85 countByEnumeratingWithState:&v99 objects:v113 count:16];
      }

      while (v24);
    }

    v84 = v82 - 2;
    v83 = v82 - 1;

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v77 = v76;
    v35 = [v77 countByEnumeratingWithState:&v95 objects:v112 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v96;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v96 != v37)
          {
            objc_enumerationMutation(v77);
          }

          v39 = v108;
          v40 = &v108[24 * v84];
          v41 = [v15 objectForKeyedSubscript:*(*(&v95 + 1) + 8 * k)];
          v42 = &v39[24 * [v41 intValue]];

          if (addEdge(v40, v42, INFINITY))
          {
            freeGraph(&v107);
            [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1171}];
          }

          if (addEdge(v42, v40, INFINITY))
          {
            freeGraph(&v107);
            [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1172}];
          }
        }

        v36 = [v77 countByEnumeratingWithState:&v95 objects:v112 count:16];
      }

      while (v36);
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v75 = v74;
    v43 = [v75 countByEnumeratingWithState:&v91 objects:v111 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v92;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v92 != v45)
          {
            objc_enumerationMutation(v75);
          }

          v47 = v108;
          v48 = &v108[24 * v83];
          v49 = [v15 objectForKeyedSubscript:*(*(&v91 + 1) + 8 * m)];
          v50 = &v47[24 * [v49 intValue]];

          if (addEdge(v48, v50, INFINITY))
          {
            freeGraph(&v107);
            [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1177}];
          }

          if (addEdge(v50, v48, INFINITY))
          {
            freeGraph(&v107);
            [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1178}];
          }
        }

        v44 = [v75 countByEnumeratingWithState:&v91 objects:v111 count:16];
      }

      while (v44);
    }

    v51 = mincut(&v107, v84, v83);
    if (v51)
    {
      v52 = v51;
      v53 = objc_opt_new();
      v54 = objc_opt_new();
      if (v84)
      {
        v55 = 0;
        v56 = v52;
        do
        {
          if (*v56++)
          {
            v58 = v53;
          }

          else
          {
            v58 = v54;
          }

          [v58 addObject:*&v108[v55]];
          v55 += 24;
        }

        while (24 * v84 != v55);
      }

      free(v52);
      freeGraph(&v107);
      v59 = objc_opt_new();
      v60 = [(SGSqlEntityStore *)selfCopy _makeBlobsFromConnectedComponents:v53 edges:v85];
      [v59 addObjectsFromArray:v60];

      v61 = [(SGSqlEntityStore *)selfCopy _makeBlobsFromConnectedComponents:v54 edges:v85];
      [v59 addObjectsFromArray:v61];

      v62 = objc_opt_new();
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v63 = v59;
      v64 = [v63 countByEnumeratingWithState:&v86 objects:v109 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v87;
        do
        {
          for (n = 0; n != v65; ++n)
          {
            if (*v87 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v68 = [(SGSqlEntityStore *)selfCopy splitBlob:*(*(&v86 + 1) + 8 * n) withInterdicts:v80 edges:v85 curatedRecordIds:idsCopy];
            [v62 addObjectsFromArray:v68];
          }

          v65 = [v63 countByEnumeratingWithState:&v86 objects:v109 count:16];
        }

        while (v65);
      }

      blobCopy = v72;
    }

    else
    {
      v69 = sgLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v69, OS_LOG_TYPE_FAULT, "mincut returned NULL, will not split blob even though we want to", buf, 2u);
      }

      blobCopy = v72;
      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }

      freeGraph(&v107);
      v110 = obj;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
    }

    edgesCopy = v73;
    v14 = v71;
  }

  else
  {
    v115[0] = blobCopy;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:1];
  }

  return v62;
}

- (id)_makeBlobsFromConnectedComponents:(id)components edges:(id)edges
{
  v38 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  obj = edges;
  v34 = 0x400000000;
  v35 = malloc_type_malloc(0x60uLL, 0x1080040CC6EE3FDuLL);
  if (!v35)
  {
    freeGraph(&v34);
    [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1100}];
  }

  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = componentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v8)
  {
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if (newVertex(&v34, v11))
        {
          freeGraph(&v34);
          [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1104}];
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v34 - 1)];
        [v6 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obja = obj;
  v13 = [obja countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v13)
  {
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obja);
        }

        v16 = *(*(&v26 + 1) + 8 * j);
        if ([v7 containsObject:*(v16 + 8)] && objc_msgSend(v7, "containsObject:", *(v16 + 16)))
        {
          v17 = v35;
          v18 = [v6 objectForKeyedSubscript:*(v16 + 8)];
          intValue = [v18 intValue];

          v20 = v35;
          v21 = [v6 objectForKeyedSubscript:*(v16 + 16)];
          intValue2 = [v21 intValue];

          if (addEdge(v17 + 24 * intValue, v20 + 24 * intValue2, 1.0))
          {
            freeGraph(&v34);
            [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1112}];
          }
        }
      }

      v13 = [obja countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v13);
  }

  findConnectedComponents(&v34);
}

void __75__SGSqlEntityStore_IdentityStore___makeBlobsFromConnectedComponents_edges___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [*(a1 + 32) addObject:?];
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

void __75__SGSqlEntityStore_IdentityStore___makeBlobsFromConnectedComponents_edges___block_invoke_2(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

- (id)computeBlobs
{
  v13[2] = 0;
  v13[0] = @"computeBlobs";
  v13[1] = mach_absolute_time();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9953;
  v11 = __Block_byref_object_dispose__9954;
  v12 = 0;
  db = self->_db;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SGSqlEntityStore_IdentityStore__computeBlobs__block_invoke;
  v6[3] = &unk_2789561D0;
  v6[4] = self;
  v6[5] = &v7;
  [(SGSqliteDatabase *)db readTransaction:v6];
  SGRecordMeasurementState(v13);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SGRecordMeasurementState(v13);

  return v4;
}

void __47__SGSqlEntityStore_IdentityStore__computeBlobs__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v2 = [*(a1 + 32) _computeBlobsRaw:&v27];
  v3 = [*(a1 + 32) loadInterdicts];
  v4 = [*(a1 + 32) curatedRecordIds];
  v5 = objc_opt_new();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = [*(a1 + 32) splitBlob:v12 withInterdicts:v3 edges:v27 curatedRecordIds:v4];
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v20;
          do
          {
            v17 = 0;
            do
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(&v19 + 1) + 8 * v17++)];
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
          }

          while (v15);
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }
}

- (id)_computeBlobsRaw:(id *)raw
{
  v5 = objc_opt_new();
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SGSqlEntityStore_IdentityStore___computeBlobsRaw___block_invoke;
  v11[3] = &unk_278955958;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  rawCopy = raw;
  [(SGSqliteDatabase *)db readTransaction:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

void __52__SGSqlEntityStore_IdentityStore___computeBlobsRaw___block_invoke(uint64_t a1)
{
  v47[16] = *MEMORY[0x277D85DE8];
  v38 = 0x400000000;
  v39 = malloc_type_malloc(0x60uLL, 0x1080040CC6EE3FDuLL);
  if (!v39)
  {
    freeGraph(&v38);
    [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1005}];
  }

  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __52__SGSqlEntityStore_IdentityStore___computeBlobsRaw___block_invoke_2;
  v37[3] = &unk_27894FC90;
  v5 = v2;
  v37[4] = v5;
  v37[6] = &v38;
  v6 = v3;
  v37[5] = v6;
  [v4 prepAndRunQuery:@"SELECT recordId1 onPrep:recordId2 onRow:strength FROM identityLink" onError:{0, v37, 0}];
  v7 = *(*(a1 + 32) + 8);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __52__SGSqlEntityStore_IdentityStore___computeBlobsRaw___block_invoke_3;
  v36[3] = &unk_27894CE20;
  v31 = v5;
  v36[4] = v31;
  v36[5] = &v38;
  [v7 prepAndRunQuery:@"SELECT recordId FROM IdentityPerson" onPrep:0 onRow:v36 onError:0];
  v8 = v6;
  v9 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v46 = 0;
        v45 = 0;
        v45 = [*(v13 + 8) rowId];
        v46 = [*(v13 + 16) rowId];
        v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v45 length:16];
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          *(v15 + 24) = *(v13 + 24) + *(v15 + 24);
        }

        else
        {
          [v9 setObject:v13 forKeyedSubscript:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v10);
  }

  v17 = objc_autoreleasePoolPush();
  v18 = [v9 allValues];
  objc_autoreleasePoolPop(v17);

  v28 = [v18 mutableCopy];
  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = v28;
  v19 = [v30 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v19)
  {
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v30);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        v23 = v39;
        v24 = [v31 objectForKeyedSubscript:*(v22 + 8)];
        v25 = [v24 intValue];

        v26 = v39;
        v27 = [v31 objectForKeyedSubscript:*(v22 + 16)];
        LODWORD(v24) = [v27 intValue];

        if (addEdge(v23 + 24 * v25, v26 + 24 * v24, *(v22 + 24)))
        {
          freeGraph(&v38);
          [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1043}];
        }
      }

      v19 = [v30 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v19);
  }

  findConnectedComponents(&v38);
}

uint64_t __52__SGSqlEntityStore_IdentityStore___computeBlobsRaw___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 1)}];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (newVertex(*(a1 + 48), v4))
  {
    freeGraph(*(a1 + 48));
    [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1014}];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(**(a1 + 48) - 1)];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v4];

  if (!v8)
  {
LABEL_7:
    if (newVertex(*(a1 + 48), v5))
    {
      freeGraph(*(a1 + 48));
      [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1018}];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(**(a1 + 48) - 1)];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
  }

LABEL_10:
  v11 = sqlite3_column_double(a2, 2);
  v12 = *(a1 + 40);
  v13 = v4;
  v14 = v5;
  v15 = objc_opt_new();
  v16 = *(v15 + 1);
  *(v15 + 1) = v13;
  v17 = v13;

  v18 = *(v15 + 2);
  *(v15 + 2) = v14;

  v15[3] = v11;
  [v12 addObject:v15];

  return 0;
}

uint64_t __52__SGSqlEntityStore_IdentityStore___computeBlobsRaw___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    if (newVertex(*(a1 + 40), v3))
    {
      freeGraph(*(a1 + 40));
      [MEMORY[0x277CBEAD8] raise:@"graph error" format:{@"SGIStore.h, line %i", 1032}];
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(**(a1 + 40) - 1)];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
  }

  return 0;
}

uint64_t __52__SGSqlEntityStore_IdentityStore___computeBlobsRaw___block_invoke_4(uint64_t a1, const char *a2)
{
  if (objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), a2))
  {
    [*(a1 + 32) addObject:*(*(*(a1 + 40) + 8) + 40)];
  }

  v3 = objc_opt_new();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_linkNamelessSocialProfilesIfAppropriate:(graph_t *)appropriate nameToVertex:(id)vertex disjointSets:(DisjointSetHandle *)sets edges:(id)edges
{
  v68 = *MEMORY[0x277D85DE8];
  vertexCopy = vertex;
  edgesCopy = edges;
  appropriateCopy = appropriate;
  if (!appropriate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:933 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
  }

  if (!vertexCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:934 description:{@"Invalid parameter not satisfying: %@", @"nameToVertex"}];
  }

  if (!sets)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:935 description:{@"Invalid parameter not satisfying: %@", @"disjointSets"}];
  }

  v8 = objc_opt_new();
  db = self->_db;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __108__SGSqlEntityStore_IdentityStore___linkNamelessSocialProfilesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke;
  v65[3] = &unk_278954708;
  v10 = v8;
  v66 = v10;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT recordId onPrep:socialProfileIdentifiers FROM identityPerson WHERE (surname = '' OR surname IS NULL) AND fullname IS NULL AND LENGTH(socialProfileIdentifiers) > 0" onRow:0 onError:v65, 0];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v10;
  v38 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v38)
  {
    v35 = *v62;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v62 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v61 + 1) + 8 * i);
        v13 = [obj objectForKeyedSubscript:v12];
        v14 = [vertexCopy objectForKeyedSubscript:v12];
        if (!v14)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:950 description:@"Vertex not found in lookup table"];
        }

        var2 = appropriateCopy->var2;
        integerValue = [v14 integerValue];
        v17 = MEMORY[0x277D85DD0];
        v57 = 0;
        v58 = &v57;
        v59 = 0x2020000000;
        v60 = 0;
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v56 = 1;
        v18 = self->_db;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __108__SGSqlEntityStore_IdentityStore___linkNamelessSocialProfilesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_2;
        v51[3] = &unk_278955E30;
        v19 = v13;
        v52 = v19;
        v43[0] = v17;
        v43[1] = 3221225472;
        v43[2] = __108__SGSqlEntityStore_IdentityStore___linkNamelessSocialProfilesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_3;
        v43[3] = &unk_27894CF58;
        v44 = vertexCopy;
        selfCopy = self;
        v48 = a2;
        v49 = appropriateCopy;
        setsCopy = sets;
        v46 = &v57;
        v47 = &v53;
        [(SGSqliteDatabase *)v18 prepAndRunSQL:@"SELECT recordId FROM identityPerson    WHERE fullname IS NOT NULL        AND recordId IN(           SELECT recordId from identitySocialProfileIdentifiers                WHERE socialProfileIdentifier IN _pas_nsarray(:socialProfileIdentifiers)       )" onPrep:v51 onRow:v43 onError:0];
        v20 = v58[3];
        if (v20 && *(v54 + 24) == 1)
        {
          v21 = (var2 + 24 * integerValue);
          if (addEdge(v21, v20, 1.0))
          {
            currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler5 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:985 description:@"OOM while adding edge to graph"];
          }

          v22 = *v58[3];
          v23 = *v21;
          v24 = v22;
          v25 = objc_opt_new();
          v26 = v25[1];
          v25[1] = v23;
          v27 = v23;

          v28 = v25[2];
          v25[2] = v24;

          v25[3] = 0x3FF0000000000000;
          [edgesCopy addObject:v25];
        }

        _Block_object_dispose(&v53, 8);
        _Block_object_dispose(&v57, 8);
      }

      v38 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v38);
  }
}

uint64_t __108__SGSqlEntityStore_IdentityStore___linkNamelessSocialProfilesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  v5 = sqlite3_column_nsstring(a2, 1);
  v6 = SGDelimitedStringsDeserialize();

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  return 0;
}

uint64_t __108__SGSqlEntityStore_IdentityStore___linkNamelessSocialProfilesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(a2, "getInt64ForColumn:", 0)}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"SGSqlEntityStore+Identity.m" lineNumber:969 description:@"Vertex not found in lookup table"];
  }

  v5 = *(*(a1 + 72) + 8);
  v6 = v5 + 24 * [v4 integerValue];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24);
  if (!v8)
  {
    *(v7 + 24) = v6;
    goto LABEL_7;
  }

  if (sameConnectedComponent(*(a1 + 80), v8, v6))
  {
LABEL_7:
    v9 = MEMORY[0x277D42690];
    goto LABEL_8;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v9 = MEMORY[0x277D42698];
LABEL_8:

  return *v9;
}

- (void)_linkNamelessPhonesIfAppropriate:(graph_t *)appropriate nameToVertex:(id)vertex disjointSets:(DisjointSetHandle *)sets edges:(id)edges
{
  v68 = *MEMORY[0x277D85DE8];
  vertexCopy = vertex;
  edgesCopy = edges;
  appropriateCopy = appropriate;
  if (!appropriate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
  }

  if (!vertexCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:866 description:{@"Invalid parameter not satisfying: %@", @"nameToVertex"}];
  }

  if (!sets)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:867 description:{@"Invalid parameter not satisfying: %@", @"disjointSets"}];
  }

  v8 = objc_opt_new();
  db = self->_db;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __100__SGSqlEntityStore_IdentityStore___linkNamelessPhonesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke;
  v65[3] = &unk_278954708;
  v10 = v8;
  v66 = v10;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT recordId onPrep:phones FROM identityPerson WHERE (surname = '' OR surname IS NULL) AND fullname IS NULL AND LENGTH(phones) > 0" onRow:0 onError:v65, 0];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v10;
  v38 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v38)
  {
    v35 = *v62;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v62 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v61 + 1) + 8 * i);
        v13 = [obj objectForKeyedSubscript:v12];
        v14 = [vertexCopy objectForKeyedSubscript:v12];
        if (!v14)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:881 description:@"Vertex not found in lookup table"];
        }

        var2 = appropriateCopy->var2;
        integerValue = [v14 integerValue];
        v17 = MEMORY[0x277D85DD0];
        v57 = 0;
        v58 = &v57;
        v59 = 0x2020000000;
        v60 = 0;
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v56 = 1;
        v18 = self->_db;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __100__SGSqlEntityStore_IdentityStore___linkNamelessPhonesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_2;
        v51[3] = &unk_278955E30;
        v19 = v13;
        v52 = v19;
        v43[0] = v17;
        v43[1] = 3221225472;
        v43[2] = __100__SGSqlEntityStore_IdentityStore___linkNamelessPhonesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_3;
        v43[3] = &unk_27894CF58;
        v44 = vertexCopy;
        selfCopy = self;
        v48 = a2;
        v49 = appropriateCopy;
        setsCopy = sets;
        v46 = &v57;
        v47 = &v53;
        [(SGSqliteDatabase *)v18 prepAndRunSQL:@"SELECT recordId FROM identityPerson    WHERE fullname IS NOT NULL        AND recordId IN(           SELECT recordId from identityPhones                WHERE phone IN _pas_nsarray(:phones)       )" onPrep:v51 onRow:v43 onError:0];
        v20 = v58[3];
        if (v20 && *(v54 + 24) == 1)
        {
          v21 = (var2 + 24 * integerValue);
          if (addEdge(v21, v20, 1.0))
          {
            currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler5 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:916 description:@"OOM while adding edge to graph"];
          }

          v22 = *v58[3];
          v23 = *v21;
          v24 = v22;
          v25 = objc_opt_new();
          v26 = v25[1];
          v25[1] = v23;
          v27 = v23;

          v28 = v25[2];
          v25[2] = v24;

          v25[3] = 0x3FF0000000000000;
          [edgesCopy addObject:v25];
        }

        _Block_object_dispose(&v53, 8);
        _Block_object_dispose(&v57, 8);
      }

      v38 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v38);
  }
}

uint64_t __100__SGSqlEntityStore_IdentityStore___linkNamelessPhonesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  v5 = sqlite3_column_nsstring(a2, 1);
  v6 = SGDelimitedStringsDeserialize();

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  return 0;
}

uint64_t __100__SGSqlEntityStore_IdentityStore___linkNamelessPhonesIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(a2, "getInt64ForColumn:", 0)}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"SGSqlEntityStore+Identity.m" lineNumber:900 description:@"Vertex not found in lookup table"];
  }

  v5 = *(*(a1 + 72) + 8);
  v6 = v5 + 24 * [v4 integerValue];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24);
  if (!v8)
  {
    *(v7 + 24) = v6;
    goto LABEL_7;
  }

  if (sameConnectedComponent(*(a1 + 80), v8, v6))
  {
LABEL_7:
    v9 = MEMORY[0x277D42690];
    goto LABEL_8;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v9 = MEMORY[0x277D42698];
LABEL_8:

  return *v9;
}

- (void)_linkNamelessEmailsIfAppropriate:(graph_t *)appropriate nameToVertex:(id)vertex disjointSets:(DisjointSetHandle *)sets edges:(id)edges
{
  v65 = *MEMORY[0x277D85DE8];
  vertexCopy = vertex;
  edgesCopy = edges;
  appropriateCopy = appropriate;
  if (!appropriate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:800 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
  }

  if (!vertexCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:801 description:{@"Invalid parameter not satisfying: %@", @"nameToVertex"}];
  }

  if (!sets)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:802 description:{@"Invalid parameter not satisfying: %@", @"disjointSets"}];
  }

  v8 = objc_opt_new();
  db = self->_db;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __100__SGSqlEntityStore_IdentityStore___linkNamelessEmailsIfAppropriate_nameToVertex_disjointSets_edges___block_invoke;
  v62[3] = &unk_278955A20;
  v10 = v8;
  v63 = v10;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT recordId onPrep:email FROM identityPerson WHERE (surname = '' OR surname IS NULL) AND fullname IS NULL AND LENGTH(email) > 0" onRow:0 onError:v62, 0];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v10;
  v36 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v36)
  {
    v33 = *v59;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v58 + 1) + 8 * i);
        v13 = [obj objectForKeyedSubscript:v12];
        v14 = [vertexCopy objectForKeyedSubscript:v13];
        if (!v14)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:816 description:@"Vertex not found in lookup table"];
        }

        var2 = appropriateCopy->var2;
        integerValue = [v14 integerValue];
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0;
        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 1;
        v17 = self->_db;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __100__SGSqlEntityStore_IdentityStore___linkNamelessEmailsIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_2;
        v49[3] = &unk_278955E30;
        v49[4] = v12;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __100__SGSqlEntityStore_IdentityStore___linkNamelessEmailsIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_3;
        v41[3] = &unk_27894CF58;
        v42 = vertexCopy;
        selfCopy = self;
        v46 = a2;
        v47 = appropriateCopy;
        setsCopy = sets;
        v44 = &v54;
        v45 = &v50;
        [(SGSqliteDatabase *)v17 prepAndRunSQL:@"SELECT recordId FROM identityPerson WHERE email = :email AND fullname IS NOT NULL" onPrep:v49 onRow:v41 onError:0];
        v18 = v55[3];
        if (v18 && *(v51 + 24) == 1)
        {
          v19 = (var2 + 24 * integerValue);
          if (addEdge(v19, v18, 1.0))
          {
            currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler5 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:847 description:@"OOM while adding edge to graph"];
          }

          v20 = *v55[3];
          v21 = *v19;
          v22 = v20;
          v23 = objc_opt_new();
          v24 = v23[1];
          v23[1] = v21;
          v25 = v21;

          v26 = v23[2];
          v23[2] = v22;

          v23[3] = 0x3FF0000000000000;
          [edgesCopy addObject:v23];
        }

        _Block_object_dispose(&v50, 8);
        _Block_object_dispose(&v54, 8);
      }

      v36 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v36);
  }
}

uint64_t __100__SGSqlEntityStore_IdentityStore___linkNamelessEmailsIfAppropriate_nameToVertex_disjointSets_edges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"email" table:0];
  v5 = MEMORY[0x277D020C8];
  v6 = [v3 getInt64ForColumnName:"recordId" table:0];

  v7 = [v5 recordIdForContactWithRowId:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v4];

  v8 = MEMORY[0x277D42690];
  return *v8;
}

uint64_t __100__SGSqlEntityStore_IdentityStore___linkNamelessEmailsIfAppropriate_nameToVertex_disjointSets_edges___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(a2, "getInt64ForColumnName:table:", "recordId", 0)}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"SGSqlEntityStore+Identity.m" lineNumber:831 description:@"Vertex not found in lookup table"];
  }

  v5 = *(*(a1 + 72) + 8);
  v6 = v5 + 24 * [v4 integerValue];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24);
  if (!v8)
  {
    *(v7 + 24) = v6;
    goto LABEL_7;
  }

  if (sameConnectedComponent(*(a1 + 80), v8, v6))
  {
LABEL_7:
    v9 = MEMORY[0x277D42690];
    goto LABEL_8;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v9 = MEMORY[0x277D42698];
LABEL_8:

  return *v9;
}

- (id)curatedRecordIds
{
  v3 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SGSqlEntityStore_IdentityStore__curatedRecordIds__block_invoke;
  v7[3] = &unk_278954708;
  v5 = v3;
  v8 = v5;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT recordId FROM identityPerson WHERE curated" onPrep:0 onRow:v7 onError:0];

  return v5;
}

uint64_t __51__SGSqlEntityStore_IdentityStore__curatedRecordIds__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  [v2 addObject:v3];

  return 0;
}

- (id)getAllLinks
{
  v3 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SGSqlEntityStore_IdentityStore__getAllLinks__block_invoke;
  v7[3] = &unk_278954708;
  v5 = v3;
  v8 = v5;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT recordId1 onPrep:recordId2 onRow:type onError:strength FROM identityLink", 0, v7, 0];

  return v5;
}

uint64_t __46__SGSqlEntityStore_IdentityStore__getAllLinks__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  v10[0] = v4;
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 1)}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 2)}];
  v10[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(a2, 3)}];
  v10[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  [v3 addObject:v8];

  return 0;
}

- (void)deleteByRecordId:(id)id
{
  idCopy = id;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  [(SGSqliteDatabase *)db writeTransaction:v7];
}

void __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke(uint64_t a1)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__9953;
  v33 = __Block_byref_object_dispose__9954;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9953;
  v27 = __Block_byref_object_dispose__9954;
  v28 = 0;
  v2 = *(*(a1 + 32) + 8);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_196;
  v21[3] = &unk_278955E30;
  v22 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_2;
  v20[3] = &unk_27894CF30;
  v20[4] = &v29;
  v20[5] = &v23;
  v20[6] = &v35;
  [v2 prepAndRunSQL:@"SELECT phones onPrep:socialProfileIdentifiers FROM identityPerson WHERE recordId = :recordId" onRow:v21 onError:{v20, 0}];
  if (objc_msgSend_count(v30[5]))
  {
    v3 = *(*(a1 + 32) + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_3;
    v17[3] = &unk_27894F350;
    v19 = &v29;
    v18 = *(a1 + 40);
    [v3 prepAndRunSQL:@"DELETE FROM identityPhones WHERE phone IN _pas_nsarray(:phones) AND recordId=:recordId" onPrep:v17 onRow:0 onError:0];
  }

  if (objc_msgSend_count(v24[5]))
  {
    v4 = *(*(a1 + 32) + 8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_4;
    v14[3] = &unk_27894F350;
    v16 = &v23;
    v15 = *(a1 + 40);
    [v4 prepAndRunSQL:@"DELETE FROM identitySocialProfileIdentifiers WHERE socialProfileIdentifier IN _pas_nsarray(:socialProfileIdentifiers) AND recordId=:recordId" onPrep:v14 onRow:0 onError:0];
  }

  v5 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_5;
  v12[3] = &unk_278956070;
  v13 = *(a1 + 40);
  [v5 prepAndRunQuery:@"DELETE FROM identityPerson WHERE recordId = ?" onPrep:v12 onRow:0 onError:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_6;
  v10 = &unk_278956070;
  v11 = *(a1 + 40);
  [v6 prepAndRunQuery:@"DELETE FROM identityLink WHERE recordId1 = ?1 OR recordId2 = ?1" onPrep:&v7 onRow:0 onError:0];
  if (*(v36 + 24) == 1)
  {
    [*(a1 + 32) _markIdentityStoreDirty];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
}

void __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_196(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":recordId" toInt64:{objc_msgSend(v2, "rowId")}];
}

uint64_t __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"phones" table:"identityPerson"];
  v5 = SGDelimitedStringsDeserialize();
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 getNSStringForColumnName:"socialProfileIdentifiers" table:"identityPerson"];

  v9 = SGDelimitedStringsDeserialize();
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *(*(a1[6] + 8) + 24) = 1;
  return *MEMORY[0x277D42690];
}

void __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  [v4 bindNamedParam:":phones" toNSArray:v3];
  [v4 bindNamedParam:":recordId" toInt64:{objc_msgSend(*(a1 + 32), "rowId")}];
}

void __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  [v4 bindNamedParam:":socialProfileIdentifiers" toNSArray:v3];
  [v4 bindNamedParam:":recordId" toInt64:{objc_msgSend(*(a1 + 32), "rowId")}];
}

uint64_t __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) rowId];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __52__SGSqlEntityStore_IdentityStore__deleteByRecordId___block_invoke_6(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) rowId];

  return sqlite3_bind_int64(a2, 1, v3);
}

- (void)link:(id)link to:(id)to type:(unsigned int)type strength:(double)strength
{
  linkCopy = link;
  toCopy = to;
  if (([linkCopy isEqualToRecordId:toCopy] & 1) == 0)
  {
    rowId = [linkCopy rowId];
    rowId2 = [toCopy rowId];
    if (rowId >= rowId2)
    {
      v14 = toCopy;
    }

    else
    {
      v14 = linkCopy;
    }

    if (rowId >= rowId2)
    {
      v15 = linkCopy;
    }

    else
    {
      v15 = toCopy;
    }

    db = self->_db;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__SGSqlEntityStore_IdentityStore__link_to_type_strength___block_invoke;
    v17[3] = &unk_27894CF08;
    v17[4] = self;
    linkCopy = v15;
    v18 = linkCopy;
    toCopy = v14;
    v19 = toCopy;
    typeCopy = type;
    strengthCopy = strength;
    [(SGSqliteDatabase *)db writeTransaction:v17];
  }
}

void __57__SGSqlEntityStore_IdentityStore__link_to_type_strength___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v2 = *(*(a1 + 32) + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SGSqlEntityStore_IdentityStore__link_to_type_strength___block_invoke_2;
  v13[3] = &unk_27894CEB8;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__SGSqlEntityStore_IdentityStore__link_to_type_strength___block_invoke_3;
  v12[3] = &unk_278954658;
  v12[4] = &v17;
  [v2 prepAndRunQuery:@"SELECT 1 FROM identityLink WHERE recordId1=? AND recordId2=? AND type=?" onPrep:v13 onRow:v12 onError:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __57__SGSqlEntityStore_IdentityStore__link_to_type_strength___block_invoke_4;
  v7 = &unk_27894CEE0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 64);
  v10 = *(a1 + 56);
  [v3 prepAndRunQuery:@"INSERT OR IGNORE INTO identityLink (recordId1 onPrep:recordId2 onRow:type onError:{strength) VALUES (?, ?, ?, ?)", &v4, 0, 0}];
  if (*(v18 + 24) == 1)
  {
    [*(a1 + 32) _markIdentityStoreDirty];
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __57__SGSqlEntityStore_IdentityStore__link_to_type_strength___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) rowId]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) rowId]);
  v4 = *(a1 + 48);

  return sqlite3_bind_int(a2, 3, v4);
}

uint64_t __57__SGSqlEntityStore_IdentityStore__link_to_type_strength___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) rowId]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) rowId]);
  sqlite3_bind_int(a2, 3, *(a1 + 56));
  v4 = *(a1 + 48);

  return sqlite3_bind_double(a2, 4, v4);
}

- (void)_joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk:(id)ilk name:(id)name recordId:(id)id
{
  v38 = *MEMORY[0x277D85DE8];
  ilkCopy = ilk;
  nameCopy = name;
  idCopy = id;
  v12 = idCopy;
  if (ilkCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:640 description:{@"Invalid parameter not satisfying: %@", @"socialProfiles"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:641 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

LABEL_3:
  if (!objc_msgSend_count(ilkCopy))
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:642 description:@"Expected nonzero number of socialProfiles"];
  }

  v13 = objc_opt_new();
  if (nameCopy)
  {
    v14 = @"fullname=:fullname";
  }

  else
  {
    v14 = @"(surname = '' OR surname IS NULL) AND fullname IS NULL";
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT recordId FROM identityPerson   WHERE %@ AND recordId IN(      SELECT recordId from identitySocialProfileIdentifiers           WHERE socialProfileIdentifier IN _pas_nsarray(:socialProfileIdentifiers)  )   LIMIT :limit", v14];
  db = self->_db;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __107__SGSqlEntityStore_IdentityStore___joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk_name_recordId___block_invoke;
  v34[3] = &unk_2789559D0;
  v17 = nameCopy;
  v35 = v17;
  v18 = ilkCopy;
  v36 = v18;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __107__SGSqlEntityStore_IdentityStore___joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk_name_recordId___block_invoke_3;
  v32[3] = &unk_278955A20;
  v19 = v13;
  v33 = v19;
  [(SGSqliteDatabase *)db prepAndRunSQL:v15 onPrep:v34 onRow:v32 onError:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(SGSqlEntityStore *)self link:v12 to:*(*(&v28 + 1) + 8 * v24++) type:3 strength:1.0];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v22);
  }
}

void __107__SGSqlEntityStore_IdentityStore___joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk_name_recordId___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32))
  {
    [v4 bindNamedParam:":fullname" toNSString:?];
  }

  v3 = [*(a1 + 40) _pas_mappedArrayWithTransform:&__block_literal_global_185];
  [v4 bindNamedParam:":socialProfileIdentifiers" toNSArray:v3];
  [v4 bindNamedParam:":limit" toInteger:10];
}

uint64_t __107__SGSqlEntityStore_IdentityStore___joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk_name_recordId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64ForColumnName:"recordId" table:"identityPerson"];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:v3];
  [v4 addObject:v5];

  return *MEMORY[0x277D42690];
}

id __107__SGSqlEntityStore_IdentityStore___joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk_name_recordId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = SGNormalizeSocialProfileIdentifier(v2);
  v4 = SGDelimitedStringsSerialize();

  return v4;
}

- (void)_joinIncompleteIdentityPhonesWithOthersOfTheirIlk:(id)ilk name:(id)name recordId:(id)id
{
  v38 = *MEMORY[0x277D85DE8];
  ilkCopy = ilk;
  nameCopy = name;
  idCopy = id;
  v12 = idCopy;
  if (ilkCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:598 description:{@"Invalid parameter not satisfying: %@", @"phones"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:599 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

LABEL_3:
  if (!objc_msgSend_count(ilkCopy))
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:600 description:@"Expected nonzero number of phones"];
  }

  v13 = objc_opt_new();
  if (nameCopy)
  {
    v14 = @"fullname=:fullname";
  }

  else
  {
    v14 = @"(surname = '' OR surname IS NULL) AND fullname IS NULL";
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT recordId FROM identityPerson   WHERE %@ AND recordId IN(      SELECT recordId from identityPhones           WHERE phone IN _pas_nsarray(:phones)  )   LIMIT :limit", v14];
  db = self->_db;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __99__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityPhonesWithOthersOfTheirIlk_name_recordId___block_invoke;
  v34[3] = &unk_2789559D0;
  v17 = nameCopy;
  v35 = v17;
  v18 = ilkCopy;
  v36 = v18;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __99__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityPhonesWithOthersOfTheirIlk_name_recordId___block_invoke_3;
  v32[3] = &unk_278955A20;
  v19 = v13;
  v33 = v19;
  [(SGSqliteDatabase *)db prepAndRunSQL:v15 onPrep:v34 onRow:v32 onError:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(SGSqlEntityStore *)self link:v12 to:*(*(&v28 + 1) + 8 * v24++) type:1 strength:1.0];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v22);
  }
}

void __99__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityPhonesWithOthersOfTheirIlk_name_recordId___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32))
  {
    [v4 bindNamedParam:":fullname" toNSString:?];
  }

  v3 = [*(a1 + 40) _pas_mappedArrayWithTransform:&__block_literal_global_172_10081];
  [v4 bindNamedParam:":phones" toNSArray:v3];
  [v4 bindNamedParam:":limit" toInteger:10];
}

uint64_t __99__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityPhonesWithOthersOfTheirIlk_name_recordId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64ForColumnName:"recordId" table:"identityPerson"];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:v3];
  [v4 addObject:v5];

  return *MEMORY[0x277D42690];
}

id __99__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityPhonesWithOthersOfTheirIlk_name_recordId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = SGNormalizePhoneNumber();

  return v3;
}

- (void)_joinIncompleteIdentityEmailWithOthersOfItsIlk:(id)ilk name:(id)name recordId:(id)id
{
  v38 = *MEMORY[0x277D85DE8];
  ilkCopy = ilk;
  nameCopy = name;
  idCopy = id;
  v12 = idCopy;
  if (ilkCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:567 description:{@"Invalid parameter not satisfying: %@", @"email"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:568 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

LABEL_3:
  v13 = objc_opt_new();
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  if (nameCopy)
  {
    v15 = @"SELECT recordId FROM identityPerson WHERE email=? AND fullname=? LIMIT %d";
  }

  else
  {
    v15 = @"SELECT recordId FROM identityPerson WHERE email=? AND fullname IS NULL LIMIT %d";
  }

  v16 = [v14 initWithFormat:v15, 10];
  db = self->_db;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __96__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityEmailWithOthersOfItsIlk_name_recordId___block_invoke;
  v34[3] = &unk_278954630;
  v18 = ilkCopy;
  v35 = v18;
  v19 = nameCopy;
  v36 = v19;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __96__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityEmailWithOthersOfItsIlk_name_recordId___block_invoke_2;
  v32[3] = &unk_278954708;
  v20 = v13;
  v33 = v20;
  [(SGSqliteDatabase *)db prepAndRunQuery:v16 onPrep:v34 onRow:v32 onError:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(SGSqlEntityStore *)self link:v12 to:*(*(&v28 + 1) + 8 * v25++) type:2 strength:1.0];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v23);
  }
}

void *__96__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityEmailWithOthersOfItsIlk_name_recordId___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  result = *(a1 + 40);
  if (result)
  {
    v5 = [result UTF8String];

    return sqlite3_bind_text(a2, 2, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t __96__SGSqlEntityStore_IdentityStore___joinIncompleteIdentityEmailWithOthersOfItsIlk_name_recordId___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{sqlite3_column_int64(a2, 0)}];
  [v2 addObject:v3];

  return 0;
}

- (BOOL)registerAndLinkIdentity:(id)identity recordId:(id)id phones:(id)phones socialProfiles:(id)profiles email:(id)email curated:(BOOL)curated isSent:(BOOL)sent
{
  v138 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  idCopy = id;
  phonesCopy = phones;
  profilesCopy = profiles;
  emailCopy = email;
  v19 = objc_autoreleasePoolPush();
  if (![emailCopy length] || !+[SGInhumans isInhumanEmailAddress:](SGInhumans, "isInhumanEmailAddress:", emailCopy))
  {
    if ([identityCopy length])
    {
      v21 = 0;
    }

    else
    {
      v21 = [emailCopy length] != 0;
    }

    v95 = v19;
    if ([identityCopy length])
    {
      v22 = 0;
    }

    else
    {
      v22 = objc_msgSend_count(phonesCopy) != 0;
    }

    selfCopy = self;
    if ([identityCopy length])
    {
      v23 = 0;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = objc_msgSend_count(profilesCopy) != 0;
      if (!v21)
      {
LABEL_13:
        if (v22)
        {
          [(SGSqlEntityStore *)selfCopy _joinIncompleteIdentityPhonesWithOthersOfTheirIlk:phonesCopy name:0 recordId:idCopy];
        }

        if (v23)
        {
          [(SGSqlEntityStore *)selfCopy _joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk:profilesCopy name:0 recordId:idCopy];
        }

        v128[0] = MEMORY[0x277D85DD0];
        v128[1] = 3221225472;
        v128[2] = __111__SGSqlEntityStore_IdentityStore__registerAndLinkIdentity_recordId_phones_socialProfiles_email_curated_isSent___block_invoke;
        v128[3] = &unk_27894CE48;
        v25 = phonesCopy;
        v129 = v25;
        v98 = profilesCopy;
        v130 = v98;
        v131 = selfCopy;
        v101 = emailCopy;
        v132 = v101;
        v100 = idCopy;
        v133 = v100;
        curatedCopy = curated;
        sentCopy = sent;
        v94 = MEMORY[0x2383809F0](v128);
        if ([identityCopy length])
        {
          if (![SGInhumans isInhumanName:identityCopy])
          {
            v26 = [SGIdentityName nameWithString:identityCopy];
            surname = [v26 surname];
            middlename = [v26 middlename];
            emailCopy = v101;
            if ([surname length])
            {
              v106 = SGNamesAsciify(surname);

              v86 = phonesCopy;
              v87 = idCopy;
              v84 = v26;
              v85 = profilesCopy;
              if (middlename)
              {
                v29 = SGNamesAsciify(middlename);
              }

              else
              {
                v29 = 0;
              }

              v31 = objc_opt_new();
              v32 = objc_opt_new();
              v33 = objc_opt_new();
              v34 = objc_opt_new();
              v35 = objc_opt_new();
              v36 = objc_opt_new();
              db = selfCopy->_db;
              v124[0] = MEMORY[0x277D85DD0];
              v124[1] = 3221225472;
              v124[2] = __111__SGSqlEntityStore_IdentityStore__registerAndLinkIdentity_recordId_phones_socialProfiles_email_curated_isSent___block_invoke_2;
              v124[3] = &unk_27894F4B0;
              v90 = v29;
              v125 = v90;
              v89 = v106;
              v126 = v89;
              sentCopy2 = sent;
              v117[0] = MEMORY[0x277D85DD0];
              v117[1] = 3221225472;
              v117[2] = __111__SGSqlEntityStore_IdentityStore__registerAndLinkIdentity_recordId_phones_socialProfiles_email_curated_isSent___block_invoke_3;
              v117[3] = &unk_27894CE70;
              v105 = v31;
              v118 = v105;
              v104 = v32;
              v119 = v104;
              v103 = v33;
              v120 = v103;
              v93 = v34;
              v121 = v93;
              v92 = v35;
              v122 = v92;
              v91 = v36;
              v123 = v91;
              [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT fullname onPrep:recordId onRow:nameSketches onError:phones, socialProfileIdentifiers, email FROM identityPerson WHERE (surname IN _pas_nsarray(:middleNameAndSurname) OR middlename = :surname) AND isSent = :isSent LIMIT :limit", v124, v117, 0];
              v38 = objc_alloc(MEMORY[0x277CBEB98]);
              v39 = [SGNames sketchesForName:identityCopy];
              v107 = [v38 initWithArray:v39];

              v40 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:objc_msgSend_count(v25)];
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v41 = v25;
              v42 = [v41 countByEnumeratingWithState:&v113 objects:v137 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v114;
                do
                {
                  for (i = 0; i != v43; ++i)
                  {
                    if (*v114 != v44)
                    {
                      objc_enumerationMutation(v41);
                    }

                    value = [*(*(&v113 + 1) + 8 * i) value];
                    v47 = SGNormalizePhoneNumber();
                    [v40 addObject:v47];
                  }

                  v43 = [v41 countByEnumeratingWithState:&v113 objects:v137 count:16];
                }

                while (v43);
              }

              v48 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:objc_msgSend_count(v98)];
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              v112 = 0u;
              v49 = v98;
              v50 = [v49 countByEnumeratingWithState:&v109 objects:v136 count:16];
              emailAddress = v101;
              if (v50)
              {
                v52 = v50;
                v53 = *v110;
                do
                {
                  for (j = 0; j != v52; ++j)
                  {
                    if (*v110 != v53)
                    {
                      objc_enumerationMutation(v49);
                    }

                    value2 = [*(*(&v109 + 1) + 8 * j) value];
                    v56 = SGNormalizeSocialProfileIdentifier(value2);
                    [v48 addObject:v56];
                  }

                  v52 = [v49 countByEnumeratingWithState:&v109 objects:v136 count:16];
                }

                while (v52);
              }

              v57 = v105;
              if (!v101)
              {
                v58 = identityCopy;
                v59 = [(SGSqlEntityStore *)selfCopy loadEntityByRecordId:v100];
                duplicateKey = [v59 duplicateKey];
                entityType = [duplicateKey entityType];

                if (entityType == 4)
                {
                  duplicateKey2 = [v59 duplicateKey];
                  identityKey = [duplicateKey2 identityKey];

                  if ([identityKey hasEmailAddress])
                  {
                    duplicateKey3 = [v59 duplicateKey];
                    identityKey2 = [duplicateKey3 identityKey];
                    emailAddress = [identityKey2 emailAddress];
                  }

                  else
                  {
                    emailAddress = 0;
                  }

                  identityCopy = v58;
                }

                else
                {
                  emailAddress = 0;
                  identityCopy = v58;
                }
              }

              v102 = emailAddress;
              v88 = identityCopy;
              v96 = SGNormalizeName(identityCopy);
              if (objc_msgSend_count(v105))
              {
                v68 = 0;
                v99 = 0;
                v69 = 0;
                v70 = 0;
                v71 = 0;
                do
                {
                  v72 = [v57 objectAtIndexedSubscript:v68];
                  v73 = [v104 objectAtIndexedSubscript:v68];
                  if (v71 <= 9)
                  {
                    [SGNames nameSimilarity:v96 and:v72];
                    if (v74 > 4.0)
                    {
                      [(SGSqlEntityStore *)selfCopy link:v100 to:v73 type:0 strength:?];
                      ++v71;
                    }
                  }

                  v75 = [v103 objectAtIndexedSubscript:v68];
                  v76 = [v107 intersectsSet:v75];

                  if (v76)
                  {
                    if (v70 <= 9)
                    {
                      v77 = [v93 objectAtIndexedSubscript:v68];
                      v78 = [v40 intersectsSet:v77];

                      if (v78)
                      {
                        [(SGSqlEntityStore *)selfCopy link:v100 to:v73 type:1 strength:2.0];
                        ++v70;
                      }
                    }

                    if (v69 <= 9)
                    {
                      if (v102)
                      {
                        v79 = [v91 objectAtIndexedSubscript:v68];
                        v80 = [v102 isEqualToString:v79];

                        if (v80)
                        {
                          [(SGSqlEntityStore *)selfCopy link:v100 to:v73 type:2 strength:4.0];
                          ++v69;
                        }
                      }
                    }

                    if (v99 <= 9)
                    {
                      v81 = [v92 objectAtIndexedSubscript:v68];
                      v82 = [v48 intersectsSet:v81];

                      if (v82)
                      {
                        [(SGSqlEntityStore *)selfCopy link:v100 to:v73 type:3 strength:4.0];
                        ++v99;
                      }
                    }
                  }

                  v57 = v105;

                  ++v68;
                }

                while (objc_msgSend_count(v105) > v68);
              }

              emailCopy = v102;
              if (writeIdentity(selfCopy->_db, v89, v90, v96, v107, v40, v48, v102, v100, curated, sent))
              {
                [(SGSqlEntityStore *)selfCopy _markIdentityStoreDirty];
              }

              v20 = 1;
              idCopy = v87;
              identityCopy = v88;
              profilesCopy = v85;
              phonesCopy = v86;
              v30 = v94;
              v19 = v95;
              v26 = v84;
              goto LABEL_85;
            }

            v89 = surname;
            v90 = middlename;
            if ([v101 length] || objc_msgSend_count(v25) || objc_msgSend_count(v98))
            {
              if (v21)
              {
                v30 = v94;
                (*(v94 + 16))(v94, 0);
LABEL_59:
                v20 = 1;
                v19 = v95;
LABEL_85:

                goto LABEL_86;
              }

              firstname = [v26 firstname];

              if (firstname)
              {
                v67 = SGNormalizeName(identityCopy);
                if ([v101 length])
                {
                  [(SGSqlEntityStore *)selfCopy _joinIncompleteIdentityEmailWithOthersOfItsIlk:v101 name:v67 recordId:v100];
                }

                v30 = v94;
                if (objc_msgSend_count(v25))
                {
                  [(SGSqlEntityStore *)selfCopy _joinIncompleteIdentityPhonesWithOthersOfTheirIlk:v25 name:v67 recordId:v100];
                }

                if (objc_msgSend_count(v98))
                {
                  [(SGSqlEntityStore *)selfCopy _joinIncompleteIdentitySocialProfilesWithOthersOfTheirIlk:v98 name:v67 recordId:v100];
                }

                (*(v94 + 16))(v94, v67);

                goto LABEL_59;
              }
            }

            v20 = 0;
            v30 = v94;
            v19 = v95;
            goto LABEL_85;
          }
        }

        else if (v21 || v22 || v23)
        {
          v30 = v94;
          (*(v94 + 16))(v94, 0);
          v20 = 1;
          emailCopy = v101;
          v19 = v95;
LABEL_86:

          goto LABEL_87;
        }

        v20 = 0;
        emailCopy = v101;
        v30 = v94;
        v19 = v95;
        goto LABEL_86;
      }
    }

    [(SGSqlEntityStore *)selfCopy _joinIncompleteIdentityEmailWithOthersOfItsIlk:emailCopy name:0 recordId:idCopy];
    v24 = [SGNames nameFromEmail:emailCopy];

    identityCopy = v24;
    goto LABEL_13;
  }

  v20 = 0;
LABEL_87:
  objc_autoreleasePoolPop(v19);

  return v20;
}

void __111__SGSqlEntityStore_IdentityStore__registerAndLinkIdentity_recordId_phones_socialProfiles_email_curated_isSent___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:objc_msgSend_count(*(a1 + 32))];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * v9) value];
        v11 = SGNormalizePhoneNumber();
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:objc_msgSend_count(*(a1 + 40))];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) value];
        v19 = SGNormalizeSocialProfileIdentifier(v18);
        [v12 addObject:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  if (writeIdentity(*(*(a1 + 48) + 8), 0, 0, v3, 0, v4, v12, *(a1 + 56), *(a1 + 64), *(a1 + 72), HIBYTE(*(a1 + 72))))
  {
    [*(a1 + 48) _markIdentityStoreDirty];
  }
}

void __111__SGSqlEntityStore_IdentityStore__registerAndLinkIdentity_recordId_phones_socialProfiles_email_curated_isSent___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    v4 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v10;
    v7 = 2;
  }

  else
  {
    v9 = *(a1 + 40);
    v5 = MEMORY[0x277CBEA60];
    v6 = &v9;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:{v7, v9, v10, v11, v12}];
  [v3 bindNamedParam:":middleNameAndSurname" toNSArray:v8];

  [v3 bindNamedParam:":surname" toNonnullNSString:*(a1 + 40)];
  [v3 bindNamedParam:":isSent" toInteger:*(a1 + 48)];
  [v3 bindNamedParam:":limit" toInteger:100];
}

uint64_t __111__SGSqlEntityStore_IdentityStore__registerAndLinkIdentity_recordId_phones_socialProfiles_email_curated_isSent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"fullname" table:0];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(v3, "getInt64ForColumnName:table:", "recordId", 0)}];
  [v5 addObject:v6];

  v7 = *(a1 + 48);
  v8 = [v3 nonnullNSStringForColumnName:"nameSketches" table:0];
  v9 = SGDelimitedStringsDeserializeSet();
  [v7 addObject:v9];

  v10 = *(a1 + 56);
  v11 = [v3 nonnullNSStringForColumnName:"phones" table:0];
  v12 = SGDelimitedStringsDeserializeSet();
  [v10 addObject:v12];

  v13 = *(a1 + 64);
  v14 = [v3 nonnullNSStringForColumnName:"socialProfileIdentifiers" table:0];
  v15 = SGDelimitedStringsDeserializeSet();
  [v13 addObject:v15];

  v16 = *(a1 + 72);
  v17 = [v3 nonnullNSStringForColumnName:"email" table:0];

  [v16 addObject:v17];
  v18 = MEMORY[0x277D42690];

  return *v18;
}

- (BOOL)rebuildIdentityTables
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[2] = 0;
  v7[0] = @"rebuildIdentityTables";
  v7[1] = mach_absolute_time();
  db = self->_db;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SGSqlEntityStore_IdentityStore__rebuildIdentityTables__block_invoke;
  v6[3] = &unk_278954E28;
  v6[5] = &v8;
  v6[6] = a2;
  v6[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v6];
  SGRecordMeasurementState(v7);
  LOBYTE(self) = *(v9 + 24);
  SGRecordMeasurementState(v7);
  _Block_object_dispose(&v8, 8);
  return self;
}

void __56__SGSqlEntityStore_IdentityStore__rebuildIdentityTables__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) prepAndRunQuery:@"DELETE FROM identityPerson" onPrep:0 onRow:0 onError:0];
  [*(*(a1 + 32) + 8) prepAndRunQuery:@"DELETE FROM identityLink" onPrep:0 onRow:0 onError:0];
  [*(*(a1 + 32) + 8) prepAndRunQuery:@"DELETE FROM identityPhones" onPrep:0 onRow:0 onError:0];
  [*(*(a1 + 32) + 8) prepAndRunQuery:@"DELETE FROM identitySocialProfileIdentifiers" onPrep:0 onRow:0 onError:0];
  v2 = [*(a1 + 32) selectEntityQuery:@"WHERE e.entityType = :pseudo OR e.entityType = :unrec"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SGSqlEntityStore_IdentityStore__rebuildIdentityTables__block_invoke_3;
  v7[3] = &unk_27894CE20;
  v5 = *(a1 + 48);
  v7[4] = v3;
  v7[5] = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SGSqlEntityStore_IdentityStore__rebuildIdentityTables__block_invoke_4;
  v6[3] = &unk_278953F10;
  v6[4] = *(a1 + 40);
  [v4 prepAndRunQuery:v2 onPrep:&__block_literal_global_115 onRow:v7 onError:v6];
}

uint64_t __56__SGSqlEntityStore_IdentityStore__rebuildIdentityTables__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) entityFromSqlResult:a2];
  v6 = [v5 duplicateKey];
  v7 = [v6 entityType];

  if (v7 == 12)
  {
    v10 = [v5 duplicateKey];
    v11 = [v10 identityKey];

    if ([v11 hasPhone])
    {
      v12 = [v11 phone];
      v13 = [[SGLabeledValue alloc] initWithLabel:&stru_284703F00 value:v12];
      v31[0] = v13;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    }

    else
    {
      v29 = 0;
    }

    if ([v11 hasEmailAddress])
    {
      v18 = [v11 emailAddress];
    }

    else
    {
      v18 = 0;
    }

    if ([v11 hasSocialProfile])
    {
      v19 = [v11 socialProfile];
      v20 = [[SGLabeledValue alloc] initWithLabel:&stru_284703F00 value:v19];
      v30 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 32);
    v23 = [v5 title];
    v24 = [v5 recordId];
    v25 = [v5 tags];
    v26 = [MEMORY[0x277D01FA0] isSent];
    LOBYTE(v28) = [v25 containsObject:v26];
    [v22 registerAndLinkIdentity:v23 recordId:v24 phones:v29 socialProfiles:v21 email:v18 curated:0 isSent:v28];

    goto LABEL_15;
  }

  if (v7 != 4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v16 = a1 + 32;
    v14 = *(a1 + 32);
    v15 = *(v16 + 8);
    v17 = [v5 duplicateKey];
    [v11 handleFailureInMethod:v15 object:v14 file:@"SGSqlEntityStore+Identity.m" lineNumber:298 description:{@"Unexpected entity type: %lld", objc_msgSend(v17, "entityType")}];

LABEL_15:
    goto LABEL_16;
  }

  v8 = *(a1 + 32);
  v9 = [v5 recordId];
  [v8 processPseudoContactEntity:v5 recordId:v9];

LABEL_16:
  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t __56__SGSqlEntityStore_IdentityStore__rebuildIdentityTables__block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 description];
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "Sqlite error while rebuilding identity tables: %@", &v7, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return 1;
}

uint64_t __56__SGSqlEntityStore_IdentityStore__rebuildIdentityTables__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":pseudo" int64:4];

  return [SGSqliteDatabase bindParam:a2 name:":unrec" int64:12];
}

- (BOOL)processContactEnrichment:(id)enrichment recordId:(id)id
{
  enrichmentCopy = enrichment;
  idCopy = id;
  v9 = idCopy;
  if (!enrichmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"entity"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_9:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Identity.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

    goto LABEL_3;
  }

  if (!idCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  duplicateKey = [enrichmentCopy duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  v12 = IsContact && ([enrichmentCopy isInhuman] & 1) == 0 && -[SGSqlEntityStore processPseudoContactEntity:recordId:](self, "processPseudoContactEntity:recordId:", enrichmentCopy, v9);
  return v12;
}

- (BOOL)processPseudoContactEntity:(id)entity recordId:(id)id
{
  entityCopy = entity;
  idCopy = id;
  v26 = [(SGSqlEntityStore *)self loadAllContactDetailsForRecordId:idCopy];
  v8 = [SGDeduper splitContactDetailsByType:?];
  v9 = MEMORY[0x277D01FE0];
  v10 = [v8 objectForKey:&unk_284749458];
  v27 = [v9 map:v10 f:&__block_literal_global_71];

  v11 = MEMORY[0x277D01FE0];
  v12 = [v8 objectForKey:&unk_284749470];
  v13 = [v11 map:v12 f:&__block_literal_global_76];

  v14 = MEMORY[0x277D01FE0];
  v15 = [v8 objectForKey:&unk_284749488];
  v16 = [v14 map:v15 f:&__block_literal_global_81];

  v28 = entityCopy;
  title = [entityCopy title];
  v18 = objc_msgSend_count(v13);
  if (v18)
  {
    v25 = [v13 objectAtIndexedSubscript:0];
    value = [v25 value];
  }

  else
  {
    value = 0;
  }

  tags = [v28 tags];
  isSent = [MEMORY[0x277D01FA0] isSent];
  LOBYTE(v24) = [tags containsObject:isSent];
  v22 = [(SGSqlEntityStore *)self registerAndLinkIdentity:title recordId:idCopy phones:v27 socialProfiles:v16 email:value curated:0 isSent:v24];

  if (v18)
  {
  }

  return v22;
}

SGLabeledValue *__71__SGSqlEntityStore_IdentityStore__processPseudoContactEntity_recordId___block_invoke_79(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 label];
  v4 = [v2 value];

  SGNormalizeSocialProfile(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = v3;
  v6 = [[SGLabeledValue alloc] initWithLabel:v5 value:v4];

  return v6;
}

SGLabeledValue *__71__SGSqlEntityStore_IdentityStore__processPseudoContactEntity_recordId___block_invoke_74(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 label];
  v4 = [v2 value];

  v5 = v3;
  v6 = [[SGLabeledValue alloc] initWithLabel:v5 value:v4];

  return v6;
}

SGLabeledValue *__71__SGSqlEntityStore_IdentityStore__processPseudoContactEntity_recordId___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 label];
  v4 = [v2 value];

  v5 = v3;
  v6 = [[SGLabeledValue alloc] initWithLabel:v5 value:v4];

  return v6;
}

- (id)splitNeededFor:(id)for withInterdicts:(id)interdicts curatedRecordIds:(id)ids
{
  v42 = *MEMORY[0x277D85DE8];
  forCopy = for;
  interdictsCopy = interdicts;
  idsCopy = ids;
  if (objc_msgSend_count(forCopy) >= 2 && objc_msgSend_count(forCopy) <= 0x64)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = interdictsCopy;
    v11 = interdictsCopy;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          first = [v16 first];
          if ([forCopy intersectsSet:first])
          {
            second = [v16 second];
            v19 = [forCopy intersectsSet:second];

            if (v19)
            {
              v25 = [forCopy mutableCopy];
              first2 = [v16 first];
              [v25 intersectSet:first2];

              v27 = [forCopy mutableCopy];
              second2 = [v16 second];
              [v27 intersectSet:second2];

              v40[0] = v25;
              v40[1] = v27;
              v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];

              goto LABEL_26;
            }
          }

          else
          {
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v13);
    }

    v11 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = forCopy;
    v10 = [v25 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v10)
    {
      v20 = *v32;
      while (2)
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v25);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          if ([idsCopy containsObject:v22])
          {
            v23 = objc_autoreleasePoolPush();
            v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v22, 0}];
            objc_autoreleasePoolPop(v23);
            [v11 addObject:v24];

            if (objc_msgSend_count(v11) == 2)
            {
              v11 = v11;
              v10 = v11;
              goto LABEL_26;
            }
          }
        }

        v10 = [v25 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    interdictsCopy = v30;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)loadInterdicts
{
  v3 = objc_opt_new();
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SGSqlEntityStore_IdentityStore__loadInterdicts__block_invoke;
  v7[3] = &unk_278954708;
  v5 = v3;
  v8 = v5;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT a onPrep:b FROM identityInterdict" onRow:0 onError:v7, 0];

  return v5;
}

uint64_t __49__SGSqlEntityStore_IdentityStore__loadInterdicts__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = sqlite3_column_nsstring(a2, 0);
  v15 = v4;
  v7 = v4;
  SGDelimitedStringsDeserializeWithBlock();

  v8 = sqlite3_column_nsstring(a2, 1);
  v13 = MEMORY[0x277D85DD0];
  v14 = v5;
  v9 = v5;
  SGDelimitedStringsDeserializeWithBlock();

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277D42648] tupleWithFirst:v7 second:{v9, v13, 3221225472, __49__SGSqlEntityStore_IdentityStore__loadInterdicts__block_invoke_3, &unk_27894E578}];
  [v10 addObject:v11];

  return 0;
}

void __49__SGSqlEntityStore_IdentityStore__loadInterdicts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(a2, "longLongValue")}];
  [v2 addObject:v3];
}

void __49__SGSqlEntityStore_IdentityStore__loadInterdicts__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(a2, "longLongValue")}];
  [v2 addObject:v3];
}

- (void)addInterdictFrom:(id)from with:(id)with
{
  fromCopy = from;
  withCopy = with;
  if ([fromCopy intersectsSet:withCopy])
  {
    [MEMORY[0x277CBEAD8] raise:@"SGIStore error" format:{@"Can not add interdict between non-disjoint sets %@ and %@", fromCopy, withCopy}];
  }

  v8 = sgMap();
  v9 = SGDelimitedStringsSerializeArray();

  v10 = sgMap();
  v11 = SGDelimitedStringsSerializeArray();

  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SGSqlEntityStore_IdentityStore__addInterdictFrom_with___block_invoke_3;
  v15[3] = &unk_278956130;
  v15[4] = self;
  v16 = v9;
  v17 = v11;
  v13 = v11;
  v14 = v9;
  [(SGSqliteDatabase *)db writeTransaction:v15];
}

void __57__SGSqlEntityStore_IdentityStore__addInterdictFrom_with___block_invoke_3(id *a1)
{
  v2 = *(a1[4] + 1);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __57__SGSqlEntityStore_IdentityStore__addInterdictFrom_with___block_invoke_4;
  v6 = &unk_278954630;
  v7 = a1[5];
  v8 = a1[6];
  [v2 prepAndRunQuery:@"INSERT INTO identityInterdict (a onPrep:b) VALUES (? onRow:?)" onError:{&v3, 0, 0}];
  [a1[4] _markIdentityStoreDirty];
}

uint64_t __57__SGSqlEntityStore_IdentityStore__addInterdictFrom_with___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0xFFFFFFFFFFFFFFFFLL);
}

id __57__SGSqlEntityStore_IdentityStore__addInterdictFrom_with___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 rowId];

  v6 = [v4 initWithFormat:@"%lld", v5];

  return v6;
}

id __57__SGSqlEntityStore_IdentityStore__addInterdictFrom_with___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 rowId];

  v6 = [v4 initWithFormat:@"%lld", v5];

  return v6;
}

- (void)forceBlobSync
{
  computeBlobs = [(SGSqlEntityStore *)self computeBlobs];
  [(SGSqlEntityStore *)self writeIdentityBlobs:computeBlobs forceRewrite:1];
}

- (BOOL)syncNewBlobsIfChanged
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SGSqlEntityStore_IdentityStore__syncNewBlobsIfChanged__block_invoke;
  v5[3] = &unk_2789561D0;
  v5[4] = self;
  v5[5] = &v6;
  [(SGSqliteDatabase *)db writeTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __56__SGSqlEntityStore_IdentityStore__syncNewBlobsIfChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getNewBlobsIfChanged];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) writeIdentityBlobs:v2 forceRewrite:0];
    v3 = v5;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (id)getNewBlobsIfChanged
{
  if ([(SGSqlEntityStore *)self _isIdentityStoreDirty])
  {
    computeBlobs = [(SGSqlEntityStore *)self computeBlobs];
    [(SGSqlEntityStore *)self _markIdentityStoreClean];
  }

  else
  {
    computeBlobs = 0;
  }

  return computeBlobs;
}

- (id)batch:(id)batch
{
  (*(batch + 2))(batch, a2);

  return [(SGSqlEntityStore *)self getNewBlobsIfChanged];
}

- (id)reimportRequestDBStats
{
  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"reimportRequests"])
  {
    v3 = objc_opt_new();
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0x7FEFFFFFFFFFFFFFLL;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0x7FEFFFFFFFFFFFFFLL;
    db = self->_db;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__SGSqlEntityStore_ReimportRequests__reimportRequestDBStats__block_invoke;
    v23[3] = &unk_27894DC58;
    v23[4] = &v40;
    v23[5] = &v28;
    v23[6] = &v24;
    v23[7] = &v36;
    v23[8] = &v32;
    [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT creationTimestamp onPrep:queryTimestamp onRow:executionTimestamp FROM reimportRequests" onError:0, v23, &__block_literal_global_126];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v41 + 6)];
    [v3 setObject:v5 forKeyedSubscript:@"reimportRequests_total"];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v37 + 6)];
    [v3 setObject:v6 forKeyedSubscript:@"reimportRequests_unqueried"];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v33 + 6)];
    [v3 setObject:v7 forKeyedSubscript:@"reimportRequests_unexecuted"];

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v29[3]];
    [v3 setObject:v8 forKeyedSubscript:@"reimportRequests_oldest"];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v25[3]];
    [v3 setObject:v9 forKeyedSubscript:@"reimportRequests_oldestOpen"];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v10 = self->_db;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SGSqlEntityStore_ReimportRequests__reimportRequestDBStats__block_invoke_145;
    v14[3] = &unk_27894E5A0;
    v14[4] = &v19;
    v14[5] = &v15;
    [(SGSqliteDatabase *)v10 prepAndRunQuery:@"SELECT seenByReceiverTimestamp FROM reimportItems" onPrep:0 onRow:v14 onError:&__block_literal_global_148];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v20 + 6)];
    [v3 setObject:v11 forKeyedSubscript:@"reimportItems_total"];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v16 + 6)];
    [v3 setObject:v12 forKeyedSubscript:@"reimportItems_unseen"];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

uint64_t __60__SGSqlEntityStore_ReimportRequests__reimportRequestDBStats__block_invoke(void *a1, sqlite3_stmt *a2)
{
  ++*(*(a1[4] + 8) + 24);
  v4 = sqlite3_column_double(a2, 0);
  v5 = *(a1[5] + 8);
  if (*(v5 + 24) > v4)
  {
    *(v5 + 24) = v4;
  }

  v6 = sqlite3_column_double(a2, 1);
  v7 = sqlite3_column_double(a2, 2);
  if (v6 <= 0.0 || v7 <= 0.0)
  {
    v8 = *(a1[6] + 8);
    if (*(v8 + 24) > v4)
    {
      *(v8 + 24) = v4;
    }

    if (v6 == 0.0)
    {
      v9 = 7;
LABEL_11:
      ++*(*(a1[v9] + 8) + 24);
      return 0;
    }

    if (v7 == 0.0)
    {
      v9 = 8;
      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t __60__SGSqlEntityStore_ReimportRequests__reimportRequestDBStats__block_invoke_145(uint64_t a1, sqlite3_stmt *a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  if (sqlite3_column_double(a2, 0) == 0.0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return 0;
}

uint64_t __60__SGSqlEntityStore_ReimportRequests__reimportRequestDBStats__block_invoke_2_146(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "error during reimportRequestDBStats query of reimportItems: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __60__SGSqlEntityStore_ReimportRequests__reimportRequestDBStats__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "error during reimportRequestDBStats query of reimportRequests: %@", &v5, 0xCu);
  }

  return 1;
}

- (void)_deleteOrphanedItems
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SGSqlEntityStore_ReimportRequests___deleteOrphanedItems__block_invoke;
  v3[3] = &unk_278954A30;
  v3[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v3];
}

uint64_t __58__SGSqlEntityStore_ReimportRequests___deleteOrphanedItems__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "failed to delete orphaned reimport items: %@", &v5, 0xCu);
  }

  return 1;
}

- (void)deleteCompletedReimportRequests
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__SGSqlEntityStore_ReimportRequests__deleteCompletedReimportRequests__block_invoke;
  v3[3] = &unk_278954A30;
  v3[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v3];
}

uint64_t __69__SGSqlEntityStore_ReimportRequests__deleteCompletedReimportRequests__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) prepAndRunQuery:@"DELETE FROM reimportRequests WHERE executionTimestamp IS NOT NULL AND id NOT IN(    SELECT DISTINCT reimportRequestId FROM reimportItems     WHERE seenByReceiverTimestamp IS NULL)" onPrep:0 onRow:0 onError:&__block_literal_global_116];
  v2 = *(a1 + 32);

  return [v2 _deleteOrphanedItems];
}

uint64_t __69__SGSqlEntityStore_ReimportRequests__deleteCompletedReimportRequests__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "failed to delete completed reimport requests: %@", &v5, 0xCu);
  }

  return 1;
}

- (void)deleteAllReimportRequestsOlderThanDate:(id)date
{
  dateCopy = date;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SGSqlEntityStore_ReimportRequests__deleteAllReimportRequestsOlderThanDate___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  [(SGSqliteDatabase *)db writeTransaction:v7];
}

void __77__SGSqlEntityStore_ReimportRequests__deleteAllReimportRequestsOlderThanDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SGSqlEntityStore_ReimportRequests__deleteAllReimportRequestsOlderThanDate___block_invoke_2;
  v8[3] = &unk_278956070;
  v9 = *(a1 + 40);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __77__SGSqlEntityStore_ReimportRequests__deleteAllReimportRequestsOlderThanDate___block_invoke_3;
  v6 = &unk_278956108;
  v7 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM reimportRequests WHERE creationTimestamp < :date" onPrep:v8 onRow:0 onError:&v3];
  [*(a1 + 32) _deleteOrphanedItems];
}

uint64_t __77__SGSqlEntityStore_ReimportRequests__deleteAllReimportRequestsOlderThanDate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) timeIntervalSince1970];

  return [SGSqliteDatabase bindParam:a2 name:":date" double:?];
}

uint64_t __77__SGSqlEntityStore_ReimportRequests__deleteAllReimportRequestsOlderThanDate___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to delete reimport requests older than: %@: %@", &v7, 0x16u);
  }

  return 1;
}

- (BOOL)reimportRequestsContainBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  if (reimportRequestsContainBundleIdentifier_uniqueIdentifier__onceToken != -1)
  {
    dispatch_once(&reimportRequestsContainBundleIdentifier_uniqueIdentifier__onceToken, &__block_literal_global_92);
  }

  [reimportRequestsContainBundleIdentifier_uniqueIdentifier__lock lock];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v8 = [reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache containsObject:identifierCopy];
  v9 = v8 ^ 1;
  if (uniqueIdentifierCopy)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    *(v27 + 24) = 1;
    goto LABEL_29;
  }

  if ([reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache containsObject:identifierCopy])
  {
    goto LABEL_29;
  }

  if (!uniqueIdentifierCopy)
  {
    db = self->_db;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __95__SGSqlEntityStore_ReimportRequests__reimportRequestsContainBundleIdentifier_uniqueIdentifier___block_invoke_5;
    v20[3] = &unk_278956070;
    v12 = identifierCopy;
    v21 = v12;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __95__SGSqlEntityStore_ReimportRequests__reimportRequestsContainBundleIdentifier_uniqueIdentifier___block_invoke_6;
    v19[3] = &unk_278954658;
    v19[4] = &v26;
    [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT 1 FROM reimportItems WHERE bundleId = :bid" onPrep:v20 onRow:v19 onError:&__block_literal_global_107];
    if (*(v27 + 24))
    {
      v13 = &reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache;
    }

    else
    {
      v13 = &reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache;
    }

    [*v13 addObject:v12];
    uniqueIdentifierCopy = v21;
    goto LABEL_23;
  }

  uniqueIdentifierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", identifierCopy, uniqueIdentifierCopy];
  if ([reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache containsObject:uniqueIdentifierCopy])
  {
    *(v27 + 24) = 1;
LABEL_16:

    goto LABEL_29;
  }

  if ([reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache containsObject:uniqueIdentifierCopy])
  {
    goto LABEL_16;
  }

  v14 = self->_db;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __95__SGSqlEntityStore_ReimportRequests__reimportRequestsContainBundleIdentifier_uniqueIdentifier___block_invoke_2;
  v23[3] = &unk_278954630;
  v15 = identifierCopy;
  v24 = v15;
  v25 = uniqueIdentifierCopy;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__SGSqlEntityStore_ReimportRequests__reimportRequestsContainBundleIdentifier_uniqueIdentifier___block_invoke_3;
  v22[3] = &unk_278954658;
  v22[4] = &v26;
  [(SGSqliteDatabase *)v14 prepAndRunQuery:@"SELECT 1 FROM reimportItems WHERE bundleId = :bid AND uniqueId = :uid" onPrep:v23 onRow:v22 onError:&__block_literal_global_102];
  if (*(v27 + 24) != 1)
  {
    v16 = &reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache;
    v15 = uniqueIdentifierCopy;
    goto LABEL_21;
  }

  [reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache addObject:uniqueIdentifierCopy];
  if ((v8 & 1) == 0)
  {
    v16 = &reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache;
LABEL_21:
    [*v16 addObject:v15];
  }

LABEL_23:
  if (*(v27 + 24) == 1 && objc_msgSend_count(reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache) >= 0x1A)
  {
    [reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache removeObjectsInRange:{0, objc_msgSend_count(reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache) - 25}];
  }

  if ((v27[3] & 1) == 0 && objc_msgSend_count(reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache) >= 0x1A)
  {
    [reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache removeObjectsInRange:{0, objc_msgSend_count(reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache) - 25}];
  }

LABEL_29:
  [reimportRequestsContainBundleIdentifier_uniqueIdentifier__lock unlock];
  v17 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v17;
}

uint64_t __95__SGSqlEntityStore_ReimportRequests__reimportRequestsContainBundleIdentifier_uniqueIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":bid" nsstring:*(a1 + 32)];
  v4 = *(a1 + 40);

  return [SGSqliteDatabase bindParam:a2 name:":uid" nsstring:v4];
}

uint64_t __95__SGSqlEntityStore_ReimportRequests__reimportRequestsContainBundleIdentifier_uniqueIdentifier___block_invoke()
{
  v0 = objc_opt_new();
  v1 = reimportRequestsContainBundleIdentifier_uniqueIdentifier__lock;
  reimportRequestsContainBundleIdentifier_uniqueIdentifier__lock = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:25];
  v3 = reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache;
  reimportRequestsContainBundleIdentifier_uniqueIdentifier__yesCache = v2;

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:25];
  v5 = reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache;
  reimportRequestsContainBundleIdentifier_uniqueIdentifier__noCache = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

- (id)loadUnseenReimportItemsForRequest:(unint64_t)request
{
  v5 = objc_opt_new();
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__SGSqlEntityStore_ReimportRequests__loadUnseenReimportItemsForRequest___block_invoke;
  v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = request;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SGSqlEntityStore_ReimportRequests__loadUnseenReimportItemsForRequest___block_invoke_2;
  v10[3] = &unk_278954708;
  v7 = v5;
  v11 = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SGSqlEntityStore_ReimportRequests__loadUnseenReimportItemsForRequest___block_invoke_3;
  v9[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v9[4] = request;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT bundleId onPrep:uniqueId FROM reimportItems WHERE reimportRequestId = :id AND seenByReceiverTimestamp IS NULL" onRow:v12 onError:v10, v9];

  return v7;
}

uint64_t __72__SGSqlEntityStore_ReimportRequests__loadUnseenReimportItemsForRequest___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_nsstring(a2, 0);
  v5 = sqlite3_column_nsstring(a2, 1);
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v4];

    if (!v7)
    {
      v8 = objc_opt_new();
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v4];
    }

    v9 = [*(a1 + 32) objectForKeyedSubscript:v4];
    [v9 addObject:v6];
  }

  return 0;
}

uint64_t __72__SGSqlEntityStore_ReimportRequests__loadUnseenReimportItemsForRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 134218242;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to load unseen reimport items for request: %llu: %@", &v7, 0x16u);
  }

  return 1;
}

- (id)_loadReimportRequestsWithWhereClause:(id)clause
{
  clauseCopy = clause;
  v5 = objc_opt_new();
  db = self->_db;
  clauseCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id, plugin, personHandle, startDateTimestamp, endDateTimestamp FROM reimportRequests WHERE %@", clauseCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SGSqlEntityStore_ReimportRequests___loadReimportRequestsWithWhereClause___block_invoke;
  v10[3] = &unk_278954708;
  v8 = v5;
  v11 = v8;
  [(SGSqliteDatabase *)db prepAndRunQuery:clauseCopy onPrep:0 onRow:v10 onError:&__block_literal_global_86];

  return v8;
}

uint64_t __75__SGSqlEntityStore_ReimportRequests___loadReimportRequestsWithWhereClause___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 0);
  v5 = sqlite3_column_nsstring(a2, 1);
  v6 = sqlite3_column_nsstring(a2, 2);
  v7 = sqlite3_column_double(a2, 3);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v7];
  }

  v9 = sqlite3_column_double(a2, 4);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v9];
  }

  v11 = [FIAPHistoricalDataRequest historicalDataRequestWithPersonHandle:v6 startDate:v8 endDate:v10];
  [v11 setRequestId:v4];
  [v11 setPluginIdentifier:v5];
  [*(a1 + 32) addObject:v11];

  return 0;
}

uint64_t __75__SGSqlEntityStore_ReimportRequests___loadReimportRequestsWithWhereClause___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "failed to load unqueried reimport requests: %@", &v5, 0xCu);
  }

  return 1;
}

- (void)updateReimportItemUniqueIdForBundleId:(id)id oldValue:(id)value newValue:(id)newValue
{
  idCopy = id;
  valueCopy = value;
  newValueCopy = newValue;
  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__SGSqlEntityStore_ReimportRequests__updateReimportItemUniqueIdForBundleId_oldValue_newValue___block_invoke;
  v15[3] = &unk_2789560E0;
  v15[4] = self;
  v16 = idCopy;
  v17 = valueCopy;
  v18 = newValueCopy;
  v12 = newValueCopy;
  v13 = valueCopy;
  v14 = idCopy;
  [(SGSqliteDatabase *)db writeTransaction:v15];
}

void __94__SGSqlEntityStore_ReimportRequests__updateReimportItemUniqueIdForBundleId_oldValue_newValue___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__SGSqlEntityStore_ReimportRequests__updateReimportItemUniqueIdForBundleId_oldValue_newValue___block_invoke_2;
  v6[3] = &unk_27894DC30;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __94__SGSqlEntityStore_ReimportRequests__updateReimportItemUniqueIdForBundleId_oldValue_newValue___block_invoke_3;
  v3[3] = &unk_27894DC08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 prepAndRunQuery:@"UPDATE reimportItems SET uniqueId = :newValue WHERE bundleId = :bundleId AND uniqueId = :oldValue" onPrep:v6 onRow:0 onError:v3];
}

uint64_t __94__SGSqlEntityStore_ReimportRequests__updateReimportItemUniqueIdForBundleId_oldValue_newValue___block_invoke_2(void *a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":bundleId" nsstring:a1[4]];
  [SGSqliteDatabase bindParam:a2 name:":oldValue" nsstring:a1[5]];
  v4 = a1[6];

  return [SGSqliteDatabase bindParam:a2 name:":newValue" nsstring:v4];
}

uint64_t __94__SGSqlEntityStore_ReimportRequests__updateReimportItemUniqueIdForBundleId_oldValue_newValue___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to update reimport uniqueId item from %@ to %@: %@", &v8, 0x20u);
  }

  return 1;
}

- (void)markReimportItemAsSeenByReceiverWithBundleId:(id)id uniqueId:(id)uniqueId
{
  idCopy = id;
  uniqueIdCopy = uniqueId;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__SGSqlEntityStore_ReimportRequests__markReimportItemAsSeenByReceiverWithBundleId_uniqueId___block_invoke;
  v11[3] = &unk_278956130;
  v11[4] = self;
  v12 = idCopy;
  v13 = uniqueIdCopy;
  v9 = uniqueIdCopy;
  v10 = idCopy;
  [(SGSqliteDatabase *)db writeTransaction:v11];
}

void __92__SGSqlEntityStore_ReimportRequests__markReimportItemAsSeenByReceiverWithBundleId_uniqueId___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__SGSqlEntityStore_ReimportRequests__markReimportItemAsSeenByReceiverWithBundleId_uniqueId___block_invoke_2;
  v6[3] = &unk_278954630;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__SGSqlEntityStore_ReimportRequests__markReimportItemAsSeenByReceiverWithBundleId_uniqueId___block_invoke_3;
  v3[3] = &unk_27894DC08;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 prepAndRunQuery:@"UPDATE reimportItems SET seenByReceiverTimestamp = :time WHERE bundleId = :bundleId AND uniqueId = :uniqueId" onPrep:v6 onRow:0 onError:v3];
}

uint64_t __92__SGSqlEntityStore_ReimportRequests__markReimportItemAsSeenByReceiverWithBundleId_uniqueId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  [SGSqliteDatabase bindParam:a2 name:":time" double:?];

  [SGSqliteDatabase bindParam:a2 name:":bundleId" nsstring:*(a1 + 32)];
  v5 = *(a1 + 40);

  return [SGSqliteDatabase bindParam:a2 name:":uniqueId" nsstring:v5];
}

uint64_t __92__SGSqlEntityStore_ReimportRequests__markReimportItemAsSeenByReceiverWithBundleId_uniqueId___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to mark reimport item %@/%@ as seen: %@", &v8, 0x20u);
  }

  return 1;
}

- (void)markReimportItemsAsSeenByReceiverWithBundleId:(id)id items:(id)items
{
  idCopy = id;
  itemsCopy = items;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__SGSqlEntityStore_ReimportRequests__markReimportItemsAsSeenByReceiverWithBundleId_items___block_invoke;
  v11[3] = &unk_278956130;
  v11[4] = self;
  v12 = idCopy;
  v13 = itemsCopy;
  v9 = itemsCopy;
  v10 = idCopy;
  [(SGSqliteDatabase *)db writeTransaction:v11];
}

void __90__SGSqlEntityStore_ReimportRequests__markReimportItemsAsSeenByReceiverWithBundleId_items___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__SGSqlEntityStore_ReimportRequests__markReimportItemsAsSeenByReceiverWithBundleId_items___block_invoke_2;
  v6[3] = &unk_2789559D0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __90__SGSqlEntityStore_ReimportRequests__markReimportItemsAsSeenByReceiverWithBundleId_items___block_invoke_4;
  v3[3] = &unk_27894DC08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v2 prepAndRunSQL:@"UPDATE reimportItems SET seenByReceiverTimestamp = :time WHERE bundleId = :bundleId AND uniqueId IN _pas_nsarray(:uids)" onPrep:v6 onRow:0 onError:v3];
}

void __90__SGSqlEntityStore_ReimportRequests__markReimportItemsAsSeenByReceiverWithBundleId_items___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":time" toDouble:?];

  [v3 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
  v5 = [*(a1 + 40) _pas_proxyArrayWithMapping:&__block_literal_global_14315];
  [v3 bindNamedParam:":uids" toNSArray:v5];
}

uint64_t __90__SGSqlEntityStore_ReimportRequests__markReimportItemsAsSeenByReceiverWithBundleId_items___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_msgSend_count(*(a1 + 32));
    v7 = *(a1 + 40);
    v8 = 134218498;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to mark %tu reimport items for %@ as seen: %@", &v8, 0x20u);
  }

  return *MEMORY[0x277D42698];
}

- (void)markReimportRequestAsExecutedWithRequestId:(unint64_t)id
{
  db = self->_db;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__SGSqlEntityStore_ReimportRequests__markReimportRequestAsExecutedWithRequestId___block_invoke;
  v4[3] = &unk_278955468;
  v4[4] = self;
  v4[5] = id;
  [(SGSqliteDatabase *)db writeTransaction:v4];
}

uint64_t __81__SGSqlEntityStore_ReimportRequests__markReimportRequestAsExecutedWithRequestId___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__SGSqlEntityStore_ReimportRequests__markReimportRequestAsExecutedWithRequestId___block_invoke_2;
  v4[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__SGSqlEntityStore_ReimportRequests__markReimportRequestAsExecutedWithRequestId___block_invoke_3;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = v5;
  return [v1 prepAndRunQuery:@"UPDATE reimportRequests SET executionTimestamp = :time WHERE id = :id" onPrep:v4 onRow:0 onError:v3];
}

uint64_t __81__SGSqlEntityStore_ReimportRequests__markReimportRequestAsExecutedWithRequestId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  [SGSqliteDatabase bindParam:a2 name:":time" double:?];

  v5 = *(a1 + 32);

  return [SGSqliteDatabase bindParam:a2 name:":id" int64:v5];
}

uint64_t __81__SGSqlEntityStore_ReimportRequests__markReimportRequestAsExecutedWithRequestId___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 134218242;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to mark reimport request %llu as executed: %@", &v7, 0x16u);
  }

  return 1;
}

- (void)storeReimportItems:(id)items requestId:(unint64_t)id
{
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke;
  v9[3] = &unk_278955468;
  v9[4] = self;
  v9[5] = id;
  itemsCopy = items;
  [(SGSqliteDatabase *)db writeTransaction:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_37;
  v8[3] = &unk_27894DBC0;
  v8[4] = self;
  v8[5] = id;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v8];
}

uint64_t __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_2;
  v4[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_3;
  v3[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v3[4] = v5;
  return [v1 prepAndRunQuery:@"UPDATE reimportRequests SET queryTimestamp = :time WHERE id = :id" onPrep:v4 onRow:0 onError:v3];
}

void __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v7 = [v6 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_2_38;
  v11[3] = &unk_27894DB98;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v15;
  v14 = v9;
  v11[4] = v8;
  v10 = v5;
  v12 = v10;
  [v7 _pas_enumerateChunksOfSize:512 usingBlock:v11];

  _Block_object_dispose(v15, 8);
}

void __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_2_38(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[6] + 8);
  if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 0;
  }

  else
  {
    usleep(0x1388u);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *(v6 + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_3_39;
  v10[3] = &unk_278954C50;
  v8 = a1[7];
  v10[4] = v6;
  v13 = v8;
  v11 = v5;
  v12 = v3;
  v9 = v3;
  [v7 writeTransaction:v10];
}

void __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_3_39(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_4;
  v3[3] = &unk_2789558C0;
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 prepAndRunSQL:@"INSERT OR REPLACE INTO reimportItems (reimportRequestId onPrep:bundleId onRow:uniqueId) SELECT :rid onError:{:bid, value FROM _pas_nsarray(:chunk)", v3, 0, 0}];
}

void __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  if ((a1[6] & 0x8000000000000000) != 0)
  {
    __assert_rtn("[SGSqlEntityStore(ReimportRequests) storeReimportItems:requestId:]_block_invoke_4", "SGSqlEntityStore+ReimportRequests.m", 77, "requestId <= INT64_MAX");
  }

  v4 = v3;
  [v3 bindNamedParam:":rid" toInt64:?];
  [v4 bindNamedParam:":bid" toNSString:a1[4]];
  [v4 bindNamedParam:":chunk" toNSArray:a1[5]];
}

uint64_t __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  [SGSqliteDatabase bindParam:a2 name:":time" double:?];

  v5 = *(a1 + 32);

  return [SGSqliteDatabase bindParam:a2 name:":id" int64:v5];
}

uint64_t __67__SGSqlEntityStore_ReimportRequests__storeReimportItems_requestId___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 134218242;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to mark reimport request %llu as queried: %@", &v7, 0x16u);
  }

  return 1;
}

- (unint64_t)storeReimportRequest:(id)request
{
  requestCopy = request;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SGSqlEntityStore_ReimportRequests__storeReimportRequest___block_invoke;
  v9[3] = &unk_2789561A8;
  v6 = requestCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [(SGSqliteDatabase *)db writeTransaction:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __59__SGSqlEntityStore_ReimportRequests__storeReimportRequest___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) pluginIdentifier];
  [v2 setValue:v3 forKey:@"plugin"];

  v4 = MEMORY[0x277CCABB0];
  v5 = objc_opt_new();
  [v5 timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [v2 setValue:v6 forKey:@"creationTimestamp"];

  v7 = [*(a1 + 32) personHandle];

  if (v7)
  {
    v8 = [*(a1 + 32) personHandle];
    [v2 setValue:v8 forKey:@"personHandle"];
  }

  v9 = [*(a1 + 32) startDate];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 32) startDate];
    [v11 timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
    [v2 setValue:v12 forKey:@"startDateTimestamp"];
  }

  v13 = [*(a1 + 32) endDate];

  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [*(a1 + 32) endDate];
    [v15 timeIntervalSince1970];
    v16 = [v14 numberWithDouble:?];
    [v2 setValue:v16 forKey:@"endDateTimestamp"];
  }

  v17 = *(*(a1 + 40) + 8);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__SGSqlEntityStore_ReimportRequests__storeReimportRequest___block_invoke_2;
  v18[3] = &unk_278956108;
  v19 = *(a1 + 32);
  [v17 insertOrReplaceIntoTable:@"reimportRequests" dictionary:v2 onError:v18];
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 40) + 8) lastInsertRowId];
}

uint64_t __59__SGSqlEntityStore_ReimportRequests__storeReimportRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "failed to store reimport request: %@: %@", &v7, 0x16u);
  }

  return 1;
}

- (int64_t)commitStorageLocation:(id)location withEventId:(int64_t)id
{
  locationCopy = location;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__SGSqlEntityStore_Locations__commitStorageLocation_withEventId___block_invoke;
  v11[3] = &unk_278954758;
  idCopy = id;
  v8 = locationCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v16;
  [(SGSqliteDatabase *)db writeTransaction:v11];
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

void __65__SGSqlEntityStore_Locations__commitStorageLocation_withEventId___block_invoke(uint64_t a1)
{
  v20 = objc_opt_new();
  if ((*(a1 + 56) & 0x8000000000000000) == 0)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
    [v20 setObject:v2 forKeyedSubscript:@"eventId"];
  }

  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "locationType")}];
  [v20 setObject:v3 forKeyedSubscript:@"locationType"];

  v4 = [*(a1 + 32) label];

  if (v4)
  {
    v5 = [*(a1 + 32) label];
    [v20 setObject:v5 forKeyedSubscript:@"label"];
  }

  v6 = [*(a1 + 32) address];

  if (v6)
  {
    v7 = [*(a1 + 32) address];
    [v20 setObject:v7 forKeyedSubscript:@"address"];
  }

  v8 = [*(a1 + 32) airportCode];

  if (v8)
  {
    v9 = [*(a1 + 32) airportCode];
    [v20 setObject:v9 forKeyedSubscript:@"airportCode"];
  }

  v10 = MEMORY[0x277CCABB0];
  [*(a1 + 32) latitude];
  v11 = [v10 numberWithDouble:?];
  [v20 setObject:v11 forKeyedSubscript:@"latitude"];

  v12 = MEMORY[0x277CCABB0];
  [*(a1 + 32) longitude];
  v13 = [v12 numberWithDouble:?];
  [v20 setObject:v13 forKeyedSubscript:@"longitude"];

  v14 = MEMORY[0x277CCABB0];
  [*(a1 + 32) accuracy];
  v15 = [v14 numberWithDouble:?];
  [v20 setObject:v15 forKeyedSubscript:@"accuracy"];

  v16 = MEMORY[0x277CCABB0];
  [*(a1 + 32) quality];
  v17 = [v16 numberWithDouble:?];
  [v20 setObject:v17 forKeyedSubscript:@"quality"];

  v18 = [*(a1 + 32) handle];

  if (v18)
  {
    v19 = [*(a1 + 32) handle];
    [v20 setObject:v19 forKeyedSubscript:@"handle"];
  }

  [*(*(a1 + 40) + 8) insertOrReplaceIntoTable:@"locations" dictionary:v20 onError:0];
  *(*(*(a1 + 48) + 8) + 24) = sqlite3_last_insert_rowid([*(*(a1 + 40) + 8) handle]);
}

- (id)storageLocationWithPrimaryKey:(int64_t)key
{
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SGSqlEntityStore_Locations__storageLocationWithPrimaryKey___block_invoke;
  v15[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v15[4] = key;
  v4 = MEMORY[0x2383809F0](v15, a2);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16655;
  v13 = __Block_byref_object_dispose__16656;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SGSqlEntityStore_Locations__storageLocationWithPrimaryKey___block_invoke_11;
  v8[3] = &unk_278954658;
  v8[4] = &v9;
  v5 = MEMORY[0x2383809F0](v8);
  [(SGSqliteDatabase *)self->_db prepAndRunQuery:@"SELECT locationType onPrep:label onRow:address onError:airportCode, latitude, longitude, accuracy, quality, handle FROM locations WHERE id = ?", v4, v5, 0];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __61__SGSqlEntityStore_Locations__storageLocationWithPrimaryKey___block_invoke_11(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int(a2, 0);
  v5 = sqlite3_column_nsstring(a2, 1);
  v6 = sqlite3_column_nsstring(a2, 2);
  v7 = sqlite3_column_nsstring(a2, 3);
  if (sqlite3_column_type(a2, 4) == 5)
  {
    v8 = NAN;
    v9 = NAN;
    if (sqlite3_column_type(a2, 5) == 5)
    {
      goto LABEL_13;
    }

LABEL_5:
    v10 = sqlite3_column_double(a2, 5);
    v9 = v10;
    if (v8 != 0.0 || v10 != 0.0)
    {
      goto LABEL_13;
    }

    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v23 = 0;
      v12 = "Retrieved location with latitude and longitude both 0";
      v13 = &v23;
LABEL_15:
      _os_log_fault_impl(&dword_231E60000, v11, OS_LOG_TYPE_FAULT, v12, v13, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v8 = sqlite3_column_double(a2, 4);
  if (sqlite3_column_type(a2, 5) != 5)
  {
    goto LABEL_5;
  }

  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v22 = 0;
    v12 = "Retrieved location has one valid and one NaN coodinate";
    v13 = &v22;
    goto LABEL_15;
  }

LABEL_11:

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    abort();
  }

  v9 = NAN;
  v8 = NAN;
LABEL_13:
  v14 = sqlite3_column_double(a2, 6);
  v15 = sqlite3_column_double(a2, 7);
  v16 = sqlite3_column_blob(a2, 8);
  v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v16 length:{sqlite3_column_bytes(a2, 8)}];
  v18 = [[SGStorageLocation alloc] initWithType:v4 label:v5 address:v6 airportCode:v7 latitude:v17 longitude:v8 accuracy:v9 quality:v14 handle:v15];
  v19 = *(*(a1 + 32) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  return 1;
}

- (void)deleteInteractionsWithBundleId:(id)id groupIdentifiers:(id)identifiers
{
  idCopy = id;
  identifiersCopy = identifiers;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Deleting.m" lineNumber:887 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  if (objc_msgSend_count(identifiersCopy))
  {
    v8 = sgMap();
    v9 = [(SGSqlEntityStore *)self duplicateKeysMatchingInteractionBundleId:idCopy andTags:v8];
    [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v9 preserveEventConfirmationHistory:0 emitChangeNotifications:1];
  }
}

- (void)deleteInteractionsWithBundleId:(id)id identifiers:(id)identifiers
{
  idCopy = id;
  identifiersCopy = identifiers;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Deleting.m" lineNumber:874 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  if (objc_msgSend_count(identifiersCopy))
  {
    v8 = sgMap();
    v9 = [(SGSqlEntityStore *)self duplicateKeysMatchingInteractionBundleId:idCopy andTags:v8];
    [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v9 preserveEventConfirmationHistory:0 emitChangeNotifications:1];
  }
}

- (void)deleteInteractionsWithBundleId:(id)id
{
  idCopy = id;
  v8 = idCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Deleting.m" lineNumber:868 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    idCopy = 0;
  }

  v6 = [MEMORY[0x277D01FA0] interactionBundleId:idCopy];
  [(SGSqlEntityStore *)self deleteItemsWithEntityTag:v6 preserveEventConfirmationHistory:0];
}

- (void)deleteItemsWithEntityTag:(id)tag preserveEventConfirmationHistory:(BOOL)history
{
  historyCopy = history;
  tagCopy = tag;
  if (!tagCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Deleting.m" lineNumber:847 description:{@"Invalid parameter not satisfying: %@", @"tag"}];
  }

  if (([tagCopy indexed] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Deleting.m" lineNumber:848 description:{@"Invalid parameter not satisfying: %@", @"tag.indexed"}];
  }

  v8 = objc_opt_new();
  db = self->_db;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__SGSqlEntityStore_Deleting__deleteItemsWithEntityTag_preserveEventConfirmationHistory___block_invoke;
  v16[3] = &unk_278955E30;
  v17 = tagCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__SGSqlEntityStore_Deleting__deleteItemsWithEntityTag_preserveEventConfirmationHistory___block_invoke_2;
  v14[3] = &unk_278955A20;
  v15 = v8;
  v10 = v8;
  v11 = tagCopy;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT entityKey onPrep:entityType onRow:parentKey FROM entityTags WHERE tag = :tag" onError:v16, v14, 0];
  [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v10 preserveEventConfirmationHistory:historyCopy emitChangeNotifications:1];
}

void __88__SGSqlEntityStore_Deleting__deleteItemsWithEntityTag_preserveEventConfirmationHistory___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  [v3 bindNamedParam:":tag" toNonnullNSString:v4];
}

uint64_t __88__SGSqlEntityStore_Deleting__deleteItemsWithEntityTag_preserveEventConfirmationHistory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"entityKey" table:0];
  v5 = [v3 getInt64ForColumnName:"entityType" table:0];
  v6 = [v3 getNSStringForColumnName:"parentKey" table:0];

  v7 = [[SGDuplicateKey alloc] initWithSerializedEntityKey:v4 entityType:v5 serializedParentKey:v6];
  [*(a1 + 32) addObject:v7];
  v8 = MEMORY[0x277D42690];

  return *v8;
}

- (void)deleteInteractionEntitiesExceedingLimit:(id)limit withSuspensionHandler:(id)handler
{
  limitCopy = limit;
  handlerCopy = handler;
  v8 = objc_opt_new();
  db = self->_db;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke;
  v23[3] = &unk_278954A30;
  v23[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v23];
  v10 = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_3;
  v20[3] = &unk_278954818;
  v11 = limitCopy;
  v21 = v11;
  v22 = v8;
  v12 = v8;
  [(SGSqliteDatabase *)v10 prepAndRunQuery:@"SELECT bundleId onPrep:count(*) FROM interactionsByBundleId GROUP BY bundleId" onRow:0 onError:v20, 0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_4;
  v17[3] = &unk_27894E3C0;
  v17[4] = self;
  v18 = v11;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = v11;
  [v12 enumerateObjectsUsingBlock:v17];
  v15 = self->_db;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_7;
  v16[3] = &unk_278954A30;
  v16[4] = self;
  [(SGSqliteDatabase *)v15 writeTransaction:v16];
}

uint64_t __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) prepAndRunNonDataQueries:&unk_28474A6C0 onError:0];
  [*(*(a1 + 32) + 8) prepAndRunSQL:@"INSERT INTO interactionsByBundleId   SELECT delimitedString(key onPrep:0) onRow:CASE WHEN updateTimestamp > 0 THEN updateTimestamp              WHEN creationTimestamp > 0 THEN creationTimestamp              ELSE lastSeenTimestamp END onError:{key  FROM emailMetaData  WHERE type = ?", &__block_literal_global_283_16763, 0, 0}];
  v2 = *(*(a1 + 32) + 8);

  return [v2 prepAndRunNonDataQueries:&unk_28474A6D8 onError:0];
}

uint64_t __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_nsstring(a2, 0);
  v5 = sqlite3_column_int(a2, 1);
  if (v4 && v5 > [*(a1 + 32) intValue])
  {
    [*(a1 + 40) addObject:v4];
  }

  return 0;
}

void __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_5;
  v11[3] = &unk_2789559D0;
  v6 = v3;
  v12 = v6;
  v13 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_6;
  v9[3] = &unk_278955A20;
  v7 = v4;
  v10 = v7;
  [v5 prepAndRunSQL:@"SELECT key FROM interactionsByBundleId WHERE bundleId = :bundleID ORDER BY timestamp DESC LIMIT -1 OFFSET :limit" onPrep:v11 onRow:v9 onError:0];
  [*(a1 + 32) deleteEntitiesByDuplicateKey:v7 emitChangeNotifications:1];
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleID" toNonnullNSString:v3];
  [v4 bindNamedParam:":limit" toInt64AsNonnullNSNumber:*(a1 + 40)];
}

uint64_t __92__SGSqlEntityStore_Deleting__deleteInteractionEntitiesExceedingLimit_withSuspensionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 nonnullNSStringForColumnName:"key" table:0];
  v4 = [[SGDuplicateKey alloc] initWithSerializedEntityKey:v3 entityType:16 serializedParentKey:0];
  [*(a1 + 32) addObject:v4];
  v5 = MEMORY[0x277D42690];

  return *v5;
}

- (void)deleteMessagesByDuplicateKey:(id)key
{
  keyCopy = key;
  [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:keyCopy emitChangeNotifications:1];
  v5 = objc_msgSend_count(keyCopy);

  [SGAggregateLogging messagesDeleted:v5];
}

- (void)deleteEntitiesByDuplicateKey:(id)key preserveEventConfirmationHistory:(BOOL)history emitChangeNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v74 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (objc_msgSend_count(keyCopy))
  {
    v44 = a2;
    selfCopy = self;
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      *&buf[4] = objc_msgSend_count(keyCopy);
      *&buf[12] = 2113;
      *&buf[14] = keyCopy;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Deleting entities by duplicate key (duplicateKeys count = %tu): %{private}@", buf, 0x16u);
    }

    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v11 = keyCopy;
    v12 = [v11 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v12)
    {
      v13 = *v64;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v64 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          parentKey = [v15 parentKey];

          if (parentKey)
          {
            v17 = v10;
          }

          else
          {
            v17 = v9;
          }

          [v17 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v12);
    }

    if (!history)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v18 = v10;
      v19 = [v18 countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v19)
      {
        v20 = *v60;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v60 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v59 + 1) + 8 * j);
            if ([v22 entityType] == 2)
            {
              v23 = [(SGSqlEntityStore *)selfCopy loadEventByDuplicateKey:v22];
              v24 = v23;
              if (v23)
              {
                v25 = [v23 convertToEvent:selfCopy];
                if (v25)
                {
                  v26 = +[SGSuggestHistory sharedSuggestHistory];
                  [v26 removeConfirmationHistoryForEvent:v25];
                }
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v19);
      }
    }

    v27 = objc_opt_new();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v69 = __Block_byref_object_copy__16775;
    v70 = __Block_byref_object_dispose__16776;
    v71 = 0;
    db = selfCopy->_db;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __116__SGSqlEntityStore_Deleting__deleteEntitiesByDuplicateKey_preserveEventConfirmationHistory_emitChangeNotifications___block_invoke;
    v52[3] = &unk_27894E398;
    v29 = v27;
    v53 = v29;
    v54 = selfCopy;
    v43 = v10;
    v55 = v43;
    v42 = v9;
    v56 = v42;
    v57 = buf;
    v58 = v44;
    [(SGSqliteDatabase *)db writeTransaction:v52];
    kvCacheManager = [(SGSqlEntityStore *)selfCopy kvCacheManager];
    [kvCacheManager deleteValueByRecordIdSet:v29];

    if (notificationsCopy)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v31 = v11;
      v32 = [v31 countByEnumeratingWithState:&v48 objects:v67 count:16];
      if (!v32)
      {

        goto LABEL_52;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = *v49;
LABEL_32:
      v37 = 0;
      while (1)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = *(*(&v48 + 1) + 8 * v37);
        parentKey2 = [v38 parentKey];
        v40 = parentKey2 == 0;

        if (v40)
        {
          break;
        }

        entityType = [v38 entityType];
        if (SGEntityTypeIsEvent())
        {
          v34 = 1;
        }

        else if (SGEntityTypeIsContact())
        {
          v33 = 1;
        }

        else
        {
          v35 |= entityType == 22;
        }

        if (v32 == ++v37)
        {
          v32 = [v31 countByEnumeratingWithState:&v48 objects:v67 count:16];
          if (v32)
          {
            goto LABEL_32;
          }

          if ((v34 & 1) == 0)
          {
LABEL_47:
            if (v33)
            {
              [SGDNotificationBroadcaster emitContactDeleted:0];
            }

            if (v35)
            {
              [SGDNotificationBroadcaster emitReminderDeleted:0];
            }

            goto LABEL_52;
          }

LABEL_46:
          [SGDNotificationBroadcaster emitEventDeleted:0];
          goto LABEL_47;
        }
      }

      v35 = 1;
      v33 = 1;
      goto LABEL_46;
    }

LABEL_52:

    _Block_object_dispose(buf, 8);
  }
}

void __116__SGSqlEntityStore_Deleting__deleteEntitiesByDuplicateKey_preserveEventConfirmationHistory_emitChangeNotifications___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _deleteEntitiesByDuplicateKeyNoRecurse:*(a1 + 48)];
  [v2 unionSet:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _derefChildrenOf:*(a1 + 56)];
  [v4 unionSet:v5];

  v6 = [*(a1 + 40) _deleteMessageMetadataByDuplicateKeyNoRecurse:*(a1 + 56)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v14 = MEMORY[0x277D85DD0];
  v15 = *(a1 + 40);
  v16 = *(a1 + 72);
  v9 = sgMap();
  [*(a1 + 40) removeSnippetsForEntities:v9];
  v11 = MEMORY[0x277D85DD0];
  v12 = *(a1 + 40);
  v13 = *(a1 + 72);
  v10 = sgMap();

  [*(a1 + 40) _removeSnippetsForEmails:{v10, v11, 3221225472, __116__SGSqlEntityStore_Deleting__deleteEntitiesByDuplicateKey_preserveEventConfirmationHistory_emitChangeNotifications___block_invoke_3, &unk_27894E370, v12, v13, v14, 3221225472, __116__SGSqlEntityStore_Deleting__deleteEntitiesByDuplicateKey_preserveEventConfirmationHistory_emitChangeNotifications___block_invoke_2, &unk_27894E370, v15, v16}];
}

id __116__SGSqlEntityStore_Deleting__deleteEntitiesByDuplicateKey_preserveEventConfirmationHistory_emitChangeNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 tableId])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGSqlEntityStore+Deleting.m" lineNumber:727 description:{@"Unexpected tableId for record: %@", v3}];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "rowId")}];

  return v4;
}

id __116__SGSqlEntityStore_Deleting__deleteEntitiesByDuplicateKey_preserveEventConfirmationHistory_emitChangeNotifications___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 tableId] != 1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGSqlEntityStore+Deleting.m" lineNumber:734 description:{@"Unexpected tableId for record: %@", v3}];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "rowId")}];

  return v4;
}

- (id)_deleteMessageMetadataByDuplicateKeyNoRecurse:(id)recurse
{
  recurseCopy = recurse;
  if (objc_msgSend_count(recurseCopy))
  {
    db = self->_db;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__SGSqlEntityStore_Deleting___deleteMessageMetadataByDuplicateKeyNoRecurse___block_invoke;
    v17[3] = &unk_278955E30;
    v18 = recurseCopy;
    [(SGSqliteDatabase *)db prepAndRunSQL:@"DELETE FROM entityParentage WHERE duplicateKeyHashBlob IN _pas_nsarray(:compositeHashes)" onPrep:v17 onRow:0 onError:0];
    v6 = sgMap();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__SGSqlEntityStore_Deleting___deleteMessageMetadataByDuplicateKeyNoRecurse___block_invoke_4;
    v15[3] = &unk_278955E30;
    v16 = v6;
    v7 = v6;
    v8 = MEMORY[0x2383809F0](v15);
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DELETE FROM emailTags WHERE key IN _pas_nsarray(:keys)" onPrep:v8 onRow:0 onError:0];
    v9 = objc_opt_new();
    v10 = self->_db;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__SGSqlEntityStore_Deleting___deleteMessageMetadataByDuplicateKeyNoRecurse___block_invoke_5;
    v13[3] = &unk_278955A20;
    v11 = v9;
    v14 = v11;
    [(SGSqliteDatabase *)v10 prepAndRunSQL:@"SELECT id FROM emailMetadata WHERE key IN _pas_nsarray(:keys)" onPrep:v8 onRow:v13 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DELETE FROM emailMetadata WHERE key IN _pas_nsarray(:keys)" onPrep:v8 onRow:0 onError:0];
  }

  else
  {
    v11 = objc_opt_new();
  }

  return v11;
}

void __76__SGSqlEntityStore_Deleting___deleteMessageMetadataByDuplicateKeyNoRecurse___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _pas_proxyArrayWithMapping:&__block_literal_global_248];
  [v3 bindNamedParam:":compositeHashes" toNSArray:v4];
}

uint64_t __76__SGSqlEntityStore_Deleting___deleteMessageMetadataByDuplicateKeyNoRecurse___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D020C8] recordIdForEmailWithRowId:{objc_msgSend(a2, "getInt64ForColumnName:table:", "id", "emailMetadata")}];
  [v2 addObject:v3];

  return 0;
}

id __76__SGSqlEntityStore_Deleting___deleteMessageMetadataByDuplicateKeyNoRecurse___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 messageKey];
  v3 = [v2 serialize];

  return v3;
}

- (void)_deleteEventsByRecordIds:(id)ids
{
  idsCopy = ids;
  if (objc_msgSend_count(idsCopy))
  {
    v5 = sgMap();
    db = self->_db;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__SGSqlEntityStore_Deleting___deleteEventsByRecordIds___block_invoke_2;
    v16[3] = &unk_278955E30;
    v7 = v5;
    v17 = v7;
    [(SGSqliteDatabase *)db prepAndRunSQL:@"DELETE FROM locations WHERE eventId IN (SELECT l2.eventId FROM locations AS l2 JOIN events AS e ON e.id = l2.eventId WHERE e.entityId IN _pas_nsarray(:recordIds))" onPrep:v16 onRow:0 onError:0];

    v8 = self->_db;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__SGSqlEntityStore_Deleting___deleteEventsByRecordIds___block_invoke_3;
    v14[3] = &unk_278955E30;
    v9 = v7;
    v15 = v9;
    [(SGSqliteDatabase *)v8 prepAndRunSQL:@"DELETE FROM eventTags AS et WHERE et.eventId IN (SELECT et2.eventId FROM eventTags AS et2 JOIN events AS e ON e.id = et2.eventId WHERE e.entityId IN _pas_nsarray(:recordIds))" onPrep:v14 onRow:0 onError:0];

    v10 = self->_db;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__SGSqlEntityStore_Deleting___deleteEventsByRecordIds___block_invoke_4;
    v12[3] = &unk_278955E30;
    v13 = v9;
    v11 = v9;
    [(SGSqliteDatabase *)v10 prepAndRunSQL:@"DELETE FROM events WHERE entityId IN _pas_nsarray(:recordIds)" onPrep:v12 onRow:0 onError:0];
  }
}

uint64_t __55__SGSqlEntityStore_Deleting___deleteEventsByRecordIds___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 numericValue];

  return [v2 numberWithLongLong:v3];
}

- (void)_deleteContactDetailsByRecordIds:(id)ids
{
  idsCopy = ids;
  if (objc_msgSend_count(idsCopy))
  {
    v5 = sgMap();
    db = self->_db;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__SGSqlEntityStore_Deleting___deleteContactDetailsByRecordIds___block_invoke_2;
    v12[3] = &unk_278955E30;
    v7 = v5;
    v13 = v7;
    [(SGSqliteDatabase *)db prepAndRunSQL:@"DELETE FROM extractionInfos WHERE id IN (SELECT extractionInfoId FROM contactDetails WHERE entityId IN _pas_nsarray(:recordIds))" onPrep:v12 onRow:0 onError:0];
    v8 = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SGSqlEntityStore_Deleting___deleteContactDetailsByRecordIds___block_invoke_3;
    v10[3] = &unk_278955E30;
    v11 = v7;
    v9 = v7;
    [(SGSqliteDatabase *)v8 prepAndRunSQL:@"DELETE FROM contactDetails WHERE entityId IN _pas_nsarray(:recordIds)" onPrep:v10 onRow:0 onError:0];
  }
}

uint64_t __63__SGSqlEntityStore_Deleting___deleteContactDetailsByRecordIds___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 numericValue];

  return [v2 numberWithLongLong:v3];
}

- (void)_deleteRemindersByRecordIds:(id)ids
{
  idsCopy = ids;
  if (objc_msgSend_count(idsCopy))
  {
    v5 = sgMap();
    db = self->_db;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__SGSqlEntityStore_Deleting___deleteRemindersByRecordIds___block_invoke_2;
    v12[3] = &unk_278955E30;
    v7 = v5;
    v13 = v7;
    [(SGSqliteDatabase *)db prepAndRunSQL:@"DELETE FROM locations WHERE id IN (SELECT dueLocationId FROM reminders WHERE entityId IN _pas_nsarray(:recordIds))" onPrep:v12 onRow:0 onError:0];
    v8 = self->_db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__SGSqlEntityStore_Deleting___deleteRemindersByRecordIds___block_invoke_3;
    v10[3] = &unk_278955E30;
    v11 = v7;
    v9 = v7;
    [(SGSqliteDatabase *)v8 prepAndRunSQL:@"DELETE FROM reminders WHERE entityId IN _pas_nsarray(:recordIds)" onPrep:v10 onRow:0 onError:0];
  }
}

uint64_t __58__SGSqlEntityStore_Deleting___deleteRemindersByRecordIds___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 numericValue];

  return [v2 numberWithLongLong:v3];
}

- (id)_deleteEntitiesByDuplicateKeyNoRecurse:(id)recurse
{
  recurseCopy = recurse;
  if (objc_msgSend_count(recurseCopy))
  {
    v5 = sgMapSelector();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__SGSqlEntityStore_Deleting___deleteEntitiesByDuplicateKeyNoRecurse___block_invoke;
    v10[3] = &unk_278955E30;
    v11 = v5;
    v6 = v5;
    v7 = MEMORY[0x2383809F0](v10);
    [(SGSqliteDatabase *)self->_db prepAndRunNonDataQueries:&unk_28474A6A8 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"INSERT OR IGNORE INTO entitiesToRemove SELECT childId FROM entityParentage WHERE duplicateKeyHashBlob IN _pas_nsarray(:keys)" onPrep:v7 onRow:0 onError:0];
    v8 = [(SGSqlEntityStore *)self _deleteChildEntitiesByRecordIdsInTable:@"entitiesToRemove"];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DROP TABLE entitiesToRemove" onPrep:0 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DELETE FROM entityParentage WHERE duplicateKeyHashBlob IN _pas_nsarray(:keys)" onPrep:v7 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DELETE FROM entityTags WHERE duplicateKeyHashBlob IN _pas_nsarray(:keys)" onPrep:v7 onRow:0 onError:0];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)_derefChildrenOf:(id)of
{
  v14[3] = *MEMORY[0x277D85DE8];
  ofCopy = of;
  if (objc_msgSend_count(ofCopy))
  {
    v5 = sgMapSelector();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__SGSqlEntityStore_Deleting___derefChildrenOf___block_invoke;
    v12[3] = &unk_278955E30;
    v13 = v5;
    v6 = v5;
    v7 = MEMORY[0x2383809F0](v12);
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DROP TABLE IF EXISTS childrenOfRemovedParents" onPrep:0 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"CREATE TEMP TABLE childrenOfRemovedParents (id INTEGER PRIMARY KEY)" onPrep:0 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"INSERT INTO childrenOfRemovedParents SELECT DISTINCT childId FROM entityParentage WHERE parentKey IN _pas_nsarray(:keys)" onPrep:v7 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DROP TABLE IF EXISTS childrenWithRemainingParents" onPrep:0 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"CREATE TEMP TABLE childrenWithRemainingParents (id INTEGER PRIMARY KEY)" onPrep:0 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"INSERT INTO childrenWithRemainingParents SELECT DISTINCT cr.id FROM childrenOfRemovedParents AS cr CROSS JOIN entityParentage AS ep ON cr.id = ep.childId WHERE ep.parentKey NOT IN _pas_nsarray(:keys)" onPrep:v7 onRow:0 onError:0];
    db = self->_db;
    v14[0] = @"DROP TABLE IF EXISTS childrenToRemove";
    v14[1] = @"CREATE TEMP TABLE childrenToRemove (id INTEGER PRIMARY KEY)";
    v14[2] = @"INSERT INTO childrenToRemove SELECT id FROM childrenOfRemovedParents      WHERE id NOT IN (SELECT id FROM childrenWithRemainingParents)";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    [(SGSqliteDatabase *)db prepAndRunNonDataQueries:v9 onError:0];

    v10 = [(SGSqlEntityStore *)self _deleteChildEntitiesByRecordIdsInTable:@"childrenToRemove"];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DELETE FROM entityTags WHERE parentKey IN _pas_nsarray(:keys)" onPrep:v7 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunSQL:@"DELETE FROM entityParentage WHERE parentKey IN _pas_nsarray(:keys)" onPrep:v7 onRow:0 onError:0];
    [(SGSqliteDatabase *)self->_db prepAndRunNonDataQueries:&unk_28474A690 onError:0];
    [(SGSqlEntityStore *)self clearMasterEntityCache];
  }

  else
  {
    v10 = objc_opt_new();
  }

  return v10;
}

- (id)_deleteChildEntitiesByRecordIdsInTable:(id)table
{
  v38 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v5 = objc_opt_new();
  db = self->_db;
  tableCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT DISTINCT id FROM %@", tableCopy];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __69__SGSqlEntityStore_Deleting___deleteChildEntitiesByRecordIdsInTable___block_invoke;
  v34[3] = &unk_278954708;
  v8 = v5;
  v35 = v8;
  [(SGSqliteDatabase *)db prepAndRunQuery:tableCopy onPrep:0 onRow:v34 onError:0];

  [(SGSqlEntityStore *)self _recordPseudoContactsWithDeletedDetailsInTable:@"pseudoContactsWithDeletedDetails" deletedChildrenTable:tableCopy];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SGSqlEntityStore *)self deleteByRecordId:*(*(&v30 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v11);
  }

  [(SGSqlEntityStore *)self syncNewBlobsIfChanged];
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  columnQueryPrefixSelect = [(SGSqlEntityStore *)self columnQueryPrefixSelect];
  tableCopy2 = [v14 initWithFormat:@"%@ FROM %@ AS c CROSS JOIN entity AS e ON c.id = e.id CROSS JOIN entityParentage AS ep ON e.id = ep.childId WHERE e.entityType = :pseudoevent OR e.entityType = :pseudoreminder", columnQueryPrefixSelect, tableCopy];

  v17 = self->_db;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __69__SGSqlEntityStore_Deleting___deleteChildEntitiesByRecordIdsInTable___block_invoke_3;
  v29[3] = &unk_278954708;
  v29[4] = self;
  [(SGSqliteDatabase *)v17 prepAndRunQuery:tableCopy2 onPrep:&__block_literal_global_121_16884 onRow:v29 onError:0];
  v18 = self->_db;
  tableCopy3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM entity WHERE id IN (SELECT id FROM %@)", tableCopy];
  v36[0] = tableCopy3;
  tableCopy4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM entity_fts WHERE docid IN (SELECT id FROM %@)", tableCopy];
  v36[1] = tableCopy4;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  [(SGSqliteDatabase *)v18 prepAndRunNonDataQueries:v21 onError:0];

  [(SGSqlEntityStore *)self _deleteRemindersByRecordIds:v9];
  [(SGSqlEntityStore *)self _deleteContactDetailsByRecordIds:v9];
  [(SGSqlEntityStore *)self _deleteEventsByRecordIds:v9];
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT masterEntityId FROM %@", @"pseudoContactsWithDeletedDetails"];

  v23 = self->_db;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__SGSqlEntityStore_Deleting___deleteChildEntitiesByRecordIdsInTable___block_invoke_4;
  v28[3] = &unk_278954708;
  v28[4] = self;
  [(SGSqliteDatabase *)v23 prepAndRunQuery:v22 onPrep:0 onRow:v28 onError:0];
  v24 = self->_db;
  v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %@", @"pseudoContactsWithDeletedDetails"];
  [(SGSqliteDatabase *)v24 prepAndRunQuery:v25 onPrep:0 onRow:0 onError:0];

  v26 = v9;
  return v9;
}

uint64_t __69__SGSqlEntityStore_Deleting___deleteChildEntitiesByRecordIdsInTable___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D020C8] recordIdWithTableId:0 rowId:{sqlite3_column_int64(a2, 0)}];
  [v2 addObject:v3];

  return 0;
}

uint64_t __69__SGSqlEntityStore_Deleting___deleteChildEntitiesByRecordIdsInTable___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2 withSnippets:0];
  v4 = [v3 duplicateKey];
  v5 = [v4 entityType];

  if (v5 == 2)
  {
    v6 = [SGStorageEvent storageEventFromEntity:v3];
    v7 = *(*(a1 + 32) + 120);
    v8 = [[SGJournalEntry alloc] initWithOperation:10 event:v6];
LABEL_5:
    v11 = v8;
    [v7 addEntry:v8];

    goto LABEL_6;
  }

  v9 = [v3 duplicateKey];
  v10 = [v9 entityType];

  if (v10 == 22)
  {
    v6 = [SGStorageReminder storageReminderFromEntity:v3 store:*(a1 + 32)];
    v7 = *(*(a1 + 32) + 120);
    v8 = [[SGJournalEntry alloc] initWithOperation:21 reminder:v6];
    goto LABEL_5;
  }

LABEL_6:

  return 0;
}

uint64_t __69__SGSqlEntityStore_Deleting___deleteChildEntitiesByRecordIdsInTable___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":pseudoevent" int64:2];

  return [SGSqliteDatabase bindParam:a2 name:":pseudoreminder" int64:22];
}

- (void)_recordPseudoContactsWithDeletedDetailsInTable:(id)table deletedChildrenTable:(id)childrenTable
{
  v15[2] = *MEMORY[0x277D85DE8];
  db = self->_db;
  v7 = MEMORY[0x277CCACA8];
  childrenTableCopy = childrenTable;
  tableCopy = table;
  tableCopy = [[v7 alloc] initWithFormat:@"DROP TABLE IF EXISTS %@", tableCopy];
  v15[0] = tableCopy;
  tableCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CREATE TEMP TABLE %@ (masterEntityId INTEGER PRIMARY KEY)", tableCopy];
  v15[1] = tableCopy2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [(SGSqliteDatabase *)db prepAndRunNonDataQueries:v12 onError:0];

  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [v13 initWithFormat:@"INSERT OR IGNORE INTO %@ SELECT e.masterEntityId FROM %@ AS cr CROSS JOIN entity AS e ON e.id = cr.id WHERE e.entityType IN (:email, :phone, :address, :birthday, :socialProfile)   AND e.masterEntityId > 0   AND e.masterEntityId NOT IN (SELECT id FROM %@)", tableCopy, childrenTableCopy, childrenTableCopy, v15[0]];

  [(SGSqliteDatabase *)self->_db prepAndRunQuery:v14 onPrep:&__block_literal_global_103 onRow:0 onError:0];
}

uint64_t __98__SGSqlEntityStore_Deleting___recordPseudoContactsWithDeletedDetailsInTable_deletedChildrenTable___block_invoke(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":email" int64:8];
  [SGSqliteDatabase bindParam:a2 name:":phone" int64:6];
  [SGSqliteDatabase bindParam:a2 name:":address" int64:7];
  [SGSqliteDatabase bindParam:a2 name:":birthday" int64:20];

  return [SGSqliteDatabase bindParam:a2 name:":socialProfile" int64:19];
}

- (id)childrenFromParentKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_new();
  db = self->_db;
  v7 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE parentKey = ?"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__SGSqlEntityStore_Deleting__childrenFromParentKey___block_invoke;
  v15[3] = &unk_278956070;
  v16 = keyCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SGSqlEntityStore_Deleting__childrenFromParentKey___block_invoke_2;
  v12[3] = &unk_278954818;
  v8 = v5;
  v13 = v8;
  selfCopy = self;
  v9 = keyCopy;
  [(SGSqliteDatabase *)db prepAndRunQuery:v7 onPrep:v15 onRow:v12 onError:0];

  v10 = v8;
  return v8;
}

void __52__SGSqlEntityStore_Deleting__childrenFromParentKey___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) serialize];
  v3 = v4;
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __52__SGSqlEntityStore_Deleting__childrenFromParentKey___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) entityFromSqlResult:a2];
  [v2 addObject:v3];

  return 0;
}

- (void)deleteMessages:(id)messages
{
  v27 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v5 = sgMap();
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(SGSqlEntityStore *)self duplicateKeysMatchingAnyTag:v5, 0];
  allValues = [v7 allValues];

  v9 = [allValues countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(allValues);
        }

        allObjects = [*(*(&v18 + 1) + 8 * v12) allObjects];
        [v6 addObjectsFromArray:allObjects];

        ++v12;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }

  allObjects2 = [messagesCopy allObjects];
  v15 = [allObjects2 _pas_mappedArrayWithTransform:&__block_literal_global_88];

  if (objc_msgSend_count(v15))
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_msgSend_count(v15);
      *buf = 134218242;
      v23 = v17;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "Deleting Mail Intelligence data for %tu messages (%@)", buf, 0x16u);
    }

    [(SGSqlEntityStore *)self deleteMailIntelligenceForMessageIds:v15];
  }

  [(SGSqlEntityStore *)self deleteMessagesByDuplicateKey:v6];
}

- (void)pruneNLEventEntitiesOlderThan:(SGUnixTimestamp_)than
{
  v26 = *MEMORY[0x277D85DE8];
  showPastEvents = [MEMORY[0x277D02098] showPastEvents];
  v6 = sgLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (showPastEvents)
  {
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:than.secondsFromUnixEpoch];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "*** Not pruning NL Events older than %{public}@ because showPastEvents is enabled! ***", &buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:than.secondsFromUnixEpoch];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "Pruning NL Events older than %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__16775;
    v24 = __Block_byref_object_dispose__16776;
    v25 = objc_opt_new();
    v10 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE e.timeRangeEnd < :timeRangeEnd AND e.entityType = :entityType"];
    db = self->_db;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SGSqlEntityStore_Deleting__pruneNLEventEntitiesOlderThan___block_invoke;
    v16[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v16[4] = *&than.secondsFromUnixEpoch;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__SGSqlEntityStore_Deleting__pruneNLEventEntitiesOlderThan___block_invoke_2;
    v15[3] = &unk_278955878;
    v15[4] = self;
    v15[5] = &buf;
    [(SGSqliteDatabase *)db prepAndRunQuery:v10 onPrep:v16 onRow:v15 onError:0];
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_msgSend_count(*(*(&buf + 1) + 40));
      v14 = *(*(&buf + 1) + 40);
      *v17 = 134218243;
      v18 = v13;
      v19 = 2113;
      v20 = v14;
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "NL Event entities to delete (%tu) %{private}@", v17, 0x16u);
    }

    [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:*(*(&buf + 1) + 40) emitChangeNotifications:1];
    _Block_object_dispose(&buf, 8);
  }
}

uint64_t __60__SGSqlEntityStore_Deleting__pruneNLEventEntitiesOlderThan___block_invoke(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":timeRangeEnd" double:*(a1 + 32)];

  return [SGSqliteDatabase bindParam:a2 name:":entityType" int:2];
}

uint64_t __60__SGSqlEntityStore_Deleting__pruneNLEventEntitiesOlderThan___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2 withSnippets:0];
  if ([v3 isNaturalLanguageEvent])
  {
    v4 = *(a1 + 32);
    v5 = [v3 duplicateKey];
    v6 = [v5 parentKey];
    v7 = [v4 childrenFromParentKey:v6];
    v8 = objc_msgSend_count(v7);

    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [v3 duplicateKey];
    v11 = v10;
    if (v8 < 2)
    {
      v12 = [v10 parentKey];
      [v9 addObject:v12];
    }

    else
    {
      [v9 addObject:v10];
    }
  }

  return 0;
}

- (void)pruneReminders
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5;

  v7 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE ((e.timeRangeEnd < :timeRangeEnd AND e.timeRangeEnd != 0) OR (e.timeRangeEnd == 0 AND e.creationTimestamp < :creationTimestamp)) AND e.entityType = :entityType"];
  db = self->_db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__SGSqlEntityStore_Deleting__pruneReminders__block_invoke;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  *&v14[4] = v6 + -604800.0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SGSqlEntityStore_Deleting__pruneReminders__block_invoke_2;
  v12[3] = &unk_278954818;
  v12[4] = self;
  v9 = v3;
  v13 = v9;
  [(SGSqliteDatabase *)db prepAndRunQuery:v7 onPrep:v14 onRow:v12 onError:0];
  v10 = sgRemindersLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_count(v9);
    *buf = 134218242;
    v16 = v11;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "PseudoReminders to prune (%lu), %@", buf, 0x16u);
  }

  [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v9 emitChangeNotifications:1];
}

uint64_t __44__SGSqlEntityStore_Deleting__pruneReminders__block_invoke(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":timeRangeEnd" double:*(a1 + 32)];
  [SGSqliteDatabase bindParam:a2 name:":creationTimestamp" double:*(a1 + 32)];

  return [SGSqliteDatabase bindParam:a2 name:":entityType" int:22];
}

uint64_t __44__SGSqlEntityStore_Deleting__pruneReminders__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2 withSnippets:0];
  v4 = *(a1 + 32);
  v5 = [v3 duplicateKey];
  v6 = [v5 parentKey];
  v7 = [v4 childrenFromParentKey:v6];
  v8 = objc_msgSend_count(v7);

  v9 = *(a1 + 40);
  v10 = [v3 duplicateKey];
  v11 = v10;
  if (v8 < 2)
  {
    v12 = [v10 parentKey];
    [v9 addObject:v12];
  }

  else
  {
    [v9 addObject:v10];
  }

  return 0;
}

- (void)pruneNLEventEntitiesOlderThanTwoWeeks
{
  v3 = objc_opt_new();
  [v3 timeIntervalSince1970];
  v5 = v4;

  [(SGSqlEntityStore *)self pruneNLEventEntitiesOlderThan:v5 + -1209600.0];
}

- (void)pruneDuplicateEventExtractions:(id)extractions
{
  v27 = *MEMORY[0x277D85DE8];
  extractionsCopy = extractions;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pruning duplicate event entities from web-pages/interactions", buf, 2u);
  }

  v6 = objc_opt_new();
  db = self->_db;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__SGSqlEntityStore_Deleting__pruneDuplicateEventExtractions___block_invoke_2;
  v23[3] = &unk_278955A20;
  v8 = v6;
  v24 = v8;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT entityKey FROM entity WHERE entityType = :entityType GROUP BY entityKey having(COUNT(entityKey) > 1)" onPrep:&__block_literal_global_16941 onRow:v23 onError:0];
  v9 = objc_opt_new();
  v10 = self->_db;
  v11 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE e.entityKey in _pas_nsarray(:candidateEntityKeys) AND e.entityType = :entityType"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__SGSqlEntityStore_Deleting__pruneDuplicateEventExtractions___block_invoke_3;
  v21[3] = &unk_278955E30;
  v22 = v8;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__SGSqlEntityStore_Deleting__pruneDuplicateEventExtractions___block_invoke_4;
  v18[3] = &unk_278950878;
  v18[4] = self;
  v19 = extractionsCopy;
  v12 = v9;
  v20 = v12;
  v13 = extractionsCopy;
  v14 = v8;
  [(SGSqliteDatabase *)v10 prepAndRunSQL:v11 onPrep:v21 onRow:v18 onError:0];

  v15 = sgLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v12;
    _os_log_debug_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEBUG, "entities to delete %@", buf, 0xCu);
  }

  if (objc_msgSend_count(v12))
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_msgSend_count(v12);
      *buf = 134349056;
      v26 = v17;
      _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "Pruning duplicate Event entities: %{public}lu", buf, 0xCu);
    }

    [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v12 emitChangeNotifications:1];
  }
}

uint64_t __61__SGSqlEntityStore_Deleting__pruneDuplicateEventExtractions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 nonnullNSStringForColumnName:"entityKey" table:0];
  [*(a1 + 32) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

void __61__SGSqlEntityStore_Deleting__pruneDuplicateEventExtractions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":candidateEntityKeys" toNSArray:v2];
  [v3 bindNamedParam:":entityType" toInteger:2];
}

uint64_t __61__SGSqlEntityStore_Deleting__pruneDuplicateEventExtractions___block_invoke_4(uint64_t a1, id a2)
{
  v3 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 entityFromSqlResult:objc_msgSend(a2 withSnippets:{"stmt"), 0}];
  v7 = [v6 duplicateKey];
  v8 = [v7 parentKey];
  if ([v8 entityType] == 18)
  {
  }

  else
  {
    v9 = [v6 duplicateKey];
    v10 = [v9 parentKey];
    v11 = [v10 entityType];

    if (v11 != 16)
    {
      goto LABEL_18;
    }
  }

  [*(v3 + 40) eventsWithSameOpaqueKeyAsPseudoEvent:v6 harvestStore:*(v3 + 32)];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v29 = v3;
  v14 = *v32;
  v15 = 1;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = [*(*(&v31 + 1) + 8 * i) suggestionInfo];
      v18 = [v17 uniqueKey];
      v19 = [v6 duplicateKey];
      v20 = [v19 serialize];
      v21 = [v18 isEqualToString:v20];

      if (v21)
      {
        v22 = sgLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v6 duplicateKey];
          v24 = [v23 serialize];
          *buf = 138412290;
          v36 = v24;
          _os_log_debug_impl(&dword_231E60000, v22, OS_LOG_TYPE_DEBUG, "web-page event entity exists on calendar, don't delete: %@", buf, 0xCu);
        }

        v15 = 0;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v13);
  v3 = v29;
  if (v15)
  {
LABEL_16:
    v25 = *(v3 + 48);
    v26 = [v6 duplicateKey];
    v27 = [v26 parentKey];
    [v25 addObject:v27];
  }

LABEL_18:
  return *MEMORY[0x277D42690];
}

- (void)clearMailIntelligence
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore reset];

  [(SGSqlEntityStore *)self clearMailIntelligenceSaliencyDetection];
}

- (void)clearMailIntelligenceSaliencyDetection
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore clearMailIntelligenceSaliencyDetection];

  [(SGSqlEntityStore *)self deleteValueForKey:@"lastSGMIUpdaterProcessingDate"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"earliestNextSGMIUpdaterProcessingDate"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"lastMailboxCheckedForTopSGMISaliency"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"lastLimitCheckedForTopSGMISaliency"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"totalSGMIUpdaterMailsProcessed"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"kTotalSGMITruePositivePredictions"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"kTotalSGMIFalsePositivePredictions"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"kTotalSGMITrueNegativePredictions"];
  [(SGSqlEntityStore *)self deleteValueForKey:@"kTotalSGMIFalseNegativePredictions"];

  [(SGSqlEntityStore *)self deleteValueForKey:@"lastSGMIFollowUpStatsAndSettingReportingDate"];
}

- (void)deleteMailIntelligenceForMessageIds:(id)ids
{
  idsCopy = ids;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SGSqlEntityStore_Deleting__deleteMailIntelligenceForMessageIds___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = idsCopy;
  v6 = idsCopy;
  [(SGSqliteDatabase *)db writeTransaction:v7];
}

void __66__SGSqlEntityStore_Deleting__deleteMailIntelligenceForMessageIds___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SGSqlEntityStore_Deleting__deleteMailIntelligenceForMessageIds___block_invoke_2;
  v11[3] = &unk_278955E30;
  v12 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SGSqlEntityStore_Deleting__deleteMailIntelligenceForMessageIds___block_invoke_3;
  v9[3] = &unk_278955A20;
  v10 = v2;
  v4 = v2;
  [v3 prepAndRunSQL:@"DELETE FROM mailIntelligence_saliency WHERE messageId IN _pas_nsarray(:messageIds) RETURNING creationTimestamp" onPrep:v11 onRow:v9 onError:0];
  v5 = [*(a1 + 32) sgmiFeatureStore];
  [v5 clearBucketsForDates:v4];

  v6 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SGSqlEntityStore_Deleting__deleteMailIntelligenceForMessageIds___block_invoke_4;
  v7[3] = &unk_278955E30;
  v8 = *(a1 + 40);
  [v6 prepAndRunSQL:@"DELETE FROM mailIntelligence_spotlightMapping WHERE messageId IN _pas_nsarray(:messageIds)" onPrep:v7 onRow:0 onError:0];
}

uint64_t __66__SGSqlEntityStore_Deleting__deleteMailIntelligenceForMessageIds___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumnName:"creationTimestamp" table:"mailIntelligence_saliency"];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  [v3 addObject:v4];

  return *MEMORY[0x277D42690];
}

- (void)pruneMailIntelligenceOlderThanOneYearWithSuspensionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "Pruning mail intelligence data older than one year", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x2810000000;
  v22 = "";
  v23 = 0;
  v5 = objc_opt_new();
  [v5 timeIntervalSince1970];
  v23 = v6;

  v7 = 0;
  *(v20 + 4) = *(v20 + 4) + -31536000.0;
  while (1)
  {
    v8 = objc_opt_new();
    db = self->_db;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__SGSqlEntityStore_Deleting__pruneMailIntelligenceOlderThanOneYearWithSuspensionHandler___block_invoke;
    v18[3] = &unk_278953F38;
    v18[4] = buf;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__SGSqlEntityStore_Deleting__pruneMailIntelligenceOlderThanOneYearWithSuspensionHandler___block_invoke_2;
    v15[3] = &unk_278955A48;
    v10 = v8;
    v16 = v10;
    v17 = 500;
    [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT messageId FROM mailIntelligence_saliency WHERE creationTimestamp < :time" onPrep:v18 onRow:v15 onError:0];
    if (!objc_msgSend_count(v10))
    {
      break;
    }

    if (v7)
    {
      if ([v10 containsObject:v7])
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Deleting.m" lineNumber:156 description:@"possible infinite loop"];
      }
    }

    [(SGSqlEntityStore *)self deleteMailIntelligenceForMessageIds:v10];
    v11 = [v10 objectAtIndexedSubscript:0];

    v7 = v11;
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __89__SGSqlEntityStore_Deleting__pruneMailIntelligenceOlderThanOneYearWithSuspensionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 nonnullNSStringForColumnName:"messageId" table:0];
  [*(a1 + 32) addObject:v3];
  v4 = objc_msgSend_count(*(a1 + 32));
  v5 = *(a1 + 40);
  v6 = MEMORY[0x277D42690];
  v7 = MEMORY[0x277D42698];

  if (v4 >= v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return *v8;
}

- (void)pruneEntitiesOlderThan:(SGUnixTimestamp_)than suspensionHandler:(id)handler batchSize:(unint64_t)size
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!size)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Deleting.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"batchSize > 0"}];
  }

  showPastEvents = [MEMORY[0x277D02098] showPastEvents];
  v11 = sgLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (showPastEvents)
  {
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:than.secondsFromUnixEpoch];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "*** Not pruning entities older than %{public}@ because showPastEvents is enabled! ***", &buf, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:than.secondsFromUnixEpoch];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "Pruning entities older than %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = -1;
    do
    {
      v15 = objc_autoreleasePoolPush();
      v16 = objc_opt_new();
      db = self->_db;
      p_buf = &buf;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __81__SGSqlEntityStore_Deleting__pruneEntitiesOlderThan_suspensionHandler_batchSize___block_invoke;
      v24[3] = &unk_27894E2E8;
      v24[5] = *&than.secondsFromUnixEpoch;
      v24[4] = &buf;
      v24[6] = size;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __81__SGSqlEntityStore_Deleting__pruneEntitiesOlderThan_suspensionHandler_batchSize___block_invoke_2;
      v21[3] = &unk_27894E310;
      v18 = v16;
      v22 = v18;
      [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT rowid AS minId onPrep:key FROM emailMetadata WHERE creationTimestamp < :time AND rowid > :minId ORDER BY rowid LIMIT :limit" onRow:v24 onError:v21, 0];
      [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v18 emitChangeNotifications:1];
      v19 = (!handlerCopy || (handlerCopy[2](handlerCopy) & 1) == 0) && objc_msgSend_count(v18) >= size;

      objc_autoreleasePoolPop(v15);
    }

    while (v19);
    _Block_object_dispose(&buf, 8);
  }
}

void __81__SGSqlEntityStore_Deleting__pruneEntitiesOlderThan_suspensionHandler_batchSize___block_invoke(double *a1, void *a2)
{
  v3 = a1[5];
  v4 = a2;
  [v4 bindNamedParam:":time" toDouble:v3];
  [v4 bindNamedParam:":minId" toInt64:*(*(*(a1 + 4) + 8) + 24)];
  [v4 bindNamedParam:":limit" toInt64:*(a1 + 6)];
}

uint64_t __81__SGSqlEntityStore_Deleting__pruneEntitiesOlderThan_suspensionHandler_batchSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 getInt64ForColumnAlias:"minId"];
  v4 = [v3 nonnullNSStringForColumnName:"key" table:0];

  v5 = *(a1 + 32);
  v6 = [[SGDuplicateKey alloc] initWithSerializedEntityKey:v4 entityType:5 serializedParentKey:0];
  [v5 addObject:v6];

  return 0;
}

- (void)pruneEntitiesOlderThanOneYearWithSuspensionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  v6 = v5;

  [(SGSqlEntityStore *)self pruneEntitiesOlderThan:handlerCopy suspensionHandler:100 batchSize:v6 + -31536000.0];
}

- (void)_removeSnippetsForEmails:(id)emails
{
  v12[1] = *MEMORY[0x277D85DE8];
  emailsCopy = emails;
  if (objc_msgSend_count(emailsCopy))
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_count(emailsCopy);
    v7 = qmarksSeparatedByCommas(v6);
    v8 = [v5 initWithFormat:@"DELETE FROM emailSnippets WHERE emailId IN (%@)", v7];

    snippetsJournal = self->_snippetsJournal;
    v11 = @"qmarksSeparatedByCommas";
    v12[0] = emailsCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(SGDatabaseJournal *)snippetsJournal runQuery:v8 values:v10 onDb:self->_snippetDb];
  }
}

- (void)removeSnippetsForEntities:(id)entities
{
  v12[1] = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  if (objc_msgSend_count(entitiesCopy))
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_count(entitiesCopy);
    v7 = qmarksSeparatedByCommas(v6);
    v8 = [v5 initWithFormat:@"DELETE FROM snippets WHERE entityId IN (%@)", v7];

    snippetsJournal = self->_snippetsJournal;
    v11 = @"qmarksSeparatedByCommas";
    v12[0] = entitiesCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(SGDatabaseJournal *)snippetsJournal runQuery:v8 values:v10 onDb:self->_snippetDb];
  }
}

- (void)applyCappingPolicy:(id)policy byDiscardingTokensCounts:(id)counts withMargin:(float)margin
{
  policyCopy = policy;
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore applyCappingPolicy:policyCopy shouldContinue:0];
}

- (void)deleteTokensForDeletedEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore deleteTokensForDeletedEmailAddresses:addressesCopy];
}

- (id)getSGMIStoredAddresses
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  getSGMIStoredAddresses = [sgmiFeatureStore getSGMIStoredAddresses];

  return getSGMIStoredAddresses;
}

- (void)purgeTokensWhichLastUpdateWasBefore:(id)before
{
  beforeCopy = before;
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore purgeTokensWhichLastUpdateWasBefore:beforeCopy shouldContinue:0];
}

- (id)subModelsStats
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  subModelsStats = [sgmiFeatureStore subModelsStats];

  return subModelsStats;
}

- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)field minCount:(unint64_t)count minScore:(double)score limit:(unint64_t)limit
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  v11 = [sgmiFeatureStore sortedUnsubscriptionOpportunitiesForField:field minCount:count minScore:limit limit:score];

  return v11;
}

- (BOOL)areSubModelsEmpty
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  areSubmodelsEmpty = [sgmiFeatureStore areSubmodelsEmpty];

  return areSubmodelsEmpty;
}

- (id)getUnsubscriptionOpportunitiesSuggestionsDenyListForField:(int64_t)field
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  v5 = [sgmiFeatureStore getUnsubscriptionOpportunitiesSuggestionsDenyListForField:field];

  return v5;
}

- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)field toValues:(id)values
{
  valuesCopy = values;
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore setUnsubscriptionOpportunitiesSuggestionsDenyListForField:field toValues:valuesCopy];
}

- (void)commitNaiveBayesModel:(id)model probabilityFeatureName:(int64_t)name updateDate:(id)date
{
  dateCopy = date;
  modelCopy = model;
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore commitNaiveBayesModel:modelCopy probabilityFeatureName:name updateDate:dateCopy];
}

- (void)commitNaiveBayesModel:(id)model probabilityFeatureName:(int64_t)name
{
  v6 = MEMORY[0x277CBEAA8];
  modelCopy = model;
  date = [v6 date];
  [(SGSqlEntityStore *)self commitNaiveBayesModel:modelCopy probabilityFeatureName:name updateDate:date];
}

- (void)deleteNaiveBayesModelForProbabilityFeatureName:(int64_t)name
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  [sgmiFeatureStore deleteNaiveBayesModelForProbabilityFeatureName:name];
}

- (id)highlyDiscriminantTokensForFeature:(int64_t)feature minCount:(unint64_t)count minRatio:(double)ratio
{
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  v9 = [sgmiFeatureStore highlyDiscriminantTokensForFeature:feature minCount:count minRatio:ratio];

  return v9;
}

- (id)naiveBayesModelQueryResultForFeature:(int64_t)feature unigramTokens:(id)tokens bigramTokens:(id)bigramTokens
{
  bigramTokensCopy = bigramTokens;
  tokensCopy = tokens;
  sgmiFeatureStore = [(SGSqlEntityStore *)self sgmiFeatureStore];
  v11 = [sgmiFeatureStore naiveBayesModelQueryResultForFeature:feature unigramTokens:tokensCopy bigramTokens:bigramTokensCopy];

  return v11;
}

- (float)_scoreContactDetail:(id)detail
{
  detailCopy = detail;
  label = [detailCopy label];
  v5 = [label length];

  if (v5)
  {
    v6 = 3.0;
  }

  else
  {
    v6 = 0.0;
  }

  extractionInfo = [detailCopy extractionInfo];

  extractionType = [extractionInfo extractionType];
  result = v6 + 1.0;
  if (extractionType == 2)
  {
    result = v6 + 2.0;
  }

  if (!extractionType)
  {
    return v6;
  }

  return result;
}

- (id)columnQueryPrefixSelect
{
  if (self->_entityVersion <= 0x3D)
  {
    return @"SELECT e.id,e.entityKey,e.entityType,ep.extractionType,ep.sourceKey,e.author,e.title,e.creationTimestamp,e.updateTimestamp,e.indexTimestamp,e.tags,e.structuredData,e.quality,e.masterEntityId,e.groupId,e.state,ep.parentKey,e.timeRangeStart,e.timeRangeEnd,e.floatingRange,e.timeRangeStartUTCOffsetSeconds,e.timeRangeEndUTCOffsetSeconds,e.locations ";
  }

  else
  {
    return @"SELECT e.id,e.entityKey,e.entityType,ep.extractionType,ep.sourceKey,e.author,e.title,e.creationTimestamp,e.updateTimestamp,e.indexTimestamp,e.tags,e.structuredData,e.quality,e.masterEntityId,e.groupId,e.state,ep.parentKey,e.timeRangeStart,e.timeRangeEnd,e.floatingRange,e.timeRangeStartUTCOffsetSeconds,e.timeRangeEndUTCOffsetSeconds,e.locations,ep.modelVersion,ep.modelConfidence, e.harvestedOnBuild ";
  }
}

- (void)selectAuthoritativeDetailsForContactWithId:(int64_t)id
{
  db = self->_db;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__SGSqlEntityStore_SqlHelpers__selectAuthoritativeDetailsForContactWithId___block_invoke;
  v4[3] = &unk_278955468;
  v4[4] = self;
  v4[5] = id;
  [(SGSqliteDatabase *)db writeTransaction:v4];
}

void __75__SGSqlEntityStore_SqlHelpers__selectAuthoritativeDetailsForContactWithId___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__17738;
  v32 = __Block_byref_object_dispose__17739;
  v33 = objc_opt_new();
  v1 = [*(a1 + 32) selectEntityQuery:@"WHERE e.groupId = :groupId"];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __75__SGSqlEntityStore_SqlHelpers__selectAuthoritativeDetailsForContactWithId___block_invoke_2;
  v27[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v27[4] = *(a1 + 40);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__SGSqlEntityStore_SqlHelpers__selectAuthoritativeDetailsForContactWithId___block_invoke_3;
  v26[3] = &unk_278955878;
  v26[4] = v2;
  v26[5] = &v28;
  [v3 prepAndRunQuery:v1 onPrep:v27 onRow:v26 onError:0];
  if (objc_msgSend_count(v29[5]))
  {
    v17 = v1;
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277D020C8] recordIdWithNumericValue:*(a1 + 40)];
    v18 = [v4 masterEntityIdForContactOrContactDetailRecord:v5];

    [*(a1 + 32) deleteSerializedContactForId:*(a1 + 40)];
    [*(a1 + 32) deleteSerializedContactForId:{objc_msgSend(v18, "rowId")}];
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = [v6 initWithCapacity:objc_msgSend_count(v29[5]) + 2];
    objc_msgSend(v7, "addObject:", @"UPDATE entity SET masterEntityId = (CASE id");
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v29[5];
    v8 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
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
            objc_enumerationMutation(obj);
          }

          v11 = [v29[5] objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v10)];
          v12 = objc_alloc(MEMORY[0x277CCACA8]);
          v13 = [v11 first];
          v14 = [v13 recordId];
          v15 = [v12 initWithFormat:@"WHEN %lld THEN %lld", objc_msgSend(v14, "rowId"), *(a1 + 40)];
          [v7 addObject:v15];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v8);
    }

    [v7 addObject:@"ELSE -1 END WHERE groupId = :groupId"]);
    v1 = [v7 _pas_componentsJoinedByString:@" "];

    v16 = *(*(a1 + 32) + 8);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__SGSqlEntityStore_SqlHelpers__selectAuthoritativeDetailsForContactWithId___block_invoke_311;
    v21[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v21[4] = *(a1 + 40);
    [v16 prepAndRunQuery:v1 onPrep:v21 onRow:0 onError:0];
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __75__SGSqlEntityStore_SqlHelpers__selectAuthoritativeDetailsForContactWithId___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) entityFromSqlResult:a2];
  v4 = [SGContactDetail contactDetailFromEntity:v3];
  v5 = [v3 duplicateKey];
  v6 = [v5 entityType];

  if (v6 <= 14)
  {
    if (v6 <= 8)
    {
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          if (v6 != 8)
          {
            goto LABEL_28;
          }

          goto LABEL_13;
        }

LABEL_17:
        v7 = [v4 value];
        v8 = SGNormalizeAddress(v7);
        goto LABEL_22;
      }

LABEL_18:
      v7 = [v4 value];
      v8 = SGNormalizePhoneNumber();
      goto LABEL_22;
    }

    switch(v6)
    {
      case 9:
        goto LABEL_18;
      case 10:
        goto LABEL_17;
      case 11:
LABEL_13:
        v7 = [v4 value];
        v8 = SGNormalizeEmailAddress();
        goto LABEL_22;
    }

LABEL_28:
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v3 duplicateKey];
      [v19 entityType];
      v20 = SGEntityTypeDescription();
      v21 = 138412290;
      v22 = v20;
      _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "GroupID lookup found unexpected entity type for contact detail (%@)", &v21, 0xCu);
    }

    goto LABEL_27;
  }

  if (v6 <= 19)
  {
    if (v6 == 15)
    {
      v7 = [v4 value];
      v8 = SGNormalizeInstantMessageAddress(v7);
      goto LABEL_22;
    }

    if (v6 == 19)
    {
      v9 = [v4 value];
      SGNormalizeSocialProfile(v9);
      objc_claimAutoreleasedReturnValue();

      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if ((v6 - 20) >= 2)
  {
    if (v6 == 23)
    {
      v9 = [v4 value];
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  v7 = [v4 value];
  v8 = SGNormalizeBirthday(v7);
LABEL_22:
  v9 = v8;

LABEL_23:
  v10 = MEMORY[0x277CCABB0];
  [*(a1 + 32) _scoreContactDetail:v4];
  v11 = [v10 numberWithFloat:?];
  v12 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v9];
  v13 = v12;
  if (!v12 || ([v12 second], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v11, "compare:", v14), v14, v15 == 1))
  {
    v16 = [MEMORY[0x277D42648] tupleWithFirst:v3 second:v11];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKeyedSubscript:v9];
  }

LABEL_27:
  return 0;
}

- (BOOL)clearDatabases
{
  unmigrateDatabases = [(SGSqlEntityStore *)self unmigrateDatabases];
  [(SGSqlEntityStore *)self vacuum];
  return unmigrateDatabases == 1;
}

- (void)vacuum
{
  [(SGSqliteDatabase *)self->_db vacuum];
  snippetDb = self->_snippetDb;

  [(SGSqliteDatabase *)snippetDb vacuum];
}

- (void)clearAllTables
{
  db = self->_db;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SGSqlEntityStore_SqlHelpers__clearAllTables__block_invoke;
  v6[3] = &unk_278955830;
  v7 = &unk_28474A738;
  selfCopy = self;
  [(SGSqliteDatabase *)db writeTransaction:v6];
  if ([(SGSqlEntityStore *)self isEphemeral])
  {
    v4 = self->_db;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__SGSqlEntityStore_SqlHelpers__clearAllTables__block_invoke_2;
    v5[3] = &unk_278954A30;
    v5[4] = self;
    [(SGSqliteDatabase *)v4 writeTransaction:v5];
  }
}

uint64_t __46__SGSqlEntityStore_SqlHelpers__clearAllTables__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 8) prepAndRunQuery:*(*(&v8 + 1) + 8 * v6++) onPrep:0 onRow:0 onError:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 40) + 24) prepAndRunNonDataQueries:&unk_28474A750 onError:0];
}

void __46__SGSqlEntityStore_SqlHelpers__clearAllTables__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 bindNamedParam:":minId" toInt64:30000000000000000];
  [v2 bindNamedParam:":tableNames" toNSArray:&unk_28474A768];
}

- (id)dbStats
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__17738;
  v52 = __Block_byref_object_dispose__17739;
  v53 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:20];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SGSqliteDatabase userVersion](self->_db, "userVersion")}];
  [v49[5] setObject:v3 forKeyedSubscript:@"schema_version"];

  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"entity"]&& [(SGSqliteDatabase *)self->_db hasTableNamed:@"emailMetadata"])
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    [v49[5] setObject:v4 forKeyedSubscript:@"entities"];

    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    db = self->_db;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke;
    v43[3] = &unk_27894E5A0;
    v43[4] = &v48;
    v43[5] = &v44;
    [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT entityType onPrep:COUNT(*) FROM entity GROUP BY entityType UNION SELECT type onRow:COUNT(*) FROM emailMetadata GROUP BY type" onError:0, v43, &__block_literal_global_17821];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*(v45 + 6)];
    [v49[5] setObject:v6 forKeyedSubscript:@"total_entities"];

    v7 = self->_db;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_88;
    v42[3] = &unk_278954658;
    v42[4] = &v48;
    [(SGSqliteDatabase *)v7 prepAndRunQuery:@"SELECT COUNT(id) FROM entity WHERE masterEntityId > 0 AND entityType = :entityType" onPrep:&__block_literal_global_87_17824 onRow:v42 onError:&__block_literal_global_93];
    _Block_object_dispose(&v44, 8);
  }

  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"serializedContacts"])
  {
    v8 = self->_db;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_100;
    v41[3] = &unk_278955878;
    v41[4] = self;
    v41[5] = &v48;
    [(SGSqliteDatabase *)v8 prepAndRunQuery:@"SELECT count(*) onPrep:MIN(entityId) onRow:MAX(entityId) FROM serializedContacts" onError:0, v41, &__block_literal_global_115_17827];
  }

  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"entity_fts"])
  {
    v9 = self->_db;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_122;
    v40[3] = &unk_278954658;
    v40[4] = &v48;
    [(SGSqliteDatabase *)v9 prepAndRunQuery:@"SELECT count(*) FROM entity_fts" onPrep:0 onRow:v40 onError:&__block_literal_global_128_17830];
    v10 = self->_db;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_132;
    v39[3] = &unk_278954658;
    v39[4] = &v48;
    [(SGSqliteDatabase *)v10 prepAndRunQuery:@"SELECT count(*) FROM entity_fts WHERE docid != entityId" onPrep:0 onRow:v39 onError:&__block_literal_global_138];
    v11 = [(SGSqliteDatabase *)self->_db languageForFTSTable:@"entity_fts"];
    [v49[5] setObject:v11 forKeyedSubscript:@"entity_fts_lang"];
  }

  if (![(SGDatabaseJournal *)self->_snippetsJournal journaling]&& [(SGSqliteDatabase *)self->_snippetDb hasTableNamed:@"snippets"]&& [(SGSqliteDatabase *)self->_snippetDb hasTableNamed:@"emailSnippets"])
  {
    snippetDb = self->_snippetDb;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_151;
    v38[3] = &unk_278954658;
    v38[4] = &v48;
    [(SGSqliteDatabase *)snippetDb prepAndRunQuery:@"SELECT (SELECT COUNT(*) FROM snippets) + (SELECT COUNT(*) FROM emailSnippets)" onPrep:0 onRow:v38 onError:&__block_literal_global_157];
    v13 = self->_snippetDb;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_161;
    v37[3] = &unk_278954658;
    v37[4] = &v48;
    [(SGSqliteDatabase *)v13 prepAndRunQuery:@"SELECT (SELECT COUNT(*) FROM snippets WHERE title IS NOT NULL AND title != '') + (SELECT COUNT(*) FROM emailSnippets WHERE title IS NOT NULL AND title != '')" onPrep:0 onRow:v37 onError:&__block_literal_global_167];
    v14 = self->_snippetDb;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_171;
    v36[3] = &unk_278954658;
    v36[4] = &v48;
    [(SGSqliteDatabase *)v14 prepAndRunQuery:@"SELECT (SELECT COUNT(*) FROM snippets WHERE content IS NOT NULL AND content != '') + (SELECT COUNT(*) FROM emailSnippets WHERE content IS NOT NULL AND content != '')" onPrep:0 onRow:v36 onError:&__block_literal_global_177_17838];
  }

  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"harvestQueueTombstones"])
  {
    v15 = self->_db;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_184;
    v35[3] = &unk_278954658;
    v35[4] = &v48;
    [(SGSqliteDatabase *)v15 prepAndRunQuery:@"SELECT COUNT(*) FROM harvestQueueTombstones" onPrep:0 onRow:v35 onError:&__block_literal_global_190];
  }

  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"entityParentage"])
  {
    v16 = self->_db;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_197;
    v34[3] = &unk_278954658;
    v34[4] = &v48;
    [(SGSqliteDatabase *)v16 prepAndRunQuery:@"SELECT COUNT(*) FROM entity WHERE id NOT IN (SELECT DISTINCT childId FROM entityParentage)" onPrep:0 onRow:v34 onError:&__block_literal_global_203];
  }

  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"statsCounters"])
  {
    v17 = objc_opt_new();
    v18 = self->_db;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_210;
    v32[3] = &unk_278955A20;
    v19 = v17;
    v33 = v19;
    [(SGSqliteDatabase *)v18 prepAndRunSQL:@"SELECT key onPrep:value FROM statsCounters" onRow:0 onError:v32, &__block_literal_global_216];
    [v49[5] setObject:v19 forKeyedSubscript:@"statsCounters"];
  }

  v20 = v49[5];
  reimportRequestDBStats = [(SGSqlEntityStore *)self reimportRequestDBStats];
  [v20 addEntriesFromDictionary:reimportRequestDBStats];

  if ([(SGSqliteDatabase *)self->_db hasTableNamed:@"urls"])
  {
    v22 = objc_opt_new();
    v23 = self->_db;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_223;
    v30 = &unk_278954708;
    v24 = v22;
    v31 = v24;
    [(SGSqliteDatabase *)v23 prepAndRunQuery:@"SELECT COUNT(bundle_id) onPrep:bundle_id FROM urls GROUP BY bundle_id" onRow:0 onError:&v27, 0];
    [v49[5] setObject:v24 forKeyedSubscript:{@"urlsCounters", v27, v28, v29, v30}];
  }

  v25 = v49[5];
  _Block_object_dispose(&v48, 8);

  return v25;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = a2;
  sqlite3_column_int(a2, 0);
  v4 = sqlite3_column_int(v2, 1);
  LODWORD(v2) = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:@"entities"];
  v7 = SGEntityTypeDescription();
  [v6 setObject:v5 forKeyedSubscript:v7];

  *(*(*(a1 + 40) + 8) + 24) += v2;
  return 0;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_88(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"merged_pseudocontacts"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_100(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 1)}];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v4 forKeyedSubscript:@"serialized_contacts_lowest"];

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(a2, 2)}];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKeyedSubscript:@"serialized_contacts_highest"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "serializedContactsLimit")}];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:@"serialized_contacts_limit"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(a2, 0)}];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v7 forKeyedSubscript:@"serialized_contacts_total"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_122(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"entity_fts_count"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_132(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"entity_fts_details"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_151(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"snippets_count"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_161(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"snippets_title_count"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_171(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"snippets_content_count"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_184(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"tombstones_count"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_197(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 0)}];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"orphaned_entity_count"];

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_210(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"key" table:0];
  v5 = [v3 doubleAsNonnullNSNumberForColumnName:"value" table:0];

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  v6 = MEMORY[0x277D42690];

  return *v6;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_223(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 0);
  v5 = sqlite3_column_nsstring(a2, 1);
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  return 0;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_214(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to dump stats: %@", &v5, 0xCu);
  }

  return *MEMORY[0x277D42698];
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_201(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count orphaned entities: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_188(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count tombstones: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_175(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count snippets with content: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_165(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count snippets with titles: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_155(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count snippets: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_136(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count details in entity_fts: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_126(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count entity_fts: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2_113(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to calculate stats from serializedContacts table: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to count merged pseudocontacts: %@", &v5, 0xCu);
  }

  return 1;
}

uint64_t __39__SGSqlEntityStore_SqlHelpers__dbStats__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Unable to calculate stats from entity table: %@", &v5, 0xCu);
  }

  return 1;
}

- (id)selectEntityQuery:(id)query
{
  v4 = MEMORY[0x277CCACA8];
  queryCopy = query;
  v6 = [v4 alloc];
  columnQueryPrefixSelect = [(SGSqlEntityStore *)self columnQueryPrefixSelect];
  queryCopy = [v6 initWithFormat:@"%@ FROM entity AS e INNER JOIN entityParentage AS ep ON e.id = ep.childId %@ ", columnQueryPrefixSelect, queryCopy];

  return queryCopy;
}

- (unint64_t)entityCount
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SGSqlEntityStore_SqlHelpers__entityCount__block_invoke;
  v9[3] = &unk_278954658;
  v9[4] = &v10;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT COUNT(*) FROM entity" onPrep:0 onRow:v9 onError:0];
  v4 = v11[3];
  v11[3] = 0;
  v5 = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SGSqlEntityStore_SqlHelpers__entityCount__block_invoke_2;
  v8[3] = &unk_278954658;
  v8[4] = &v10;
  [(SGSqliteDatabase *)v5 prepAndRunQuery:@"SELECT COUNT(*) FROM emailMetadata" onPrep:0 onRow:v8 onError:0];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6 + v4;
}

- (id)allContactsWithEntityType:(unint64_t)type
{
  v5 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE entityType = :entityType"];
  v6 = objc_opt_new();
  db = self->_db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SGSqlEntityStore_SqlHelpers__allContactsWithEntityType___block_invoke;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = type;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SGSqlEntityStore_SqlHelpers__allContactsWithEntityType___block_invoke_2;
  v12[3] = &unk_278954818;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [(SGSqliteDatabase *)db prepAndRunQuery:v5 onPrep:v14 onRow:v12 onError:0];
  v9 = v13;
  v10 = v8;

  return v8;
}

uint64_t __58__SGSqlEntityStore_SqlHelpers__allContactsWithEntityType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2];
  v4 = [SGContactEntity contactEntityFromEntity:v3];
  v5 = *(a1 + 40);
  v6 = [SGStorageContact contactFromContactEntity:v4];
  [v5 addObject:v6];

  return 0;
}

- (id)entityFromSqlResult:(sqlite3_stmt *)result withSnippets:(BOOL)snippets
{
  snippetsCopy = snippets;
  v73[1] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D020C8] recordIdWithTableId:0 rowId:{sqlite3_column_int64(result, 0)}];
  [v8 setRecordId:v9];

  v10 = sqlite3_column_nsstring(result, 16);
  v11 = sqlite3_column_nsstring(result, 1);
  if (!v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+SqlHelpers.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"serializedEntityKey"}];
  }

  v61 = v10;
  v12 = [[SGDuplicateKey alloc] initWithSerializedEntityKey:v11 entityType:sqlite3_column_int64(result serializedParentKey:2), v10];
  [v8 setDuplicateKey:v12];

  v13 = MEMORY[0x277D01FD8];
  v14 = sqlite3_column_int(result, 3);
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(result, 23)}];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(result, 24)}];
  v17 = [v13 extractionInfoWithExtractionType:v14 modelVersion:v15 confidence:v16];
  [v8 setExtractionInfo:v17];

  v18 = sqlite3_column_nsstring(result, 4);
  [v8 setSourceKey:v18];

  v19 = sqlite3_column_nsstring(result, 5);
  if ([v19 length])
  {
    v20 = objc_alloc(MEMORY[0x277CC3450]);
    emailAddress = [v20 sg_initWithSerializedForm:v19];

    if (!emailAddress)
    {
      v22 = [MEMORY[0x277D020E0] namedEmailAddressWithFieldValue:v19];
      emailAddress = [v22 emailAddress];

      if (emailAddress)
      {
        v60 = objc_alloc(MEMORY[0x277CC3450]);
        name = [v22 name];
        emailAddress2 = [v22 emailAddress];
        v73[0] = emailAddress2;
        [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
        v24 = snippetsCopy;
        v25 = v11;
        v27 = v26 = self;
        emailAddress = [v60 initWithDisplayName:name handles:v27 handleIdentifier:*MEMORY[0x277CBCFC0]];

        self = v26;
        v11 = v25;
        snippetsCopy = v24;
      }
    }

    [v8 setAuthor:emailAddress];
  }

  [v8 setContent:0];
  v28 = sqlite3_column_nsstring(result, 6);
  [v8 setTitle:v28];

  if (snippetsCopy && ![(SGDatabaseJournal *)self->_snippetsJournal journaling])
  {
    snippetDb = self->_snippetDb;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __65__SGSqlEntityStore_SqlHelpers__entityFromSqlResult_withSnippets___block_invoke;
    v70[3] = &unk_278956070;
    v71 = v8;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __65__SGSqlEntityStore_SqlHelpers__entityFromSqlResult_withSnippets___block_invoke_2;
    v68[3] = &unk_278954708;
    v69 = v71;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __65__SGSqlEntityStore_SqlHelpers__entityFromSqlResult_withSnippets___block_invoke_3;
    v66[3] = &unk_278956108;
    v67 = v69;
    [(SGSqliteDatabase *)snippetDb prepAndRunQuery:@"SELECT title onPrep:content onRow:contentRangeOfInterest FROM snippets WHERE entityId=?" onError:v70, v68, v66];
  }

  v30 = sqlite3_column_double(result, 17);
  v31 = sqlite3_column_double(result, 18);
  v32 = sqlite3_column_int64(result, 20);
  v33 = sqlite3_column_int64(result, 21);
  v34 = sqlite3_column_int(result, 19);
  if (v30 != 0.0 && v31 != 0.0)
  {
    v35 = MEMORY[0x277D020E8];
    if (v34)
    {
      v36 = [MEMORY[0x277D020E8] floatingRangeWithUTCStart:v30 end:v31];
      [v8 setTimeRange:v36];
    }

    else
    {
      v36 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v32];
      v37 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v33];
      v38 = [v35 rangeWithStart:v36 startTimeZone:v37 end:v30 endTimeZone:v31];
      [v8 setTimeRange:v38];
    }
  }

  [v8 setCreationTimestamp:{sqlite3_column_double(result, 7)}];
  [v8 setLastModifiedTimestamp:{sqlite3_column_double(result, 8)}];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v39 = sqlite3_column_nsstring(result, 10);
  v40 = SGEntityTagsFromStorage(v39);

  v41 = [v40 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v63;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v63 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [v8 addTag:*(*(&v62 + 1) + 8 * i)];
      }

      v42 = [v40 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v42);
  }

  v45 = sqlite3_column_blob(result, 11);
  v46 = [MEMORY[0x277CBEA90] dataWithBytes:v45 length:{sqlite3_column_bytes(result, 11)}];
  [v8 setStructuredData:v46];

  [v8 setQuality:{sqlite3_column_double(result, 12)}];
  [v8 setMasterEntityId:{sqlite3_column_int64(result, 13)}];
  if ([v8 masterEntityId] < 0)
  {
    recordId = [v8 recordId];
    [v8 setMasterEntityId:{objc_msgSend(recordId, "rowId")}];
  }

  [v8 setGroupId:{sqlite3_column_int64(result, 14)}];
  [v8 setState:{sqlite3_column_int(result, 15)}];
  v48 = objc_autoreleasePoolPush();
  v49 = objc_alloc(MEMORY[0x277CBEB98]);
  v50 = objc_opt_class();
  v51 = [v49 initWithObjects:{v50, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v48);
  v52 = sqlite3_column_nssecurecoding(result, 22, v51);
  if (v52)
  {
    [v8 setLocations:v52];
  }

  else
  {
    v53 = objc_opt_new();
    [v8 setLocations:v53];
  }

  v54 = sqlite3_column_nsstring(result, 25);
  v55 = v54;
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = &stru_284703F00;
  }

  [v8 setOperatingSystemVersion:v56];

  return v8;
}

void __65__SGSqlEntityStore_SqlHelpers__entityFromSqlResult_withSnippets___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) recordId];
  sqlite3_bind_int64(a2, 1, [v3 rowId]);
}

uint64_t __65__SGSqlEntityStore_SqlHelpers__entityFromSqlResult_withSnippets___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) title];

  if (!v4)
  {
    v5 = sqlite3_column_nsstring(a2, 0);
    [*(a1 + 32) setTitle:v5];
  }

  v6 = sqlite3_column_nsstring(a2, 1);
  [*(a1 + 32) setContent:v6];

  v7 = sqlite3_column_nsstring(a2, 2);
  v8 = v7;
  if (v7)
  {
    v9 = NSRangeFromString(v7);
    [*(a1 + 32) setContentRangeOfInterest:{v9.location, v9.length}];
  }

  return 1;
}

uint64_t __65__SGSqlEntityStore_SqlHelpers__entityFromSqlResult_withSnippets___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recordId];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "failed to load snippet data for entity: %@", &v5, 0xCu);
  }

  return 1;
}

- (BOOL)databasecheck_contactMergeGroupConsistency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke;
  v5[3] = &unk_278954E28;
  v5[5] = &v6;
  v5[6] = a2;
  v5[4] = self;
  [(SGSqliteDatabase *)db readTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke(void *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(a1[4] + 8);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_3;
  v42[3] = &unk_278954708;
  v4 = v2;
  v43 = v4;
  [v3 prepAndRunQuery:@"SELECT DISTINCT masterEntityId FROM entity WHERE masterEntityId >= 0 AND masterEntityId != id AND entityType = :pseudo" onPrep:&__block_literal_global_18061 onRow:v42 onError:0];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v5)
  {
    v25 = *v39;
    do
    {
      v6 = 0;
      do
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * v6);
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 0x7FFFFFFFFFFFFFFFLL;
        v8 = *(a1[4] + 8);
        v32[4] = &v34;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_4;
        v33[3] = &unk_278956070;
        v33[4] = v7;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_5;
        v32[3] = &unk_278954658;
        [v8 prepAndRunQuery:@"SELECT MIN(id) FROM entity WHERE masterEntityId = :masterEntityId AND entityType = :pseudo" onPrep:v33 onRow:v32 onError:0];
        if (v35[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = [MEMORY[0x277CCA890] currentHandler];
          [v23 handleFailureInMethod:a1[6] object:a1[4] file:@"SGSqlEntityStore+DatabaseCheck.m" lineNumber:155 description:@"Failed to find merge group minimal element"];
        }

        v9 = [v7 rowId];
        if (v9 != v35[3])
        {
          v10 = objc_alloc(MEMORY[0x277CCACA8]);
          v11 = [v7 rowId];
          v12 = [v10 initWithFormat:@"  * merge group with masterEntityId %lld has unexpected minimal element %lld", v11, v35[3]];
          v13 = v12;
          puts([v12 UTF8String]);

          *(*(a1[5] + 8) + 24) = 0;
        }

        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        v14 = *(a1[4] + 8);
        v26[4] = &v28;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_6;
        v27[3] = &unk_278956070;
        v27[4] = v7;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_7;
        v26[3] = &unk_278954658;
        [v14 prepAndRunQuery:@"SELECT masterEntityId FROM entity WHERE id = :mergeId" onPrep:v27 onRow:v26 onError:0];
        v15 = v29[3];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"  * merge group has masterEntityId %lld, but there is no row with id == %lld", objc_msgSend(v7, "rowId"), objc_msgSend(v7, "rowId")];
          v17 = v16;
          v18 = [v16 UTF8String];
        }

        else
        {
          if (v15 == v35[3])
          {
            goto LABEL_15;
          }

          v19 = objc_alloc(MEMORY[0x277CCACA8]);
          v20 = [v7 rowId];
          v21 = [v7 rowId];
          v16 = [v19 initWithFormat:@"  * merge group has masterEntityId %lld, but the row with entity.id == %lld has masterEntityId == %lld", v20, v21, v29[3]];
          v22 = v16;
          v18 = [v16 UTF8String];
        }

        puts(v18);

        *(*(a1[5] + 8) + 24) = 0;
LABEL_15:
        _Block_object_dispose(&v28, 8);
        _Block_object_dispose(&v34, 8);
        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v5);
  }
}

uint64_t __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:v3];
  [v4 addObject:v5];

  return 0;
}

uint64_t __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_4(uint64_t a1, uint64_t a2)
{
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":masterEntityId", [*(a1 + 32) rowId]);

  return [SGSqliteDatabase bindParam:a2 name:":pseudo" int64:4];
}

uint64_t __77__SGSqlEntityStore_DatabaseCheck__databasecheck_contactMergeGroupConsistency__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rowId];

  return [SGSqliteDatabase bindParam:a2 name:":mergeId" int64:v3];
}

- (BOOL)databasecheck_BrokenEntityIDReferences
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [(SGSqliteDatabase *)self->_db tablesWithColumnNamed:@"entityId"];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v17 = *v24;
    obj = v2;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Broken entityId reference check: %@", v5];
        v7 = v6;
        puts([v6 UTF8String]);

        v8 = objc_opt_new();
        db = self->_db;
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT entityId, * FROM %@ WHERE entityId NOT IN (SELECT id FROM entity)", v5];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __73__SGSqlEntityStore_DatabaseCheck__databasecheck_BrokenEntityIDReferences__block_invoke;
        v20[3] = &unk_278955878;
        v11 = v8;
        v21 = v11;
        v22 = &v27;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __73__SGSqlEntityStore_DatabaseCheck__databasecheck_BrokenEntityIDReferences__block_invoke_2;
        v19[3] = &unk_2789560B8;
        v19[4] = v5;
        v19[5] = &v27;
        [(SGSqliteDatabase *)db prepAndRunQuery:v10 onPrep:0 onRow:v20 onError:v19];

        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:&stru_284703F00];
        v13 = v12;
        puts([v12 UTF8String]);
      }

      v2 = obj;
      v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v3);
  }

  v14 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  return v14;
}

uint64_t __73__SGSqlEntityStore_DatabaseCheck__databasecheck_BrokenEntityIDReferences__block_invoke(uint64_t a1, sqlite3_stmt *pStmt)
{
  v4 = sqlite3_column_count(pStmt);
  v5 = sqlite3_column_nsstring(pStmt, 0);
  if (v4 >= 2)
  {
    v6 = v4;
    for (i = 1; i != v6; ++i)
    {
      v8 = sqlite3_column_nsstring(pStmt, i);
      if (v8)
      {
        [*(a1 + 32) setObject:v8 atIndexedSubscript:i - 1];
      }

      else
      {
        v9 = [MEMORY[0x277CBEB68] null];
        [*(a1 + 32) setObject:v9 atIndexedSubscript:i - 1];
      }
    }
  }

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [*(a1 + 32) _pas_componentsJoinedByString:@" | "];
  v12 = [v10 initWithFormat:@"[%@]\t%@", v5, v11];
  puts([v12 UTF8String]);

  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

uint64_t __73__SGSqlEntityStore_DatabaseCheck__databasecheck_BrokenEntityIDReferences__block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to check for entityId broken reference in %@", *(a1 + 32)];
  puts([v2 UTF8String]);

  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

- (BOOL)databasecheck_IntegrityCheck
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SGSqlEntityStore_DatabaseCheck__databasecheck_IntegrityCheck__block_invoke;
  v11[3] = &unk_278954658;
  v11[4] = &v12;
  v3 = MEMORY[0x2383809F0](v11, a2);
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Integrity check of entities.db"];
  puts([v4 UTF8String]);

  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SGSqlEntityStore_DatabaseCheck__databasecheck_IntegrityCheck__block_invoke_2;
  v10[3] = &unk_278953F10;
  v10[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"PRAGMA integrity_check" onPrep:0 onRow:v3 onError:v10];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Integrity check of snippets.db"];
  puts([v6 UTF8String]);

  snippetDb = self->_snippetDb;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SGSqlEntityStore_DatabaseCheck__databasecheck_IntegrityCheck__block_invoke_3;
  v9[3] = &unk_278953F10;
  v9[4] = &v12;
  [(SGSqliteDatabase *)snippetDb prepAndRunQuery:@"PRAGMA integrity_check" onPrep:0 onRow:v3 onError:v9];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

uint64_t __63__SGSqlEntityStore_DatabaseCheck__databasecheck_IntegrityCheck__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_nsstring(a2, 0);
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v3];
  puts([v4 UTF8String]);

  if (([v3 isEqualToString:@"ok"] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return 0;
}

uint64_t __63__SGSqlEntityStore_DatabaseCheck__databasecheck_IntegrityCheck__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"Error: failed to run integrity_check on entities.db: %@", v4];

  puts([v5 UTF8String]);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return 1;
}

uint64_t __63__SGSqlEntityStore_DatabaseCheck__databasecheck_IntegrityCheck__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"Error: failed to run integrity_check on snippets.db: %@", v4];

  puts([v5 UTF8String]);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return 1;
}

- (BOOL)performIntegrityCheckOnly
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = _bold(@"**** Integrity check");
  v5 = [v3 initWithFormat:@"\n%@", v4];
  puts([v5 UTF8String]);

  return [(SGSqlEntityStore *)self databasecheck_IntegrityCheck];
}

- (BOOL)performDatabaseCheck
{
  outCount = 0;
  v2 = objc_opt_class();
  v3 = class_copyMethodList(v2, &outCount);
  if (outCount)
  {
    v4 = v3;
    v5 = 0;
    v6 = 1;
    do
    {
      Name = method_getName(v4[v5]);
      if (Name)
      {
        v8 = Name;
        v9 = sel_getName(Name);
        if (!strncmp(v9, "databasecheck_", 0xEuLL))
        {
          v23 = [(SGSqlEntityStore *)self methodForSelector:v8];
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", v9 + 14];
          v11 = objc_alloc(MEMORY[0x277CCACA8]);
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\n***** Database Check: %@", v10];
          v13 = _bold(v12);
          v14 = [v11 initWithFormat:@"%@", v13];
          puts([v14 UTF8String]);

          v6 &= v23(self, v8);
        }
      }

      ++v5;
    }

    while (v5 < outCount);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = @"failure";
  if (v6)
  {
    v17 = @"ok";
  }

  v18 = [v16 initWithFormat:@"\n***** Overall Status: %@", v17];
  v19 = _bold(v18);
  v20 = [v15 initWithFormat:@"%@", v19];
  puts([v20 UTF8String]);

  return v6 & 1;
}

- (void)_reportDbStatsBackground
{
  v3 = dispatch_get_global_queue(5, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SGSqlEntityStore_Maintenance___reportDbStatsBackground__block_invoke;
  block[3] = &unk_278954A30;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)reportDbStats
{
  v30 = *MEMORY[0x277D85DE8];
  dbStats = [(SGSqlEntityStore *)self dbStats];
  v3 = dbStats;
  v21 = dbStats;
  if (dbStats)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46__SGSqlEntityStore_Maintenance__reportDbStats__block_invoke;
    v26[3] = &unk_27894E5F0;
    v27 = @"dbstats";
    [dbStats enumerateKeysAndObjectsUsingBlock:v26];
    v4 = [v3 objectForKeyedSubscript:@"entities"];
    v5 = SGEntityTypeDescription();
    v6 = [v4 objectForKeyedSubscript:v5];
    integerValue = [v6 integerValue];

    if (integerValue >= 1)
    {
      v8 = [v21 objectForKeyedSubscript:@"merged_pseudocontacts"];
      +[SGAggregateLogging setKeyWithDomain:suffix:toValue:](SGAggregateLogging, "setKeyWithDomain:suffix:toValue:", @"dbstats", @"merged_pseudocontact_percent", 100 * [v8 integerValue] / integerValue);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v21 objectForKeyedSubscript:@"entities"];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v10)
    {
      v11 = *v23;
      obj = v9;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [@"entityTypes." stringByAppendingString:v13];
          v16 = [v21 objectForKeyedSubscript:@"entities"];
          v17 = [v16 objectForKeyedSubscript:v13];
          [SGAggregateLogging setKeyWithDomain:@"dbstats" suffix:v15 toValue:[SGAggregateLogging twoSigFigs:v17]];

          objc_autoreleasePoolPop(v14);
        }

        v9 = obj;
        v10 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v10);
    }

    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v18, OS_LOG_TYPE_INFO, "reported db stats to AggD", buf, 2u);
    }

    v19 = v27;
  }

  else
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEFAULT, "dbStats returned nil during reportDbStats", buf, 2u);
    }
  }
}

void __46__SGSqlEntityStore_Maintenance__reportDbStats__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqualToString:@"entities"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"statsCounters") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"urlsCounters") & 1) == 0 && (objc_msgSend(v6, "hasPrefix:", @"reimportRequests_oldest") & 1) == 0)
  {
    [SGAggregateLogging setKeyWithDomain:*(a1 + 32) suffix:v6 toValue:[SGAggregateLogging twoSigFigs:v5]];
  }
}

- (void)registerCachePrecomputationWithCTS
{
  if ([(SGSqliteDatabase *)self->_db isInMemory])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Maintenance.m" lineNumber:32 description:@"Tried to register cache computation task on an in-memory store"];
  }

  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "registering cache precomputation work with CTS", buf, 2u);
  }

  v5 = +[SGXPCActivityManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SGSqlEntityStore_Maintenance__registerCachePrecomputationWithCTS__block_invoke;
  v7[3] = &unk_27894E5C8;
  v7[4] = self;
  [v5 registerForActivity:2 handler:v7];
}

void __67__SGSqlEntityStore_Maintenance__registerCachePrecomputationWithCTS__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _os_activity_create(&dword_231E60000, "SGSqlEntityStore cache precomputation due to CTS", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = dispatch_group_create();
  v6 = *(a1 + 32);
  v7 = *(v6 + 192);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SGSqlEntityStore_Maintenance__registerCachePrecomputationWithCTS__block_invoke_2;
  block[3] = &unk_278955830;
  block[4] = v6;
  v8 = v3;
  v17 = v8;
  dispatch_group_async(v5, v7, block);
  v9 = *(a1 + 32);
  v10 = *(v9 + 192);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__SGSqlEntityStore_Maintenance__registerCachePrecomputationWithCTS__block_invoke_16;
  v14[3] = &unk_278955830;
  v14[4] = v9;
  v11 = v8;
  v15 = v11;
  dispatch_group_async(v5, v10, v14);
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "all async jobs for cache precomputation are done", v13, 2u);
  }

  [*(a1 + 32) _reportDbStatsBackground];
  [*(a1 + 32) clearCaches];

  os_activity_scope_leave(&state);
}

void __67__SGSqlEntityStore_Maintenance__registerCachePrecomputationWithCTS__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "serializing contacts due to CTS", &v6, 2u);
  }

  v3 = objc_opt_new();
  [*(a1 + 32) updateSerializedContacts:*(a1 + 40)];
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    [v3 timeIntervalSinceNow];
    v6 = 134217984;
    v7 = -v5;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Finished updating serialized contacts in %0.3f seconds", &v6, 0xCu);
  }
}

uint64_t __67__SGSqlEntityStore_Maintenance__registerCachePrecomputationWithCTS__block_invoke_16(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "pre-calculating CN to SG contact matches due to CTS", v4, 2u);
  }

  return [*(a1 + 32) updateCNContactMatches:*(a1 + 40)];
}

- (void)registerSentHandles:(id)handles
{
  v15 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [handlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(handlesCopy);
        }

        v9 = [(SGSqlEntityStore *)self normalizeHandleForRecipientFilterAndRemoveFromDetailsCache:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          [(SGBloomFilter *)self->_messageRecipients add:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [handlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)registerSentTextMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  recipients = [message recipients];
  v5 = [recipients countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        handles = [v9 handles];
        v11 = [handles countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(handles);
              }

              v15 = [(SGSqlEntityStore *)self normalizeHandleForRecipientFilterAndRemoveFromDetailsCache:*(*(&v16 + 1) + 8 * v14)];
              if (v15)
              {
                [(SGBloomFilter *)self->_messageRecipients add:v15];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [handles countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [recipients countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

- (BOOL)mayHaveSentMessageToHandle:(id)handle
{
  v4 = [(SGSqlEntityStore *)self normalizeHandleForRecipientFilterAndRemoveFromDetailsCache:handle];
  if (v4)
  {
    v5 = [(SGBloomFilter *)self->_messageRecipients exists:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)normalizeHandleForRecipientFilterAndRemoveFromDetailsCache:(id)cache
{
  cacheCopy = cache;
  if ([cacheCopy containsString:@"@"])
  {
    v5 = SGNormalizeEmailAddress();
    [(SGSqlEntityStore *)self removeStringFromNoContactsCache:v5];
    goto LABEL_9;
  }

  if ([cacheCopy length] >= 5)
  {
    CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
    v6 = _PASKeepOnlyCharacterSet();
    if ([v6 length] >= 5)
    {
      v7 = [cacheCopy length];
      if ((v7 - [v6 length]) < 8)
      {
        v5 = SGNormalizePhoneNumber();
        [(SGSqlEntityStore *)self removeStringFromNoContactsCache:v5];

        goto LABEL_9;
      }
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)registerSentMailMessage:(id)message
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SGSqlEntityStore_Significance__registerSentMailMessage___block_invoke;
  v8[3] = &unk_278955610;
  v8[4] = self;
  messageCopy = message;
  v4 = MEMORY[0x2383809F0](v8);
  v5 = [messageCopy to];
  (v4)[2](v4, v5);

  v6 = [messageCopy cc];
  (v4)[2](v4, v6);

  v7 = [messageCopy bcc];

  (v4)[2](v4, v7);
}

void __58__SGSqlEntityStore_Significance__registerSentMailMessage___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 emailAddress];

        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = [v8 emailAddress];
          v13 = [v11 normalizeHandleForRecipientFilterAndRemoveFromDetailsCache:v12];

          if (v13)
          {
            [*(*(a1 + 32) + 200) add:v13];
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (BOOL)mayHaveSentMessageToEmail:(id)email
{
  messageRecipients = self->_messageRecipients;
  v4 = SGNormalizeEmailAddress();
  LOBYTE(messageRecipients) = [(SGBloomFilter *)messageRecipients exists:v4];

  return messageRecipients;
}

- (BOOL)recentsContainSomeOfEmails:(id)emails phoneNumbers:(id)numbers instantMessageAddresses:(id)addresses
{
  v56[3] = *MEMORY[0x277D85DE8];
  emailsCopy = emails;
  numbersCopy = numbers;
  addressesCopy = addresses;
  if (!self->_crLookup)
  {
    v41 = objc_opt_new();
    v13 = *MEMORY[0x277D00F20];
    v56[0] = *MEMORY[0x277D00F18];
    v56[1] = v13;
    v56[2] = *MEMORY[0x277D00F10];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    [v41 setDomains:v14];

    v15 = objc_opt_new();
    if (objc_msgSend_count(emailsCopy))
    {
      v16 = MEMORY[0x277D00F30];
      v54 = *MEMORY[0x277D00EC0];
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v18 = [v16 predicateForKey:*MEMORY[0x277D00EF8] inCollection:v17];
      v55[0] = v18;
      v19 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EE8] inCollection:emailsCopy];
      v55[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      v21 = [v16 predicateSatisfyingAllSubpredicates:v20];
      [v15 addObject:v21];
    }

    if (objc_msgSend_count(numbersCopy))
    {
      v22 = MEMORY[0x277D00F30];
      v52 = *MEMORY[0x277D00EE0];
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      v24 = [v22 predicateForKey:*MEMORY[0x277D00EF8] inCollection:v23];
      v53[0] = v24;
      v25 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EE8] inCollection:numbersCopy];
      v53[1] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      v27 = [v22 predicateSatisfyingAllSubpredicates:v26];
      [v15 addObject:v27];
    }

    if (objc_msgSend_count(addressesCopy))
    {
      v28 = MEMORY[0x277D00F30];
      v50 = *MEMORY[0x277D00ED0];
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      v30 = [v28 predicateForKey:*MEMORY[0x277D00EF8] inCollection:v29];
      v51[0] = v30;
      v31 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EE8] inCollection:addressesCopy];
      v51[1] = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      v33 = [v28 predicateSatisfyingAllSubpredicates:v32];
      [v15 addObject:v33];
    }

    if (!objc_msgSend_count(v15))
    {
      v12 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v34 = [MEMORY[0x277D00F30] predicateSatisfyingAnySubpredicate:v15];
    [v41 setSearchPredicate:v34];

    *buf = 0;
    v47 = buf;
    v48 = 0x2020000000;
    v49 = 0;
    v35 = dispatch_semaphore_create(0);
    defaultInstance = [MEMORY[0x277D00F28] defaultInstance];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __98__SGSqlEntityStore_Significance__recentsContainSomeOfEmails_phoneNumbers_instantMessageAddresses___block_invoke;
    v43[3] = &unk_27894EC58;
    v45 = buf;
    v37 = v35;
    v44 = v37;
    [defaultInstance performRecentsSearch:v41 queue:0 completion:v43];

    [MEMORY[0x277D425A0] waitForSemaphore:v37 timeoutSeconds:1.0];
    v12 = atomic_load(v47 + 24);
    if (v12)
    {
      v38 = sgLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *v42 = 0;
        v39 = "Found email in recents";
LABEL_21:
        _os_log_debug_impl(&dword_231E60000, v38, OS_LOG_TYPE_DEBUG, v39, v42, 2u);
      }
    }

    else
    {
      v38 = sgLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *v42 = 0;
        v39 = "Email was not found in recents";
        goto LABEL_21;
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_18;
  }

  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "Looking up in custom tester function instead of actually hitting recents", buf, 2u);
  }

  v12 = (*(self->_crLookup + 2))();
LABEL_19:

  return v12 & 1;
}

void __98__SGSqlEntityStore_Significance__recentsContainSomeOfEmails_phoneNumbers_instantMessageAddresses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 description];
      v11 = v10;
      v12 = @"(nil)";
      if (v10)
      {
        v12 = v10;
      }

      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Unable to search recents; error: %@", &v13, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  if (v5)
  {
    v9 = objc_msgSend_count(v5) != 0;
  }

  else
  {
    v9 = 0;
  }

  atomic_store(v9, (v8 + 24));
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setCRLookupForTesting:(id)testing
{
  v4 = MEMORY[0x2383809F0](testing, a2);
  crLookup = self->_crLookup;
  self->_crLookup = v4;

  MEMORY[0x2821F96F8](v4, crLookup);
}

- (BOOL)anyHandleIsSignificant:(id)significant
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  significantCopy = significant;
  v5 = [significantCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(significantCopy);
        }

        if ([(SGSqlEntityStore *)self mayHaveSentMessageToHandle:*(*(&v28 + 1) + 8 * i)])
        {
          v10 = sgLogHandle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Handle is significant: Found in bloom filter", buf, 2u);
          }

          LOBYTE(v18) = 1;
          v9 = significantCopy;
          goto LABEL_27;
        }
      }

      v6 = [significantCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = significantCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * j);
        if ([v16 containsString:{@"@", v23}])
        {
          v17 = v10;
        }

        else
        {
          v17 = v9;
        }

        [v17 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v13);
  }

  v18 = [(SGSqlEntityStore *)self recentsContainSomeOfEmails:v10 phoneNumbers:v9 instantMessageAddresses:v10];
  v19 = sgLogHandle();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v18)
  {
    if (v20)
    {
      *buf = 0;
      v21 = "Handle is significant: Found in recents";
LABEL_29:
      _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, v21, buf, 2u);
    }
  }

  else if (v20)
  {
    *buf = 0;
    v21 = "Handle is not significant";
    goto LABEL_29;
  }

LABEL_27:
  return v18;
}

- (BOOL)anyEmailAddressIsSignificant:(id)significant
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  significantCopy = significant;
  v5 = [significantCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(significantCopy);
        }

        if ([(SGSqlEntityStore *)self mayHaveSentMessageToEmail:*(*(&v16 + 1) + 8 * i)])
        {
          v13 = sgLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *v15 = 0;
            _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "Email Address is significant: Found in bloom filter", v15, 2u);
          }

          v12 = 1;
          v10 = significantCopy;
          goto LABEL_19;
        }
      }

      v6 = [significantCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = [(SGSqlEntityStore *)self recentsContainSomeOfEmails:significantCopy phoneNumbers:MEMORY[0x277CBEBF8] instantMessageAddresses:MEMORY[0x277CBEBF8]];
  v10 = sgLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Email Address is significant: Found in recents", v15, 2u);
    }

    v12 = 1;
  }

  else
  {
    if (v11)
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Email Address is not significant", v15, 2u);
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (BOOL)realtimeContactIsSignificantOrSignificanceIsDisabled:(id)disabled
{
  if (![(SGSqlEntityStore *)self realtimeContactIsSignificant:disabled])
  {
    if ([MEMORY[0x277D02098] onlyShowSignificantPseudoContacts])
    {
      return 0;
    }

    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "Realtime contact is not significant, but selecting anyway due to preference setting", v5, 2u);
    }
  }

  return 1;
}

- (BOOL)realtimeContactIsSignificant:(id)significant
{
  significantCopy = significant;
  if ([significantCopy state] == 2)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Contact is significant: Update to curated contact", v9, 2u);
    }

    v6 = 1;
  }

  else
  {
    contact = [significantCopy contact];
    v6 = [(SGSqlEntityStore *)self contactIsSignificant:contact];
  }

  return v6;
}

- (BOOL)contactIsSignificantOrSignificanceIsDisabled:(id)disabled usingCoreRecents:(BOOL)recents
{
  if (![(SGSqlEntityStore *)self contactIsSignificant:disabled usingCoreRecents:recents])
  {
    if ([MEMORY[0x277D02098] onlyShowSignificantPseudoContacts])
    {
      return 0;
    }

    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Contact is not significant, but selecting anyway due to preference setting", v6, 2u);
    }
  }

  return 1;
}

- (BOOL)contactIsSignificant:(id)significant usingCoreRecents:(BOOL)recents
{
  recentsCopy = recents;
  v55 = *MEMORY[0x277D85DE8];
  significantCopy = significant;
  if ([significantCopy significance] == 1)
  {
    emailAddresses = sgLogHandle();
    if (os_log_type_enabled(emailAddresses, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, emailAddresses, OS_LOG_TYPE_DEBUG, "contact.significance property is true. skipping all other check.", buf, 2u);
    }

LABEL_16:
    v16 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  emailAddresses = [significantCopy emailAddresses];
  v8 = [emailAddresses countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v48 != v10)
      {
        objc_enumerationMutation(emailAddresses);
      }

      emailAddress = [*(*(&v47 + 1) + 8 * v11) emailAddress];
      v13 = [(SGSqlEntityStore *)self mayHaveSentMessageToEmail:emailAddress];

      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [emailAddresses countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v17 = sgLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v30 = "Contact is significant: Found in bloom filter (email)";
    goto LABEL_37;
  }

LABEL_12:

  socialProfiles = [significantCopy socialProfiles];
  v15 = objc_msgSend_count(socialProfiles);

  if (!v15)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    emailAddresses = [significantCopy phones];
    v19 = [emailAddresses countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (!v19)
    {
LABEL_27:

      if (recentsCopy)
      {
        v25 = sgLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v25, OS_LOG_TYPE_DEBUG, "Sender isn't in bloom filter, checking recents", buf, 2u);
        }

        emailAddresses2 = [significantCopy emailAddresses];
        emailAddresses = sgMap();

        phones = [significantCopy phones];
        v28 = sgMap();

        if ([(SGSqlEntityStore *)self recentsContainSomeOfEmails:emailAddresses phoneNumbers:v28 instantMessageAddresses:MEMORY[0x277CBEBF8]])
        {
          v29 = sgLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEBUG, "Contact is significant: Found in recents", buf, 2u);
          }

          goto LABEL_16;
        }
      }

      emailAddresses = +[SGSqlEntityStore _cachedVIPEmailAddresses];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      emailAddresses3 = [significantCopy emailAddresses];
      v32 = [emailAddresses3 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v40;
        while (2)
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v40 != v34)
            {
              objc_enumerationMutation(emailAddresses3);
            }

            emailAddress2 = [*(*(&v39 + 1) + 8 * i) emailAddress];
            v37 = [emailAddresses containsObject:emailAddress2];

            if (v37)
            {
              v38 = sgLogHandle();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_231E60000, v38, OS_LOG_TYPE_DEBUG, "Contact is significant - VIP email address", buf, 2u);
              }

              v16 = 1;
              goto LABEL_53;
            }
          }

          v33 = [emailAddresses3 countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      emailAddresses3 = sgLogHandle();
      if (os_log_type_enabled(emailAddresses3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, emailAddresses3, OS_LOG_TYPE_DEBUG, "Contact is not significant", buf, 2u);
      }

      v16 = 0;
LABEL_53:

      goto LABEL_17;
    }

    v20 = v19;
    v21 = *v44;
LABEL_21:
    v22 = 0;
    while (1)
    {
      if (*v44 != v21)
      {
        objc_enumerationMutation(emailAddresses);
      }

      phoneNumber = [*(*(&v43 + 1) + 8 * v22) phoneNumber];
      v24 = [(SGSqlEntityStore *)self mayHaveSentMessageToHandle:phoneNumber];

      if (v24)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [emailAddresses countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v20)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    v17 = sgLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v30 = "Contact is significant: Found in bloom filter (phone)";
LABEL_37:
    _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, v30, buf, 2u);
LABEL_15:

    goto LABEL_16;
  }

  v16 = 1;
LABEL_18:

  return v16;
}

+ (void)setCachedVIPEmailAddresses:(id)addresses
{
  v3 = [addresses copy];
  v4 = _cachedVIPEmailAddresses;
  _cachedVIPEmailAddresses = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

+ (id)_cachedVIPEmailAddresses
{
  if (_cachedVIPEmailAddresses)
  {
    v2 = _cachedVIPEmailAddresses;
  }

  else
  {
    v3 = +[SGMailClientUtil sharedInstance];
    allVIPEmailAddresses = [v3 allVIPEmailAddresses];
    v2 = [allVIPEmailAddresses copy];
  }

  return v2;
}

- (id)loadAllContactDetailsFromTableForRecordId:(id)id
{
  idCopy = id;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke;
  v29[3] = &unk_278955E30;
  v5 = idCopy;
  v30 = v5;
  v6 = MEMORY[0x2383809F0](v29);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__21998;
  v27[4] = __Block_byref_object_dispose__21999;
  v28 = 0;
  snippetDb = self->_snippetDb;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke_30;
  v26[3] = &unk_278955EA0;
  v26[4] = v27;
  [(SGSqliteDatabase *)snippetDb prepAndRunSQL:@"SELECT content FROM snippets WHERE entityId = :entityId" onPrep:v6 onRow:v26 onError:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke_2;
  v24[3] = &unk_278955E30;
  v8 = v5;
  v25 = v8;
  v9 = MEMORY[0x2383809F0](v24);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__21998;
  v22 = __Block_byref_object_dispose__21999;
  v23 = objc_opt_new();
  db = self->_db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke_3;
  v14[3] = &unk_27894F108;
  v14[4] = self;
  v11 = v8;
  v15 = v11;
  v16 = v27;
  v17 = &v18;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT value onPrep:label onRow:type onError:duplicateKey, sourceKey, extractionInfoId FROM contactDetails WHERE entityId = :entityId OR entityId IN (SELECT e.id FROM entity AS e INNER JOIN entityParentage AS ep ON e.id = ep.childId WHERE e.masterEntityId = :entityId)", v9, v14, 0];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v27, 8);

  return v12;
}

void __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":entityId" toInt64:{objc_msgSend(v2, "numericValue")}];
}

uint64_t __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

void __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":entityId" toInt64:{objc_msgSend(v2, "numericValue")}];
}

uint64_t __78__SGSqlEntityStore_ContactDetails__loadAllContactDetailsFromTableForRecordId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"value" table:0];
  v5 = [v3 getNSStringForColumnName:"label" table:0];
  v6 = [v3 getInt64ForColumnName:"type" table:0];
  v7 = [v3 nonnullNSStringForColumnName:"duplicateKey" table:0];
  v8 = [v3 getNSStringForColumnName:"sourceKey" table:0];
  v9 = [v3 getInt64ForColumnName:"extractionInfoId" table:0];

  v10 = [*(a1 + 32) loadExtractionInfoForPrimaryKey:v9];
  v11 = *(a1 + 40);
  v12 = [[SGDuplicateKey alloc] initWithSerialized:v7];
  v13 = [SGContactDetail contactDetail:v4 label:v5 type:v6 recordId:v11 duplicateKey:v12 sourceKey:v8 context:*(*(*(a1 + 48) + 8) + 40) extractionInfo:v10];

  [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
  v14 = MEMORY[0x277D42690];

  return *v14;
}

- (id)loadAllContactDetailsFromTableForRecordId:(id)id type:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(SGSqlEntityStore *)self loadAllContactDetailsFromTableForRecordId:id];
  v6 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 type] == type)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)contactDetailEntityIdForDuplicateKey:(id)key
{
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SGSqlEntityStore_ContactDetails__contactDetailEntityIdForDuplicateKey___block_invoke;
  v10[3] = &unk_278955E30;
  v6 = keyCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SGSqlEntityStore_ContactDetails__contactDetailEntityIdForDuplicateKey___block_invoke_2;
  v9[3] = &unk_278953EE8;
  v9[4] = &v16;
  v9[5] = &v12;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT entityId FROM contactDetails WHERE duplicateKey = :duplicateKey" onPrep:v10 onRow:v9 onError:0];
  if (v13[3])
  {
    v7 = [MEMORY[0x277D020C8] recordIdWithNumericValue:v17[3]];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v7;
}

void __73__SGSqlEntityStore_ContactDetails__contactDetailEntityIdForDuplicateKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serialize];
  [v3 bindNamedParam:":duplicateKey" toNSString:v4];
}

uint64_t __73__SGSqlEntityStore_ContactDetails__contactDetailEntityIdForDuplicateKey___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 getIntegerForColumn:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return 1;
}

- (int64_t)contactDetailPrimaryKeyForDuplicateKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SGSqlEntityStore_ContactDetails__contactDetailPrimaryKeyForDuplicateKey___block_invoke;
  v10[3] = &unk_278955E30;
  v6 = keyCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SGSqlEntityStore_ContactDetails__contactDetailPrimaryKeyForDuplicateKey___block_invoke_2;
  v9[3] = &unk_278955EA0;
  v9[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT id FROM contactDetails WHERE duplicateKey = :duplicateKey" onPrep:v10 onRow:v9 onError:0];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __75__SGSqlEntityStore_ContactDetails__contactDetailPrimaryKeyForDuplicateKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serialize];
  [v3 bindNamedParam:":duplicateKey" toNSString:v4];
}

- (int64_t)commitContactDetail:(id)detail
{
  detailCopy = detail;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__SGSqlEntityStore_ContactDetails__commitContactDetail___block_invoke;
  v21[3] = &unk_2789559D0;
  v5 = detailCopy;
  v22 = v5;
  selfCopy = self;
  v6 = MEMORY[0x2383809F0](v21);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SGSqlEntityStore_ContactDetails__commitContactDetail___block_invoke_2;
  v12[3] = &unk_278955910;
  v12[4] = self;
  v8 = v5;
  v16 = &v17;
  v13 = v8;
  v14 = @"INSERT INTO contactDetails (entityId, duplicateKey, sourceKey, label, value, type, extractionInfoId) VALUES (:entityId, :duplicateKey, :sourceKey, :label, :value, :type, :extractionInfoId)";
  v9 = v6;
  v15 = v9;
  [(SGSqliteDatabase *)db writeTransaction:v12];
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __56__SGSqlEntityStore_ContactDetails__commitContactDetail___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v13 = a2;
  v4 = [v3 recordId];
  [v13 bindNamedParam:":entityId" toInt64:{objc_msgSend(v4, "numericValue")}];

  v5 = [*(a1 + 32) duplicateKey];
  v6 = [v5 serialize];
  [v13 bindNamedParam:":duplicateKey" toNSString:v6];

  v7 = [*(a1 + 32) sourceKey];
  [v13 bindNamedParam:":sourceKey" toNSString:v7];

  v8 = [*(a1 + 32) label];
  [v13 bindNamedParam:":label" toNSString:v8];

  v9 = [*(a1 + 32) value];
  [v13 bindNamedParam:":value" toNSString:v9];

  [v13 bindNamedParam:":type" toInt64:{objc_msgSend(*(a1 + 32), "type")}];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) extractionInfo];
  v12 = [v10 commitExtractionInfo:v11];

  [v13 bindNamedParam:":extractionInfoId" toInt64:v12];
}

void __56__SGSqlEntityStore_ContactDetails__commitContactDetail___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) duplicateKey];
  insert_rowid = [v2 contactDetailPrimaryKeyForDuplicateKey:v3];

  if (insert_rowid < 0)
  {
    [*(*(a1 + 32) + 8) prepAndRunSQL:*(a1 + 48) onPrep:*(a1 + 56) onRow:0 onError:0];
    insert_rowid = sqlite3_last_insert_rowid([*(*(a1 + 32) + 8) handle]);
  }

  *(*(*(a1 + 64) + 8) + 24) = insert_rowid;
}

- (void)writeIdentityBlobs:(id)blobs forceRewrite:(BOOL)rewrite
{
  rewriteCopy = rewrite;
  v69 = *MEMORY[0x277D85DE8];
  blobsCopy = blobs;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Writing identity blobs", buf, 2u);
  }

  v64 = 0;
  v65 = 0;
  v63 = @"writeIdentityBlobs";
  v64 = mach_absolute_time();
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  *buf = 0;
  v54 = buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__22534;
  v57 = __Block_byref_object_dispose__22535;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__22534;
  v51 = __Block_byref_object_dispose__22535;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__22534;
  v45 = __Block_byref_object_dispose__22535;
  v46 = 0;
  db = self->_db;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __61__SGSqlEntityStore_Writing__writeIdentityBlobs_forceRewrite___block_invoke;
  v34[3] = &unk_27894F4F8;
  v34[4] = self;
  v9 = blobsCopy;
  v35 = v9;
  v36 = buf;
  v37 = &v47;
  v38 = &v41;
  v39 = &v59;
  v40 = rewriteCopy;
  [(SGSqliteDatabase *)db writeTransaction:v34];
  if (*(v60 + 24) == 1)
  {
    [(SGSqlEntityStore *)self clearMasterEntityCache];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v48[5];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v68 count:16];
    if (v11)
    {
      v12 = *v31;
      do
      {
        v13 = 0;
        do
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [SGDNotificationBroadcaster emitContactDeleted:*(*(&v30 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v30 objects:v68 count:16];
      }

      while (v11);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v42[5];
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v67 count:16];
    if (v15)
    {
      v16 = *v27;
      do
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [SGDNotificationBroadcaster emitContactUpdated:*(*(&v26 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v67 count:16];
      }

      while (v15);
    }

    if (rewriteCopy)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v18 = *(v54 + 5);
      v19 = [v18 countByEnumeratingWithState:&v22 objects:v66 count:16];
      if (v19)
      {
        v20 = *v23;
        do
        {
          v21 = 0;
          do
          {
            if (*v23 != v20)
            {
              objc_enumerationMutation(v18);
            }

            [SGDNotificationBroadcaster emitContactUpdated:*(*(&v22 + 1) + 8 * v21++), v22];
          }

          while (v19 != v21);
          v19 = [v18 countByEnumeratingWithState:&v22 objects:v66 count:16];
        }

        while (v19);
      }
    }
  }

  SGRecordMeasurementState(&v63);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v59, 8);
  SGRecordMeasurementState(&v63);
}

void __61__SGSqlEntityStore_Writing__writeIdentityBlobs_forceRewrite___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _loadIdentityBlobs];
  v3 = [*(a1 + 32) _labelIdentityBlobs:*(a1 + 40)];
  v4 = [v2 _pas_mappedSetWithTransform:&__block_literal_global_396];
  v5 = [v3 _pas_mappedSetWithTransform:&__block_literal_global_398_22537];
  v6 = [v2 mutableCopy];
  [v6 intersectSet:v3];
  v7 = [v6 _pas_mappedSetWithTransform:&__block_literal_global_400];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v2 mutableCopy];
  [v10 minusSet:v3];
  v11 = [v4 mutableCopy];
  [v11 minusSet:v5];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v3 mutableCopy];
  [v14 minusSet:v2];
  v15 = [v5 mutableCopy];
  [v15 minusSet:*(*(*(a1 + 48) + 8) + 40)];
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (objc_msgSend_count(v10))
  {
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      v22 = v10;
      _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "IdentityStore: Writing deletes for %@", &v21, 0xCu);
    }

    [*(a1 + 32) _writeLabeledBlobs:v10 deletedMasterEntityIds:*(*(*(a1 + 56) + 8) + 40)];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if (objc_msgSend_count(v14))
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      v22 = v14;
      _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "IdentityStore: Newly created contacts %@", &v21, 0xCu);
    }

    [*(a1 + 32) _writeLabeledBlobs:v14 deletedMasterEntityIds:*(*(*(a1 + 56) + 8) + 40)];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if (*(a1 + 80) == 1 && objc_msgSend_count(v6))
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "IdentityStore: Forced update of contacts %@", &v21, 0xCu);
    }

    [*(a1 + 32) _writeLabeledBlobs:v6 deletedMasterEntityIds:*(*(*(a1 + 56) + 8) + 40)];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

- (void)_writeLabeledBlobs:(id)blobs deletedMasterEntityIds:(id)ids
{
  v115 = *MEMORY[0x277D85DE8];
  blobsCopy = blobs;
  idsCopy = ids;
  v7 = dispatch_semaphore_create(0);
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __71__SGSqlEntityStore_Writing___writeLabeledBlobs_deletedMasterEntityIds___block_invoke;
  v105[3] = &unk_278954A30;
  v8 = v7;
  v106 = v8;
  [SGSpotlightContactsAdapter notifyWhenFlushed:v105];
  v71 = v8;
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = blobsCopy;
  v81 = [obj countByEnumeratingWithState:&v101 objects:v114 count:16];
  if (v81)
  {
    v79 = *v102;
    do
    {
      v9 = 0;
      do
      {
        if (*v102 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v83 = v9;
        v10 = *(*(&v101 + 1) + 8 * v9);
        v82 = objc_autoreleasePoolPush();
        first = [v10 first];
        [(SGSqlEntityStore *)self deleteSerializedContactsForIdSet:first];

        first2 = [v10 first];
        [(SGSqlEntityStore *)self deleteAllCNContactMatchesForIdSet:first2];

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        first3 = [v10 first];
        v14 = [first3 countByEnumeratingWithState:&v97 objects:v113 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v98;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v98 != v16)
              {
                objc_enumerationMutation(first3);
              }

              v18 = +[SGStorageContact contactWithMasterEntityId:](SGStorageContact, "contactWithMasterEntityId:", [*(*(&v97 + 1) + 8 * i) internalEntityId]);
              v19 = [[SGJournalEntry alloc] initWithOperation:13 contact:v18];
              [(SGJournal *)self->_journal addEntry:v19];
            }

            v15 = [first3 countByEnumeratingWithState:&v97 objects:v113 count:16];
          }

          while (v15);
        }

        second = [v10 second];
        v21 = [idsCopy containsObject:second];

        if (v21)
        {
          kvCacheManager = [(SGSqlEntityStore *)self kvCacheManager];
          first4 = [v10 first];
          [kvCacheManager deleteValueByRecordIdSet:first4];
        }

        else
        {
          first5 = [v10 first];
          kvCacheManager = [first5 mutableCopy];

          first4 = [v10 second];
          if (!first4)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:1458 description:{@"Invalid parameter not satisfying: %@", @"masterEntityRecord"}];
          }

          [kvCacheManager removeObject:first4];
          if (objc_msgSend_count(kvCacheManager))
          {
            kvCacheManager2 = [(SGSqlEntityStore *)self kvCacheManager];
            [kvCacheManager2 deleteValueByRecordIdSet:kvCacheManager];
          }
        }

        first6 = [v10 first];
        v27 = sgMap();

        db = self->_db;
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __71__SGSqlEntityStore_Writing___writeLabeledBlobs_deletedMasterEntityIds___block_invoke_3;
        v94[3] = &unk_27894F4B0;
        v96 = v21;
        v94[4] = v10;
        v29 = v27;
        v95 = v29;
        [(SGSqliteDatabase *)db prepAndRunSQL:@"UPDATE entity SET masterEntityId = :masterEntityId WHERE id IN _pas_nsarray(:ids) AND entityType IN (:pseudoContact onPrep::unrecognizedContact)" onRow:v94 onError:0, 0];
        if ((v21 & 1) == 0)
        {
          second2 = [v10 second];
          v31 = [(SGSqlEntityStore *)self storageContactByRecordId:second2 withSnippets:0];

          if (v31 && ![(SGSuggestHistory *)self->_history hasStorageContact:v31])
          {
            journal = [(SGSqlEntityStore *)self journal];
            v33 = [[SGJournalEntry alloc] initWithOperation:11 contact:v31];
            [journal addEntry:v33];

            v34 = [v31 convertToContact:self];
            recordId = [v34 recordId];
            second3 = [v10 second];
            v37 = [recordId isEqual:second3];

            if (v37)
            {
              [(SGSqlEntityStore *)self filterOutRejectedDetailsFromContact:v34];
              name = [v34 name];
              fullName = [name fullName];

              v40 = v34;
              v74 = fullName;
              if (fullName)
              {
                v41 = [MEMORY[0x277D01FF8] encodedStringForFullName:fullName];
              }

              else
              {
                v41 = 0;
              }

              phones = [v34 phones];
              v44 = objc_msgSend_count(phones);

              v76 = v31;
              v77 = v29;
              v75 = v34;
              if (v44)
              {
                context = objc_autoreleasePoolPush();
                v45 = objc_opt_new();
                v90 = 0u;
                v91 = 0u;
                v92 = 0u;
                v93 = 0u;
                phones2 = [v34 phones];
                v46 = [phones2 countByEnumeratingWithState:&v90 objects:v108 count:16];
                if (v46)
                {
                  v47 = v46;
                  v48 = *v91;
                  do
                  {
                    for (j = 0; j != v47; ++j)
                    {
                      if (*v91 != v48)
                      {
                        objc_enumerationMutation(phones2);
                      }

                      phoneNumber = [*(*(&v90 + 1) + 8 * j) phoneNumber];
                      v51 = SGNormalizePhoneNumber();
                      [v45 setObject:v41 forKeyedSubscript:v51];
                    }

                    v47 = [phones2 countByEnumeratingWithState:&v90 objects:v108 count:16];
                  }

                  while (v47);
                }

                kvCacheManager3 = [(SGSqlEntityStore *)self kvCacheManager];
                v53 = [kvCacheManager3 cacheOfType:0];

                v40 = v75;
                recordId2 = [v75 recordId];
                [v53 setValueIfNotPresentWithDict:v45 fromRecordId:recordId2];

                objc_autoreleasePoolPop(context);
                v31 = v76;
                v29 = v77;
              }

              emailAddresses = [v40 emailAddresses];
              v56 = objc_msgSend_count(emailAddresses);

              if (v56)
              {
                contexta = objc_autoreleasePoolPush();
                v57 = objc_opt_new();
                v86 = 0u;
                v87 = 0u;
                v88 = 0u;
                v89 = 0u;
                emailAddresses2 = [v40 emailAddresses];
                v58 = [emailAddresses2 countByEnumeratingWithState:&v86 objects:v107 count:16];
                if (v58)
                {
                  v59 = v58;
                  v60 = *v87;
                  do
                  {
                    for (k = 0; k != v59; ++k)
                    {
                      if (*v87 != v60)
                      {
                        objc_enumerationMutation(emailAddresses2);
                      }

                      emailAddress = [*(*(&v86 + 1) + 8 * k) emailAddress];
                      v63 = SGNormalizeEmailAddress();
                      [v57 setObject:v41 forKeyedSubscript:v63];
                    }

                    v59 = [emailAddresses2 countByEnumeratingWithState:&v86 objects:v107 count:16];
                  }

                  while (v59);
                }

                kvCacheManager4 = [(SGSqlEntityStore *)self kvCacheManager];
                v65 = [kvCacheManager4 cacheOfType:1];

                v40 = v75;
                recordId3 = [v75 recordId];
                [v65 setValueIfNotPresentWithDict:v57 fromRecordId:recordId3];

                objc_autoreleasePoolPop(contexta);
                v31 = v76;
                v29 = v77;
              }
            }

            else
            {
              v42 = sgLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
              {
                recordId4 = [v34 recordId];
                second4 = [v10 second];
                *buf = 138412546;
                v110 = recordId4;
                v111 = 2112;
                v112 = second4;
                _os_log_fault_impl(&dword_231E60000, v42, OS_LOG_TYPE_FAULT, "Expected the new mergedContact record Id %@ to be %@:", buf, 0x16u);
              }

              v40 = v34;
              if (_PASEvaluateLogFaultAndProbCrashCriteria())
              {
                abort();
              }
            }
          }
        }

        objc_autoreleasePoolPop(v82);
        v9 = v83 + 1;
      }

      while (v83 + 1 != v81);
      v81 = [obj countByEnumeratingWithState:&v101 objects:v114 count:16];
    }

    while (v81);
  }
}

void __71__SGSqlEntityStore_Writing___writeLabeledBlobs_deletedMasterEntityIds___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 48) == 1)
  {
    [v4 bindNamedParam:":masterEntityId" toInt64:-1];
  }

  else
  {
    v3 = [*(a1 + 32) second];
    [v4 bindNamedParam:":masterEntityId" toInt64:{objc_msgSend(v3, "rowId")}];
  }

  [v4 bindNamedParam:":ids" toNSArray:*(a1 + 40)];
  [v4 bindNamedParam:":pseudoContact" toInteger:4];
  [v4 bindNamedParam:":unrecognizedContact" toInteger:12];
}

uint64_t __71__SGSqlEntityStore_Writing___writeLabeledBlobs_deletedMasterEntityIds___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 rowId];

  return [v2 numberWithLongLong:v3];
}

- (id)_labelIdentityBlobs:(id)blobs
{
  v27 = a2;
  v56 = *MEMORY[0x277D85DE8];
  blobsCopy = blobs;
  v32 = objc_opt_new();
  v31 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = blobsCopy;
  v4 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v4)
  {
    v30 = *v51;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v50 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        [SGAggregateLogging identityGroupSize:objc_msgSend_count(v6)];
        anyObject = [v6 anyObject];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v10)
        {
          v11 = *v47;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v47 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v46 + 1) + 8 * j);
              rowId = [v13 rowId];
              if (rowId < [anyObject rowId])
              {
                v15 = v13;

                anyObject = v15;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v10);
        }

        v16 = MEMORY[0x277D42648];
        v17 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(anyObject, "rowId")}];
        v18 = [v16 tupleWithFirst:v9 second:v17];

        [v32 addObject:v18];
        [v31 addIndex:{objc_msgSend(anyObject, "rowId")}];

        objc_autoreleasePoolPop(v7);
      }

      v4 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v4);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  db = self->_db;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke;
  v39[3] = &unk_2789561A8;
  v39[4] = self;
  v20 = v31;
  v40 = v20;
  v41 = &v42;
  [(SGSqliteDatabase *)db readTransaction:v39];
  if (v43[3])
  {
    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_231E60000, v21, OS_LOG_TYPE_FAULT, "While writing blobs, unexpected missing entity ids", buf, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    v22 = objc_opt_new();

    v23 = self->_db;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_367;
    v33[3] = &unk_278954C50;
    v37 = v27;
    v34 = obj;
    selfCopy = self;
    v24 = v22;
    v36 = v24;
    [(SGSqliteDatabase *)v23 readTransaction:v33];
    v25 = v24;
  }

  else
  {
    v25 = v32;
  }

  _Block_object_dispose(&v42, 8);

  return v25;
}

void __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_2;
  v4[3] = &unk_278955E30;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_3;
  v3[3] = &unk_278955EA0;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunSQL:@"SELECT 1 FROM _pas_nsindexset(:ids) i LEFT JOIN entity e on i.value = e.id AND e.entityType = :contact WHERE e.id IS NULL" onPrep:v4 onRow:v3 onError:0];
}

void __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_367(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v2)
  {
    v14 = *v29;
    do
    {
      v3 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * v3);
        v5 = objc_autoreleasePoolPush();
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = -1;
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_2_368;
        v21 = &unk_27894F738;
        v6 = *(a1 + 56);
        v22 = *(a1 + 40);
        v23 = v6;
        v7 = sgMap();
        v8 = *(*(a1 + 40) + 8);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_3_376;
        v16[3] = &unk_278955E30;
        v9 = v7;
        v17 = v9;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_4;
        v15[3] = &unk_278955EA0;
        v15[4] = &v24;
        [v8 prepAndRunSQL:@"SELECT MIN(id) FROM entity WHERE id IN _pas_nsarray(:ids)" onPrep:v16 onRow:v15 onError:0];
        if (v25[3] >= 1)
        {
          v10 = MEMORY[0x277D42648];
          v11 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:?];
          v12 = [v10 tupleWithFirst:v4 second:v11];

          [*(a1 + 48) addObject:v12];
        }

        _Block_object_dispose(&v24, 8);
        objc_autoreleasePoolPop(v5);
        ++v3;
      }

      while (v2 != v3);
      v2 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v2);
  }
}

id __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_2_368(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 tableId])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGSqlEntityStore+Writing.m" lineNumber:1407 description:@"recordId from wrong table"];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "rowId")}];

  return v4;
}

void __49__SGSqlEntityStore_Writing___labelIdentityBlobs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":ids" toNSIndexSet:v2];
  [v3 bindNamedParam:":contact" toInteger:4];
}

- (id)_loadIdentityBlobs
{
  v3 = objc_opt_new();
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SGSqlEntityStore_Writing___loadIdentityBlobs__block_invoke;
  v8[3] = &unk_278955830;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [(SGSqliteDatabase *)db readTransaction:v8];
  v6 = v5;

  return v5;
}

void __47__SGSqlEntityStore_Writing___loadIdentityBlobs__block_invoke(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = -1;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__22534;
  v13[4] = __Block_byref_object_dispose__22535;
  v14 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SGSqlEntityStore_Writing___loadIdentityBlobs__block_invoke_2;
  v9[3] = &unk_27894F460;
  v11 = v15;
  v12 = v13;
  v10 = *(a1 + 32);
  v2 = MEMORY[0x2383809F0](v9);
  v3 = *(*(a1 + 40) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SGSqlEntityStore_Writing___loadIdentityBlobs__block_invoke_4;
  v5[3] = &unk_27894F488;
  v7 = v15;
  v4 = v2;
  v6 = v4;
  v8 = v13;
  [v3 prepAndRunQuery:@"SELECT id onPrep:masterEntityId FROM entity WHERE masterEntityId > 0 AND entityType IN (:pseudo onRow::unrecognized) ORDER BY masterEntityId ASC" onError:{&__block_literal_global_359, v5, 0}];
  (*(v4 + 2))(v4, -1);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
}

uint64_t __47__SGSqlEntityStore_Writing___loadIdentityBlobs__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) >= 1)
  {
    v5 = MEMORY[0x277D42648];
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:?];
    v8 = [v5 tupleWithFirst:v6 second:v7];

    [*(a1 + 32) addObject:v8];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = a2;
  v9 = objc_opt_new();
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8](v9, v11);
}

uint64_t __47__SGSqlEntityStore_Writing___loadIdentityBlobs__block_invoke_4(void *a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sqlite3_column_int64(a2, 0);
  if (sqlite3_column_int64(a2, 1) != *(*(a1[5] + 8) + 24))
  {
    (*(a1[4] + 16))();
  }

  v6 = *(*(a1[6] + 8) + 40);
  v7 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:v5];
  [v6 addObject:v7];

  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t __47__SGSqlEntityStore_Writing___loadIdentityBlobs__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":pseudo" int64:4];

  return [SGSqliteDatabase bindParam:a2 name:":unrecognized" int64:12];
}

- (void)_writeFTSTermsForEnrichment:(id)enrichment entityId:(int64_t)id
{
  v41[4] = *MEMORY[0x277D85DE8];
  enrichmentCopy = enrichment;
  [(SGSqlEntityStore *)self clearMasterEntityCache];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  duplicateKey = [enrichmentCopy duplicateKey];
  [duplicateKey entityType];
  if (SGEntityTypeIsContact())
  {
  }

  else
  {
    duplicateKey2 = [enrichmentCopy duplicateKey];
    [duplicateKey2 entityType];
    IsContactDetail = SGEntityTypeIsContactDetail();

    if (!IsContactDetail)
    {
      goto LABEL_16;
    }
  }

  duplicateKey3 = [enrichmentCopy duplicateKey];
  [duplicateKey3 entityType];
  if (!SGEntityTypeIsContact())
  {
    goto LABEL_8;
  }

  title = [enrichmentCopy title];
  v14 = [title length];

  if (v14)
  {
    title2 = [enrichmentCopy title];
    v16 = [title2 length];

    if (v16)
    {
      duplicateKey3 = [enrichmentCopy title];
      [v7 addObject:duplicateKey3];
LABEL_8:
    }
  }

  v17 = [SGContactDetail contactDetailFromEntity:enrichmentCopy];
  type = [v17 type];
  if (type <= 6)
  {
    if (((1 << type) & 0x6E) != 0)
    {
      value = [v17 value];
      [v8 addObject:value];
    }

    else if (type)
    {
      v26 = [SGSocialProfileDetails alloc];
      value2 = [v17 value];
      value = [(SGSocialProfileDetails *)v26 initWithSerialized:value2];

      if (value)
      {
        displayName = [(SGSocialProfileDetails *)value displayName];
        v41[0] = displayName;
        bundleIdentifier = [(SGSocialProfileDetails *)value bundleIdentifier];
        v41[1] = bundleIdentifier;
        username = [(SGSocialProfileDetails *)value username];
        v41[2] = username;
        service = [(SGSocialProfileDetails *)value service];
        v41[3] = service;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
        [v8 addObjectsFromArray:v30];
      }
    }

    else
    {
      value3 = [v17 value];
      v23 = [value3 containsString:@";"];

      if (v23)
      {
        goto LABEL_13;
      }

      mEMORY[0x277CBDAD0] = [MEMORY[0x277CBDAD0] sharedDefaults];
      countryCode = [mEMORY[0x277CBDAD0] countryCode];
      if (countryCode)
      {
        value = countryCode;
      }

      else
      {
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        value = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

        if (!value)
        {
          goto LABEL_13;
        }
      }

      value4 = [v17 value];
      v33 = _PNCopyIndexStringsForAddressBookSearch();

      if (v33)
      {
        [v7 addObjectsFromArray:v33];
      }
    }
  }

LABEL_13:
  v20 = objc_msgSend_count(v7);
  if (v20 + objc_msgSend_count(v8))
  {
    db = self->_db;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __66__SGSqlEntityStore_Writing___writeFTSTermsForEnrichment_entityId___block_invoke;
    v36[3] = &unk_278954B90;
    v36[4] = self;
    idCopy = id;
    v37 = enrichmentCopy;
    v38 = v7;
    v39 = v8;
    [(SGSqliteDatabase *)db writeTransaction:v36];
  }

LABEL_16:
}

void __66__SGSqlEntityStore_Writing___writeFTSTermsForEnrichment_entityId___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__SGSqlEntityStore_Writing___writeFTSTermsForEnrichment_entityId___block_invoke_2;
  v3[3] = &unk_27894F438;
  v7 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO entity_fts(docid onPrep:entityId onRow:messagingTerms onError:{ftsTerms) VALUES(?, ?, ?, ?)", v3, 0, 0}];
}

void __66__SGSqlEntityStore_Writing___writeFTSTermsForEnrichment_entityId___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  v4 = [*(a1 + 32) duplicateKey];
  [v4 entityType];
  IsContactDetail = SGEntityTypeIsContactDetail();

  if (IsContactDetail)
  {
    v6 = [*(a1 + 32) groupId];
  }

  else
  {
    v6 = *(a1 + 56);
  }

  sqlite3_bind_int64(a2, 2, v6);
  v7 = [*(a1 + 40) _pas_componentsJoinedByString:@" "];
  sqlite3_bind_text(a2, 3, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v9 = [*(a1 + 48) _pas_componentsJoinedByString:@" "];
  v8 = v9;
  sqlite3_bind_text(a2, 4, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_writeContactEntityToJournal:(id)journal
{
  journalCopy = journal;
  masterEntityId = [journalCopy masterEntityId];
  if (!masterEntityId)
  {
    recordId = [journalCopy recordId];
    [journalCopy setMasterEntityId:{objc_msgSend(recordId, "rowId")}];
  }

  v7 = [SGContactEntity contactEntityFromEntity:journalCopy];
  v8 = [SGStorageContact contactFromContactEntity:v7];

  if (!masterEntityId)
  {
    [journalCopy setMasterEntityId:0];
  }

  v9 = [(SGSuggestHistory *)self->_history hasStorageContact:v8];
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Writing contact to journal", v14, 2u);
  }

  if (v9)
  {
    v11 = 13;
  }

  else
  {
    v11 = 11;
  }

  journal = self->_journal;
  v13 = [[SGJournalEntry alloc] initWithOperation:v11 contact:v8];
  [(SGJournal *)journal addEntry:v13];
}

- (void)_writeEventEntityToJournal:(id)journal
{
  journalCopy = journal;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Writing event to journal", v8, 2u);
  }

  journal = self->_journal;
  v7 = [(SGSqlEntityStore *)self _journalEntryFromEntity:journalCopy];

  [(SGJournal *)journal addEntry:v7];
}

- (void)_writeReminderEntitiesToJournal:(id)journal
{
  journalCopy = journal;
  v5 = objc_msgSend_count(journalCopy);
  v6 = sgLogHandle();
  firstObject = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, firstObject, OS_LOG_TYPE_DEBUG, "Writing reminder to journal", buf, 2u);
    }

    journal = self->_journal;
    firstObject = [journalCopy firstObject];
    v9 = [(SGSqlEntityStore *)self _journalEntryFromReminderEntity:firstObject];
    [(SGJournal *)journal addEntry:v9];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_231E60000, firstObject, OS_LOG_TYPE_DEFAULT, "Trying to write multiple reminders to journal, this is not supported", v10, 2u);
  }
}

- (void)_writeEventEntitiesToJournal:(id)journal
{
  v14 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_count(journalCopy);
    v7 = [journalCopy valueForKey:@"loggingIdentifier"];
    v8 = [v7 _pas_componentsJoinedByString:{@", "}];
    *buf = 134218242;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "Writing %lu event entities to journal. [SGEvent (%{public}@)]", buf, 0x16u);
  }

  if (objc_msgSend_count(journalCopy) == 1)
  {
    firstObject = [journalCopy firstObject];
    [(SGSqlEntityStore *)self _writeEventEntityToJournal:firstObject];
  }

  else
  {
    firstObject = sgMap();
    [(SGJournal *)self->_journal addEntries:firstObject];
  }
}

- (id)_journalEntryFromReminderEntity:(id)entity
{
  v3 = [SGStorageReminder storageReminderFromEntity:entity store:self];
  v4 = [[SGJournalEntry alloc] initWithOperation:15 reminder:v3];

  return v4;
}

- (id)_journalEntryFromEntity:(id)entity
{
  entityCopy = entity;
  v5 = [SGStorageEvent storageEventFromEntity:entityCopy];
  isCancelled = [entityCopy isCancelled];

  if (isCancelled)
  {
    v7 = 3;
  }

  else
  {
    v8 = [v5 convertToEvent:self];
    if ([(SGSuggestHistory *)self->_history isConfirmedEvent:v8])
    {
      v7 = 6;
    }

    else if ([(SGSuggestHistory *)self->_history isRejectedEvent:v8])
    {
      v7 = 8;
    }

    else
    {
      v7 = 1;
    }
  }

  v9 = [[SGJournalEntry alloc] initWithOperation:v7 event:v5];

  return v9;
}

- (void)_writeEntityParentageFor:(id)for entityId:(int64_t)id
{
  forCopy = for;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SGSqlEntityStore_Writing___writeEntityParentageFor_entityId___block_invoke;
  v9[3] = &unk_278955958;
  v9[4] = self;
  v10 = forCopy;
  idCopy = id;
  v8 = forCopy;
  [(SGSqliteDatabase *)db writeTransaction:v9];
}

void __63__SGSqlEntityStore_Writing___writeEntityParentageFor_entityId___block_invoke(uint64_t a1)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v37 = *(v3 + 8);
  if (*(v3 + 80) < 0x3Eu)
  {
    v39[0] = @"parentKey";
    v7 = [*(a1 + 40) duplicateKey];
    v5 = [v7 parentKey];
    if (v5)
    {
      v38 = [*(a1 + 40) duplicateKey];
      v35 = [v38 parentKey];
      v8 = [v35 serialize];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB68] null];
      v38 = v8;
    }

    v36 = v8;
    v40[0] = v8;
    v39[1] = @"childId";
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 48)];
    v40[1] = v12;
    v40[2] = @"-";
    v39[2] = @"duplicateKeyHash";
    v39[3] = @"duplicateKeyHashBlob";
    v13 = [*(a1 + 40) duplicateKey];
    v14 = [v13 compositeHash];
    v40[3] = v14;
    v39[4] = @"extractionType";
    v15 = MEMORY[0x277CCABB0];
    v16 = [*(a1 + 40) extractionInfo];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "extractionType")}];
    v40[4] = v17;
    v39[5] = @"sourceKey";
    v18 = [*(a1 + 40) sourceKey];
    if (v18)
    {
      [*(a1 + 40) sourceKey];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v22 = ;
    v40[5] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:6];
    [v37 insertOrReplaceIntoTable:@"entityParentage" dictionary:v23 onError:0];

    if (v5)
    {
LABEL_27:
    }
  }

  else
  {
    v41[0] = @"parentKey";
    v4 = [*(a1 + 40) duplicateKey];
    v5 = [v4 parentKey];
    if (v5)
    {
      v38 = [*(a1 + 40) duplicateKey];
      v35 = [v38 parentKey];
      v6 = [v35 serialize];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB68] null];
      v38 = v6;
    }

    v36 = v6;
    v42[0] = v6;
    v41[1] = @"childId";
    v33 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 48)];
    v42[1] = v33;
    v42[2] = @"-";
    v41[2] = @"duplicateKeyHash";
    v41[3] = @"duplicateKeyHashBlob";
    v32 = [*(a1 + 40) duplicateKey];
    v31 = [v32 compositeHash];
    v42[3] = v31;
    v41[4] = @"extractionType";
    v9 = MEMORY[0x277CCABB0];
    v30 = [*(a1 + 40) extractionInfo];
    v29 = [v9 numberWithUnsignedInteger:{objc_msgSend(v30, "extractionType")}];
    v42[4] = v29;
    v41[5] = @"modelVersion";
    v28 = [*(a1 + 40) extractionInfo];
    v10 = [v28 modelVersion];
    v34 = v4;
    if (v10)
    {
      v27 = [*(a1 + 40) extractionInfo];
      v11 = [v27 modelVersion];
    }

    else
    {
      v11 = &unk_284749AE8;
    }

    v42[5] = v11;
    v41[6] = @"modelConfidence";
    v19 = [*(a1 + 40) extractionInfo];
    v20 = [v19 confidence];
    if (v20)
    {
      v1 = [*(a1 + 40) extractionInfo];
      v21 = [v1 confidence];
    }

    else
    {
      v21 = &unk_28474A3B8;
    }

    v42[6] = v21;
    v41[7] = @"sourceKey";
    v24 = [*(a1 + 40) sourceKey];
    if (v24)
    {
      [*(a1 + 40) sourceKey];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v25 = ;
    v42[7] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:8];
    [v37 insertOrReplaceIntoTable:@"entityParentage" dictionary:v26 onError:0];

    if (v20)
    {
    }

    if (v10)
    {
    }

    v7 = v34;
    if (v5)
    {
      goto LABEL_27;
    }
  }
}

- (int64_t)_writeEnrichmentToDb:(id)db
{
  dbCopy = db;
  duplicateKey = [dbCopy duplicateKey];

  if (!duplicateKey)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:970 description:{@"Invalid parameter not satisfying: %@", @"enrichment.duplicateKey"}];
  }

  duplicateKey2 = [dbCopy duplicateKey];
  [duplicateKey2 entityType];
  IsMessage = SGEntityTypeIsMessage();

  if (IsMessage)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:972 description:@"Writing message entity via legacy code path"];
  }

  [(SGSqlEntityStore *)self clearMasterEntityCache];
  [(SGSqlEntityStore *)self _addIndexingTagsTo:dbCopy];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = -1;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = -1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__22534;
  v44 = __Block_byref_object_dispose__22535;
  v45 = @"SELECT e.id, e.masterEntityId, e.creationTimestamp, e.updateTimestamp FROM entity AS e INNER JOIN entityParentage AS ep ON e.id = ep.childId WHERE (ep.duplicateKeyHashBlob = :duplicateKeyHash AND ep.extractionType = :extractionType)";
  contentHash = [dbCopy contentHash];

  if (contentHash)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v41[5] stringByAppendingString:{@" UNION SELECT e.id, e.masterEntityId, e.creationTimestamp, e.updateTimestamp FROM entity AS e WHERE e.contentHashBlob = :contentHash"}];
    v12 = v41[5];
    v41[5] = v11;

    objc_autoreleasePoolPop(v10);
  }

  db = self->_db;
  v14 = v41[5];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke;
  v38[3] = &unk_278956070;
  v15 = dbCopy;
  v39 = v15;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_2;
  v37[3] = &unk_27894F3C0;
  v37[4] = &v54;
  v37[5] = &v50;
  v37[6] = &v46;
  [(SGSqliteDatabase *)db prepAndRunQuery:v14 onPrep:v38 onRow:v37 onError:0];
  duplicateKey3 = [v15 duplicateKey];
  [duplicateKey3 entityType];
  if (SGEntityTypeIsContact() && ![v15 masterEntityId])
  {
    v29 = v51[3];

    if (v29 != -1)
    {
      [v15 setMasterEntityId:v51[3]];
      v17 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = 1;
LABEL_11:
  [v15 creationTimestamp];
  v19 = v18;
  [v15 lastModifiedTimestamp];
  if (v55[3] == -1 || ((v21 = fmax(v19, v20), v22 = v47[3], v22 != v21) ? (v23 = 1) : (v23 = v17), v22 <= v21 && (v23 & 1) != 0))
  {
    if ([v15 masterEntityId])
    {
      -[SGSqlEntityStore deleteSerializedContactForId:](self, "deleteSerializedContactForId:", [v15 masterEntityId]);
      -[SGSqlEntityStore deleteAllCNContactMatchesForEntityID:](self, "deleteAllCNContactMatchesForEntityID:", [v15 masterEntityId]);
    }

    v24 = self->_db;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_3;
    v32[3] = &unk_278956180;
    v35 = &v54;
    v25 = v15;
    v33 = v25;
    selfCopy = self;
    v36 = &v40;
    [(SGSqliteDatabase *)v24 writeTransaction:v32];
    [(SGSqlEntityStore *)self _contentWriteEnrichmentToDb:v25];
    v26 = v55[3];
  }

  else
  {
    [(SGSqlEntityStore *)self _writeEntityParentageFor:v15 entityId:?];
    v27 = [MEMORY[0x277D020C8] recordIdWithTableId:0 rowId:v55[3]];
    [v15 setRecordId:v27];

    v26 = v55[3];
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  return v26;
}

void __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) duplicateKey];
  v5 = [v4 compositeHash];
  [SGSqliteDatabase bindParam:a2 name:":duplicateKeyHash" nsdata:v5];

  v6 = [*(a1 + 32) extractionInfo];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":extractionType", [v6 extractionType]);

  v7 = [*(a1 + 32) contentHash];

  if (v7)
  {
    v8 = [*(a1 + 32) contentHash];
    [SGSqliteDatabase bindParam:a2 name:":contentHash" nsdata:v8];
  }
}

uint64_t __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  *(*(a1[4] + 8) + 24) = sqlite3_column_int64(a2, 0);
  *(*(a1[5] + 8) + 24) = sqlite3_column_int64(a2, 1);
  v4 = sqlite3_column_double(a2, 2);
  *(*(a1[6] + 8) + 24) = fmax(v4, sqlite3_column_double(a2, 3));
  return 1;
}

void __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_3(uint64_t a1)
{
  v84[17] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 timeIntervalSince1970];
  v4 = v3;

  context = objc_autoreleasePoolPush();
  v83[0] = @"id";
  if (*(*(*(a1 + 48) + 8) + 24) == -1)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithLongLong:?];
  }
  v70 = ;
  v84[0] = v70;
  v83[1] = @"entityKey";
  v69 = [*(a1 + 32) duplicateKey];
  v68 = [v69 entityKey];
  v67 = [v68 serialize];
  v84[1] = v67;
  v83[2] = @"entityType";
  v5 = MEMORY[0x277CCABB0];
  v66 = [*(a1 + 32) duplicateKey];
  v65 = [v5 numberWithLongLong:{objc_msgSend(v66, "entityType")}];
  v84[2] = v65;
  v83[3] = @"author";
  v64 = [*(a1 + 32) author];
  v6 = [v64 sg_serialized];
  v73 = a1;
  v63 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_284703F00;
  }

  v84[3] = v7;
  v83[4] = @"title";
  v8 = [*(a1 + 32) title];
  v62 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_284703F00;
  }

  v84[4] = v9;
  v83[5] = @"creationTimestamp";
  v10 = MEMORY[0x277CCABB0];
  [*(a1 + 32) creationTimestamp];
  v61 = [v10 numberWithDouble:?];
  v84[5] = v61;
  v83[6] = @"updateTimestamp";
  v11 = MEMORY[0x277CCABB0];
  [*(a1 + 32) lastModifiedTimestamp];
  v60 = [v11 numberWithDouble:?];
  v84[6] = v60;
  v83[7] = @"tags";
  v59 = [*(a1 + 32) tags];
  v12 = SGEntityTagsForStorage(v59);
  v58 = v12;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_284703F00;
  }

  v84[7] = v13;
  v83[8] = @"structuredData";
  v14 = [*(a1 + 32) structuredData];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v55 = v14;
  v84[8] = v14;
  v83[9] = @"state";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "state")}];
  v84[9] = v57;
  v83[10] = @"indexTimestamp";
  v56 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v84[10] = v56;
  v83[11] = @"lastSeenTimestamp";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v84[11] = v16;
  v83[12] = @"masterEntityId";
  v17 = MEMORY[0x277CCABB0];
  v18 = [*(a1 + 32) masterEntityId];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = -1;
  }

  v20 = [v17 numberWithLongLong:v19];
  v84[12] = v20;
  v83[13] = @"groupId";
  v21 = MEMORY[0x277CCABB0];
  v22 = [*(a1 + 32) groupId];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = -1;
  }

  v24 = [v21 numberWithLongLong:v23];
  v84[13] = v24;
  v83[14] = @"contentHashBlob";
  v25 = [*(a1 + 32) contentHash];
  v26 = v25;
  if (!v25)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v84[14] = v26;
  v83[15] = @"pendingGeocode";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "pendingGeocode")}];
  v84[15] = v27;
  v83[16] = @"harvestedOnBuild";
  v28 = [MEMORY[0x277D42598] currentOsBuild];
  v84[16] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:17];
  v72 = [v29 mutableCopy];

  if (!v25)
  {
  }

  if (!v15)
  {
  }

  objc_autoreleasePoolPop(context);
  v30 = *(a1 + 40);
  v31 = [*(a1 + 32) timeRange];
  [v30 _addTimeRange:v31 toEntityWriteDictionary:v72];

  v32 = *(a1 + 40);
  v33 = [*(a1 + 32) locations];
  [v32 _addLocations:v33 toEntityWriteDictionary:v72];

  [*(*(a1 + 40) + 8) insertOrReplaceIntoTable:@"entity" dictionary:v72 onError:0];
  *(*(*(a1 + 48) + 8) + 24) = sqlite3_last_insert_rowid([*(*(a1 + 40) + 8) handle]);
  v34 = [MEMORY[0x277D020C8] recordIdWithTableId:0 rowId:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 32) setRecordId:v34];

  [*(a1 + 40) _writeEnrichmentToSnippetsDb:*(a1 + 32)];
  v35 = *(*(a1 + 56) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = @"DELETE FROM entityTags WHERE entityKey = :entityKey AND entityType = :entityType AND parentKey ";

  v37 = [*(a1 + 32) duplicateKey];
  v38 = [v37 parentKey];

  if (v38)
  {
    v39 = @" = :parentKey";
  }

  else
  {
    v39 = @" is NULL";
  }

  v40 = [*(*(*(a1 + 56) + 8) + 40) stringByAppendingString:v39];
  v41 = *(*(a1 + 56) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v40;

  v43 = *(*(a1 + 40) + 8);
  v44 = *(*(*(a1 + 56) + 8) + 40);
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_4;
  v80[3] = &unk_278956070;
  v81 = *(a1 + 32);
  [v43 prepAndRunQuery:v44 onPrep:v80 onRow:0 onError:0];
  v45 = *(*(a1 + 56) + 8);
  v46 = *(v45 + 40);
  *(v45 + 40) = @"INSERT INTO entityTags (tag, entityKey, entityType, parentKey, duplicateKeyHash, duplicateKeyHashBlob) VALUES (:tag, :entityKey, :entityType, :parentKey, '-', :duplicateKeyHash)";

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v47 = [*(a1 + 32) tags];
  v48 = [v47 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v77;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v77 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v76 + 1) + 8 * i);
        if ([v52 indexed])
        {
          v53 = *(*(v73 + 40) + 8);
          v54 = *(*(*(v73 + 56) + 8) + 40);
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_5;
          v74[3] = &unk_278954630;
          v74[4] = v52;
          v75 = *(v73 + 32);
          [v53 prepAndRunQuery:v54 onPrep:v74 onRow:0 onError:0];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v49);
  }

  [*(v73 + 40) _writeEntityParentageFor:*(v73 + 32) entityId:*(*(*(v73 + 48) + 8) + 24)];
  [*(v73 + 40) _writeFTSTermsForEnrichment:*(v73 + 32) entityId:*(*(*(v73 + 48) + 8) + 24)];
}

void __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) duplicateKey];
  v5 = [v4 entityKey];
  v6 = [v5 serialize];
  [SGSqliteDatabase bindParam:a2 name:":entityKey" nsstring:v6];

  v7 = [*(a1 + 32) duplicateKey];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":entityType", [v7 entityType]);

  v8 = [*(a1 + 32) duplicateKey];
  v9 = [v8 parentKey];

  if (v9)
  {
    v12 = [*(a1 + 32) duplicateKey];
    v10 = [v12 parentKey];
    v11 = [v10 serialize];
    [SGSqliteDatabase bindParam:a2 name:":parentKey" nsstring:v11];
  }
}

void __50__SGSqlEntityStore_Writing___writeEnrichmentToDb___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) name];
  [SGSqliteDatabase bindParam:a2 name:":tag" nsstring:v4];

  v5 = [*(a1 + 40) duplicateKey];
  v6 = [v5 entityKey];
  v7 = [v6 serialize];
  [SGSqliteDatabase bindParam:a2 name:":entityKey" nsstring:v7];

  v8 = [*(a1 + 40) duplicateKey];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":entityType", [v8 entityType]);

  v9 = [*(a1 + 40) duplicateKey];
  v10 = [v9 parentKey];
  v11 = [v10 serialize];
  [SGSqliteDatabase bindParam:a2 name:":parentKey" nsstring:v11];

  v13 = [*(a1 + 40) duplicateKey];
  v12 = [v13 compositeHash];
  [SGSqliteDatabase bindParam:a2 name:":duplicateKeyHash" nsdata:v12];
}

- (void)_contentWriteEnrichmentToDb:(id)db
{
  dbCopy = db;
  duplicateKey = [dbCopy duplicateKey];
  entityType = [duplicateKey entityType];

  if (entityType == 22)
  {
    v6 = [SGStorageReminder storageReminderFromEntity:dbCopy store:self];
    [v6 commitWithStore:self];
  }

  else
  {
    duplicateKey2 = [dbCopy duplicateKey];
    [duplicateKey2 entityType];
    IsEvent = SGEntityTypeIsEvent();

    if (!IsEvent)
    {
      goto LABEL_6;
    }

    v6 = [SGStorageEvent storageEventFromEntity:dbCopy];
    [(SGSqlEntityStore *)self commitEvent:v6];
  }

LABEL_6:
}

- (int64_t)_writeOneEntityToDb:(id)db
{
  dbCopy = db;
  duplicateKey = [dbCopy duplicateKey];

  if (!duplicateKey)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:945 description:{@"Invalid parameter not satisfying: %@", @"entity.duplicateKey"}];
  }

  duplicateKey2 = [dbCopy duplicateKey];
  [duplicateKey2 entityType];
  IsMessage = SGEntityTypeIsMessage();

  if ((IsMessage & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:947 description:@"Writing enrichment via legacy code path"];
  }

  v9 = [(SGSqlEntityStore *)self _writeMessageEntityToDb:dbCopy];
  [(SGSqlEntityStore *)self _emitChangeNotifications:dbCopy];

  return v9;
}

- (int64_t)_writeMessageEntityToDb:(id)db
{
  dbCopy = db;
  [(SGSqlEntityStore *)self _addIndexingTagsToParent:dbCopy];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = -1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  state = [dbCopy state];
  switch(state)
  {
    case 1:
      [SGAggregateLogging messagesAdded:1];
      break;
    case 2:
      [SGAggregateLogging messagesDeleted:1];
      break;
    case 3:
      [SGAggregateLogging messagesLost:1];
      break;
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__22534;
  v23[4] = __Block_byref_object_dispose__22535;
  v24 = @"SELECT id, creationTimestamp, updateTimestamp, downloadState FROM emailMetadata WHERE key = :key AND type = :type";
  db = self->_db;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke;
  v21[3] = &unk_278956070;
  v7 = dbCopy;
  v22 = v7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_2;
  v20[3] = &unk_27894F3C0;
  v20[4] = &v33;
  v20[5] = &v29;
  v20[6] = &v25;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT id onPrep:creationTimestamp onRow:updateTimestamp onError:downloadState FROM emailMetadata WHERE key = :key AND type = :type", v21, v20, 0];
  if (v34[3] == -1 || (v8 = v30[3], [v7 creationTimestamp], v10 = v9, objc_msgSend(v7, "lastModifiedTimestamp"), v8 <= fmax(v10, v11)))
  {
    if (!*(v26 + 6) && [v7 hasFullDownloadBeenRequested])
    {
      *(v26 + 6) = 1;
    }

    v13 = self->_db;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_3;
    v15[3] = &unk_27894F3E8;
    v15[4] = self;
    v17 = &v33;
    v16 = v7;
    v18 = &v25;
    v19 = v23;
    [(SGSqliteDatabase *)v13 writeTransaction:v15];
    v12 = v34[3];
  }

  else
  {
    v12 = v34[3];
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v12;
}

void __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) duplicateKey];
  v5 = [v4 messageKey];
  v6 = [v5 serialize];
  [SGSqliteDatabase bindParam:a2 name:":key" nsstring:v6];

  v7 = [*(a1 + 32) duplicateKey];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":type", [v7 entityType]);
}

uint64_t __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  *(*(a1[4] + 8) + 24) = sqlite3_column_int64(a2, 0);
  v4 = sqlite3_column_double(a2, 1);
  *(*(a1[5] + 8) + 24) = fmax(v4, sqlite3_column_double(a2, 2));
  *(*(a1[6] + 8) + 24) = sqlite3_column_int(a2, 3);
  return 1;
}

void __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_3(uint64_t a1)
{
  v61[14] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 timeIntervalSince1970];
  v4 = v3;

  v43 = *(*(a1 + 32) + 8);
  v60[0] = @"id";
  if (*(*(*(a1 + 48) + 8) + 24) == -1)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithLongLong:?];
  }
  obj = ;
  v61[0] = obj;
  v60[1] = @"key";
  v47 = [*(a1 + 40) duplicateKey];
  v46 = [v47 messageKey];
  v45 = [v46 serialize];
  v61[1] = v45;
  v60[2] = @"type";
  v5 = MEMORY[0x277CCABB0];
  v44 = [*(a1 + 40) duplicateKey];
  v42 = [v5 numberWithLongLong:{objc_msgSend(v44, "entityType")}];
  v61[2] = v42;
  v60[3] = @"sourceKey";
  v6 = [*(a1 + 40) sourceKey];
  v41 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v36 = v6;
  v61[3] = v6;
  v60[4] = @"author";
  v40 = [*(a1 + 40) author];
  v7 = [v40 sg_serialized];
  v39 = v7;
  v8 = &stru_284703F00;
  if (v7)
  {
    v8 = v7;
  }

  v61[4] = v8;
  v60[5] = @"creationTimestamp";
  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 40) creationTimestamp];
  v38 = [v9 numberWithDouble:?];
  v61[5] = v38;
  v60[6] = @"updateTimestamp";
  v10 = MEMORY[0x277CCABB0];
  [*(a1 + 40) lastModifiedTimestamp];
  v37 = [v10 numberWithDouble:?];
  v61[6] = v37;
  v60[7] = @"indexTimestamp";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v61[7] = v11;
  v60[8] = @"lastSeenTimestamp";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v61[8] = v12;
  v60[9] = @"tags";
  v13 = [*(a1 + 40) tags];
  v14 = SGEntityTagsForStorage(v13);
  v61[9] = v14;
  v60[10] = @"state";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "state")}];
  v61[10] = v15;
  v60[11] = @"downloadState";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 56) + 8) + 24)];
  v61[11] = v16;
  v60[12] = @"harvestedOnBuild";
  v17 = [MEMORY[0x277D42598] currentOsBuild];
  v61[12] = v17;
  v60[13] = @"pendingVerification";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "pendingVerification")}];
  v61[13] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:14];
  [v43 insertOrReplaceIntoTable:@"emailMetadata" dictionary:v19 onError:0];

  if (!v41)
  {
  }

  *(*(*(a1 + 48) + 8) + 24) = sqlite3_last_insert_rowid([*(*(a1 + 32) + 8) handle]);
  v20 = [MEMORY[0x277D020C8] recordIdForEmailWithRowId:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 40) setRecordId:v20];

  v21 = [*(a1 + 40) duplicateKey];
  [v21 entityType];
  HasSnippetData = SGEntityTypeHasSnippetData();

  if (HasSnippetData)
  {
    [*(a1 + 32) _writeMessageEntityToSnippetsDb:*(a1 + 40)];
  }

  v23 = *(*(a1 + 64) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = @"DELETE FROM emailTags WHERE unlikely(key = :key)";

  v25 = *(*(a1 + 32) + 8);
  v26 = *(*(*(a1 + 64) + 8) + 40);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_4;
  v57[3] = &unk_278956070;
  v58 = *(a1 + 40);
  [v25 prepAndRunQuery:v26 onPrep:v57 onRow:0 onError:0];
  v27 = *(*(a1 + 64) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = @"INSERT INTO emailTags (key, type, tag) VALUES (:key, :type, :tag)";

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obja = [*(a1 + 40) tags];
  v29 = [obja countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v54;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v54 != v31)
        {
          objc_enumerationMutation(obja);
        }

        v33 = *(*(&v53 + 1) + 8 * i);
        v34 = *(*(a1 + 32) + 8);
        v35 = *(*(*(a1 + 64) + 8) + 40);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_5;
        v50[3] = &unk_278954630;
        v51 = *(a1 + 40);
        v52 = v33;
        [v34 prepAndRunQuery:v35 onPrep:v50 onRow:0 onError:0];
      }

      v30 = [obja countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v30);
  }
}

void __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) duplicateKey];
  v3 = [v5 messageKey];
  v4 = [v3 serialize];
  [SGSqliteDatabase bindParam:a2 name:":key" nsstring:v4];
}

void __53__SGSqlEntityStore_Writing___writeMessageEntityToDb___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) duplicateKey];
  v5 = [v4 messageKey];
  v6 = [v5 serialize];
  [SGSqliteDatabase bindParam:a2 name:":key" nsstring:v6];

  v7 = [*(a1 + 32) duplicateKey];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":type", [v7 entityType]);

  v8 = [*(a1 + 40) name];
  [SGSqliteDatabase bindParam:a2 name:":tag" nsstring:v8];
}

- (void)markEntityAsDupeByRecordId:(id)id
{
  v14[2] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v13[0] = @"id";
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(idCopy, "rowId")}];
  v13[1] = @"curatedDupe";
  v14[0] = v5;
  v14[1] = &unk_284749B00;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SGSqlEntityStore_Writing__markEntityAsDupeByRecordId___block_invoke;
  v10[3] = &unk_278956130;
  v10[4] = self;
  v11 = idCopy;
  v12 = v6;
  v8 = v6;
  v9 = idCopy;
  [(SGSqliteDatabase *)db writeTransaction:v10];
}

void __56__SGSqlEntityStore_Writing__markEntityAsDupeByRecordId___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SGSqlEntityStore_Writing__markEntityAsDupeByRecordId___block_invoke_2;
  v5[3] = &unk_278956070;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SGSqlEntityStore_Writing__markEntityAsDupeByRecordId___block_invoke_3;
  v4[3] = &unk_278954658;
  v4[4] = &v7;
  [v2 prepAndRunQuery:@"SELECT curatedDupe FROM entity WHERE id = :id" onPrep:v5 onRow:v4 onError:0];
  if ((v8[3] & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"id = %lld", objc_msgSend(*(a1 + 40), "rowId")];
    [*(*(a1 + 32) + 8) updateTable:@"entity" dictionary:*(a1 + 48) whereClause:v3 onError:0];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __56__SGSqlEntityStore_Writing__markEntityAsDupeByRecordId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rowId];

  return [SGSqliteDatabase bindParam:a2 name:":id" int64:v3];
}

- (void)writeEmailVerificationResultForEmailWithKey:(id)key eventEntities:(id)entities
{
  keyCopy = key;
  entitiesCopy = entities;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__SGSqlEntityStore_Writing__writeEmailVerificationResultForEmailWithKey_eventEntities___block_invoke;
  v11[3] = &unk_278956130;
  v12 = keyCopy;
  selfCopy = self;
  v14 = entitiesCopy;
  v9 = entitiesCopy;
  v10 = keyCopy;
  [(SGSqliteDatabase *)db writeTransaction:v11];
}

void __87__SGSqlEntityStore_Writing__writeEmailVerificationResultForEmailWithKey_eventEntities___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = sgEventsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "Removing pendingVerification flag from %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 40) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SGSqlEntityStore_Writing__writeEmailVerificationResultForEmailWithKey_eventEntities___block_invoke_184;
  v10[3] = &unk_278955E30;
  v11 = *(a1 + 32);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __87__SGSqlEntityStore_Writing__writeEmailVerificationResultForEmailWithKey_eventEntities___block_invoke_2;
  v8 = &unk_278956108;
  v9 = *(a1 + 32);
  [v4 prepAndRunSQL:@"UPDATE emailMetadata SET pendingVerification = :pendingVerification WHERE key = :key" onPrep:v10 onRow:0 onError:&v5];
  [*(a1 + 40) _writeEventEntitiesToJournal:{*(a1 + 48), v5, v6, v7, v8}];
}

void __87__SGSqlEntityStore_Writing__writeEmailVerificationResultForEmailWithKey_eventEntities___block_invoke_184(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":pendingVerification" toInteger:0];
  v4 = [*(a1 + 32) serialize];
  [v3 bindNamedParam:":key" toNSString:v4];
}

uint64_t __87__SGSqlEntityStore_Writing__writeEmailVerificationResultForEmailWithKey_eventEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "Error removing pendingVerification flag from %@: %@", &v7, 0x16u);
  }

  return *MEMORY[0x277D42698];
}

- (void)writeEntityGeocodeResultToDb:(id)db
{
  v19[2] = *MEMORY[0x277D85DE8];
  dbCopy = db;
  v18[0] = @"id";
  v5 = MEMORY[0x277CCABB0];
  recordId = [dbCopy recordId];
  v7 = [v5 numberWithLongLong:{objc_msgSend(recordId, "rowId")}];
  v18[1] = @"pendingGeocode";
  v19[0] = v7;
  v19[1] = &unk_284749AE8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v9 = [v8 mutableCopy];

  timeRange = [dbCopy timeRange];
  [(SGSqlEntityStore *)self _addTimeRange:timeRange toEntityWriteDictionary:v9];

  locations = [dbCopy locations];
  [(SGSqlEntityStore *)self _addLocations:locations toEntityWriteDictionary:v9];

  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__SGSqlEntityStore_Writing__writeEntityGeocodeResultToDb___block_invoke;
  v15[3] = &unk_278956130;
  v15[4] = self;
  v16 = dbCopy;
  v17 = v9;
  v13 = v9;
  v14 = dbCopy;
  [(SGSqliteDatabase *)db writeTransaction:v15];
}

void __58__SGSqlEntityStore_Writing__writeEntityGeocodeResultToDb___block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SGSqlEntityStore_Writing__writeEntityGeocodeResultToDb___block_invoke_2;
  v7[3] = &unk_278956070;
  v8 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SGSqlEntityStore_Writing__writeEntityGeocodeResultToDb___block_invoke_3;
  v6[3] = &unk_278954658;
  v6[4] = &v9;
  [v2 prepAndRunQuery:@"SELECT pendingGeocode FROM entity WHERE id = :id" onPrep:v7 onRow:v6 onError:0];
  if (*(v10 + 24) == 1)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [*(a1 + 40) recordId];
    v5 = [v3 initWithFormat:@"id = %lld", objc_msgSend(v4, "rowId")];

    [*(*(a1 + 32) + 8) updateTable:@"entity" dictionary:*(a1 + 48) whereClause:v5 onError:0];
    [*(a1 + 32) _writeEventEntityToJournal:*(a1 + 40)];
  }

  _Block_object_dispose(&v9, 8);
}

void __58__SGSqlEntityStore_Writing__writeEntityGeocodeResultToDb___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) recordId];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":id", [v3 rowId]);
}

- (void)_addLocations:(id)locations toEntityWriteDictionary:(id)dictionary
{
  locationsCopy = locations;
  dictionaryCopy = dictionary;
  if (objc_msgSend_count(locationsCopy))
  {
    [dictionaryCopy setObject:locationsCopy forKeyedSubscript:@"locations"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [dictionaryCopy setObject:null forKeyedSubscript:@"locations"];
  }
}

- (void)_addTimeRange:(id)range toEntityWriteDictionary:(id)dictionary
{
  v5 = MEMORY[0x277CCABB0];
  dictionaryCopy = dictionary;
  rangeCopy = range;
  [rangeCopy start];
  v8 = [v5 numberWithDouble:?];
  [dictionaryCopy setObject:v8 forKeyedSubscript:@"timeRangeStart"];

  v9 = MEMORY[0x277CCABB0];
  [rangeCopy end];
  v10 = [v9 numberWithDouble:?];
  [dictionaryCopy setObject:v10 forKeyedSubscript:@"timeRangeEnd"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(rangeCopy, "startUTCOffsetSeconds")}];
  [dictionaryCopy setObject:v11 forKeyedSubscript:@"timeRangeStartUTCOffsetSeconds"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(rangeCopy, "endUTCOffsetSeconds")}];
  [dictionaryCopy setObject:v12 forKeyedSubscript:@"timeRangeEndUTCOffsetSeconds"];

  v13 = MEMORY[0x277CCABB0];
  isFloating = [rangeCopy isFloating];

  v15 = [v13 numberWithBool:isFloating];
  [dictionaryCopy setObject:v15 forKeyedSubscript:@"floatingRange"];
}

- (void)_writeEnrichmentToSnippetsDb:(id)db
{
  dbCopy = db;
  duplicateKey = [dbCopy duplicateKey];
  [duplicateKey entityType];
  IsMessage = SGEntityTypeIsMessage();

  if (IsMessage)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:740 description:@"_writeEntityToSnippetsDb received message entity type"];
  }

  v7 = objc_opt_new();
  v8 = MEMORY[0x277CCABB0];
  recordId = [dbCopy recordId];
  v10 = [v8 numberWithLongLong:{objc_msgSend(recordId, "rowId")}];
  [v7 setObject:v10 forKeyedSubscript:@":entityId"];

  content = [dbCopy content];

  if (content)
  {
    [dbCopy content];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v12 = ;
  [v7 setObject:v12 forKeyedSubscript:@":content"];

  if ([dbCopy contentRangeOfInterest] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v18.location = [dbCopy contentRangeOfInterest];
    NSStringFromRange(v18);
  }
  v13 = ;
  [v7 setObject:v13 forKeyedSubscript:@":range"];

  null = [MEMORY[0x277CBEB68] null];
  [v7 setObject:null forKeyedSubscript:@":title"];

  [(SGDatabaseJournal *)self->_snippetsJournal runQuery:@"INSERT OR REPLACE INTO snippets (entityId values:content onDb:contentRangeOfInterest, title) VALUES (:entityId, :content, :range, :title)", v7, self->_snippetDb];
}

- (void)_writeMessageEntityToSnippetsDb:(id)db
{
  dbCopy = db;
  duplicateKey = [dbCopy duplicateKey];
  [duplicateKey entityType];
  IsMessage = SGEntityTypeIsMessage();

  if ((IsMessage & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    duplicateKey2 = [dbCopy duplicateKey];
    [duplicateKey2 entityType];
    v19 = SGEntityTypeDescription();
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:709 description:{@"_writeMessageEntityToSnippetsDb received entity type %@", v19}];
  }

  v7 = objc_opt_new();
  v8 = MEMORY[0x277CCABB0];
  recordId = [dbCopy recordId];
  v10 = [v8 numberWithLongLong:{objc_msgSend(recordId, "rowId")}];
  [v7 setObject:v10 forKeyedSubscript:@":emailId"];

  snippetsContent = [dbCopy snippetsContent];

  if (snippetsContent)
  {
    snippetsContent2 = [dbCopy snippetsContent];
  }

  else
  {
    content = [dbCopy content];

    if (content)
    {
      [dbCopy content];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    snippetsContent2 = ;
  }

  v14 = snippetsContent2;
  [v7 setObject:snippetsContent2 forKeyedSubscript:@":content"];

  title = [dbCopy title];
  if (title)
  {
    [v7 setObject:title forKeyedSubscript:@":title"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v7 setObject:null forKeyedSubscript:@":title"];
  }

  [(SGDatabaseJournal *)self->_snippetsJournal runQuery:@"INSERT OR REPLACE INTO emailSnippets (emailId values:content onDb:title) VALUES (:emailId, :content, :title)", v7, self->_snippetDb];
}

- (BOOL)entityWantsFullDownload:(id)download
{
  downloadCopy = download;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SGSqlEntityStore_Writing__entityWantsFullDownload___block_invoke;
  v9[3] = &unk_278956070;
  v6 = downloadCopy;
  v10 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SGSqlEntityStore_Writing__entityWantsFullDownload___block_invoke_2;
  v8[3] = &unk_278954658;
  v8[4] = &v11;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT e.downloadState FROM entity AS e INNER JOIN entityParentage AS ep ON e.id = ep.childId WHERE ep.duplicateKeyHashBlob = :duplicateKeyHash AND ep.extractionType = :extractionType" onPrep:v9 onRow:v8 onError:0];
  LOBYTE(db) = *(v12 + 6) == 1;

  _Block_object_dispose(&v11, 8);
  return db;
}

void __53__SGSqlEntityStore_Writing__entityWantsFullDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) duplicateKey];
  v5 = [v4 compositeHash];
  [SGSqliteDatabase bindParam:a2 name:":duplicateKeyHash" nsdata:v5];

  v6 = [*(a1 + 32) extractionInfo];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":extractionType", [v6 extractionType]);
}

- (id)_computePseudoContactContentHash:(id)hash contactDetails:(id)details
{
  v33 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  detailsCopy = details;
  v9 = detailsCopy;
  if (hashCopy)
  {
    if (detailsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"contactEntity"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:661 description:{@"Invalid parameter not satisfying: %@", @"contactDetails"}];

LABEL_3:
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_112];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:objc_msgSend_count(v9) + 1];
  title = [hashCopy title];
  v13 = title;
  if (title)
  {
    v14 = title;
  }

  else
  {
    v14 = &stru_284703F00;
  }

  [v11 addObject:v14];

  duplicateKey = [hashCopy duplicateKey];
  identityKey = [duplicateKey identityKey];
  uniqueIdentifier = [identityKey uniqueIdentifier];
  [v11 addObject:uniqueIdentifier];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        normalizedValue = [*(*(&v28 + 1) + 8 * i) normalizedValue];
        [v11 addObject:normalizedValue];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  v24 = SGSha256BytesForStrings(v11, 0);

  return v24;
}

uint64_t __77__SGSqlEntityStore_Writing___computePseudoContactContentHash_contactDetails___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 duplicateKey];
  v7 = [v6 entityType];

  v8 = [v5 duplicateKey];
  v9 = [v8 entityType];

  if (v7 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v7 == v9)
  {
    v11 = [v4 normalizedValue];
    v12 = [v5 normalizedValue];
    v10 = [v11 compare:v12];
  }

  return v10;
}

- (void)_dumpTable:(id)table columns:(id)columns limitTo:(int)to
{
  tableCopy = table;
  columnsCopy = columns;
  NSLog(@"Dump table %@:", tableCopy);
  v10 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  toCopy = to;
  v11 = @"SELECT ";
  while (objc_msgSend_count(columnsCopy) > v10)
  {
    v12 = [columnsCopy objectAtIndexedSubscript:v10];
    v13 = [(__CFString *)v11 stringByAppendingString:v12];

    if (objc_msgSend_count(columnsCopy) - 1 > v10)
    {
      v14 = [(__CFString *)v13 stringByAppendingString:@", "];

      v13 = v14;
    }

    ++v10;
    v11 = v13;
  }

  tableCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" FROM %@", tableCopy];
  v16 = [(__CFString *)v11 stringByAppendingString:tableCopy];

  db = self->_db;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__SGSqlEntityStore_Writing___dumpTable_columns_limitTo___block_invoke;
  v19[3] = &unk_278955878;
  v18 = columnsCopy;
  v20 = v18;
  v21 = v22;
  [(SGSqliteDatabase *)db prepAndRunQuery:v16 onPrep:0 onRow:v19 onError:0];

  _Block_object_dispose(v22, 8);
}

uint64_t __56__SGSqlEntityStore_Writing___dumpTable_columns_limitTo___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  if (objc_msgSend_count(*(a1 + 32)))
  {
    v5 = 0;
    v6 = &stru_284703F00;
    do
    {
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = sqlite3_column_nsstring(a2, v5);
      v9 = [v7 initWithFormat:@"%@    ", v8];
      v10 = [(__CFString *)v6 stringByAppendingString:v9];

      ++v5;
      v6 = v10;
    }

    while (objc_msgSend_count(*(a1 + 32)) > v5);
  }

  else
  {
    v10 = &stru_284703F00;
  }

  NSLog(@"%@", v10);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 24);
  if (v12 <= 0)
  {
    v13 = &SGSqliteDatabaseStop;
  }

  else
  {
    *(v11 + 24) = v12 - 1;
    v13 = &SGSqliteDatabaseKeepGoing;
  }

  return *v13;
}

- (void)_addIndexingTagsToParent:(id)parent
{
  v18 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  [(SGSqlEntityStore *)self _addIndexingTagsTo:parentCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  enrichments = [parentCopy enrichments];
  v6 = [enrichments countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(enrichments);
        }

        v10 = MEMORY[0x277D01FA0];
        duplicateKey = [*(*(&v13 + 1) + 8 * v9) duplicateKey];
        v12 = [v10 containsEntityExtraction:{objc_msgSend(duplicateKey, "entityType")}];
        [parentCopy addTag:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [enrichments countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_addIndexingTagsTo:(id)to
{
  v58 = *MEMORY[0x277D85DE8];
  toCopy = to;
  duplicateKey = [toCopy duplicateKey];
  entityType = [duplicateKey entityType];

  if (SGEntityTypeIsContactDetail())
  {
    duplicateKey2 = [toCopy duplicateKey];
    v8 = SGEntityTypeToContactDetailType([duplicateKey2 entityType]);

    duplicateKey6 = 0;
    if (v8 <= 2)
    {
      switch(v8)
      {
        case 0:
          v19 = MEMORY[0x277D01FA0];
          title = [toCopy title];
          v20 = SGNormalizePhoneNumber();
          goto LABEL_45;
        case 1:
          v19 = MEMORY[0x277D01FA0];
          title = [toCopy title];
          v20 = SGNormalizeAddress(title);
          goto LABEL_45;
        case 2:
          v19 = MEMORY[0x277D01FA0];
          title = [toCopy title];
          v20 = SGNormalizeEmailAddress();
          goto LABEL_45;
      }
    }

    else
    {
      if (v8 <= 4)
      {
        if (v8 != 3)
        {
          v10 = MEMORY[0x277D01FA0];
          title = [toCopy title];
          SGNormalizeSocialProfile(title);
          objc_claimAutoreleasedReturnValue();
          duplicateKey6 = [v10 contactDetail:title];

LABEL_46:
          goto LABEL_47;
        }

        v19 = MEMORY[0x277D01FA0];
        title = [toCopy title];
        v20 = SGNormalizeInstantMessageAddress(title);
LABEL_45:
        v47 = v20;
        duplicateKey6 = [v19 contactDetail:v20];

        goto LABEL_46;
      }

      if (v8 == 5)
      {
        v35 = MEMORY[0x277D01FA0];
        title = [toCopy title];
        duplicateKey6 = [v35 contactDetail:title];
        goto LABEL_46;
      }

      if (v8 == 6)
      {
        v19 = MEMORY[0x277D01FA0];
        title = [toCopy title];
        v20 = SGNormalizeBirthday(title);
        goto LABEL_45;
      }
    }

LABEL_47:
    [toCopy addTag:duplicateKey6];
    goto LABEL_48;
  }

  if (SGEntityTypeIsContact())
  {
    duplicateKey3 = [toCopy duplicateKey];
    identityKey = [duplicateKey3 identityKey];

    if ([identityKey hasEmailAddress])
    {
      v14 = MEMORY[0x277D01FA0];
      emailAddress = [identityKey emailAddress];
    }

    else
    {
      if (![identityKey hasPhone])
      {
LABEL_23:
        v23 = [MEMORY[0x277D01FA0] identity:identityKey];
        [toCopy addTag:v23];

LABEL_43:
        goto LABEL_49;
      }

      v14 = MEMORY[0x277D01FA0];
      emailAddress = [identityKey phone];
    }

    v21 = emailAddress;
    v22 = [v14 contactDetail:emailAddress];
    [toCopy addTag:v22];

    goto LABEL_23;
  }

  switch(entityType)
  {
    case 2:
      history = self->_history;
      duplicateKey4 = [toCopy duplicateKey];
      pseudoEventKey = [duplicateKey4 pseudoEventKey];
      [toCopy creationTimestamp];
      v39 = [(SGSuggestHistory *)history identityBasedHashesForPseudoEvent:pseudoEventKey withCreationTime:?];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      identityKey = v39;
      v40 = [identityKey countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v53;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v53 != v42)
            {
              objc_enumerationMutation(identityKey);
            }

            v44 = MEMORY[0x277D01FA0];
            v45 = [*(*(&v52 + 1) + 8 * i) base64EncodedStringWithOptions:0];
            v46 = [v44 eventHash:v45];
            [toCopy addTag:v46];
          }

          v41 = [identityKey countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v41);
      }

      goto LABEL_42;
    case 22:
      v24 = self->_history;
      duplicateKey5 = [toCopy duplicateKey];
      pseudoReminderKey = [duplicateKey5 pseudoReminderKey];
      [toCopy creationTimestamp];
      v27 = [(SGSuggestHistory *)v24 identityBasedHashesForPseudoReminder:pseudoReminderKey withCreationTime:?];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      identityKey = v27;
      v28 = [identityKey countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v49;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(identityKey);
            }

            v32 = MEMORY[0x277D01FA0];
            v33 = [*(*(&v48 + 1) + 8 * j) base64EncodedStringWithOptions:{0, v48}];
            v34 = [v32 reminderHash:v33];
            [toCopy addTag:v34];
          }

          v29 = [identityKey countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v29);
      }

LABEL_42:

      goto LABEL_43;
    case 5:
      v16 = MEMORY[0x277D01FA0];
      duplicateKey6 = [toCopy duplicateKey];
      emailKey = [duplicateKey6 emailKey];
      v18 = [v16 messageWithEmailKey:emailKey];
      [toCopy addTag:v18];

LABEL_48:
      break;
  }

LABEL_49:
}

- (void)_deleteOldInteractionContactDetails:(id)details currentIdentifiers:(id)identifiers
{
  detailsCopy = details;
  identifiersCopy = identifiers;
  duplicateKey = [detailsCopy duplicateKey];
  if ([duplicateKey entityType] == 16)
  {
    v9 = objc_msgSend_count(identifiersCopy);

    if (v9)
    {
      v10 = objc_opt_new();
      duplicateKey2 = [detailsCopy duplicateKey];
      serialize = [duplicateKey2 serialize];

      db = self->_db;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __84__SGSqlEntityStore_Writing___deleteOldInteractionContactDetails_currentIdentifiers___block_invoke;
      v22[3] = &unk_2789559D0;
      v23 = serialize;
      v24 = identifiersCopy;
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __84__SGSqlEntityStore_Writing___deleteOldInteractionContactDetails_currentIdentifiers___block_invoke_2;
      v19 = &unk_278955980;
      v20 = v23;
      v21 = v10;
      v14 = v10;
      v15 = v23;
      [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT e.entityKey onPrep:e.entityType    FROM entity e JOIN entityParentage ep ON e.id = ep.childId    WHERE ep.parentKey = :parentKey AND e.id not in _pas_nsset(:ids)" onRow:v22 onError:&v16, 0];
      [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v14 emitChangeNotifications:1, v16, v17, v18, v19];
    }
  }

  else
  {
  }
}

void __84__SGSqlEntityStore_Writing___deleteOldInteractionContactDetails_currentIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":parentKey" toNSString:v3];
  [v4 bindNamedParam:":ids" toNSSet:*(a1 + 40)];
}

uint64_t __84__SGSqlEntityStore_Writing___deleteOldInteractionContactDetails_currentIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"entityKey" table:"entity"];
  v5 = [v3 getInt64ForColumnName:"entityType" table:"entity"];

  if ([v4 length] && objc_msgSend(*(a1 + 32), "length"))
  {
    v6 = [[SGDuplicateKey alloc] initWithSerializedEntityKey:v4 entityType:v5 serializedParentKey:*(a1 + 32)];
    [*(a1 + 40) addObject:v6];
  }

  v7 = MEMORY[0x277D42690];

  return *v7;
}

- (void)_prunePseudoContactGeneratingEmails:(id)emails
{
  emailsCopy = emails;
  duplicateKey = [emailsCopy duplicateKey];
  entityType = [duplicateKey entityType];

  if (entityType != 5)
  {
    duplicateKey2 = [emailsCopy duplicateKey];
    if ([duplicateKey2 entityType] != 13)
    {
      duplicateKey3 = [emailsCopy duplicateKey];
      if ([duplicateKey3 entityType] != 16)
      {
        duplicateKey4 = [emailsCopy duplicateKey];
        entityType2 = [duplicateKey4 entityType];

        if (entityType2 == 18)
        {
          goto LABEL_9;
        }

        duplicateKey2 = [MEMORY[0x277CCA890] currentHandler];
        duplicateKey3 = [emailsCopy duplicateKey];
        [duplicateKey3 entityType];
        v12 = SGEntityTypeDescription();
        [duplicateKey2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:450 description:{@"Don't know how to prune container entities of type %@", v12}];
      }
    }

    goto LABEL_9;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke;
  v13[3] = &unk_27894F378;
  v13[4] = self;
  [emailsCopy enumeratePeople:v13];
LABEL_9:
}

void __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22534;
  v20 = __Block_byref_object_dispose__22535;
  v21 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_2;
  v14[3] = &unk_278956070;
  v5 = v3;
  v15 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_3;
  v13[3] = &unk_278954658;
  v13[4] = &v16;
  [v4 prepAndRunQuery:@"SELECT parentKey FROM entityParentage WHERE childId = :childId" onPrep:v14 onRow:v13 onError:0];
  if (objc_msgSend_count(v17[5]) > *(*(a1 + 32) + 144))
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_63;
    v12[3] = &unk_27894F350;
    v12[4] = v7;
    v12[5] = &v16;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_3_70;
    v10[3] = &unk_278955A20;
    v9 = v6;
    v11 = v9;
    [v8 prepAndRunSQL:@"SELECT key FROM emailMetadata WHERE key IN _pas_nsarray(:keys) AND type = :emailType ORDER BY updateTimestamp DESC LIMIT -1 OFFSET :offset" onPrep:v12 onRow:v10 onError:0];
    [*(a1 + 32) deleteEntitiesByDuplicateKey:v9 emitChangeNotifications:0];
  }

  _Block_object_dispose(&v16, 8);
}

void __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) recordId];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":childId", [v3 rowId]);
}

uint64_t __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sqlite3_column_nsstring(a2, 0);
  if (v3)
  {
    if ([SGDuplicateKey serializationPassesBasicScrutiny:v3])
    {
      v4 = [[SGDuplicateKey alloc] initWithSerialized:v3];
      if ([(SGDuplicateKey *)v4 entityType]== 5)
      {
        [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
      }
    }

    else
    {
      v5 = sgLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_fault_impl(&dword_231E60000, v5, OS_LOG_TYPE_FAULT, "invalid serialization found in _prunePseudoContactGeneratingEmails: %@", &v7, 0xCu);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }
  }

  return 0;
}

void __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v5 = a2;
  v4 = [v3 _pas_proxyArrayWithMapping:&__block_literal_global_22860];
  [v5 bindNamedParam:":keys" toNSArray:v4];

  [v5 bindNamedParam:":emailType" toInteger:5];
  [v5 bindNamedParam:":offset" toInt64:*(*(a1 + 32) + 144)];
}

uint64_t __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_3_70(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"key" table:"emailMetadata"];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [[SGDuplicateKey alloc] initWithSerializedEntityKey:v3 entityType:5 serializedParentKey:0];
    [v4 addObject:v5];
  }

  else
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "nil key found in emailMetadata", v9, 2u);
    }
  }

  v7 = MEMORY[0x277D42690];

  return *v7;
}

id __65__SGSqlEntityStore_Writing___prunePseudoContactGeneratingEmails___block_invoke_2_65(uint64_t a1, void *a2)
{
  v2 = [a2 emailKey];
  v3 = [v2 serialize];

  return v3;
}

- (void)_writeContactDetails:(id)details
{
  detailsCopy = details;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SGSqlEntityStore_Writing___writeContactDetails___block_invoke;
  v6[3] = &unk_27894F308;
  v7 = detailsCopy;
  selfCopy = self;
  v5 = detailsCopy;
  [v5 enumeratePeople:v6];
}

void __50__SGSqlEntityStore_Writing___writeContactDetails___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) enrichments];
  v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v16)
  {
    v2 = *v18;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v18 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v17 + 1) + 8 * i);
        v5 = [v4 duplicateKey];
        [v5 entityType];
        if (SGEntityTypeIsContactDetail())
        {
          v6 = [v4 duplicateKey];
          v7 = [v6 contactDetailKey];
          v8 = [v7 identityKey];
          v9 = [v14 duplicateKey];
          v10 = [v9 identityKey];
          v11 = [v8 isEqualToIdentityKey:v10];

          if (!v11)
          {
            continue;
          }

          v12 = *(a1 + 40);
          v5 = [SGContactDetail contactDetailFromEntity:v4];
          [v12 commitContactDetail:v5];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v16);
  }
}

- (void)_hashAttachedPseudoContacts:(id)contacts
{
  contactsCopy = contacts;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SGSqlEntityStore_Writing___hashAttachedPseudoContacts___block_invoke;
  v6[3] = &unk_27894F308;
  v7 = contactsCopy;
  selfCopy = self;
  v5 = contactsCopy;
  [v5 enumeratePeople:v6];
}

void __57__SGSqlEntityStore_Writing___hashAttachedPseudoContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) enrichments];
  v8 = v3;
  v5 = v3;
  v6 = sgMapAndFilter();

  v7 = [*(a1 + 40) _computePseudoContactContentHash:v5 contactDetails:v6];
  [v5 setContentHash:v7];
}

id __57__SGSqlEntityStore_Writing___hashAttachedPseudoContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 duplicateKey];
  v5 = [v4 entityType];

  v6 = v5 > 0x14 || ((1 << v5) & 0x1881C0) == 0;
  if (v6 || ([v3 duplicateKey], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "contactDetailKey"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identityKey"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "duplicateKey"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "identityKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToIdentityKey:", v11), v11, v10, v9, v8, v7, !v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = [SGContactDetail contactDetailFromEntity:v3];
  }

  return v13;
}

- (void)_emitChangeNotifications:(id)notifications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  enrichments = [notifications enrichments];
  v5 = [enrichments countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(enrichments);
        }

        [(SGSqlEntityStore *)self _emitChangeNotificationForEnrichment:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [enrichments countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_emitChangeNotificationForEnrichment:(id)enrichment
{
  v46 = *MEMORY[0x277D85DE8];
  enrichmentCopy = enrichment;
  duplicateKey = [enrichmentCopy duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  duplicateKey2 = [enrichmentCopy duplicateKey];
  v8 = duplicateKey2;
  if (IsContact)
  {
    identityKey = [duplicateKey2 identityKey];

    if ([identityKey hasPhone])
    {
      phone = [identityKey phone];
      [(SGSqlEntityStore *)self removeStringFromNoContactsCache:phone];
    }

    if ([identityKey hasEmailAddress])
    {
      emailAddress = [identityKey emailAddress];
      [(SGSqlEntityStore *)self removeStringFromNoContactsCache:emailAddress];
    }

    if ([identityKey hasInstantMessageAddress])
    {
      instantMessageAddress = [identityKey instantMessageAddress];
      [(SGSqlEntityStore *)self removeStringFromNoContactsCache:instantMessageAddress];
    }

    if ([identityKey hasSocialProfile])
    {
      v13 = [SGSocialProfileDetails alloc];
      socialProfile = [identityKey socialProfile];
      v15 = [(SGSocialProfileDetails *)v13 initWithSerialized:socialProfile];

      if (v15)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        uniqueIdentifiers = [(SGSocialProfileDetails *)v15 uniqueIdentifiers];
        v17 = [uniqueIdentifiers countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v41;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v41 != v19)
              {
                objc_enumerationMutation(uniqueIdentifiers);
              }

              [(SGSqlEntityStore *)self removeStringFromNoContactsCache:*(*(&v40 + 1) + 8 * i)];
            }

            v18 = [uniqueIdentifiers countByEnumeratingWithState:&v40 objects:v45 count:16];
          }

          while (v18);
        }
      }
    }

    recordId = [enrichmentCopy recordId];
    [SGDNotificationBroadcaster emitContactUpdated:recordId];

    goto LABEL_44;
  }

  [duplicateKey2 entityType];
  IsContactDetail = SGEntityTypeIsContactDetail();

  duplicateKey3 = [enrichmentCopy duplicateKey];
  entityType = [duplicateKey3 entityType];
  if (IsContactDetail)
  {
    v25 = SGEntityTypeToContactDetailType(entityType);

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        title = [enrichmentCopy title];
        v27 = SGNormalizeInstantMessageAddress(title);
        goto LABEL_40;
      }

      if (v25 == 4)
      {
        v29 = [SGSocialProfileDetails alloc];
        title2 = [enrichmentCopy title];
        title = [(SGSocialProfileDetails *)v29 initWithSerialized:title2];

        if (!title)
        {
LABEL_42:

          goto LABEL_43;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        uniqueIdentifiers2 = [(SGSocialProfileDetails *)title uniqueIdentifiers];
        v32 = [uniqueIdentifiers2 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v37;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v37 != v34)
              {
                objc_enumerationMutation(uniqueIdentifiers2);
              }

              [(SGSqlEntityStore *)self removeStringFromNoContactsCache:*(*(&v36 + 1) + 8 * j)];
            }

            v33 = [uniqueIdentifiers2 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v33);
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      if (!v25)
      {
        title = [enrichmentCopy title];
        v27 = SGNormalizePhoneNumber();
        goto LABEL_40;
      }

      if (v25 == 2)
      {
        title = [enrichmentCopy title];
        v27 = SGNormalizeEmailAddress();
LABEL_40:
        uniqueIdentifiers2 = v27;
        [(SGSqlEntityStore *)self removeStringFromNoContactsCache:v27];
        goto LABEL_41;
      }
    }

LABEL_43:
    identityKey = [enrichmentCopy recordId];
    [SGDNotificationBroadcaster emitContactUpdated:identityKey];
    goto LABEL_44;
  }

  IsEvent = SGEntityTypeIsEvent();

  if (IsEvent)
  {
    identityKey = [enrichmentCopy recordId];
    [SGDNotificationBroadcaster emitEventUpdated:identityKey];
LABEL_44:
  }
}

- (int64_t)writeEntity:(id)entity withSpotlightReferenceForBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier domainIdentifier:(id)domainIdentifier
{
  entityCopy = entity;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  domainIdentifierCopy = domainIdentifier;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v14 = objc_autoreleasePoolPush();
  db = self->_db;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __117__SGSqlEntityStore_Writing__writeEntity_withSpotlightReferenceForBundleIdentifier_uniqueIdentifier_domainIdentifier___block_invoke;
  v22[3] = &unk_27894F2B8;
  v27 = &v28;
  v22[4] = self;
  v16 = entityCopy;
  v23 = v16;
  v17 = identifierCopy;
  v24 = v17;
  v18 = uniqueIdentifierCopy;
  v25 = v18;
  v19 = domainIdentifierCopy;
  v26 = v19;
  [(SGSqliteDatabase *)db writeTransaction:v22];

  objc_autoreleasePoolPop(v14);
  v20 = v29[3];
  _Block_object_dispose(&v28, 8);

  return v20;
}

void __117__SGSqlEntityStore_Writing__writeEntity_withSpotlightReferenceForBundleIdentifier_uniqueIdentifier_domainIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) writeEntity:*(a1 + 40)];
  if (*(*(*(a1 + 72) + 8) + 24) != -1)
  {
    v2 = [MEMORY[0x277D020C8] recordIdForEmailWithRowId:?];
    [*(a1 + 32) addSpotlightReferenceToEmailRecordId:v2 withBundleIdentifier:*(a1 + 48) uniqueIdentifier:*(a1 + 56) domainIdentifier:*(a1 + 64)];
  }
}

- (int64_t)writeEnrichment:(id)enrichment
{
  enrichmentCopy = enrichment;
  v5 = [(SGSqlEntityStore *)self _writeEnrichmentToDb:enrichmentCopy];
  [(SGSqlEntityStore *)self _emitChangeNotificationForEnrichment:enrichmentCopy];

  return v5;
}

- (int64_t)writeEntity:(id)entity
{
  v67 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  duplicateKey = [entityCopy duplicateKey];

  if (!duplicateKey)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"containerEntity.duplicateKey"}];
  }

  v58[2] = 0;
  v58[0] = @"writeEntity";
  v58[1] = mach_absolute_time();
  externalEnrichments = [entityCopy externalEnrichments];
  v8 = objc_msgSend_count(externalEnrichments);

  if (v8)
  {
    [entityCopy flushExternalEnrichmentsUponDealloc];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  externalEnrichments2 = [entityCopy externalEnrichments];
  v10 = [externalEnrichments2 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v10)
  {
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(externalEnrichments2);
        }

        [*(*(&v54 + 1) + 8 * i) writeWithEntityStore:self];
      }

      v10 = [externalEnrichments2 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v10);
  }

  [entityCopy setRecordId:0];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  enrichments = [entityCopy enrichments];
  v14 = [enrichments countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (v14)
  {
    v15 = *v51;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(enrichments);
        }

        v17 = *(*(&v50 + 1) + 8 * j);
        [v17 setRecordId:0];
        [v17 setGroupId:0];
        [v17 setMasterEntityId:0];
      }

      v14 = [enrichments countByEnumeratingWithState:&v50 objects:v65 count:16];
    }

    while (v14);
  }

  duplicateKey2 = [entityCopy duplicateKey];
  [duplicateKey2 entityType];
  IsMessage = SGEntityTypeIsMessage();

  if (IsMessage)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = -1;
    [entityCopy validate];
    if (!-[SGSqlEntityStore isEphemeral](self, "isEphemeral") && (v20 = objc_opt_class(), [entityCopy accountType], v21 = objc_claimAutoreleasedReturnValue(), LODWORD(v20) = objc_msgSend(v20, "canStoreEventsForAccountType:", v21), v21, !v20) || (objc_msgSend(MEMORY[0x277D02098], "shouldHarvestEvents") & 1) == 0)
    {
      [entityCopy stripEventInformation];
    }

    if ([entityCopy state] == 2)
    {
      duplicateKey3 = [entityCopy duplicateKey];
      v64 = duplicateKey3;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v23 emitChangeNotifications:1];

LABEL_26:
      v24 = v47[3];
LABEL_40:
      _Block_object_dispose(&v46, 8);
      goto LABEL_41;
    }

    duplicateKey4 = [entityCopy duplicateKey];
    [duplicateKey4 entityType];
    if (SGEntityTypeIsMessage())
    {
      enrichments2 = [entityCopy enrichments];
      if (!objc_msgSend_count(enrichments2))
      {
        hasFullDownloadBeenRequested = [entityCopy hasFullDownloadBeenRequested];

        if ((hasFullDownloadBeenRequested & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_34:
        v29 = sgLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          duplicateKey5 = [entityCopy duplicateKey];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = duplicateKey5;
          _os_log_impl(&dword_231E60000, v29, OS_LOG_TYPE_INFO, "Writing Entity: %@", &buf, 0xCu);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v60 = 0x3032000000;
        v61 = __Block_byref_object_copy__22534;
        v62 = __Block_byref_object_dispose__22535;
        v63 = &unk_284749AE8;
        db = self->_db;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __41__SGSqlEntityStore_Writing__writeEntity___block_invoke;
        v41[3] = &unk_27894F290;
        v43 = &v46;
        v41[4] = self;
        v32 = entityCopy;
        v42 = v32;
        p_buf = &buf;
        v45 = a2;
        [(SGSqliteDatabase *)db writeTransaction:v41];

        if (![(SGSqlEntityStore *)self isEphemeral]&& *(*(&buf + 1) + 40))
        {
          v33 = self->_db;
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __41__SGSqlEntityStore_Writing__writeEntity___block_invoke_4;
          v40[3] = &unk_2789561D0;
          v40[4] = self;
          v40[5] = &buf;
          [(SGSqliteDatabase *)v33 writeTransaction:v40];
        }

        [(SGSqlEntityStore *)self _emitChangeNotifications:v32];
        SGRecordMeasurementState(v58);
        v24 = v47[3];
        _Block_object_dispose(&buf, 8);

        goto LABEL_40;
      }
    }

    goto LABEL_34;
  }

  enrichments3 = [entityCopy enrichments];
  v26 = objc_msgSend_count(enrichments3) == 0;

  if (!v26)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    duplicateKey6 = [entityCopy duplicateKey];
    [duplicateKey6 entityType];
    v39 = SGEntityTypeDescription();
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:168 description:{@"Don't know how to write out a container entity of type %@", v39}];
  }

  v24 = [(SGSqlEntityStore *)self _writeOneEntityToDb:entityCopy];
LABEL_41:
  SGRecordMeasurementState(v58);

  return v24;
}

void __41__SGSqlEntityStore_Writing__writeEntity___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _writeOneEntityToDb:*(a1 + 40)];
  [*(a1 + 32) _hashAttachedPseudoContacts:*(a1 + 40)];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __41__SGSqlEntityStore_Writing__writeEntity___block_invoke_2;
  v70[3] = &unk_27894F240;
  v4 = *(a1 + 40);
  v70[4] = *(a1 + 32);
  v54 = v3;
  v71 = v54;
  v56 = v2;
  v72 = v56;
  [v4 enumeratePeople:v70];
  v52 = objc_opt_new();
  v55 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v5 = [*(a1 + 40) enrichments];
  v6 = [v5 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v67;
    do
    {
      v9 = 0;
      do
      {
        if (*v67 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v66 + 1) + 8 * v9);
        v11 = [v10 duplicateKey];
        [v11 entityType];
        IsContact = SGEntityTypeIsContact();

        if ((IsContact & 1) == 0)
        {
          v13 = [v10 duplicateKey];
          [v13 entityType];
          IsContactDetail = SGEntityTypeIsContactDetail();

          if (!IsContactDetail)
          {
            if ([v10 isFromForwardedMessage])
            {
              goto LABEL_17;
            }

            v21 = [v10 extractionInfo];
            if ([v21 extractionType] == 32)
            {
              goto LABEL_16;
            }

            v22 = [v10 duplicateKey];
            if ([v22 entityType] != 2 || objc_msgSend(v10, "pendingGeocode"))
            {

LABEL_16:
LABEL_17:
              v23 = [v10 duplicateKey];
              v24 = [v23 entityType];

              v25 = v55;
              if (v24 == 22)
              {
LABEL_18:
                [v25 addObject:v10];
              }

              [*(a1 + 32) _writeEnrichmentToDb:v10];
              goto LABEL_20;
            }

            v26 = [*(a1 + 40) pendingVerification];

            v25 = v52;
            if (v26)
            {
              goto LABEL_17;
            }

            goto LABEL_18;
          }

          v15 = [v10 duplicateKey];
          v16 = [v15 contactDetailKey];
          v17 = [v16 identityKey];
          v18 = [v56 objectForKeyedSubscript:v17];

          if (v18)
          {
            [v10 setGroupId:{objc_msgSend(v18, "longLongValue")}];
            v19 = [*(a1 + 32) _writeEnrichmentToDb:v10];
            v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v19];
            [v54 addObject:v20];
          }
        }

LABEL_20:
        ++v9;
      }

      while (v7 != v9);
      v27 = [v5 countByEnumeratingWithState:&v66 objects:v75 count:16];
      v7 = v27;
    }

    while (v27);
  }

  v28 = v55;
  if (objc_msgSend_count(v52))
  {
    if (([*(a1 + 32) isEphemeral] & 1) == 0)
    {
      v29 = [*(a1 + 32) getInt64NSNumberForKey:@"kEntitySetCascadeDonationVersion"];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = &unk_284749AE8;
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v31);

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v32 = v52;
      v33 = [v32 countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v63;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v63 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v62 + 1) + 8 * i);
            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "unsignedLongLongValue", v52) + 1}];
            v39 = *(*(a1 + 56) + 8);
            v40 = *(v39 + 40);
            *(v39 + 40) = v38;

            v41 = [MEMORY[0x277D01FA0] cascadeEntitySetVersion:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "unsignedLongLongValue")}];
            [v37 addTag:v41];
          }

          v34 = [v32 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v34);
      }

      [*(a1 + 32) setInt64NSNumber:*(*(*(a1 + 56) + 8) + 40) forKey:@"kEntitySetCascadeDonationVersion"];
      v28 = v55;
    }

    [*(a1 + 32) _writeEventEntitiesToJournal:{v52, v52}];
  }

  if (objc_msgSend_count(v28, v52))
  {
    [*(a1 + 32) _writeReminderEntitiesToJournal:v28];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = v56;
  v43 = [v42 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v59;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [v42 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * j)];
        v48 = v47;
        if (v47)
        {
          [*(a1 + 32) selectAuthoritativeDetailsForContactWithId:{objc_msgSend(v47, "longLongValue")}];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v44);
  }

  [*(a1 + 32) _deleteOldInteractionContactDetails:*(a1 + 40) currentIdentifiers:v54];
  [*(a1 + 32) _writeContactDetails:*(a1 + 40)];
  v50 = *(a1 + 32);
  v49 = *(a1 + 40);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __41__SGSqlEntityStore_Writing__writeEntity___block_invoke_3;
  v57[3] = &unk_27894F268;
  v51 = *(a1 + 64);
  v57[4] = v50;
  v57[5] = v51;
  [v49 enumeratePeople:v57];
  [*(a1 + 32) _prunePseudoContactGeneratingEmails:*(a1 + 40)];
}

void __41__SGSqlEntityStore_Writing__writeEntity___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) getInt64NSNumberForKey:@"kEntitySetCascadeDonationVersion"];
  v3 = v2;
  v4 = &unk_284749AE8;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  if (*(*(*(a1 + 40) + 8) + 40) > v5)
  {
    [*(a1 + 32) setInt64NSNumber:? forKey:?];
  }
}

void __41__SGSqlEntityStore_Writing__writeEntity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _writeEnrichmentToDb:v4];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  [v6 addObject:v7];

  v8 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:v5];
  [v4 setRecordId:v8];

  v13 = [SGContactDetail contactDetailFromEntity:v4];
  [*(a1 + 32) commitContactDetail:v13];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  v10 = *(a1 + 48);
  v11 = [v4 duplicateKey];

  v12 = [v11 identityKey];
  [v10 setObject:v9 forKeyedSubscript:v12];
}

void __41__SGSqlEntityStore_Writing__writeEntity___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 recordId];
  if (!v3 || (v4 = v3, [v10 recordId], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "rowId"), v5, v4, v6 < 0))
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGSqlEntityStore+Writing.m" lineNumber:279 description:@"Contact lacks a recordId prior to identity store update"];
  }

  v8 = *(a1 + 32);
  v9 = [v10 recordId];
  [v8 processContactEnrichment:v10 recordId:v9];
}

- (void)writeInteractionEventEntities:(id)entities
{
  v40 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v36[2] = 0;
  v36[0] = @"writeInteractionEventEntities";
  v36[1] = mach_absolute_time();
  if ([MEMORY[0x277D02098] shouldHarvestEvents])
  {
    v5 = objc_opt_new();
    v24 = a2;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = entitiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          duplicateKey = [v10 duplicateKey];
          v12 = [duplicateKey entityType] == 16;

          if (!v12)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v24 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:94 description:@"Do not call writeInteractionEventEntities with non-interaction entity type."];
          }

          duplicateKey2 = [v10 duplicateKey];
          v14 = duplicateKey2 == 0;

          if (v14)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:v24 object:self file:@"SGSqlEntityStore+Writing.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"containerEntity.duplicateKey"}];
          }

          [v10 validate];
          if ([v10 state] == 2)
          {
            duplicateKey3 = [v10 duplicateKey];
            v38 = duplicateKey3;
            v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
            [(SGSqlEntityStore *)self deleteEntitiesByDuplicateKey:v16 emitChangeNotifications:1];
          }

          else
          {
            db = self->_db;
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __59__SGSqlEntityStore_Writing__writeInteractionEventEntities___block_invoke;
            v30[3] = &unk_278956130;
            v30[4] = self;
            v30[5] = v10;
            v31 = v5;
            [(SGSqliteDatabase *)db writeTransaction:v30];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v7);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v21)
    {
      v22 = *v27;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [(SGSqlEntityStore *)self _emitChangeNotifications:*(*(&v26 + 1) + 8 * j)];
        }

        v21 = [v20 countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v21);
    }

    SGRecordMeasurementState(v36);
  }

  SGRecordMeasurementState(v36);
}

void *__59__SGSqlEntityStore_Writing__writeInteractionEventEntities___block_invoke(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (![a1[4] _writeOneEntityToDb:a1[5]])
  {
    v2 = sgEventsLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "Attempt to write entity to DB returned entityId 0", buf, 2u);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a1[5] enrichments];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 duplicateKey];
        [v9 entityType];
        IsEvent = SGEntityTypeIsEvent();

        if (!IsEvent)
        {
          v12 = sgEventsLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = v12;
            v14 = "Skipping non-event enrichment";
            goto LABEL_21;
          }

LABEL_22:

          continue;
        }

        if ([v8 pendingGeocode])
        {
          v11 = sgEventsLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "Skipping event pending geocode.", buf, 2u);
          }
        }

        else
        {
          [a1[6] addObject:v8];
        }

        if (![a1[4] _writeEnrichmentToDb:v8])
        {
          v12 = sgEventsLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = v12;
            v14 = "Attempt to write enrichment to DB returned enrichmentId 0";
LABEL_21:
            _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
          }

          goto LABEL_22;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = sgEventsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_count(a1[6]);
    *buf = 134217984;
    v23 = v16;
    _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEFAULT, "Number of event entities to journal: %lu", buf, 0xCu);
  }

  result = objc_msgSend_count(a1[6]);
  if (result)
  {
    return [a1[4] _writeEventEntitiesToJournal:a1[6]];
  }

  return result;
}

- (void)setMalformedEventWhenRangeForTesting
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__SGSqlEntityStore_TestHelpers__setMalformedEventWhenRangeForTesting__block_invoke;
  v3[3] = &unk_278954A30;
  v3[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v3];
}

- (SGUnixTimestamp_)lastSeenTimestampForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SGSqlEntityStore_TestHelpers__lastSeenTimestampForKey___block_invoke;
  v10[3] = &unk_278956070;
  v6 = keyCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SGSqlEntityStore_TestHelpers__lastSeenTimestampForKey___block_invoke_2;
  v9[3] = &unk_278954658;
  v9[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT lastSeenTimestamp FROM emailMetadata WHERE key = :emailKey" onPrep:v10 onRow:v9 onError:0];
  *&v7.secondsFromUnixEpoch = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __57__SGSqlEntityStore_TestHelpers__lastSeenTimestampForKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) serialize];
  [SGSqliteDatabase bindParam:a2 name:":emailKey" nsstring:v3];
}

- (void)updateSerializedContacts:(id)contacts
{
  v32 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  v30[2] = 0;
  v30[0] = @"updateSerializedContacts";
  v30[1] = mach_absolute_time();
  if (![(SGSqlEntityStore *)self _processBatchOfSerializedContactJobs])
  {
    v5 = objc_opt_new();
    v6 = [(SGSqlEntityStore *)self allContactsMasterEntityIdsLimitedTo:self->_serializedContactsLimit];
    serializedEntityIds = [(SGSqlEntityStore *)self serializedEntityIds];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if (([serializedEntityIds containsObject:v12] & 1) == 0)
          {
            [v5 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    if (objc_msgSend_count(v5))
    {
      db = self->_db;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __65__SGSqlEntityStore_SerializedContacts__updateSerializedContacts___block_invoke;
      v23[3] = &unk_278955830;
      v24 = v5;
      selfCopy = self;
      [(SGSqliteDatabase *)db writeTransaction:v23];
    }
  }

  while (1)
  {
    if (contactsCopy)
    {
      v14 = +[SGXPCActivityManager sharedInstance];
      v15 = [v14 shouldDefer:contactsCopy];

      if (v15)
      {
        break;
      }
    }

    v16 = objc_autoreleasePoolPush();
    _processBatchOfSerializedContactJobs = [(SGSqlEntityStore *)self _processBatchOfSerializedContactJobs];
    objc_autoreleasePoolPop(v16);
    if (!_processBatchOfSerializedContactJobs)
    {
      v18 = sgLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_231E60000, v18, OS_LOG_TYPE_INFO, "done serializing new contacts", v22, 2u);
      }

      [(SGSqlEntityStore *)self _trimSerializedContacts];
      v19 = sgLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_INFO, "done trimming serialized contacts", v22, 2u);
      }

      SGRecordMeasurementState(v30);
      goto LABEL_29;
    }
  }

  if (!xpc_activity_set_state(contactsCopy, 3))
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "Could not defer activity", v22, 2u);
    }
  }

  v21 = sgLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_231E60000, v21, OS_LOG_TYPE_INFO, "serialized contact precomputation deferring", v22, 2u);
  }

LABEL_29:
  SGRecordMeasurementState(v30);
}

void __65__SGSqlEntityStore_SerializedContacts__updateSerializedContacts___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(*(a1 + 40) + 8);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __65__SGSqlEntityStore_SerializedContacts__updateSerializedContacts___block_invoke_2;
        v9[3] = &unk_278956070;
        v9[4] = v7;
        [v8 prepAndRunQuery:@"INSERT INTO serializedContactCacheJobs (id) VALUES (?)" onPrep:v9 onRow:0 onError:0];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

uint64_t __65__SGSqlEntityStore_SerializedContacts__updateSerializedContacts___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

- (BOOL)_processBatchOfSerializedContactJobs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SGSqlEntityStore_SerializedContacts___processBatchOfSerializedContactJobs__block_invoke;
  v5[3] = &unk_2789561D0;
  v5[4] = self;
  v5[5] = &v6;
  [(SGSqliteDatabase *)db writeTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __76__SGSqlEntityStore_SerializedContacts___processBatchOfSerializedContactJobs__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _popQueuedSerializedContactId];
  if (v2 < 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return;
  }

  v3 = v2;
  v8[0] = @"updateSerializedContacts-onequery";
  v8[1] = mach_absolute_time();
  v8[2] = 0;
  v4 = [*(a1 + 32) storageContactByMasterEntityId:v3 withSnippets:0];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) loadContactForStorageContact:v4 usingSerializedContactCache:0];
  v6 = v5;
  if (!v5 || ![v5 containsSuggestions])
  {
LABEL_8:
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v10 = v3;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Writing placeholder for contact id: %lli", buf, 0xCu);
    }

    [*(a1 + 32) writeSerializedContactPlaceholder:v3];
    goto LABEL_11;
  }

  [*(a1 + 32) writeSerializedContact:v6];
LABEL_11:
  SGRecordMeasurementState(v8);
}

- (int64_t)_popQueuedSerializedContactId
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  db = self->_db;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SGSqlEntityStore_SerializedContacts___popQueuedSerializedContactId__block_invoke;
  v5[3] = &unk_2789561D0;
  v5[4] = self;
  v5[5] = &v6;
  [(SGSqliteDatabase *)db writeTransaction:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__69__SGSqlEntityStore_SerializedContacts___popQueuedSerializedContactId__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SGSqlEntityStore_SerializedContacts___popQueuedSerializedContactId__block_invoke_2;
  v7[3] = &unk_278954658;
  v7[4] = *(a1 + 40);
  result = [v2 prepAndRunQuery:@"SELECT id FROM serializedContactCacheJobs LIMIT 1" onPrep:0 onRow:v7 onError:0];
  v4 = *(a1 + 40);
  if ((*(*(v4 + 8) + 24) & 0x8000000000000000) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__SGSqlEntityStore_SerializedContacts___popQueuedSerializedContactId__block_invoke_3;
    v6[3] = &unk_27894F760;
    v6[4] = v4;
    return [v5 prepAndRunQuery:@"DELETE FROM serializedContactCacheJobs WHERE id=?" onPrep:v6 onRow:0 onError:0];
  }

  return result;
}

- (void)_trimSerializedContacts
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SGSqlEntityStore_SerializedContacts___trimSerializedContacts__block_invoke;
  v3[3] = &unk_278954A30;
  v3[4] = self;
  [(SGSqliteDatabase *)db writeTransaction:v3];
}

void __63__SGSqlEntityStore_SerializedContacts___trimSerializedContacts__block_invoke(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__23831;
  v8[4] = __Block_byref_object_dispose__23832;
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SGSqlEntityStore_SerializedContacts___trimSerializedContacts__block_invoke_2;
  v7[3] = &unk_278955878;
  v7[4] = v2;
  v7[5] = v8;
  [v3 prepAndRunQuery:@"SELECT entityId onPrep:data FROM serializedContacts ORDER BY entityId DESC" onRow:0 onError:{v7, &__block_literal_global_75}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SGSqlEntityStore_SerializedContacts___trimSerializedContacts__block_invoke_79;
  v6[3] = &unk_278956070;
  v6[4] = v4;
  [v5 prepAndRunQuery:@"DELETE FROM serializedContacts ORDER BY id DESC LIMIT -1 OFFSET ?" onPrep:v6 onRow:0 onError:0];
  _Block_object_dispose(v8, 8);
}

uint64_t __63__SGSqlEntityStore_SerializedContacts___trimSerializedContacts__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v6 = sqlite3_column_nssecurecoding(a2, 1, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = sqlite3_column_int64(a2, 0);
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "Unexpected error while deserializing contact%lldld", buf, 0xCu);
    }

    [*(a1 + 32) deleteSerializedContactForId:{sqlite3_column_int64(a2, 0)}];
  }

  return 0;
}

uint64_t __63__SGSqlEntityStore_SerializedContacts___trimSerializedContacts__block_invoke_73(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to load all serialized contacts: %@", &v5, 0xCu);
  }

  return 1;
}

- (id)serializedEntityIds
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:self->_serializedContactsLimit];
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SGSqlEntityStore_SerializedContacts__serializedEntityIds__block_invoke;
  v7[3] = &unk_278954708;
  v5 = v3;
  v8 = v5;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT entityId FROM serializedContacts" onPrep:0 onRow:v7 onError:0];

  return v5;
}

uint64_t __59__SGSqlEntityStore_SerializedContacts__serializedEntityIds__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(a2, 0)}];
  [v2 addObject:v3];

  return 0;
}

- (id)loadAllSerializedContacts
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_serializedContactsLimit];
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SGSqlEntityStore_SerializedContacts__loadAllSerializedContacts__block_invoke;
  v7[3] = &unk_278954708;
  v5 = v3;
  v8 = v5;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT entityId onPrep:data FROM serializedContacts ORDER BY entityId DESC" onRow:0 onError:v7, &__block_literal_global_68_23844];

  return v5;
}

uint64_t __65__SGSqlEntityStore_SerializedContacts__loadAllSerializedContacts__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v6 = sqlite3_column_nssecurecoding(a2, 1, v5);

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = sqlite3_column_int64(a2, 0);
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "Unexpected error while deserializing contact: %lld", buf, 0xCu);
    }
  }

  return 0;
}

uint64_t __65__SGSqlEntityStore_SerializedContacts__loadAllSerializedContacts__block_invoke_66(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to load all serialized contacts: %@", &v5, 0xCu);
  }

  return 1;
}

- (id)loadSerializedContactForId:(int64_t)id
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__23831;
  v16 = __Block_byref_object_dispose__23832;
  v17 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SGSqlEntityStore_SerializedContacts__loadSerializedContactForId___block_invoke;
  v11[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = id;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SGSqlEntityStore_SerializedContacts__loadSerializedContactForId___block_invoke_2;
  v10[3] = &unk_278954658;
  v10[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT data FROM serializedContacts WHERE entityId = ?" onPrep:v11 onRow:v10 onError:0];
  v4 = v13[5];
  if (loadSerializedContactForId___pasOnceToken10 != -1)
  {
    dispatch_once(&loadSerializedContactForId___pasOnceToken10, &__block_literal_global_51);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SGSqlEntityStore_SerializedContacts__loadSerializedContactForId___block_invoke_2_54;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v9 = v4 != 0;
  v5 = loadSerializedContactForId___pasExprOnceResult;
  dispatch_async(v5, block);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

uint64_t __67__SGSqlEntityStore_SerializedContacts__loadSerializedContactForId___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v6 = sqlite3_column_nssecurecoding(a2, 0, v5);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 1;
}

void __67__SGSqlEntityStore_SerializedContacts__loadSerializedContactForId___block_invoke_2_54(uint64_t a1)
{
  v8 = objc_opt_new();
  [v8 setCacheHit:*(a1 + 32)];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v8];

  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *MEMORY[0x277D02470];
  v5 = [v8 key];
  v6 = [v3 initWithFormat:@"%@.%@", v4, v5];

  v7 = [v8 dictionaryRepresentation];
  AnalyticsSendEvent();
}

void __67__SGSqlEntityStore_SerializedContacts__loadSerializedContactForId___block_invoke_49()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"loadSerializedContactForId" qosClass:9];
  v2 = loadSerializedContactForId___pasExprOnceResult;
  loadSerializedContactForId___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)deleteSerializedContactsForIdSet:(id)set
{
  setCopy = set;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SGSqlEntityStore_SerializedContacts__deleteSerializedContactsForIdSet___block_invoke;
  v8[3] = &unk_278955958;
  selfCopy = self;
  v11 = a2;
  v9 = setCopy;
  v7 = setCopy;
  [(SGSqliteDatabase *)db writeTransaction:v8];
}

void __73__SGSqlEntityStore_SerializedContacts__deleteSerializedContactsForIdSet___block_invoke(uint64_t a1)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __73__SGSqlEntityStore_SerializedContacts__deleteSerializedContactsForIdSet___block_invoke_2;
  v10 = &unk_27894F738;
  v11 = *(a1 + 40);
  v2 = sgMap();
  v3 = *(*(a1 + 40) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SGSqlEntityStore_SerializedContacts__deleteSerializedContactsForIdSet___block_invoke_3;
  v5[3] = &unk_278955E30;
  v6 = v2;
  v4 = v2;
  [v3 prepAndRunSQL:@"DELETE FROM serializedContacts WHERE entityId IN _pas_nsarray(:ids)" onPrep:v5 onRow:0 onError:&__block_literal_global_42];
}

id __73__SGSqlEntityStore_SerializedContacts__deleteSerializedContactsForIdSet___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 tableId])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGSqlEntityStore+SerializedContacts.m" lineNumber:92 description:{@"Unexpected table for recordId: %@", v3}];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "rowId")}];

  return v4;
}

uint64_t __73__SGSqlEntityStore_SerializedContacts__deleteSerializedContactsForIdSet___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to delete serialized contact: %@", &v5, 0xCu);
  }

  return *MEMORY[0x277D42698];
}

- (void)deleteSerializedContactForId:(int64_t)id
{
  db = self->_db;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SGSqlEntityStore_SerializedContacts__deleteSerializedContactForId___block_invoke;
  v4[3] = &unk_278955468;
  v4[4] = self;
  v4[5] = id;
  [(SGSqliteDatabase *)db writeTransaction:v4];
}

uint64_t __69__SGSqlEntityStore_SerializedContacts__deleteSerializedContactForId___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__SGSqlEntityStore_SerializedContacts__deleteSerializedContactForId___block_invoke_2;
  v3[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v3[4] = *(a1 + 40);
  return [v1 prepAndRunQuery:@"DELETE FROM serializedContacts WHERE entityId = ?" onPrep:v3 onRow:0 onError:&__block_literal_global_34];
}

uint64_t __69__SGSqlEntityStore_SerializedContacts__deleteSerializedContactForId___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to delete serialized contact: %@", &v5, 0xCu);
  }

  return 1;
}

- (void)writeSerializedContactPlaceholder:(int64_t)placeholder
{
  db = self->_db;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__SGSqlEntityStore_SerializedContacts__writeSerializedContactPlaceholder___block_invoke;
  v4[3] = &unk_278955468;
  v4[4] = self;
  v4[5] = placeholder;
  [(SGSqliteDatabase *)db writeTransaction:v4];
}

void __74__SGSqlEntityStore_SerializedContacts__writeSerializedContactPlaceholder___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v6[0] = @"entityId";
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:v1];
  v6[1] = @"data";
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEB68] null];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 insertOrReplaceIntoTable:@"serializedContacts" dictionary:v5 onError:&__block_literal_global_28];
}

uint64_t __74__SGSqlEntityStore_SerializedContacts__writeSerializedContactPlaceholder___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to insert serialized contact placeholder: %@", &v5, 0xCu);
  }

  return 1;
}

- (void)writeSerializedContact:(id)contact
{
  contactCopy = contact;
  recordId = [contactCopy recordId];
  tableId = [recordId tableId];

  if (tableId)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    recordId2 = [contactCopy recordId];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+SerializedContacts.m" lineNumber:45 description:{@"Unexpected table for recordId: %@", recordId2}];
  }

  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SGSqlEntityStore_SerializedContacts__writeSerializedContact___block_invoke;
  v12[3] = &unk_278955830;
  v12[4] = self;
  v13 = contactCopy;
  v9 = contactCopy;
  [(SGSqliteDatabase *)db writeTransaction:v12];
}

void __63__SGSqlEntityStore_SerializedContacts__writeSerializedContact___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v9[0] = @"entityId";
  v5 = MEMORY[0x277CCABB0];
  v6 = [v2 recordId];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "rowId")}];
  v9[1] = @"data";
  v10[0] = v7;
  v10[1] = *(a1 + 40);
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 insertOrReplaceIntoTable:@"serializedContacts" dictionary:v8 onError:&__block_literal_global_23881];
}

uint64_t __63__SGSqlEntityStore_SerializedContacts__writeSerializedContact___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to insert serialized contact: %@", &v5, 0xCu);
  }

  return 1;
}

- (id)loadEventsWithInteractionIdentifiers:(id)identifiers fromBundleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  if (!objc_msgSend_count(identifiersCopy))
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:671 description:{@"Invalid parameter not satisfying: %@", @"identifiers.count != 0"}];
  }

  v9 = sgMap();
  v10 = [(SGSqlEntityStore *)self duplicateKeysMatchingInteractionBundleId:identifierCopy andTags:v9];
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(SGSqlEntityStore *)self loadEventByDuplicateKey:*(*(&v21 + 1) + 8 * i)];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)allDeliveriesWithLimit:(unint64_t)limit
{
  v3 = [(SGSqlEntityStore *)self allEntitiesOfType:24 limitedTo:limit];
  v4 = sgMap();

  return v4;
}

- (id)loadReminderByRecordIdOld:(id)old
{
  v11 = *MEMORY[0x277D85DE8];
  oldCopy = old;
  v5 = [(SGSqlEntityStore *)self loadEntityByRecordId:oldCopy];
  if (v5)
  {
    v6 = [SGStorageReminder storageReminderFromEntity:v5 store:self];
  }

  else
  {
    v7 = sgRemindersLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = oldCopy;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "Unable to load entity by recordId: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)loadReminderByKeyOld:(id)old
{
  oldCopy = old;
  v6 = [(SGSqlEntityStore *)self loadEntityByKey:oldCopy];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:639 description:{@"Invalid duplicate key: %@", oldCopy}];
  }

  v7 = [SGStorageReminder storageReminderFromEntity:v6 store:self];

  return v7;
}

- (id)allRemindersLimitedTo:(unint64_t)to
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__24709;
  v24 = __Block_byref_object_dispose__24710;
  v25 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__SGSqlEntityStore_Loading__allRemindersLimitedTo___block_invoke;
  v19[3] = &unk_278954658;
  v19[4] = &v20;
  v5 = MEMORY[0x2383809F0](v19);
  db = self->_db;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SGSqlEntityStore_Loading__allRemindersLimitedTo___block_invoke_2;
  v18[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v18[4] = to;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT id FROM reminders LIMIT ?" onPrep:v18 onRow:v5 onError:0];
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v21[5];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v26 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = -[SGSqlEntityStore getReminder:](self, "getReminder:", [*(*(&v14 + 1) + 8 * i) longValue]);
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v26 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v20, 8);

  return v7;
}

uint64_t __51__SGSqlEntityStore_Loading__allRemindersLimitedTo___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  [v4 addObject:v5];

  return 0;
}

- (id)entityKeyCountsForEntityType:(int64_t)type startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = objc_opt_new();
  db = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__SGSqlEntityStore_Loading__entityKeyCountsForEntityType_startDate_endDate___block_invoke;
  v20[3] = &unk_27894FCB8;
  v22 = endDateCopy;
  typeCopy = type;
  v21 = dateCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__SGSqlEntityStore_Loading__entityKeyCountsForEntityType_startDate_endDate___block_invoke_2;
  v18[3] = &unk_278954708;
  v12 = v10;
  v19 = v12;
  v13 = endDateCopy;
  v14 = dateCopy;
  v15 = v19;
  v16 = v12;

  return v12;
}

uint64_t __76__SGSqlEntityStore_Loading__entityKeyCountsForEntityType_startDate_endDate___block_invoke(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":entityType" int64:*(a1 + 48)];
  [*(a1 + 32) timeIntervalSince1970];
  [SGSqliteDatabase bindParam:a2 name:":startDate" double:?];
  [*(a1 + 40) timeIntervalSince1970];

  return [SGSqliteDatabase bindParam:a2 name:":endDate" double:?];
}

uint64_t __76__SGSqlEntityStore_Loading__entityKeyCountsForEntityType_startDate_endDate___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D42648];
  v5 = sqlite3_column_nsstring(a2, 0);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, 1)}];
  v7 = [v4 tupleWithFirst:v5 second:v6];
  [v3 addObject:v7];

  return 0;
}

- (id)loadAllContactDetailsWithWhereClause:(id)clause onPrep:(id)prep dedupeAgainst:(id)against
{
  v71 = *MEMORY[0x277D85DE8];
  clauseCopy = clause;
  prepCopy = prep;
  againstCopy = against;
  v11 = againstCopy;
  if (!clauseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"where"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_35:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:514 description:{@"Invalid parameter not satisfying: %@", @"details"}];

    goto LABEL_3;
  }

  if (!againstCopy)
  {
    goto LABEL_35;
  }

LABEL_3:
  context = objc_autoreleasePoolPush();
  v53 = clauseCopy;
  v12 = [clauseCopy stringByAppendingString:{@" AND e.entityType IN (:detPhone, :detAddr, :detEmailAddr, :detSocialProfile, :curPhone, :curAddr, :curEmailAddr, :detBirthday, :curBirthday, :curPhotoPath)"}];
  v13 = [(SGSqlEntityStore *)self selectEntityQuery:v12];

  v55 = objc_opt_new();
  v52 = v11;
  [v55 addObjectsFromArray:v11];
  v14 = objc_opt_new();
  db = self->_db;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __87__SGSqlEntityStore_Loading__loadAllContactDetailsWithWhereClause_onPrep_dedupeAgainst___block_invoke;
  v67[3] = &unk_27894FC68;
  v49 = prepCopy;
  v68 = v49;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __87__SGSqlEntityStore_Loading__loadAllContactDetailsWithWhereClause_onPrep_dedupeAgainst___block_invoke_2;
  v64[3] = &unk_27894FC90;
  v64[4] = self;
  v66 = a2;
  v16 = v14;
  v65 = v16;
  v50 = v13;
  [(SGSqliteDatabase *)db prepAndRunQuery:v13 onPrep:v67 onRow:v64 onError:0];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v61;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v61 != v20)
        {
          objc_enumerationMutation(v17);
        }

        tags = [*(*(&v60 + 1) + 8 * i) tags];
        fromReply = [MEMORY[0x277D01FA0] fromReply];
        v24 = [tags containsObject:fromReply];

        if (!v24)
        {
          v25 = 1;
          goto LABEL_13;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v60 objects:v70 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_13:

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v26 = v17;
  v27 = [v26 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (!v27)
  {
    goto LABEL_31;
  }

  v28 = v27;
  v29 = *v57;
  do
  {
    for (j = 0; j != v28; ++j)
    {
      if (*v57 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v56 + 1) + 8 * j);
      if (v25)
      {
        tags2 = [*(*(&v56 + 1) + 8 * j) tags];
        fromReply2 = [MEMORY[0x277D01FA0] fromReply];
        v34 = [tags2 containsObject:fromReply2];

        if (v34)
        {
          continue;
        }
      }

      duplicateKey = [v31 duplicateKey];
      [duplicateKey entityType];
      if (SGEntityTypeIsContact())
      {
        duplicateKey2 = [v31 duplicateKey];
        identityKey = [duplicateKey2 identityKey];
        type = [identityKey type];

        if (type == 4)
        {
          continue;
        }
      }

      else
      {
      }

      duplicateKey3 = [v31 duplicateKey];
      [duplicateKey3 entityType];
      if ((SGEntityTypeIsContactDetail() & 1) == 0)
      {

LABEL_28:
        v43 = [SGContactDetail contactDetailFromEntity:v31];
        [v55 addObject:v43];

        continue;
      }

      history = self->_history;
      duplicateKey4 = [v31 duplicateKey];
      contactDetailKey = [duplicateKey4 contactDetailKey];
      LOBYTE(history) = [(SGSuggestHistory *)history hasContactDetailKey:contactDetailKey];

      if ((history & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v28 = [v26 countByEnumeratingWithState:&v56 objects:v69 count:16];
  }

  while (v28);
LABEL_31:

  v44 = [(SGSqlEntityStore *)self filterOutUndisplayableEntities:v55];
  v45 = [SGDeduper dedupeContactDetails:v44];

  objc_autoreleasePoolPop(context);

  return v45;
}

uint64_t __87__SGSqlEntityStore_Loading__loadAllContactDetailsWithWhereClause_onPrep_dedupeAgainst___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  [SGSqliteDatabase bindParam:a2 name:":detPhone" int64:6];
  [SGSqliteDatabase bindParam:a2 name:":detAddr" int64:7];
  [SGSqliteDatabase bindParam:a2 name:":detEmailAddr" int64:8];
  [SGSqliteDatabase bindParam:a2 name:":detSocialProfile" int64:19];
  [SGSqliteDatabase bindParam:a2 name:":curPhone" int64:9];
  [SGSqliteDatabase bindParam:a2 name:":curAddr" int64:10];
  [SGSqliteDatabase bindParam:a2 name:":curEmailAddr" int64:11];
  [SGSqliteDatabase bindParam:a2 name:":detBirthday" int64:20];
  [SGSqliteDatabase bindParam:a2 name:":curBirthday" int64:21];

  return [SGSqliteDatabase bindParam:a2 name:":curPhotoPath" int64:23];
}

uint64_t __87__SGSqlEntityStore_Loading__loadAllContactDetailsWithWhereClause_onPrep_dedupeAgainst___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2];
  v4 = [v3 duplicateKey];
  v5 = [v4 parentKey];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SGSqlEntityStore+Loading.m" lineNumber:540 description:@"Contact details require a parent"];
  }

  [*(a1 + 40) addObject:v3];

  return 0;
}

- (id)loadAllContactDetailsForRecordId:(id)id
{
  v21[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:488 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  if ([idCopy tableId])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:489 description:{@"RecordId with unexpected table: %@", idCopy}];
  }

  v6 = [(SGSqlEntityStore *)self loadEntityByRecordId:idCopy];
  v7 = v6;
  if (v6)
  {
    duplicateKey = [v6 duplicateKey];
    if ([duplicateKey entityType] == 4)
    {
      duplicateKey2 = [v7 duplicateKey];
      identityKey = [duplicateKey2 identityKey];
      type = [identityKey type];

      if (type != 4)
      {
        v12 = [SGContactDetail contactDetailFromEntity:v7];
        v21[0] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_11:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__SGSqlEntityStore_Loading__loadAllContactDetailsForRecordId___block_invoke;
  v19[3] = &unk_278956070;
  v20 = idCopy;
  v14 = idCopy;
  v15 = [(SGSqlEntityStore *)self loadAllContactDetailsWithWhereClause:@"WHERE masterEntityId = :masterEntityId" onPrep:v19 dedupeAgainst:v13];

  return v15;
}

uint64_t __62__SGSqlEntityStore_Loading__loadAllContactDetailsForRecordId___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rowId];

  return [SGSqliteDatabase bindParam:a2 name:":masterEntityId" int64:v3];
}

- (id)loadContactDetailsWithWhereClause:(id)clause onPrep:(id)prep type:(unint64_t)type dedupeAgainst:(id)against recordId:(id)id
{
  v77 = *MEMORY[0x277D85DE8];
  clauseCopy = clause;
  prepCopy = prep;
  againstCopy = against;
  idCopy = id;
  if (!clauseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"where"}];

    if (againstCopy)
    {
      goto LABEL_3;
    }

LABEL_34:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"details"}];

    goto LABEL_3;
  }

  if (!againstCopy)
  {
    goto LABEL_34;
  }

LABEL_3:
  clauseCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ AND e.entityType IN (:entityTypeDetected, :entityTypeCurated)", clauseCopy];
  v18 = [(SGSqlEntityStore *)self selectEntityQuery:clauseCopy];

  v59 = clauseCopy;
  v57 = idCopy;
  typeCopy = type;
  if (type > 6)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v19 = qword_23210C450[type];
    v20 = qword_23210C488[type];
  }

  v60 = objc_opt_new();
  v58 = againstCopy;
  [v60 addObjectsFromArray:againstCopy];
  v21 = objc_opt_new();
  db = self->_db;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __98__SGSqlEntityStore_Loading__loadContactDetailsWithWhereClause_onPrep_type_dedupeAgainst_recordId___block_invoke;
  v71[3] = &unk_27894FC40;
  v53 = prepCopy;
  v72 = v53;
  v73 = v20;
  v74 = v19;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __98__SGSqlEntityStore_Loading__loadContactDetailsWithWhereClause_onPrep_type_dedupeAgainst_recordId___block_invoke_2;
  v69[3] = &unk_278954818;
  v69[4] = self;
  v23 = v21;
  v70 = v23;
  [(SGSqliteDatabase *)db prepAndRunQuery:v18 onPrep:v71 onRow:v69 onError:0];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v65 objects:v76 count:16];
  selfCopy = self;
  v54 = v18;
  if (v25)
  {
    v26 = v25;
    v27 = *v66;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v66 != v27)
        {
          objc_enumerationMutation(v24);
        }

        tags = [*(*(&v65 + 1) + 8 * i) tags];
        fromReply = [MEMORY[0x277D01FA0] fromReply];
        v31 = [tags containsObject:fromReply];

        if (!v31)
        {
          v32 = 1;
          goto LABEL_16;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0;
LABEL_16:

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v33 = v24;
  v34 = [v33 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (!v34)
  {
    goto LABEL_30;
  }

  v35 = v34;
  v36 = *v62;
  do
  {
    for (j = 0; j != v35; ++j)
    {
      if (*v62 != v36)
      {
        objc_enumerationMutation(v33);
      }

      v38 = *(*(&v61 + 1) + 8 * j);
      if (v32)
      {
        tags2 = [*(*(&v61 + 1) + 8 * j) tags];
        fromReply2 = [MEMORY[0x277D01FA0] fromReply];
        v41 = [tags2 containsObject:fromReply2];

        if (v41)
        {
          continue;
        }
      }

      duplicateKey = [v38 duplicateKey];
      [duplicateKey entityType];
      if ((SGEntityTypeIsContact() & 1) == 0)
      {

LABEL_27:
        v46 = [SGContactDetail contactDetailFromEntity:v38];
        [v60 addObject:v46];

        continue;
      }

      duplicateKey2 = [v38 duplicateKey];
      identityKey = [duplicateKey2 identityKey];
      type = [identityKey type];

      if (type != 4)
      {
        goto LABEL_27;
      }
    }

    v35 = [v33 countByEnumeratingWithState:&v61 objects:v75 count:16];
  }

  while (v35);
LABEL_30:

  v47 = [(SGSqlEntityStore *)selfCopy loadAllContactDetailsFromTableForRecordId:v57 type:typeCopy];
  v48 = [(SGSqlEntityStore *)selfCopy filterOutUndisplayableEntities:v47];
  v49 = [SGDeduper dedupeContactDetails:v48];

  return v49;
}

uint64_t __98__SGSqlEntityStore_Loading__loadContactDetailsWithWhereClause_onPrep_type_dedupeAgainst_recordId___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  [SGSqliteDatabase bindParam:a2 name:":entityTypeDetected" int64:a1[5]];
  v5 = a1[6];

  return [SGSqliteDatabase bindParam:a2 name:":entityTypeCurated" int64:v5];
}

uint64_t __98__SGSqlEntityStore_Loading__loadContactDetailsWithWhereClause_onPrep_type_dedupeAgainst_recordId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2];
  [*(a1 + 40) addObject:v3];

  return 0;
}

- (id)loadEventByDuplicateKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SGSqlEntityStore_Loading__loadEventByDuplicateKey___block_invoke;
  v10[3] = &unk_278956070;
  v6 = keyCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SGSqlEntityStore_Loading__loadEventByDuplicateKey___block_invoke_2;
  v9[3] = &unk_278954658;
  v9[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT e.id FROM entity AS e INNER JOIN entityParentage AS ep ON e.id = ep.childId WHERE e.entityKey = :entityKey AND e.entityType = :entityType AND ep.parentKey IS :parentKey" onPrep:v10 onRow:v9 onError:0];
  if (v13[3] == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(SGSqlEntityStore *)self loadEventForDuplicateKey:v6];
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__SGSqlEntityStore_Loading__loadEventByDuplicateKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) entityKey];
  v5 = [v4 serialize];
  [SGSqliteDatabase bindParam:a2 name:":entityKey" nsstring:v5];

  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":entityType", [*(a1 + 32) entityType]);
  v6 = [*(a1 + 32) parentKey];

  if (v6)
  {
    v8 = [*(a1 + 32) parentKey];
    v7 = [v8 serialize];
    [SGSqliteDatabase bindParam:a2 name:":parentKey" nsstring:v7];
  }

  else
  {

    [SGSqliteDatabase bindParamToNull:a2 name:":parentKey"];
  }
}

- (id)loadEventByKeyForOldCodePathTesting:(id)testing
{
  testingCopy = testing;
  v5 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE e.entityKey = :entityKey AND e.entityType = :entityType AND ep.parentKey"];
  parentKey = [testingCopy parentKey];

  v7 = objc_autoreleasePoolPush();
  if (parentKey)
  {
    v8 = @" = :parentKey";
  }

  else
  {
    v8 = @" is NULL";
  }

  v9 = [v5 stringByAppendingString:v8];

  objc_autoreleasePoolPop(v7);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__24709;
  v21 = __Block_byref_object_dispose__24710;
  v22 = 0;
  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SGSqlEntityStore_Loading__loadEventByKeyForOldCodePathTesting___block_invoke;
  v15[3] = &unk_278956070;
  v11 = testingCopy;
  v16 = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SGSqlEntityStore_Loading__loadEventByKeyForOldCodePathTesting___block_invoke_2;
  v14[3] = &unk_278955878;
  v14[4] = self;
  v14[5] = &v17;
  [(SGSqliteDatabase *)db prepAndRunQuery:v9 onPrep:v15 onRow:v14 onError:0];
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __65__SGSqlEntityStore_Loading__loadEventByKeyForOldCodePathTesting___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) entityKey];
  v5 = [v4 serialize];
  [SGSqliteDatabase bindParam:a2 name:":entityKey" nsstring:v5];

  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":entityType", [*(a1 + 32) entityType]);
  v6 = [*(a1 + 32) parentKey];

  if (v6)
  {
    v8 = [*(a1 + 32) parentKey];
    v7 = [v8 serialize];
    [SGSqliteDatabase bindParam:a2 name:":parentKey" nsstring:v7];
  }
}

uint64_t __65__SGSqlEntityStore_Loading__loadEventByKeyForOldCodePathTesting___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) eventFromSqlResult:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)loadContactDetailsForRecordId:(id)id type:(unint64_t)type
{
  v21[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  if ([idCopy tableId])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:353 description:{@"RecordId with unexpected table: %@", idCopy}];
  }

  if (type == 2)
  {
    v8 = [(SGSqlEntityStore *)self loadEntityByRecordId:idCopy];
    if (!v8)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:360 description:{@"No record found with id: %@", idCopy}];
    }

    duplicateKey = [v8 duplicateKey];
    entityType = [duplicateKey entityType];

    if (entityType == 4)
    {
      v11 = [SGContactDetail contactDetailFromEntity:v8];
      v21[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__SGSqlEntityStore_Loading__loadContactDetailsForRecordId_type___block_invoke;
  v19[3] = &unk_278956070;
  v20 = idCopy;
  v13 = idCopy;
  v14 = [(SGSqlEntityStore *)self loadContactDetailsWithWhereClause:@"WHERE masterEntityId = :masterEntityId" onPrep:v19 type:type dedupeAgainst:v12 recordId:v13];

  return v14;
}

uint64_t __64__SGSqlEntityStore_Loading__loadContactDetailsForRecordId_type___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rowId];

  return [SGSqliteDatabase bindParam:a2 name:":masterEntityId" int64:v3];
}

- (id)loadStorageContactByRecordId:(id)id error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = [(SGSqlEntityStore *)self loadEntityByRecordId:idCopy];
  if (v7)
  {
    v8 = [SGContactEntity contactEntityFromEntity:v7];
    v9 = [SGStorageContact contactFromContactEntity:v8];
  }

  else
  {
    idCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not load contact (recordId=%@)", idCopy];
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = idCopy;
      _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [mainBundle localizedStringForKey:idCopy value:&stru_284703F00 table:0];
      v18 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *error = [v12 errorWithDomain:@"SGSqlEntityStoreErrorDomain" code:0 userInfo:v15];
    }

    v9 = 0;
  }

  return v9;
}

- (id)masterEntityIdForContactOrContactDetailRecord:(id)record
{
  recordCopy = record;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  db = self->_db;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SGSqlEntityStore_Loading__masterEntityIdForContactOrContactDetailRecord___block_invoke;
  v10[3] = &unk_278955E30;
  v6 = recordCopy;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SGSqlEntityStore_Loading__masterEntityIdForContactOrContactDetailRecord___block_invoke_2;
  v9[3] = &unk_278955EA0;
  v9[4] = &v12;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT CASE WHEN masterEntityId > 0 THEN masterEntityId ELSE id END FROM entity WHERE id IN (SELECT CASE WHEN entityType = :contact THEN id ELSE groupId END FROM entity WHERE id=:id)" onPrep:v10 onRow:v9 onError:0];
  if (v13[3] == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:?];
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__SGSqlEntityStore_Loading__masterEntityIdForContactOrContactDetailRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":contact" toInteger:4];
  [v3 bindNamedParam:":id" toInteger:{objc_msgSend(*(a1 + 32), "numericValue")}];
}

- (id)loadContactForStorageContact:(id)contact usingSerializedContactCache:(BOOL)cache
{
  cacheCopy = cache;
  contactCopy = contact;
  if ([(SGSuggestHistory *)self->_history hasStorageContact:contactCopy])
  {
    v7 = 0;
  }

  else
  {
    if (!cacheCopy || (-[SGSqlEntityStore loadSerializedContactForId:](self, "loadSerializedContactForId:", [contactCopy masterEntityId]), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [contactCopy convertToContact:self];
    }

    [(SGSqlEntityStore *)self filterOutRejectedDetailsFromContact:v7];
  }

  return v7;
}

- (id)loadEntitiesFoundInEmail:(id)email entityType:(int64_t)type
{
  emailCopy = email;
  v6 = [[SGDuplicateKey alloc] initWithEntityKey:emailCopy entityType:5 parentKey:0];

  v7 = objc_opt_new();
  v8 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE ep.parentKey = :duplicateKeyForEmail AND e.entityType = :entityType"];
  db = self->_db;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__SGSqlEntityStore_Loading__loadEntitiesFoundInEmail_entityType___block_invoke;
  v17[3] = &unk_278955E30;
  v18 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SGSqlEntityStore_Loading__loadEntitiesFoundInEmail_entityType___block_invoke_2;
  v14[3] = &unk_278955980;
  v10 = v7;
  v15 = v10;
  selfCopy = self;
  v11 = v6;
  [(SGSqliteDatabase *)db prepAndRunSQL:v8 onPrep:v17 onRow:v14 onError:0];
  v12 = v10;

  return v10;
}

void __65__SGSqlEntityStore_Loading__loadEntitiesFoundInEmail_entityType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serialize];
  [v3 bindNamedParam:":duplicateKeyForEmail" toNonnullNSString:v4];
}

uint64_t __65__SGSqlEntityStore_Loading__loadEntitiesFoundInEmail_entityType___block_invoke_2(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 entityFromSqlResult:{objc_msgSend(a2, "stmt")}];
  [v3 addObject:v6];

  return *MEMORY[0x277D42690];
}

- (id)loadEntitiesByEntityKey:(id)key entityType:(int64_t)type resolveDuplicates:(id)duplicates
{
  keyCopy = key;
  duplicatesCopy = duplicates;
  v10 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE e.entityKey = :entityKey AND e.entityType = :entityType"];
  v11 = objc_opt_new();
  db = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__SGSqlEntityStore_Loading__loadEntitiesByEntityKey_entityType_resolveDuplicates___block_invoke;
  v20[3] = &unk_27894FC18;
  v21 = keyCopy;
  typeCopy = type;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SGSqlEntityStore_Loading__loadEntitiesByEntityKey_entityType_resolveDuplicates___block_invoke_2;
  v17[3] = &unk_278954818;
  v18 = v11;
  selfCopy = self;
  v13 = v11;
  v14 = keyCopy;
  [(SGSqliteDatabase *)db prepAndRunQuery:v10 onPrep:v20 onRow:v17 onError:0];
  v15 = duplicatesCopy[2](duplicatesCopy, v13);

  return v15;
}

uint64_t __82__SGSqlEntityStore_Loading__loadEntitiesByEntityKey_entityType_resolveDuplicates___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) serialize];
  [SGSqliteDatabase bindParam:a2 name:":entityKey" nsstring:v4];

  v5 = *(a1 + 40);

  return [SGSqliteDatabase bindParam:a2 name:":entityType" int64:v5];
}

uint64_t __82__SGSqlEntityStore_Loading__loadEntitiesByEntityKey_entityType_resolveDuplicates___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) entityFromSqlResult:a2];
  [v2 addObject:v3];

  return 0;
}

- (id)loadEntityByKey:(id)key
{
  keyCopy = key;
  [keyCopy entityType];
  if (SGEntityTypeIsMessage())
  {
    messageKey = [keyCopy messageKey];
    v6 = [(SGSqlEntityStore *)self _loadMessageByKey:messageKey];
  }

  else
  {
    v7 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE e.entityKey = :entityKey AND e.entityType = :entityType AND ep.parentKey"];
    parentKey = [keyCopy parentKey];

    v9 = objc_autoreleasePoolPush();
    if (parentKey)
    {
      v10 = @" = :parentKey";
    }

    else
    {
      v10 = @" is NULL";
    }

    messageKey = [v7 stringByAppendingString:v10];

    objc_autoreleasePoolPop(v9);
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__24709;
    v20 = __Block_byref_object_dispose__24710;
    v21 = 0;
    db = self->_db;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__SGSqlEntityStore_Loading__loadEntityByKey___block_invoke;
    v14[3] = &unk_278956070;
    v15 = keyCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__SGSqlEntityStore_Loading__loadEntityByKey___block_invoke_2;
    v13[3] = &unk_278955878;
    v13[4] = self;
    v13[5] = &v16;
    [(SGSqliteDatabase *)db prepAndRunQuery:messageKey onPrep:v14 onRow:v13 onError:0];
    v6 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  return v6;
}

void __45__SGSqlEntityStore_Loading__loadEntityByKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) entityKey];
  v5 = [v4 serialize];
  [SGSqliteDatabase bindParam:a2 name:":entityKey" nsstring:v5];

  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":entityType", [*(a1 + 32) entityType]);
  v6 = [*(a1 + 32) parentKey];

  if (v6)
  {
    v8 = [*(a1 + 32) parentKey];
    v7 = [v8 serialize];
    [SGSqliteDatabase bindParam:a2 name:":parentKey" nsstring:v7];
  }
}

uint64_t __45__SGSqlEntityStore_Loading__loadEntityByKey___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)_loadMessageByKey:(id)key
{
  v55 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  db = self->_db;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke;
  v52[3] = &unk_278955E30;
  v7 = keyCopy;
  v53 = v7;
  v8 = [(SGSqliteDatabase *)db selectColumns:&unk_28474A7C8 fromTable:@"emailMetadata" whereClause:@"key = :key" onPrep:v52 onError:0];
  if (objc_msgSend_count(v8) >= 2)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:165 description:@"_loadMessageByKey matched multiple rows"];
  }

  if (objc_msgSend_count(v8))
  {
    firstObject = [v8 firstObject];
    v10 = objc_opt_new();
    v11 = [firstObject objectForKeyedSubscript:@"type"];
    longLongValue = [v11 longLongValue];

    v13 = MEMORY[0x277D020C8];
    v14 = [firstObject objectForKeyedSubscript:@"id"];
    v15 = [v13 recordIdForEmailWithRowId:{objc_msgSend(v14, "longLongValue")}];
    [v10 setRecordId:v15];

    v16 = [[SGDuplicateKey alloc] initWithEntityKey:v7 entityType:longLongValue parentKey:0];
    [v10 setDuplicateKey:v16];

    v17 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
    [v10 setExtractionInfo:v17];

    v18 = [firstObject objectForKeyedSubscript:@"sourceKey"];
    [v10 setSourceKey:v18];

    v19 = objc_alloc(MEMORY[0x277CC3450]);
    v20 = [firstObject objectForKeyedSubscript:@"author"];
    v21 = [v19 sg_initWithSerializedForm:v20];

    if (!v21)
    {
      v22 = MEMORY[0x277D020E0];
      v23 = [firstObject objectForKeyedSubscript:@"author"];
      v24 = [v22 namedEmailAddressWithFieldValue:v23];

      if (v24)
      {
        v25 = objc_alloc(MEMORY[0x277CC3450]);
        v21 = [v25 sg_initWithNamedEmailAddress:v24];
      }

      else
      {
        v21 = 0;
      }
    }

    [v10 setAuthor:v21];
    [v10 setContentRangeOfInterest:{0x7FFFFFFFFFFFFFFFLL, 0}];
    if (![(SGDatabaseJournal *)self->_snippetsJournal journaling])
    {
      snippetDb = self->_snippetDb;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke_2;
      v50[3] = &unk_278956070;
      v51 = v10;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke_3;
      v48[3] = &unk_278954708;
      v49 = v51;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke_4;
      v46[3] = &unk_278956108;
      v47 = v49;
      [(SGSqliteDatabase *)snippetDb prepAndRunQuery:@"SELECT title onPrep:content FROM emailSnippets WHERE emailId = :emailId" onRow:v50 onError:v48, v46];
    }

    v27 = [firstObject objectForKeyedSubscript:@"creationTimestamp"];
    if (v27)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v27 != null)
      {
        [v27 doubleValue];
        v30 = v29;
        [v10 setLastModifiedTimestamp:?];
        [v10 setCreationTimestamp:v30];
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = [firstObject objectForKeyedSubscript:@"tags"];
    v32 = SGEntityTagsFromStorage(v31);

    v33 = [v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v43;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [v10 addTag:*(*(&v42 + 1) + 8 * i)];
        }

        v34 = [v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v34);
    }

    recordId = [v10 recordId];
    [v10 setMasterEntityId:{objc_msgSend(recordId, "rowId")}];

    v38 = [firstObject objectForKeyedSubscript:@"state"];
    [v10 setState:{objc_msgSend(v38, "unsignedIntValue")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serialize];
  [v3 bindNamedParam:":key" toNSString:v4];
}

void __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) recordId];
  +[SGSqliteDatabase bindParam:name:int64:](SGSqliteDatabase, "bindParam:name:int64:", a2, ":emailId", [v3 rowId]);
}

uint64_t __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_nsstring(a2, 0);
  [*(a1 + 32) setTitle:v4];

  v5 = sqlite3_column_nsstring(a2, 1);
  [*(a1 + 32) setContent:v5];

  return 1;
}

uint64_t __47__SGSqlEntityStore_Loading___loadMessageByKey___block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recordId];
    v5 = 134217984;
    v6 = [v3 rowId];
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "failed to load snippet data for email entity: %lld", &v5, 0xCu);
  }

  return 1;
}

- (id)loadOriginByRecordId:(id)id
{
  v4 = [(SGSqlEntityStore *)self loadEntityByRecordId:id];
  v5 = [v4 loadOrigin:self];

  return v5;
}

- (id)allEntitiesOfType:(int64_t)type limitedTo:(unint64_t)to onlyMLExtractions:(BOOL)extractions
{
  v8 = &stru_284703F00;
  if (extractions)
  {
    v8 = @"AND ep.modelVersion != 0";
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = v8;
  v11 = [[v9 alloc] initWithFormat:@"WHERE e.entityType = :entityType %@ LIMIT :limit", v10];

  v12 = [(SGSqlEntityStore *)self selectEntityQuery:v11];

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:to];
  db = self->_db;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__SGSqlEntityStore_Loading__allEntitiesOfType_limitedTo_onlyMLExtractions___block_invoke;
  v21[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v21[4] = type;
  v21[5] = to;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__SGSqlEntityStore_Loading__allEntitiesOfType_limitedTo_onlyMLExtractions___block_invoke_2;
  v19[3] = &unk_278954818;
  v19[4] = self;
  v15 = v13;
  v20 = v15;
  [(SGSqliteDatabase *)db prepAndRunQuery:v12 onPrep:v21 onRow:v19 onError:0];
  v16 = v20;
  v17 = v15;

  return v15;
}

uint64_t __75__SGSqlEntityStore_Loading__allEntitiesOfType_limitedTo_onlyMLExtractions___block_invoke(uint64_t a1, uint64_t a2)
{
  [SGSqliteDatabase bindParam:a2 name:":entityType" int64:*(a1 + 32)];
  v4 = *(a1 + 40);

  return [SGSqliteDatabase bindParam:a2 name:":limit" int64:v4];
}

uint64_t __75__SGSqlEntityStore_Loading__allEntitiesOfType_limitedTo_onlyMLExtractions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
    v4 = &SGSqliteDatabaseKeepGoing;
  }

  else
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "Unable to load entity from database", v7, 2u);
    }

    v4 = &SGSqliteDatabaseStop;
  }

  return *v4;
}

- (id)loadEntityByRecordId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([idCopy tableId])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqlEntityStore+Loading.m" lineNumber:100 description:{@"No support for loading entities from non-legacy recordIds (tableId=%du, internalEntityId=%lld)", objc_msgSend(idCopy, "tableId"), objc_msgSend(idCopy, "internalEntityId")}];
  }

  v6 = [(SGSqlEntityStore *)self selectEntityQuery:@"WHERE e.id = :rowId"];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__24709;
  v21 = __Block_byref_object_dispose__24710;
  v22 = 0;
  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__SGSqlEntityStore_Loading__loadEntityByRecordId___block_invoke;
  v15[3] = &unk_278956070;
  v8 = idCopy;
  v16 = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__SGSqlEntityStore_Loading__loadEntityByRecordId___block_invoke_2;
  v14[3] = &unk_278955878;
  v14[4] = self;
  v14[5] = &v17;
  [(SGSqliteDatabase *)db prepAndRunQuery:v6 onPrep:v15 onRow:v14 onError:0];
  v9 = v18[5];
  if (!v9)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "Could not load event with record id %@", buf, 0xCu);
    }

    v9 = v18[5];
  }

  v11 = v9;

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __50__SGSqlEntityStore_Loading__loadEntityByRecordId___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rowId];

  return [SGSqliteDatabase bindParam:a2 name:":rowId" int64:v3];
}

uint64_t __50__SGSqlEntityStore_Loading__loadEntityByRecordId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) entityFromSqlResult:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)loadSourceKeyByRecordId:(id)id
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24709;
  v18 = __Block_byref_object_dispose__24710;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SGSqlEntityStore_Loading__loadSourceKeyByRecordId___block_invoke;
  v12[3] = &unk_278956070;
  v6 = idCopy;
  v13 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SGSqlEntityStore_Loading__loadSourceKeyByRecordId___block_invoke_2;
  v11[3] = &unk_278954658;
  v11[4] = &v14;
  [(SGSqliteDatabase *)db prepAndRunQuery:@"SELECT ep.sourceKey FROM entity AS e JOIN entityParentage AS ep ON ep.childId = e.id WHERE e.id = :rowId" onPrep:v12 onRow:v11 onError:0];
  v7 = v15[5];
  if (!v7)
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "Could not load duplicate key with record id %@", buf, 0xCu);
    }

    v7 = v15[5];
  }

  v9 = v7;

  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __53__SGSqlEntityStore_Loading__loadSourceKeyByRecordId___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) rowId];

  return [SGSqliteDatabase bindParam:a2 name:":rowId" int64:v3];
}

uint64_t __53__SGSqlEntityStore_Loading__loadSourceKeyByRecordId___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_nsstring(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)loadDuplicateKeyByRecordId:(id)id
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24709;
  v18 = __Block_byref_object_dispose__24710;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SGSqlEntityStore_Loading__loadDuplicateKeyByRecordId___block_invoke;
  v12[3] = &unk_278955E30;
  v6 = idCopy;
  v13 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SGSqlEntityStore_Loading__loadDuplicateKeyByRecordId___block_invoke_2;
  v11[3] = &unk_278955EA0;
  v11[4] = &v14;
  [(SGSqliteDatabase *)db prepAndRunSQL:@"SELECT e.entityKey onPrep:e.entityType onRow:ep.parentKey FROM entity AS e JOIN entityParentage AS ep ON ep.childId = e.id WHERE e.id = :rowId" onError:v12, v11, 0];
  v7 = v15[5];
  if (!v7)
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "Could not load duplicate key with record id %@", buf, 0xCu);
    }

    v7 = v15[5];
  }

  v9 = v7;

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __56__SGSqlEntityStore_Loading__loadDuplicateKeyByRecordId___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":rowId" toInt64:{objc_msgSend(v2, "rowId")}];
}

uint64_t __56__SGSqlEntityStore_Loading__loadDuplicateKeyByRecordId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"entityKey" table:"entity"];
  v5 = [v3 getIntegerForColumnName:"entityType" table:"entity"];
  v6 = [v3 getNSStringForColumnName:"parentKey" table:"entityParentage"];

  v7 = [[SGDuplicateKey alloc] initWithSerializedEntityKey:v4 entityType:v5 serializedParentKey:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = MEMORY[0x277D42698];
  return *v10;
}

@end