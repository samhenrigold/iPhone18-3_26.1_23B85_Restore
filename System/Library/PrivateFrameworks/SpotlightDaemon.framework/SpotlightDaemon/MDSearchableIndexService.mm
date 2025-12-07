@interface MDSearchableIndexService
- (BOOL)_canProcessIndexDataForBundle:(id)bundle itemsDecoder:(id)decoder deletesDecoder:(id)deletesDecoder clientState:(id)state clientStateName:(id)name outError:(id *)error;
- (BOOL)_deleteInteractions:(id)interactions forGroup:(BOOL)group;
- (BOOL)_handleAssetsCommand:(id)command;
- (BOOL)addInteraction:(id)interaction;
- (BOOL)changeState:(id)state;
- (BOOL)checkIn:(id)in;
- (BOOL)dataMigration:(id)migration;
- (BOOL)deleteActionsBeforeTime:(id)time;
- (BOOL)deleteActionsWithIdentifiers:(id)identifiers;
- (BOOL)deleteAllInteractions:(id)interactions;
- (BOOL)deleteAllUserActivities:(id)activities;
- (BOOL)deleteBundle:(id)bundle;
- (BOOL)deleteDomains:(id)domains;
- (BOOL)deleteSinceDate:(id)date;
- (BOOL)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers;
- (BOOL)donateRelevantActions:(id)actions;
- (BOOL)fetchAttributes:(id)attributes;
- (BOOL)fetchBundleIDs:(id)ds;
- (BOOL)fetchCacheFileDescriptors:(id)descriptors;
- (BOOL)fetchClientState:(id)state;
- (BOOL)finishIndexingLocked:(id)locked;
- (BOOL)handleCommand:(const char *)command info:(id)info;
- (BOOL)issueCacheCommand:(id)command;
- (BOOL)issueCommand:(id)command;
- (BOOL)openJournalFile:(id)file;
- (BOOL)photosLibraryDeleted:(id)deleted;
- (BOOL)prepareIndexingLocked:(id)locked;
- (BOOL)processActivities:(id)activities;
- (BOOL)processIndexData:(id)data;
- (BOOL)transferDeleteJournals:(id)journals;
- (BOOL)updateCorrections:(id)corrections;
- (BOOL)willModify:(id)modify;
- (CSIndexingQueue)activityQueue;
- (NSString)processDescription;
- (id)_checkBundleIDHelper:(id)helper;
- (id)_checkItems:(id)items identifiers:(id)identifiers protectionClass:(id)class bundleID:(id)d;
- (id)_checkNonEmptyBundle:(id)bundle protectionClass:(id)class;
- (void)_deleteAllSearchableItemsWithBundleID:(id)d protectionClass:(id)class shouldGC:(BOOL)c options:(int64_t)options deleteAllReason:(int64_t)reason completionHandler:(id)handler;
- (void)_dispatchActivities:(id)activities;
- (void)_dispatchActivities:(id)activities bundleID:(id)d;
- (void)_dispatchToReceiversWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l deletes:(id)deletes;
- (void)_forceAppWithBundleID:(id)d toPerformJob:(id)job;
- (void)_issueCommand:(id)command outFileDescriptor:(int)descriptor searchContext:(id)context completionHandler:(id)handler;
- (void)_issueDiagnose:(int)diagnose bundleID:(id)d logQuery:(BOOL)query completionHandler:(id)handler;
- (void)_makeActivityQueueIfNecessary;
- (void)_processIndexDataForBundle:(id)bundle protectionClass:(id)class personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)self0 expectedClientState:(id)self1 clientStateName:(id)self2 deletes:(id)self3 completionHandler:(id)self4;
- (void)_runLibraryDeletedCommand:(id)command;
- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state protectionClass:(id)class forBundleID:(id)d forUTIType:(id)type options:(int64_t)options;
- (void)checkInWithProtectionClass:(id)class completionHandler:(id)handler;
- (void)deleteActionsBeforeTime:(double)time options:(int64_t)options completionHandler:(id)handler;
- (void)deleteActionsWithIdentifiers:(id)identifiers options:(int64_t)options completionHandler:(id)handler;
- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)deleteAllUserActivities:(id)activities fromClient:(id)client options:(int64_t)options completionHandler:(id)handler;
- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)deleteSearchableItemsSinceDate:(id)date protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d fromClient:(id)client options:(int64_t)options completionHandler:(id)handler;
- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)donateRelevantActions:(id)actions bundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)fetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos reply:(id)self0 completionHandler:(id)self1;
- (void)fetchCacheFileDescriptorsForProtectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos reply:(id)reply completionHandler:(id)self0;
- (void)fetchLastClientStateWithProtectionClass:(id)class forBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler;
- (void)finishIndexingWhileLocked:(id)locked protectionClass:(id)class completionHandler:(id)handler;
- (void)flushUserActivities;
- (void)indexFromBundle:(id)bundle protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)state expectedClientState:(id)self0 clientStateName:(id)self1 deletes:(id)self2 userActivities:(BOOL)self3 completionHandler:(id)self4;
- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state clientStateName:(id)name protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)self0;
- (void)performDataMigrationWithTimeout:(id)timeout completionHandler:(id)handler;
- (void)performIndexJob:(id)job protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)prepareIndexingWhileLocked:(id)locked protectionClass:(id)class holdAssertionFor:(double)for completionHandler:(id)handler;
- (void)provideDataForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler;
- (void)provideFileURLForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler;
- (void)transferDeleteJournalsForProtectionClass:(const char *)class toDirectory:(int)directory withCompletionHandler:(id)handler;
- (void)updateCorrectionsWithFilePath:(id)path options:(int64_t)options completionHandler:(id)handler;
- (void)userPerformedAction:(id)action withItem:(id)item protectionClass:(id)class;
- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
@end

@implementation MDSearchableIndexService

void __57__MDSearchableIndexService__makeActivityQueueIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = logForCSLogCategoryDefault(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Flushing UA queue, count:%lu", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchActivities:v3];

  objc_autoreleasePoolPop(v4);
}

- (void)_makeActivityQueueIfNecessary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activityQueue && ([MEMORY[0x277CC3518] disabledUserActivities] & 1) == 0)
  {
    objc_initWeak(&location, selfCopy);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __57__MDSearchableIndexService__makeActivityQueueIfNecessary__block_invoke;
    v10 = &unk_278937730;
    objc_copyWeak(&v11, &location);
    v3 = [&v7 copy];
    v4 = objc_alloc(MEMORY[0x277CC3428]);
    v5 = [v4 initWithIdleTime:1 idleTimeLeeway:0 maximumBatchSize:v3 mode:1.0 notifyBlock:{0.25, v7, v8, v9, v10}];
    activityQueue = selfCopy->_activityQueue;
    selfCopy->_activityQueue = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (CSIndexingQueue)activityQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activityQueue;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)flushUserActivities
{
  activityQueue = [(MDSearchableIndexService *)self activityQueue];
  [activityQueue flush];
}

- (NSString)processDescription
{
  clientConnection = [(MDSearchableIndexService *)self clientConnection];
  v3 = clientConnection;
  if (clientConnection)
  {
    v4 = [MEMORY[0x277CC3510] processNameForPID:xpc_connection_get_pid(clientConnection)];
  }

  else
  {
    v4 = &stru_2846BD100;
  }

  return v4;
}

- (id)_checkNonEmptyBundle:(id)bundle protectionClass:(id)class
{
  if (bundle)
  {
    v5 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:class bundleID:bundle];
  }

  else
  {
    v6 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkNonEmptyBundle:? protectionClass:?];
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
  }

  return v5;
}

- (id)_checkItems:(id)items identifiers:(id)identifiers protectionClass:(id)class bundleID:(id)d
{
  v58 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  if (self->_isInternal)
  {
    goto LABEL_2;
  }

  clientBundleID = [(MDSearchableIndexService *)self clientBundleID];

  if (!clientBundleID)
  {
    v38 = logForCSLogCategoryIndex(v33);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkItems:? identifiers:? protectionClass:? bundleID:?];
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    goto LABEL_44;
  }

  v34 = [(MDSearchableIndexService *)self _checkBundleIDHelper:dCopy];
  v35 = v34;
  if (v34)
  {
    v36 = logForCSLogCategoryIndex(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
    }

    v37 = v35;
LABEL_43:
    v24 = v37;

    goto LABEL_44;
  }

  v42 = geteuid();
  clientUID = [(MDSearchableIndexService *)self clientUID];
  if (v42 != clientUID)
  {
    v44 = logForCSLogCategoryIndex(clientUID);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkItems:? identifiers:? protectionClass:? bundleID:?];
    }

    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    goto LABEL_43;
  }

LABEL_2:
  v47 = classCopy;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = *v53;
  v46 = itemsCopy;
  while (2)
  {
    v18 = dCopy;
    v19 = identifiersCopy;
    for (i = 0; i != v16; ++i)
    {
      if (*v53 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v52 + 1) + 8 * i);
      _isFullyFormed = [v21 _isFullyFormed];
      if ((_isFullyFormed & 1) == 0)
      {
        v39 = logForCSLogCategoryIndex(_isFullyFormed);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
        }

        v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
        goto LABEL_34;
      }

      bundleID = [v21 bundleID];
      v24 = [(MDSearchableIndexService *)self _checkBundleIDHelper:bundleID];

      if (v24)
      {
        v40 = logForCSLogCategoryIndex(v25);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
        }

LABEL_34:
        classCopy = v47;

        identifiersCopy = v19;
        dCopy = v18;
        itemsCopy = v46;
        goto LABEL_44;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v52 objects:v57 count:16];
    identifiersCopy = v19;
    dCopy = v18;
    itemsCopy = v46;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_11:

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = identifiersCopy;
  v27 = [v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v49;
    while (2)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v26);
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v41 = logForCSLogCategoryIndex(isKindOfClass);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
          }

          v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];

          goto LABEL_38;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_38:
  classCopy = v47;
LABEL_44:

  return v24;
}

- (id)_checkBundleIDHelper:(id)helper
{
  helperCopy = helper;
  if (!helperCopy || (-[MDSearchableIndexService clientBundleID](self, "clientBundleID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [helperCopy isEqualToString:v5], v5, (v6 & 1) != 0) || self->_isInternal)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
  }

  return v7;
}

- (BOOL)_canProcessIndexDataForBundle:(id)bundle itemsDecoder:(id)decoder deletesDecoder:(id)deletesDecoder clientState:(id)state clientStateName:(id)name outError:(id *)error
{
  bundleCopy = bundle;
  decoderCopy = decoder;
  deletesDecoderCopy = deletesDecoder;
  stateCopy = state;
  nameCopy = name;
  if (!bundleCopy)
  {
    bundleCopy = [(MDSearchableIndexService *)self clientBundleID];
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:bundleCopy];
  if (v19)
  {
    goto LABEL_9;
  }

  if (stateCopy && !nameCopy)
  {
    v20 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _canProcessIndexDataForBundle:itemsDecoder:deletesDecoder:clientState:clientStateName:outError:];
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1002 userInfo:0];
LABEL_9:
    v21 = v19 == 0;
    goto LABEL_10;
  }

  if (stateCopy)
  {
    v19 = 0;
    v21 = 1;
  }

  else
  {
    if (decoderCopy && (objc_msgSend_obj(decoderCopy), _MDPlistGetPlistObjectType() == 240))
    {
      objc_msgSend_obj(decoderCopy);
      v21 = _MDPlistArrayGetCount() != 0;
    }

    else
    {
      v21 = 0;
    }

    if (deletesDecoderCopy && (objc_msgSend_obj(deletesDecoderCopy), _MDPlistGetPlistObjectType() == 240))
    {
      objc_msgSend_obj(deletesDecoderCopy);
      Count = _MDPlistArrayGetCount();
      v19 = 0;
      v21 |= Count != 0;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_10:
  if (error)
  {
    v19 = v19;
    *error = v19;
  }

  return v21 & 1;
}

- (void)_processIndexDataForBundle:(id)bundle protectionClass:(id)class personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)self0 expectedClientState:(id)self1 clientStateName:(id)self2 deletes:(id)self3 completionHandler:(id)self4
{
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
  if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    indexer = self->_indexer;
    LOBYTE(v30) = 1;
    v28 = itemsCopy;
    v29 = textCopy;
    [(MDIndexer *)indexer indexFromBundle:bundleCopy protectionClass:classCopy personaID:dCopy options:options items:itemsCopy itemsText:textCopy itemsHTML:lCopy clientState:stateCopy expectedClientState:clientStateCopy clientStateName:nameCopy deletes:deletesCopy canCreateNewIndex:v30 completionHandler:handlerCopy];
  }

  else
  {
    v29 = textCopy;
    v28 = itemsCopy;
    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_7:
}

- (void)_dispatchToReceiversWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l deletes:(id)deletes
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classCopy = class;
  itemsCopy = items;
  textCopy = text;
  lCopy = l;
  deletesCopy = deletes;
  v20 = deletesCopy;
  v21 = &off_231AED000;
  if (deletesCopy)
  {
    v22 = logForCSLogCategoryDefault(deletesCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if ([SpotlightSender jobForTest:options])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v28 = v23;
      v29 = lCopy;
      if ([SpotlightSender jobForDuet:options])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      if ([SpotlightSender jobForSuggestions:options])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      *buf = 138413570;
      if ([SpotlightSender jobForTextUnderstanding:options])
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v40 = dCopy;
      v41 = 2048;
      optionsCopy = options;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v24;
      lCopy = v29;
      v47 = 2112;
      v48 = v25;
      v21 = &off_231AED000;
      v49 = 2112;
      v50 = v26;
      _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "_dispatchToReceivers, deleteSearchableItemsWithEncodedIdentifiers, bundleID:%@, options:0x%lx, test/duet/suggestions/textunderstanding:%@/%@/%@/%@", buf, 0x3Eu);
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = *(v21 + 179);
    v36[2] = __119__MDSearchableIndexService__dispatchToReceiversWithBundleID_protectionClass_options_items_itemsText_itemsHTML_deletes___block_invoke;
    v36[3] = &unk_278937758;
    v37 = v20;
    v38 = dCopy;
    [SpotlightSender dispatchWithOptions:options block:v36];
  }

  if (itemsCopy)
  {
    v27 = logForCSLogCategoryDefault(deletesCopy);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [MDSearchableIndexService _dispatchToReceiversWithBundleID:protectionClass:options:items:itemsText:itemsHTML:deletes:];
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = *(v21 + 179);
    v30[2] = __119__MDSearchableIndexService__dispatchToReceiversWithBundleID_protectionClass_options_items_itemsText_itemsHTML_deletes___block_invoke_52;
    v30[3] = &unk_278937780;
    v31 = lCopy;
    v32 = textCopy;
    v33 = itemsCopy;
    v34 = dCopy;
    v35 = classCopy;
    [SpotlightSender dispatchWithOptions:options block:v30];
  }
}

void __119__MDSearchableIndexService__dispatchToReceiversWithBundleID_protectionClass_options_items_itemsText_itemsHTML_deletes___block_invoke_52(void *a1, unint64_t a2)
{
  v4 = 0;
  if (a2 <= 5 && ((1 << a2) & 0x25) != 0)
  {
    v5 = a1[4];
    if (v5 || (v5 = a1[5]) != 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;
  [SpotlightSender addOrUpdateSearchableItems:a1[6] itemsContent:v4 bundleID:a1[7] protectionClass:a1[8] client:a2];
}

- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v17 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v18 = logForCSLogCategoryIndex(clientBundleID);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v24 = dCopy;
    v25 = 2048;
    v26 = [identifiersCopy count];
    v27 = 2112;
    v28 = identifiersCopy;
    v29 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEBUG, "(%@) willModifySearchableItemsWithIdentifiers, identifiers/%ld:%@, options:0x%lx", buf, 0x2Au);
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:identifiersCopy protectionClass:classCopy bundleID:dCopy];
  if (v19)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v19);
LABEL_15:
    }
  }

  else
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __123__MDSearchableIndexService_willModifySearchableItemsWithIdentifiers_protectionClass_forBundleID_options_completionHandler___block_invoke;
      v21[3] = &unk_278935048;
      v22 = handlerCopy;
      [(MDIndexer *)indexer willModifySearchableItemsWithIdentifiers:identifiersCopy protectionClass:classCopy forBundleID:dCopy options:options completionHandler:v21];
      handlerCopy = v22;
      goto LABEL_15;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v17);
}

uint64_t __123__MDSearchableIndexService_willModifySearchableItemsWithIdentifiers_protectionClass_forBundleID_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d fromClient:(id)client options:(int64_t)options completionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  clientCopy = client;
  handlerCopy = handler;
  v19 = objc_autoreleasePoolPush();
  v20 = v19;
  clientBundleID = self->_clientBundleID;
  if (dCopy)
  {
    if (clientBundleID)
    {
      v19 = [(NSString *)dCopy isEqualToString:?];
      if (!v19)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v19 = clientBundleID;
    dCopy = v19;
  }

  if (!self->_protectionClass)
  {

    classCopy = 0;
  }

LABEL_8:
  v22 = logForCSLogCategoryIndex(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = dCopy;
    v40 = 2112;
    v41 = classCopy;
    v42 = 2048;
    v43 = [identifiersCopy count];
    _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "(%@) deleteSearchableItemsWithDomainIdentifiers, protectionClass:%@, domainIdentifier num:%ld", buf, 0x20u);
  }

  v24 = logForCSLogCategoryIndex(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteSearchableItemsWithDomainIdentifiers:protectionClass:forBundleID:fromClient:options:completionHandler:];
  }

  v25 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:identifiersCopy protectionClass:classCopy bundleID:dCopy];
  if (v25)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v25);
LABEL_23:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      +[CSRecieverState sharedInstance];
      v32 = identifiersCopy;
      v26 = clientCopy;
      v27 = v20;
      v29 = v28 = options;
      v30 = [v29 checkBundleIdentifier:dCopy];

      options = v28;
      v20 = v27;
      clientCopy = v26;
      identifiersCopy = v32;
      if (v30)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke;
        v35[3] = &unk_278937758;
        v36 = v32;
        v37 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v35];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke_2;
      v33[3] = &unk_278935048;
      v34 = handlerCopy;
      [(MDIndexer *)indexer deleteSearchableItemsWithDomainIdentifiers:identifiersCopy protectionClass:classCopy forBundleID:dCopy fromClient:clientCopy options:options completionHandler:v33];
      handlerCopy = v34;
      goto LABEL_23;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_23;
    }
  }

  objc_autoreleasePoolPop(v20);
}

uint64_t __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchLastClientStateWithProtectionClass:(id)class forBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  classCopy = class;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v17 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v18 = logForCSLogCategoryIndex(clientBundleID);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    protectionClass = [(MDSearchableIndexService *)self protectionClass];
    *buf = 138413314;
    v25 = dCopy;
    v26 = 2112;
    v27 = nameCopy;
    v28 = 2112;
    v29 = classCopy;
    v30 = 2112;
    v31 = protectionClass;
    v32 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEBUG, "(%@) fetchLastClientStateWithProtectionClass, clientStateName:%@, protectionClass:%@/%@, options:0x%lx", buf, 0x34u);
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v19)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v19);
LABEL_15:
    }
  }

  else
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __122__MDSearchableIndexService_fetchLastClientStateWithProtectionClass_forBundleID_clientStateName_options_completionHandler___block_invoke;
      v22[3] = &unk_2789377A8;
      v23 = handlerCopy;
      [(MDIndexer *)indexer fetchLastClientStateWithProtectionClass:classCopy forBundleID:dCopy clientStateName:nameCopy options:options completionHandler:v22];
      handlerCopy = v23;
      goto LABEL_15;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, 0);
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v17);
}

uint64_t __122__MDSearchableIndexService_fetchLastClientStateWithProtectionClass_forBundleID_clientStateName_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateCorrectionsWithFilePath:(id)path options:(int64_t)options completionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = logForCSLogCategoryIndex(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService updateCorrectionsWithFilePath:options:completionHandler:];
  }

  v10 = +[SPCorrectionHandler sharedHandler];
  [v10 updateWithFilePath:pathCopy];

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)fetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos reply:(id)self0 completionHandler:(id)self1
{
  attributesCopy = attributes;
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  replyCopy = reply;
  handlerCopy = handler;
  v23 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = identifiersCopy;
  }

  else
  {
    v24 = 0;
  }

  v25 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:v24 protectionClass:classCopy bundleID:dCopy];
  if (v25)
  {
    v26 = v25;
    handlerCopy[2](handlerCopy, v25);
  }

  else
  {
    indexer = self->_indexer;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __123__MDSearchableIndexService_fetchAttributes_protectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke;
    v30[3] = &unk_2789377D0;
    v31 = replyCopy;
    v32 = handlerCopy;
    LODWORD(v28) = qos;
    [(MDIndexer *)indexer fetchAttributes:attributesCopy protectionClass:classCopy bundleID:dCopy identifiers:identifiersCopy userCtx:ctxCopy flags:flags qos:v28 completionHandler:v30];

    handlerCopy = v31;
  }

  objc_autoreleasePoolPop(v23);
}

void __123__MDSearchableIndexService_fetchAttributes_protectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CC3510] dictionary:*(a1 + 32) setPlistBytes:a2 forKey:"fetch-data-key" sizeKey:"fetch-data-size"];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchCacheFileDescriptorsForProtectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos reply:(id)reply completionHandler:(id)self0
{
  v10 = *&flags;
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  replyCopy = reply;
  handlerCopy = handler;
  v21 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = identifiersCopy;
  }

  else
  {
    v22 = 0;
  }

  v23 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:v22 protectionClass:classCopy bundleID:dCopy];
  if (v23)
  {
    v24 = v23;
    handlerCopy[2](handlerCopy, v23);
  }

  else
  {
    indexer = self->_indexer;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __135__MDSearchableIndexService_fetchCacheFileDescriptorsForProtectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke;
    v27[3] = &unk_2789377D0;
    v28 = replyCopy;
    v29 = handlerCopy;
    [(MDIndexer *)indexer fetchCacheFileDescriptorsForProtectionClass:classCopy bundleID:dCopy identifiers:identifiersCopy userCtx:ctxCopy flags:v10 qos:qos completionHandler:v27];

    handlerCopy = v28;
  }

  objc_autoreleasePoolPop(v21);
}

void __135__MDSearchableIndexService_fetchCacheFileDescriptorsForProtectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CC3510] dictionary:*(a1 + 32) setXPCFdArray:a2 forKey:"file-descriptors"];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteSearchableItemsSinceDate:(id)date protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  classCopy = class;
  dCopy = d;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v17 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v18 = logForCSLogCategoryIndex(clientBundleID);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v29 = dCopy;
    v30 = 2112;
    v31 = dateCopy;
    v32 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEBUG, "(%@) deleteSearchableItemsSinceDate, startDate:%@, options:0x%lx", buf, 0x20u);
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v19)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v19);
LABEL_18:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v20 = +[CSRecieverState sharedInstance];
      v21 = [v20 checkBundleIdentifier:dCopy];

      if (v21)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke;
        v25[3] = &unk_278937758;
        v26 = dateCopy;
        v27 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v25];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke_2;
      v23[3] = &unk_278935048;
      v24 = handlerCopy;
      [(MDIndexer *)indexer deleteSearchableItemsSinceDate:dateCopy protectionClass:classCopy forBundleID:dCopy options:options completionHandler:v23];
      handlerCopy = v24;
      goto LABEL_18;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v17);
}

uint64_t __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provideDataForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  typeCopy = type;
  handlerCopy = handler;
  if (!-[MDSearchableIndexService searchInternal](self, "searchInternal") && (!-[MDSearchableIndexService allowMail](self, "allowMail") || ([bundleCopy isEqualToString:@"com.apple.mobilemail"] & 1) == 0))
  {
    allowMessagesContent = [(MDSearchableIndexService *)self allowMessagesContent];
    if (!allowMessagesContent || (allowMessagesContent = [bundleCopy isEqualToString:@"com.apple.MobileSMS"], (allowMessagesContent & 1) == 0))
    {
      v15 = logForCSLogCategoryIndex(allowMessagesContent);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
      handlerCopy[2](handlerCopy, 0, v16);

      goto LABEL_13;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer provideDataForBundle:bundleCopy identifier:identifierCopy type:typeCopy completionHandler:handlerCopy];
LABEL_13:

    goto LABEL_14;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, 0);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)provideFileURLForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  typeCopy = type;
  handlerCopy = handler;
  searchInternal = [(MDSearchableIndexService *)self searchInternal];
  if ((searchInternal & 1) == 0)
  {
    v15 = logForCSLogCategoryIndex(searchInternal);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v16);

    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer provideFileURLForBundle:bundleCopy identifier:identifierCopy type:typeCopy completionHandler:handlerCopy];
LABEL_9:

    goto LABEL_10;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, 0);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_issueCommand:(id)command outFileDescriptor:(int)descriptor searchContext:(id)context completionHandler:(id)handler
{
  v8 = *&descriptor;
  commandCopy = command;
  contextCopy = context;
  handlerCopy = handler;
  if (![commandCopy hasPrefix:@"provide:"])
  {
    allowMessagesContent = [commandCopy hasPrefix:@"setUISearchEnabled:"];
    if ((allowMessagesContent & 1) != 0 || self->_isInternal || self->_isPrivate)
    {
      goto LABEL_39;
    }

LABEL_41:
    v28 = logForCSLogCategoryIndex(allowMessagesContent);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v29);

    goto LABEL_46;
  }

  if ([(MDSearchableIndexService *)self searchInternal])
  {
    v13 = 1;
    goto LABEL_17;
  }

  if (![(MDSearchableIndexService *)self allowMail])
  {
    v13 = 0;
    goto LABEL_17;
  }

  v15 = [commandCopy componentsSeparatedByString:@":"];
  if ([v15 count] < 4)
  {
    goto LABEL_15;
  }

  v16 = [v15 objectAtIndexedSubscript:3];
  if (![v16 isEqualToString:@"com.apple.mobilemail"])
  {
    v17 = [v15 objectAtIndexedSubscript:3];
    v18 = [v17 isEqualToString:@"com.apple.MobileSMS"];

    if (v18)
    {
      goto LABEL_14;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v13 = 1;
LABEL_16:

LABEL_17:
  if ([(MDSearchableIndexService *)self allowNotifications])
  {
    goto LABEL_29;
  }

  v19 = [commandCopy componentsSeparatedByString:@":"];
  if ([v19 count] <= 5)
  {
    if ([v19 count] < 4)
    {
      v21 = 0;
      goto LABEL_24;
    }

    v20 = 3;
  }

  else
  {
    v20 = 4;
  }

  v21 = [v19 objectAtIndexedSubscript:v20];
LABEL_24:
  v22 = [v21 isEqualToString:@"com.apple.usernotificationsd"];
  if (v22)
  {
    v23 = logForCSLogCategoryDefault(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _issueCommand:? outFileDescriptor:? searchContext:? completionHandler:?];
    }

    v13 = 0;
  }

LABEL_29:
  allowMessagesContent = [(MDSearchableIndexService *)self allowMessagesContent];
  if ((allowMessagesContent & 1) == 0)
  {
    v24 = [commandCopy componentsSeparatedByString:@":"];
    if ([v24 count] < 5)
    {
      v25 = 0;
    }

    else
    {
      v25 = [v24 objectAtIndexedSubscript:2];
    }

    v26 = [v25 isEqualToString:@"com.apple.metadata-importer.messages.plain-text"];
    if (v26)
    {
      v27 = logForCSLogCategoryDefault(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [MDSearchableIndexService _issueCommand:? outFileDescriptor:? searchContext:? completionHandler:?];
      }

      goto LABEL_41;
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer _issueCommand:commandCopy outFileDescriptor:v8 searchContext:contextCopy completionHandler:handlerCopy];
LABEL_46:

    goto LABEL_47;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, 0);
    goto LABEL_46;
  }

LABEL_47:
}

- (void)_issueDiagnose:(int)diagnose bundleID:(id)d logQuery:(BOOL)query completionHandler:(id)handler
{
  queryCopy = query;
  v8 = *&diagnose;
  dCopy = d;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!self->_isInternal && !self->_isPrivate)
  {
    v13 = logForCSLogCategoryIndex(handlerCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    (v12)[2](v12, 0, v14);

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer _issueDiagnose:v8 bundleID:dCopy logQuery:queryCopy completionHandler:v12];
LABEL_10:

    goto LABEL_11;
  }

  if (v12)
  {
    v12[2](v12, 0, 0);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)prepareIndexingWhileLocked:(id)locked protectionClass:(id)class holdAssertionFor:(double)for completionHandler:(id)handler
{
  lockedCopy = locked;
  classCopy = class;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer prepareIndexingWhileLocked:lockedCopy protectionClass:classCopy holdAssertionFor:handlerCopy completionHandler:for];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    handlerCopy[2](handlerCopy, v12);
  }

LABEL_6:
}

- (void)finishIndexingWhileLocked:(id)locked protectionClass:(id)class completionHandler:(id)handler
{
  lockedCopy = locked;
  classCopy = class;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer finishIndexingWhileLocked:lockedCopy protectionClass:classCopy completionHandler:handlerCopy];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    handlerCopy[2](handlerCopy, v10);
  }

LABEL_6:
}

- (void)_deleteAllSearchableItemsWithBundleID:(id)d protectionClass:(id)class shouldGC:(BOOL)c options:(int64_t)options deleteAllReason:(int64_t)reason completionHandler:(id)handler
{
  cCopy = c;
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  clientConnection4 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v19 = logForCSLogCategoryIndex(clientBundleID);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    optionsCopy = options;
    v20 = "NO";
    if (cCopy)
    {
      v20 = "YES";
    }

    v34 = v20;
    v35 = qos_class_self();
    clientConnection = [(MDSearchableIndexService *)self clientConnection];
    reasonCopy = reason;
    if (clientConnection)
    {
      clientConnection2 = [(MDSearchableIndexService *)self clientConnection];
      name = xpc_connection_get_name(clientConnection2);
    }

    else
    {
      name = "";
    }

    v37 = clientConnection4;
    clientConnection3 = [(MDSearchableIndexService *)self clientConnection];
    v24 = clientConnection3;
    if (clientConnection3)
    {
      clientConnection4 = [(MDSearchableIndexService *)self clientConnection];
      LODWORD(clientConnection3) = xpc_connection_get_pid(clientConnection4);
    }

    *buf = 138413826;
    v47 = dCopy;
    v48 = 2112;
    v49 = classCopy;
    v50 = 2080;
    v51 = v34;
    v52 = 2048;
    v53 = optionsCopy;
    v54 = 2048;
    v55 = v35;
    v56 = 2080;
    v57 = name;
    v58 = 1024;
    v59 = clientConnection3;
    _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "(%@) deleteAllSearchableItemsWithBundleID, protectionClass:%@, shouldGC:%s, options:0x%lx, qos:0x%lx conn:%s(%d)", buf, 0x44u);
    if (v24)
    {
    }

    if (clientConnection)
    {
    }

    reason = reasonCopy;
    clientConnection4 = v37;
    options = optionsCopy;
  }

  v25 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:dCopy protectionClass:classCopy];
  if (v25)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v25);
LABEL_31:
    }
  }

  else
  {
    v38 = cCopy;
    if (!self->_isPrivate)
    {
      v26 = +[CSRecieverState sharedInstance];
      v27 = [v26 checkBundleIdentifier:dCopy];

      if (v27)
      {
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke;
        v44[3] = &unk_2789377F8;
        v45 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v44];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      v28 = objc_opt_respondsToSelector();
      indexer = self->_indexer;
      if (v28)
      {
        clientBundleID2 = [(MDSearchableIndexService *)self clientBundleID];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_2;
        v42[3] = &unk_278935048;
        v43 = handlerCopy;
        [(MDIndexer *)indexer deleteAllSearchableItemsWithBundleID:dCopy fromClient:clientBundleID2 protectionClass:classCopy shouldGC:v38 deleteAllReason:reason completionHandler:v42];

        handlerCopy = v43;
        goto LABEL_31;
      }

      if (objc_opt_respondsToSelector())
      {
        v31 = self->_indexer;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_3;
        v40[3] = &unk_278935048;
        v41 = handlerCopy;
        [(MDIndexer *)v31 deleteAllSearchableItemsWithProtectionClass:classCopy forBundleID:dCopy options:options deleteAllReason:reason completionHandler:v40];
        handlerCopy = v41;
        goto LABEL_31;
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_31;
    }
  }

  objc_autoreleasePoolPop(clientConnection4);
}

uint64_t __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state protectionClass:(id)class forBundleID:(id)d forUTIType:(id)type options:(int64_t)options
{
  v56 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  classCopy = class;
  dCopy = d;
  typeCopy = type;
  v18 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:dsCopy protectionClass:classCopy bundleID:dCopy];
  if (!v19)
  {
    v30 = v18;
    v20 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if ([SpotlightSender jobForTest:options])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v29 = v21;
      if ([SpotlightSender jobForDuet:options])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v28 = v22;
      if ([SpotlightSender jobForSuggestions:options])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      if ([SpotlightSender jobForTextUnderstanding:options, v23])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *buf = 138414594;
      v37 = dCopy;
      v38 = 2112;
      v39 = typeCopy;
      v40 = 2048;
      stateCopy = state;
      v42 = 2048;
      optionsCopy = options;
      v44 = 2112;
      v45 = v29;
      v46 = 2112;
      v47 = v28;
      v48 = 2112;
      v49 = v27;
      v50 = 2112;
      v51 = v24;
      v52 = 2048;
      v53 = [dsCopy count];
      v54 = 2112;
      v55 = dsCopy;
      _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "(%@) changeStateOfSearchableItemsWithUIDs (delete or purge), uti:%@, state:%ld, options:0x%lx, test/duet/suggestions/textunderstanding:%@/%@/%@/%@, identifiers/%ld:%@", buf, 0x66u);
    }

    if (!self->_isPrivate)
    {
      v25 = +[CSRecieverState sharedInstance];
      v26 = [v25 checkBundleIdentifier:dCopy];

      if (v26)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __120__MDSearchableIndexService_changeStateOfSearchableItemsWithUIDs_toState_protectionClass_forBundleID_forUTIType_options___block_invoke;
        v31[3] = &unk_278937820;
        stateCopy2 = state;
        v32 = dsCopy;
        v33 = dCopy;
        v34 = typeCopy;
        [SpotlightSender dispatchWithOptions:options block:v31];
      }
    }

    v18 = v30;
    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(MDIndexer *)self->_indexer changeStateOfSearchableItemsWithUIDs:dsCopy toState:state protectionClass:classCopy forBundleID:dCopy forUTIType:typeCopy options:options];
    }
  }

  objc_autoreleasePoolPop(v18);
}

void *__120__MDSearchableIndexService_changeStateOfSearchableItemsWithUIDs_toState_protectionClass_forBundleID_forUTIType_options___block_invoke(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2 == 1)
  {
    return [SpotlightSender purgeSearchableItemsWithIdentifiers:result[4] bundleID:result[5] client:a2];
  }

  if (v2 == 2)
  {
    return [SpotlightSender deleteSearchableItemsWithIdentifiers:result[4] bundleID:result[5] contentType:result[6] client:a2];
  }

  return result;
}

- (void)userPerformedAction:(id)action withItem:(id)item protectionClass:(id)class
{
  v31 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemCopy = item;
  classCopy = class;
  protectionClass = objc_autoreleasePoolPush();
  v12 = protectionClass;
  if (!classCopy)
  {
    protectionClass = [(MDSearchableIndexService *)self protectionClass];
    classCopy = protectionClass;
  }

  v13 = logForCSLogCategoryDefault(protectionClass);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    *buf = 138413058;
    v24 = clientBundleID;
    v25 = 2112;
    v26 = actionCopy;
    v27 = 2112;
    v28 = itemCopy;
    v29 = 2112;
    v30 = classCopy;
    _os_log_debug_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEBUG, "(%@) userPerformedAction, action:%@, item:%@, protectionClass:%@", buf, 0x2Au);
  }

  if (actionCopy && itemCopy)
  {
    v22 = itemCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v16 = [(MDSearchableIndexService *)self _checkItems:v15 identifiers:0 protectionClass:classCopy bundleID:0];

    if (!v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CC34F8]) initWithAction:actionCopy item:itemCopy];
      [v17 setProtectionClass:classCopy];
      [(MDSearchableIndexService *)self _makeActivityQueueIfNecessary];
      activityQueue = [(MDSearchableIndexService *)self activityQueue];
      v21 = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      [activityQueue queueItems:v19];
    }
  }

  else
  {
    v16 = logForCSLogCategoryDefault(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [MDSearchableIndexService userPerformedAction:withItem:protectionClass:];
    }
  }

  objc_autoreleasePoolPop(v12);
}

- (void)_dispatchActivities:(id)activities bundleID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  dCopy = d;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = activitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        protectionClass = [v13 protectionClass];
        v15 = [v7 objectForKeyedSubscript:protectionClass];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v7 setObject:v15 forKeyedSubscript:protectionClass];
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__MDSearchableIndexService__dispatchActivities_bundleID___block_invoke;
  v18[3] = &unk_278937870;
  v19 = dCopy;
  selfCopy = self;
  v16 = dCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v18];
}

void __57__MDSearchableIndexService__dispatchActivities_bundleID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  v8 = logForCSLogCategoryDefault(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = "ies";
    v10 = *(a1 + 32);
    *buf = 134218754;
    if (v7 == 1)
    {
      v9 = "y";
    }

    v39 = v7;
    v40 = 2080;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Sending %lu activit%s to the receivers, bundleID:%@, protectionClass:%@", buf, 0x2Au);
  }

  if ((*(*(a1 + 40) + 19) & 1) == 0)
  {
    v12 = +[CSRecieverState sharedInstance];
    v13 = [v12 checkBundleIdentifier:*(a1 + 32)];

    if (v13)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __57__MDSearchableIndexService__dispatchActivities_bundleID___block_invoke_114;
      v33[3] = &unk_278937848;
      v34 = v6;
      v35 = *(a1 + 32);
      v36 = v5;
      [SpotlightSender dispatchWithOptions:0 block:v33];
    }
  }

  v14 = logForCSLogCategoryDefault(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = "ies";
    v16 = *(a1 + 32);
    *buf = 134218754;
    if (v7 == 1)
    {
      v15 = "y";
    }

    v39 = v7;
    v40 = 2080;
    v41 = v15;
    v42 = 2112;
    v43 = v16;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "Sending %lu activit%s to the index, bundleID:%@, protectionClass:%@", buf, 0x2Au);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v30;
    *&v19 = 138412546;
    v28 = v19;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        v24 = [v23 action];
        v25 = [v23 searchableItem];
        v26 = [v25 noIndex];
        if (v26 & 1) == 0 && (v26 = [v24 eligibility], (v26))
        {
          [*(*(a1 + 40) + 40) userPerformedAction:v24 withItem:v25 protectionClass:v5 forBundleID:*(a1 + 32) personaID:0];
        }

        else
        {
          v27 = logForCSLogCategoryDefault(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = v28;
            v39 = v24;
            v40 = 2112;
            v41 = v25;
            _os_log_debug_impl(&dword_231A35000, v27, OS_LOG_TYPE_DEBUG, "Ignoring action:%@, item:%@", buf, 0x16u);
          }
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }
}

- (void)_dispatchActivities:(id)activities
{
  v40 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
  if (self->_isInternal)
  {
    selfCopy = self;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = activitiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      bundleID = 0;
      v10 = *v35;
LABEL_4:
      v11 = 0;
      v12 = bundleID;
      while (1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v6);
        }

        item = [*(*(&v34 + 1) + 8 * v11) item];
        bundleID = [item bundleID];

        if ([bundleID length])
        {
          if (![clientBundleID isEqualToString:bundleID])
          {
            break;
          }
        }

        ++v11;
        v12 = bundleID;
        if (v8 == v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      if ([v6 count] == 1)
      {
        v14 = selfCopy;
        v15 = v6;
        v16 = bundleID;
        goto LABEL_17;
      }

      v27 = activitiesCopy;
      v17 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v6;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * i);
            item2 = [v23 item];
            bundleID2 = [item2 bundleID];

            if ([bundleID2 length])
            {
              bundleID = bundleID2;
            }

            else
            {
              bundleID = clientBundleID;
            }

            v26 = [v17 objectForKeyedSubscript:bundleID];
            if (!v26)
            {
              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v17 setObject:v26 forKeyedSubscript:bundleID];
            }

            [v26 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v20);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __48__MDSearchableIndexService__dispatchActivities___block_invoke;
      v29[3] = &unk_278937898;
      v29[4] = selfCopy;
      [v17 enumerateKeysAndObjectsUsingBlock:v29];

      activitiesCopy = v27;
    }

    else
    {
      bundleID = 0;
LABEL_16:

      v14 = selfCopy;
      v15 = v6;
      v16 = clientBundleID;
LABEL_17:
      [(MDSearchableIndexService *)v14 _dispatchActivities:v15 bundleID:v16];
    }
  }

  else
  {
    [(MDSearchableIndexService *)self _dispatchActivities:activitiesCopy bundleID:clientBundleID];
  }
}

- (void)checkInWithProtectionClass:(id)class completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  classCopy = class;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  if (!classCopy)
  {
    classCopy = [(MDSearchableIndexService *)self protectionClass];
  }

  clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
  v10 = logForCSLogCategoryIndex(clientBundleID);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    processDescription = [(MDSearchableIndexService *)self processDescription];
    v15 = 138412802;
    v16 = clientBundleID;
    v17 = 2112;
    v18 = classCopy;
    v19 = 2112;
    v20 = processDescription;
    _os_log_debug_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEBUG, "(%@) checkInWithProtectionClass, protectionClass:%@, process:%@", &v15, 0x20u);
  }

  v11 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:0];
  if (v11)
  {
    if (handlerCopy)
    {
LABEL_16:
      handlerCopy[2](handlerCopy, 0, v11);
    }
  }

  else if (clientBundleID)
  {
    indexer = self->_indexer;
    if (handlerCopy && !indexer)
    {
      handlerCopy[2](handlerCopy, 0, 0);
      indexer = self->_indexer;
    }

    [(MDIndexer *)indexer clientDidCheckin:clientBundleID protectionClass:classCopy service:self completionHandler:handlerCopy];
    v11 = 0;
  }

  else
  {
    v13 = logForCSLogCategoryIndex(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService checkInWithProtectionClass:? completionHandler:?];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    if (handlerCopy)
    {
      goto LABEL_16;
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)performIndexJob:(id)job protectionClass:(id)class acknowledgementHandler:(id)handler
{
  jobCopy = job;
  classCopy = class;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  clientConnection = [(MDSearchableIndexService *)self clientConnection];
  clientQueue = [(MDSearchableIndexService *)self clientQueue];
  v14 = clientQueue;
  if (clientConnection && clientQueue)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "command", "perform-job");
    xpc_dictionary = [jobCopy xpc_dictionary];
    xpc_dictionary_set_value(v15, "j", xpc_dictionary);

    if (classCopy)
    {
      xpc_dictionary_set_string(v15, "pc", [classCopy UTF8String]);
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __83__MDSearchableIndexService_performIndexJob_protectionClass_acknowledgementHandler___block_invoke;
    handler[3] = &unk_2789378C0;
    v18 = handlerCopy;
    xpc_connection_send_message_with_reply(clientConnection, v15, v14, handler);

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSIndexErrorDomain" code:-1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v15);
LABEL_8:
  }

  objc_autoreleasePoolPop(v11);
}

void __83__MDSearchableIndexService_performIndexJob_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (MEMORY[0x2383767F0]() == MEMORY[0x277D86468])
  {
    v3 = csindex_xpc_dictionary_decode_status_with_error();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)deleteAllUserActivities:(id)activities fromClient:(id)client options:(int64_t)options completionHandler:(id)handler
{
  activitiesCopy = activities;
  clientCopy = client;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v14 = clientBundleID;
  if (!activitiesCopy)
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    activitiesCopy = clientBundleID;
  }

  v15 = logForCSLogCategoryDefault(clientBundleID);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteAllUserActivities:fromClient:options:completionHandler:];
  }

  v16 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:activitiesCopy protectionClass:0];
  if (v16)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v16);
LABEL_16:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v17 = +[CSRecieverState sharedInstance];
      v18 = [v17 checkBundleIdentifier:activitiesCopy];

      if (v18)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke;
        v23[3] = &unk_2789377F8;
        v24 = activitiesCopy;
        [SpotlightSender dispatchWithOptions:options block:v23];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      clientBundleID2 = [(MDSearchableIndexService *)self clientBundleID];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke_2;
      v21[3] = &unk_278935048;
      v22 = handlerCopy;
      [(MDIndexer *)indexer deleteAllUserActivities:activitiesCopy fromClient:clientBundleID2 completionHandler:v21];

      handlerCopy = v22;
      goto LABEL_16;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_16;
    }
  }

  objc_autoreleasePoolPop(v14);
}

uint64_t __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  dCopy = d;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v14 = clientBundleID;
  if (!dCopy)
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
  }

  v15 = logForCSLogCategoryDefault(clientBundleID);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteUserActivitiesWithPersistentIdentifiers:bundleID:options:completionHandler:];
  }

  v16 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:dCopy protectionClass:0];
  if (v16)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v16);
LABEL_15:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v17 = +[CSRecieverState sharedInstance];
      v18 = [v17 checkBundleIdentifier:dCopy];

      if (v18)
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke;
        v22[3] = &unk_2789378E8;
        v23 = identifiersCopy;
        v24 = dCopy;
        v25 = handlerCopy;
        [SpotlightSender dispatchWithOptions:options block:v22];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      data = [identifiersCopy data];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke_2;
      v20[3] = &unk_278937910;
      v21 = handlerCopy;
      [(MDSearchableIndexService *)self _processIndexDataForBundle:dCopy protectionClass:0 personaID:0 options:options items:0 itemsText:0 itemsHTML:0 clientState:0 expectedClientState:0 clientStateName:0 deletes:data completionHandler:v20];

      handlerCopy = v21;
      goto LABEL_15;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v14);
}

void __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = MEMORY[0x2383760E0](a1[6]);
  [SpotlightSender deleteUserActivitiesWithPersistentIdentifiers:v3 bundleID:v4 client:a2 retainedData:v5];
}

uint64_t __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke_2(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)deleteActionsBeforeTime:(double)time options:(int64_t)options completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = objc_autoreleasePoolPush();
  v10 = logForCSLogCategoryDefault(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    timeCopy = time;
    v17 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "deleteActionsBeforeTime:%lu options:0x%lx", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __78__MDSearchableIndexService_deleteActionsBeforeTime_options_completionHandler___block_invoke;
      v13[3] = &unk_278935048;
      v14 = handlerCopy;
      [(MDIndexer *)indexer deleteActionsBeforeTime:v13 completionHandler:time];
      handlerCopy = v14;
LABEL_11:

      goto LABEL_12;
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
      goto LABEL_11;
    }
  }

  else if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v12);

    goto LABEL_11;
  }

LABEL_12:
  objc_autoreleasePoolPop(v9);
}

uint64_t __78__MDSearchableIndexService_deleteActionsBeforeTime_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteActionsWithIdentifiers:(id)identifiers options:(int64_t)options completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v11 = logForCSLogCategoryDefault(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v17 = [identifiersCopy count];
    v18 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "deleteActionsWithIdentifiers:%lu options:0x%lx", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __83__MDSearchableIndexService_deleteActionsWithIdentifiers_options_completionHandler___block_invoke;
      v14[3] = &unk_278935048;
      v15 = handlerCopy;
      [(MDIndexer *)indexer deleteActionsWithIdentifiers:identifiersCopy completionHandler:v14];
      handlerCopy = v15;
LABEL_11:

      goto LABEL_12;
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
      goto LABEL_11;
    }
  }

  else if (handlerCopy)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v13);

    goto LABEL_11;
  }

LABEL_12:
  objc_autoreleasePoolPop(v10);
}

uint64_t __83__MDSearchableIndexService_deleteActionsWithIdentifiers_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_forceAppWithBundleID:(id)d toPerformJob:(id)job
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  jobCopy = job;
  v8 = logForCSLogCategoryIndex(jobCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    v12 = 138412802;
    v13 = clientBundleID;
    v14 = 2112;
    v15 = dCopy;
    v16 = 2112;
    v17 = jobCopy;
    _os_log_debug_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEBUG, "(%@) _forceAppWithBundleID, bundleID:%@, job:%@", &v12, 0x20u);
  }

  v9 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:dCopy];
  if (!v9)
  {
    mEMORY[0x277CC3538] = [MEMORY[0x277CC3538] sharedManager];
    [mEMORY[0x277CC3538] indexRequestsPerformJob:jobCopy forBundle:dCopy completionHandler:0];
  }
}

- (void)performDataMigrationWithTimeout:(id)timeout completionHandler:(id)handler
{
  timeoutCopy = timeout;
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(9, 0);
  v10 = handlerCopy;
  v8 = handlerCopy;
  v9 = timeoutCopy;
  tracing_dispatch_async();
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_1(a1);
  }

  v4 = [*(a1 + 40) _checkItems:0 identifiers:0 protectionClass:0 bundleID:0];
  if (v4)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CC3538] sharedManager];
    v7 = [v6 allExtensionsWithBlock:&__block_literal_global_135];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"com.apple.corespotlight.dataMigration.start" object:*(a1 + 40) userInfo:0];

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:3];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2;
    v31[3] = &unk_278937938;
    v12 = v9;
    v32 = v12;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_142;
    v29[3] = &unk_278934050;
    v13 = v11;
    v30 = v13;
    v28 = v7;
    v14 = logForCSLogCategoryIndex([v6 indexRequestsPerformJob:v10 extensions:v7 perExtensionCompletionHandler:v31 completionHandler:v29]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_2();
    }

    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v15 = [*(*(a1 + 40) + 40) lastUpdateTime];
    v17 = v16;
    v18 = logForCSLogCategoryIndex(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_3();
    }

    v19 = v17;
    do
    {
      v20 = v19;
      sleep(2u);
      v21 = [*(*(a1 + 40) + 40) lastUpdateTime];
      v19 = v22;
    }

    while (v20 != v22);
    v23 = logForCSLogCategoryIndex(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_4(v23, v19, v17);
    }

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *(a1 + 40);
    v33 = @"bundleIDs";
    v34[0] = v12;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    [v24 postNotificationName:@"com.apple.corespotlight.dataMigration.finish" object:v25 userInfo:v26];

    v27 = *(a1 + 48);
    if (v27)
    {
      (*(v27 + 16))(v27, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2_cold_1();
  }

  if (!v6)
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    [*(a1 + 32) addObject:v5];
    objc_sync_exit(v8);
  }
}

- (void)transferDeleteJournalsForProtectionClass:(const char *)class toDirectory:(int)directory withCompletionHandler:(id)handler
{
  v5 = *&directory;
  handlerCopy = handler;
  memset(&v23, 0, sizeof(v23));
  if (fstat(v5, &v23))
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA5B8];
    v12 = *__error();
    v13 = v10;
    v14 = v11;
LABEL_15:
    v20 = [v13 errorWithDomain:v14 code:v12 userInfo:0];
    handlerCopy[2](handlerCopy, v20);

    goto LABEL_16;
  }

  if ((v23.st_mode & 0xF000) != 0x4000)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA5B8];
    v12 = 20;
    goto LABEL_15;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = logForCSLogCategoryIndex(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService transferDeleteJournalsForProtectionClass:a2 toDirectory:? withCompletionHandler:?];
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:class];
  v18 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:v17 bundleID:0];
  if (v18)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v18);
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    indexer = self->_indexer;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __103__MDSearchableIndexService_transferDeleteJournalsForProtectionClass_toDirectory_withCompletionHandler___block_invoke;
    v21[3] = &unk_278935048;
    v22 = handlerCopy;
    [(MDIndexer *)indexer transferDeleteJournalsForProtectionClass:v17 toDirectory:v5 completionHandler:v21];

    handlerCopy = 0;
  }

  objc_autoreleasePoolPop(v15);
  if (!v18 && handlerCopy)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA5B8];
    v12 = 45;
    goto LABEL_15;
  }

LABEL_16:
}

uint64_t __103__MDSearchableIndexService_transferDeleteJournalsForProtectionClass_toDirectory_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  nameCopy = name;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v20 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v21 = logForCSLogCategoryDefault(clientBundleID);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v37 = dCopy;
    v38 = 2112;
    v39 = nameCopy;
    v40 = 2112;
    v41 = classCopy;
    v42 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEBUG, "(%@) addInteraction:%@, protectionClass:%@, options:0x%lx", buf, 0x2Au);
  }

  v22 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v22)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v22);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      +[CSRecieverState sharedInstance];
      v30 = interactionCopy;
      v23 = v20;
      v24 = nameCopy;
      v26 = v25 = options;
      v27 = [v26 checkBundleIdentifier:dCopy];

      v28 = v25;
      nameCopy = v24;
      v20 = v23;
      interactionCopy = v30;
      if (v27)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __110__MDSearchableIndexService_addInteraction_intentClassName_bundleID_protectionClass_options_completionHandler___block_invoke;
        v31[3] = &unk_278937988;
        v32 = v30;
        v33 = nameCopy;
        v34 = dCopy;
        v35 = classCopy;
        [SpotlightSender dispatchWithOptions:v28 block:v31];
      }
    }

    if (interactionCopy)
    {
      v29 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:interactionCopy error:0];
      if (v29 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(MDIndexer *)self->_indexer addInteraction:v29 bundleID:dCopy protectionClass:classCopy];
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v20);
}

- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v17 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v18 = logForCSLogCategoryDefault(clientBundleID);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = dCopy;
    v30 = 2112;
    v31 = classCopy;
    v32 = 2048;
    v33 = [identifiersCopy count];
    _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEFAULT, "(%@) deleteInteractionsWithIdentifiers, protectionClass:%@, identifiers num:%lu", buf, 0x20u);
  }

  v20 = logForCSLogCategoryDefault(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteInteractionsWithIdentifiers:identifiersCopy bundleID:options protectionClass:? options:? completionHandler:?];
  }

  v21 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v21)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v21);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v22 = +[CSRecieverState sharedInstance];
      v23 = [v22 checkBundleIdentifier:dCopy];

      if (v23)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __113__MDSearchableIndexService_deleteInteractionsWithIdentifiers_bundleID_protectionClass_options_completionHandler___block_invoke;
        v24[3] = &unk_278937848;
        v25 = identifiersCopy;
        v26 = dCopy;
        v27 = classCopy;
        [SpotlightSender dispatchWithOptions:options block:v24];
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v17);
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v17 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v18 = logForCSLogCategoryDefault(clientBundleID);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = dCopy;
    v30 = 2112;
    v31 = classCopy;
    v32 = 2048;
    v33 = [identifiersCopy count];
    _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEFAULT, "(%@) deleteInteractionsWithGroupIdentifiers, protectionClass:%@, identifiers num:%lu", buf, 0x20u);
  }

  v20 = logForCSLogCategoryDefault(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteInteractionsWithIdentifiers:identifiersCopy bundleID:options protectionClass:? options:? completionHandler:?];
  }

  v21 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v21)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v21);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v22 = +[CSRecieverState sharedInstance];
      v23 = [v22 checkBundleIdentifier:dCopy];

      if (v23)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __118__MDSearchableIndexService_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass_options_completionHandler___block_invoke;
        v24[3] = &unk_278937848;
        v25 = identifiersCopy;
        v26 = dCopy;
        v27 = classCopy;
        [SpotlightSender dispatchWithOptions:options block:v24];
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v17);
}

- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v14 = clientBundleID;
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  clientBundleID = [(MDSearchableIndexService *)self protectionClass];
  classCopy = clientBundleID;
LABEL_3:
  v15 = logForCSLogCategoryDefault(clientBundleID);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = dCopy;
    v28 = 2112;
    v29 = classCopy;
    v30 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_DEFAULT, "(%@) deleteAllInteractionsWithBundleID, protectionClass:%@, options:0x%lx", buf, 0x20u);
  }

  v16 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v16)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v16);
LABEL_19:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v17 = +[CSRecieverState sharedInstance];
      v18 = [v17 checkBundleIdentifier:dCopy];

      if (v18)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke;
        v23[3] = &unk_278937758;
        v24 = dCopy;
        v25 = classCopy;
        [SpotlightSender dispatchWithOptions:options block:v23];
      }
    }

    if ([dCopy length] && -[MDSearchableIndexService _jobForIndex:](self, "_jobForIndex:", options) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      indexer = self->_indexer;
      clientBundleID2 = [(MDSearchableIndexService *)self clientBundleID];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke_2;
      v21[3] = &unk_278935048;
      v22 = handlerCopy;
      [(MDIndexer *)indexer deleteAllInteractionsWithBundleID:dCopy fromClient:clientBundleID2 completionHandler:v21];

      handlerCopy = v22;
      goto LABEL_19;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_19;
    }
  }

  objc_autoreleasePoolPop(v14);
}

uint64_t __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)donateRelevantActions:(id)actions bundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  actionsCopy = actions;
  dCopy = d;
  handlerCopy = handler;
  clientBundleID = objc_autoreleasePoolPush();
  v14 = clientBundleID;
  if (!dCopy)
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    dCopy = clientBundleID;
  }

  v15 = logForCSLogCategoryDefault(clientBundleID);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService donateRelevantActions:bundleID:options:completionHandler:];
  }

  v16 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:dCopy];
  if (v16)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v16);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v17 = +[CSRecieverState sharedInstance];
      v18 = [v17 checkBundleIdentifier:dCopy];

      if (v18)
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __85__MDSearchableIndexService_donateRelevantActions_bundleID_options_completionHandler___block_invoke;
        v19[3] = &unk_278937758;
        v20 = actionsCopy;
        v21 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v19];
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v14);
}

- (BOOL)checkIn:(id)in
{
  v46 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v5 = xpc_dictionary_get_remote_connection(inCopy);
  reply = xpc_dictionary_create_reply(inCopy);
  if (v5)
  {
    selfCopy = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:inCopy];
    uint64 = xpc_dictionary_get_uint64(inCopy, "id");
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v41 = *v9;
    v42 = v10;
    v43 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService checkIn:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v38 = *v9;
    v39 = v13;
    v40 = *(v9 + 32);
    v14 = *v9;
    v15 = si_tracing_calc_next_spanid();
    v16 = *(v9 + 8);
    v17 = *(v9 + 24);
    if (v7)
    {
      if (!strcmp([v7 UTF8String], "NSFileProtectionComplete"))
      {
        v18 = "Class A index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v18 = "Class B index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v18 = "Class Cx index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v18 = "Class C index";
      }

      else
      {
        v18 = "Unknown index";
      }
    }

    else
    {
      v18 = "Nil index";
    }

    *v9 = v14;
    *(v9 + 8) = v15;
    *(v9 + 16) = v16;
    *(v9 + 24) = v17;
    *(v9 + 28) = 102;
    *(v9 + 32) = v18;
    v19 = si_tracing_log_span_begin();
    if (reply)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v20 = *(v9 + 16);
      v34 = *v9;
      v35 = v20;
      v30[2] = __36__MDSearchableIndexService_checkIn___block_invoke;
      v30[3] = &unk_2789379B0;
      v36 = *(v9 + 32);
      v31 = reply;
      v37 = uint64;
      v32 = v7;
      v33 = v5;
      v21 = selfCopy;
      v22 = MEMORY[0x2383760E0](v30);
    }

    else
    {
      v22 = 0;
      v21 = selfCopy;
    }

    if (v21->_isExtension)
    {
      v23 = logForCSLogCategoryIndex(v19);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        processDescription = [(MDSearchableIndexService *)v21 processDescription];
        *buf = 138412290;
        v45 = processDescription;
        _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEFAULT, "*warn* indexDelegate not supported with Extensions process:%@", buf, 0xCu);
      }

      if (v22)
      {
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
        (v22)[2](v22, 0, v25);
      }
    }

    else
    {
      [(MDSearchableIndexService *)v21 checkInWithProtectionClass:v7 completionHandler:v22];
    }

    si_tracing_log_span_end();
    v26 = v39;
    *v9 = v38;
    *(v9 + 16) = v26;
    *(v9 + 32) = v40;
    si_tracing_log_span_end();
    v27 = v42;
    *v9 = v41;
    *(v9 + 16) = v27;
    *(v9 + 32) = v43;
  }

  return v5 != 0;
}

void __36__MDSearchableIndexService_checkIn___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v13 = *v6;
  v14 = *(v6 + 16);
  v15 = *(v6 + 32);
  v7 = *(a1 + 72);
  *v6 = *(a1 + 56);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 88);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for checkIn";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 96));
  v11 = *(a1 + 40);
  if (v11)
  {
    xpc_dictionary_set_string(*(a1 + 32), "pc", [v11 UTF8String]);
  }

  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  si_tracing_log_span_end();
  *v6 = v13;
  *(v6 + 16) = v14;
  *(v6 + 32) = v15;
}

- (BOOL)processIndexData:(id)data
{
  dataCopy = data;
  v5 = xpc_dictionary_get_remote_connection(dataCopy);
  reply = xpc_dictionary_create_reply(dataCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    value = xpc_dictionary_get_uint64(dataCopy, "id");
    v9 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:dataCopy];
    v10 = v9;
    if (v9)
    {
      clientBundleID = v9;
    }

    else
    {
      clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    }

    v80 = clientBundleID;

    clientPersonaID = [(MDSearchableIndexService *)self clientPersonaID];
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:dataCopy];
    v13 = v12;
    if (v12)
    {
      protectionClass = v12;
    }

    else
    {
      protectionClass = [(MDSearchableIndexService *)self protectionClass];
    }

    v15 = protectionClass;

    uint64 = xpc_dictionary_get_uint64(dataCopy, "opt");
    v16 = [MEMORY[0x277CC3510] dataWrapperForKey:"items" sizeKey:"items-size" fromXPCDictionary:dataCopy];
    v17 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:dataCopy];
    v79 = [MEMORY[0x277CC3510] dataWrapperForKey:"client-state-key" sizeKey:"client-state-size" fromXPCDictionary:dataCopy];
    v73 = [MEMORY[0x277CC3510] dataWrapperForKey:"expected-client-state-key" sizeKey:"expected-client-state-size" fromXPCDictionary:dataCopy];
    v78 = [MEMORY[0x277CC3510] copyNSStringForKey:"n" fromXPCDictionary:dataCopy];
    if (v16)
    {
      v18 = objc_alloc(MEMORY[0x277CC33C8]);
      data = [v16 data];
      v83 = [v18 initWithData:data];
    }

    else
    {
      v83 = 0;
    }

    connection = v5;
    v75 = v7;
    if (v17)
    {
      v20 = objc_alloc(MEMORY[0x277CC33C8]);
      data2 = [v17 data];
      v81 = [v20 initWithData:data2];
    }

    else
    {
      v81 = 0;
    }

    v77 = v17;
    v22 = v16;
    v82 = v15;
    v23 = (*MEMORY[0x277D286C8])();
    v24 = *(v23 + 16);
    v113 = *v23;
    v114 = v24;
    v115 = *(v23 + 32);
    v25 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v23 = v25;
    *(v23 + 8) = spanid;
    *(v23 + 16) = 0;
    *(v23 + 24) = value;
    *(v23 + 28) = 102;
    *(v23 + 32) = "[MDSearchableIndexService processIndexData:]";
    si_tracing_log_span_begin();
    v27 = *(v23 + 16);
    v110 = *v23;
    v111 = v27;
    v112 = *(v23 + 32);
    v28 = *v23;
    v29 = si_tracing_calc_next_spanid();
    v30 = *(v23 + 8);
    v31 = *(v23 + 24);
    if (v82)
    {
      if (!strcmp([v82 UTF8String], "NSFileProtectionComplete"))
      {
        v32 = "Class A index";
      }

      else if (!strcmp([v82 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v32 = "Class B index";
      }

      else if (!strcmp([v82 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v32 = "Class Cx index";
      }

      else if (!strcmp([v82 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v32 = "Class C index";
      }

      else
      {
        v32 = "Unknown index";
      }
    }

    else
    {
      v32 = "Nil index";
    }

    *v23 = v28;
    *(v23 + 8) = v29;
    *(v23 + 16) = v30;
    *(v23 + 24) = v31;
    *(v23 + 28) = 102;
    *(v23 + 32) = v32;
    si_tracing_log_span_begin();
    [v79 data];
    v34 = v33 = v81;
    v109 = 0;
    v8 = [(MDSearchableIndexService *)self _canProcessIndexDataForBundle:v80 itemsDecoder:v83 deletesDecoder:v81 clientState:v34 clientStateName:v78 outError:&v109];
    v70 = v109;

    v7 = v75;
    v35 = v22;
    if (v8)
    {
      v36 = v83;
      if (v83 && (objc_msgSend_obj(v83), PlistObjectType = _MDPlistGetPlistObjectType(), v36 = v83, PlistObjectType == 240) && (objc_msgSend_obj(v83), Count = _MDPlistArrayGetCount(), v36 = v83, Count))
      {
        v68 = [MEMORY[0x277CC3510] dataWrapperForKey:"textdata" sizeKey:"text-data-size" fromXPCDictionary:dataCopy];
        v39 = 1;
      }

      else
      {

        v39 = 0;
        v83 = 0;
        v35 = 0;
        v68 = 0;
      }

      v40 = v81;
      if (v81 && (objc_msgSend_obj(v81), v41 = _MDPlistGetPlistObjectType(), v40 = v81, v41 == 240) && (objc_msgSend_obj(v81), v42 = _MDPlistArrayGetCount(), v40 = v81, v42) || (v40, v77, v77 = 0, v81 = 0, v69 = 0, v39))
      {
        if ((uint64 & 0x1024F) == 4 || self->_isPrivate || (+[CSRecieverState sharedInstance](CSRecieverState, "sharedInstance"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 checkBundleIdentifier:v80], v43, !v44))
        {
          v69 = 0;
        }

        else
        {
          if (v39)
          {
            v69 = [MEMORY[0x277CC3510] dataWrapperForKey:"htmldata" sizeKey:"html-data-size" fromXPCDictionary:dataCopy];
            v45 = v83;
            if (v69)
            {
              v46 = objc_alloc(MEMORY[0x277CC33C8]);
              data3 = [v69 data];
              v48 = [v46 initWithData:data3];

              [v48 setBackingStore:v69];
            }

            else
            {
              v48 = 0;
            }

            if (v68)
            {
              v63 = objc_alloc(MEMORY[0x277CC33C8]);
              data4 = [v68 data];
              v62 = [v63 initWithData:data4];

              [v62 setBackingStore:v68];
            }

            else
            {
              v62 = 0;
            }
          }

          else
          {
            v69 = 0;
            v62 = 0;
            v48 = 0;
            v45 = v83;
          }

          [v45 setBackingStore:v35];
          [v81 setBackingStore:v77];
          [(MDSearchableIndexService *)self _dispatchToReceiversWithBundleID:v80 protectionClass:v82 options:uint64 items:v45 itemsText:v62 itemsHTML:v48 deletes:v81];
        }
      }

      if ([(MDSearchableIndexService *)self _jobForIndex:uint64])
      {
        v49 = *(v23 + 16);
        v106 = *v23;
        v107 = v49;
        v108 = *(v23 + 32);
        v104[0] = 0;
        v104[1] = v104;
        v104[2] = 0x3032000000;
        v104[3] = __Block_byref_object_copy__2;
        v104[4] = __Block_byref_object_dispose__2;
        v65 = v35;
        v50 = v35;
        v105 = v50;
        v102[0] = 0;
        v102[1] = v102;
        v102[2] = 0x3032000000;
        v102[3] = __Block_byref_object_copy__2;
        v102[4] = __Block_byref_object_dispose__2;
        v51 = v68;
        v103 = v51;
        v100[0] = 0;
        v100[1] = v100;
        v100[2] = 0x3032000000;
        v100[3] = __Block_byref_object_copy__2;
        v100[4] = __Block_byref_object_dispose__2;
        v52 = v69;
        v101 = v52;
        v98[0] = 0;
        v98[1] = v98;
        v98[2] = 0x3032000000;
        v98[3] = __Block_byref_object_copy__2;
        v98[4] = __Block_byref_object_dispose__2;
        v53 = v77;
        v99 = v53;
        v96[0] = 0;
        v96[1] = v96;
        v96[2] = 0x3032000000;
        v96[3] = __Block_byref_object_copy__2;
        v96[4] = __Block_byref_object_dispose__2;
        v54 = v79;
        v97 = v54;
        data5 = [v50 data];
        data6 = [v51 data];
        data7 = [v52 data];
        data8 = [v54 data];
        data9 = [v73 data];
        data10 = [v53 data];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v92 = v106;
        v84[2] = __45__MDSearchableIndexService_processIndexData___block_invoke;
        v84[3] = &unk_2789379D8;
        v93 = v107;
        v94 = v108;
        v87 = v104;
        v88 = v102;
        v89 = v100;
        v90 = v98;
        v91 = v96;
        v85 = v75;
        v95 = value;
        v86 = connection;
        [(MDSearchableIndexService *)self _processIndexDataForBundle:v80 protectionClass:v82 personaID:clientPersonaID options:uint64 items:data5 itemsText:data6 itemsHTML:data7 clientState:data8 expectedClientState:data9 clientStateName:v78 deletes:data10 completionHandler:v84];

        _Block_object_dispose(v96, 8);
        _Block_object_dispose(v98, 8);

        _Block_object_dispose(v100, 8);
        _Block_object_dispose(v102, 8);

        _Block_object_dispose(v104, 8);
        v7 = v75;
        v35 = v65;
      }

      else
      {
        csindex_xpc_dictionary_encode_status_with_error();
        xpc_dictionary_set_uint64(v75, "id", value);
        xpc_connection_send_message(connection, v75);
      }

      v33 = v81;
    }

    si_tracing_log_span_end();
    v59 = v111;
    *v23 = v110;
    *(v23 + 16) = v59;
    *(v23 + 32) = v112;
    si_tracing_log_span_end();
    v60 = v114;
    *v23 = v113;
    *(v23 + 16) = v60;
    *(v23 + 32) = v115;

    v5 = connection;
  }

  return v8;
}

void __45__MDSearchableIndexService_processIndexData___block_invoke(uint64_t a1, void *a2, char a3)
{
  v20 = a2;
  v5 = (*MEMORY[0x277D286C8])();
  v21 = *v5;
  v22 = *(v5 + 16);
  v23 = *(v5 + 32);
  v6 = *(a1 + 104);
  *v5 = *(a1 + 88);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a1 + 120);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "completion handler for processIndexData";
  si_tracing_log_span_begin();
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *(*(a1 + 80) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;

  if ((a3 & 1) == 0)
  {
    csindex_xpc_dictionary_encode_status_with_error();
    xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 128));
    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }

  si_tracing_log_span_end();
  *v5 = v21;
  *(v5 + 16) = v22;
  *(v5 + 32) = v23;
}

- (BOOL)fetchBundleIDs:(id)ds
{
  dsCopy = ds;
  v5 = dsCopy;
  if (!self->_isInternal)
  {
    v7 = logForCSLogCategoryIndex(dsCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    goto LABEL_16;
  }

  v6 = objc_opt_respondsToSelector();
  if ((v6 & 1) == 0)
  {
    v7 = logForCSLogCategoryIndex(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService fetchBundleIDs:];
    }

LABEL_16:
    v11 = 0;
    goto LABEL_20;
  }

  v7 = xpc_dictionary_get_remote_connection(v5);
  reply = xpc_dictionary_create_reply(v5);
  v9 = reply;
  if (v7)
  {
    v10 = reply == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10)
  {
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"ipc" fromXPCDictionary:v5];
    v13 = v12;
    if (v12)
    {
      protectionClass = v12;
    }

    else
    {
      protectionClass = [(MDSearchableIndexService *)self protectionClass];
    }

    v15 = protectionClass;

    indexer = self->_indexer;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__MDSearchableIndexService_fetchBundleIDs___block_invoke;
    v18[3] = &unk_278937A00;
    v19 = v9;
    v20 = v7;
    [(MDIndexer *)indexer fetchBundleIdsForProtectionClass:v15 completionHandler:v18];
  }

LABEL_20:
  return v11;
}

void __43__MDSearchableIndexService_fetchBundleIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  csindex_xpc_dictionary_encode_status_with_error();
  if ([v7 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
    [v4 encodeObject:v7];
    v5 = [v4 data];
    v6 = v5;
    if (v4)
    {
      xpc_dictionary_set_data(*(a1 + 32), "data", [v5 bytes], objc_msgSend(v5, "length"));
    }
  }

  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
}

- (BOOL)prepareIndexingLocked:(id)locked
{
  lockedCopy = locked;
  v5 = xpc_dictionary_get_remote_connection(lockedCopy);
  reply = xpc_dictionary_create_reply(lockedCopy);
  if (v5)
  {
    selfCopy = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:lockedCopy];
    v26 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:lockedCopy];
    v8 = xpc_dictionary_get_double(lockedCopy, "time");
    uint64 = xpc_dictionary_get_uint64(lockedCopy, "id");
    v10 = (*MEMORY[0x277D286C8])();
    v11 = *(v10 + 16);
    v37 = *v10;
    v38 = v11;
    v39 = *(v10 + 32);
    v12 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v10 = v12;
    *(v10 + 8) = spanid;
    *(v10 + 16) = 0;
    *(v10 + 24) = uint64;
    *(v10 + 28) = 102;
    *(v10 + 32) = "[MDSearchableIndexService prepareIndexingLocked:]";
    si_tracing_log_span_begin();
    v14 = *(v10 + 16);
    v34 = *v10;
    v35 = v14;
    v36 = *(v10 + 32);
    v15 = *v10;
    v16 = si_tracing_calc_next_spanid();
    v17 = *(v10 + 8);
    v18 = *(v10 + 24);
    if (v7)
    {
      if (!strcmp([v7 UTF8String], "NSFileProtectionComplete"))
      {
        v19 = "Class A index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v19 = "Class B index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v19 = "Class Cx index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v19 = "Class C index";
      }

      else
      {
        v19 = "Unknown index";
      }
    }

    else
    {
      v19 = "Nil index";
    }

    *v10 = v15;
    *(v10 + 8) = v16;
    *(v10 + 16) = v17;
    *(v10 + 24) = v18;
    *(v10 + 28) = 102;
    *(v10 + 32) = v19;
    si_tracing_log_span_begin();
    if (reply)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__MDSearchableIndexService_prepareIndexingLocked___block_invoke;
      v27[3] = &unk_278937A28;
      v20 = *(v10 + 16);
      v30 = *v10;
      v31 = v20;
      v32 = *(v10 + 32);
      v28 = reply;
      v33 = uint64;
      v29 = v5;
      v21 = MEMORY[0x2383760E0](v27);
    }

    else
    {
      v21 = 0;
    }

    [(MDSearchableIndexService *)selfCopy prepareIndexingWhileLocked:v26 protectionClass:v7 holdAssertionFor:v21 completionHandler:v8];

    si_tracing_log_span_end();
    v22 = v35;
    *v10 = v34;
    *(v10 + 16) = v22;
    *(v10 + 32) = v36;
    si_tracing_log_span_end();
    v23 = v38;
    *v10 = v37;
    *(v10 + 16) = v23;
    *(v10 + 32) = v39;
  }

  return v5 != 0;
}

void __50__MDSearchableIndexService_prepareIndexingLocked___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for checkIn";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)finishIndexingLocked:(id)locked
{
  lockedCopy = locked;
  v5 = xpc_dictionary_get_remote_connection(lockedCopy);
  reply = xpc_dictionary_create_reply(lockedCopy);
  if (v5)
  {
    selfCopy = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:lockedCopy];
    v25 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:lockedCopy];
    uint64 = xpc_dictionary_get_uint64(lockedCopy, "id");
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v36 = *v9;
    v37 = v10;
    v38 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService finishIndexingLocked:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v33 = *v9;
    v34 = v13;
    v35 = *(v9 + 32);
    v14 = *v9;
    v15 = si_tracing_calc_next_spanid();
    v16 = *(v9 + 8);
    v17 = *(v9 + 24);
    if (v7)
    {
      if (!strcmp([v7 UTF8String], "NSFileProtectionComplete"))
      {
        v18 = "Class A index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v18 = "Class B index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v18 = "Class Cx index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v18 = "Class C index";
      }

      else
      {
        v18 = "Unknown index";
      }
    }

    else
    {
      v18 = "Nil index";
    }

    *v9 = v14;
    *(v9 + 8) = v15;
    *(v9 + 16) = v16;
    *(v9 + 24) = v17;
    *(v9 + 28) = 102;
    *(v9 + 32) = v18;
    si_tracing_log_span_begin();
    if (reply)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __49__MDSearchableIndexService_finishIndexingLocked___block_invoke;
      v26[3] = &unk_278937A28;
      v19 = *(v9 + 16);
      v29 = *v9;
      v30 = v19;
      v31 = *(v9 + 32);
      v27 = reply;
      v32 = uint64;
      v28 = v5;
      v20 = MEMORY[0x2383760E0](v26);
    }

    else
    {
      v20 = 0;
    }

    [(MDSearchableIndexService *)selfCopy finishIndexingWhileLocked:v25 protectionClass:v7 completionHandler:v20];

    si_tracing_log_span_end();
    v21 = v34;
    *v9 = v33;
    *(v9 + 16) = v21;
    *(v9 + 32) = v35;
    si_tracing_log_span_end();
    v22 = v37;
    *v9 = v36;
    *(v9 + 16) = v22;
    *(v9 + 32) = v38;
  }

  return v5 != 0;
}

void __49__MDSearchableIndexService_finishIndexingLocked___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for checkIn";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state clientStateName:(id)name protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)self0
{
  handlerCopy = handler;
  v11 = logForCSLogCategoryDefault(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:clientStateName:protectionClass:forBundleID:options:completionHandler:];
  }

  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v12);
  }
}

- (void)indexFromBundle:(id)bundle protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)state expectedClientState:(id)self0 clientStateName:(id)self1 deletes:(id)self2 userActivities:(BOOL)self3 completionHandler:(id)self4
{
  handlerCopy = handler;
  v15 = logForCSLogCategoryDefault(handlerCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService indexFromBundle:protectionClass:options:items:itemsText:itemsHTML:clientState:expectedClientState:clientStateName:deletes:userActivities:completionHandler:];
  }

  if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v16);
  }
}

- (BOOL)willModify:(id)modify
{
  modifyCopy = modify;
  v5 = xpc_dictionary_get_remote_connection(modifyCopy);
  reply = xpc_dictionary_create_reply(modifyCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v32 = v9;
    uint64 = xpc_dictionary_get_uint64(modifyCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:modifyCopy];
    v37 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:modifyCopy];
    v34 = xpc_dictionary_get_uint64(modifyCopy, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:modifyCopy];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v33 = v12;
    data = [v12 data];
    v15 = [v13 initWithData:data];

    v31 = v15;
    decode = [v15 decode];
    v16 = (*MEMORY[0x277D286C8])();
    v17 = *(v16 + 16);
    v49 = *v16;
    v50 = v17;
    v51 = *(v16 + 32);
    v18 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v16 = v18;
    *(v16 + 8) = spanid;
    *(v16 + 16) = 0;
    *(v16 + 24) = uint64;
    *(v16 + 28) = 102;
    *(v16 + 32) = "[MDSearchableIndexService willModify:]";
    si_tracing_log_span_begin();
    v20 = *(v16 + 16);
    v46 = *v16;
    v47 = v20;
    v48 = *(v16 + 32);
    v21 = *v16;
    v22 = si_tracing_calc_next_spanid();
    v23 = *(v16 + 8);
    v24 = *(v16 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v25 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v25 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v25 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v25 = "Class C index";
      }

      else
      {
        v25 = "Unknown index";
      }
    }

    else
    {
      v25 = "Nil index";
    }

    *v16 = v21;
    *(v16 + 8) = v22;
    *(v16 + 16) = v23;
    *(v16 + 24) = v24;
    *(v16 + 28) = 102;
    *(v16 + 32) = v25;
    si_tracing_log_span_begin();
    v26 = *(v16 + 16);
    v42 = *v16;
    v43 = v26;
    v44 = *(v16 + 32);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __39__MDSearchableIndexService_willModify___block_invoke;
    v38[3] = &unk_278937A50;
    v27 = v33;
    v39 = v27;
    v40 = v7;
    v45 = uint64;
    v41 = v5;
    [(MDSearchableIndexService *)selfCopy willModifySearchableItemsWithIdentifiers:decode protectionClass:v11 forBundleID:v37 options:v34 completionHandler:v38];

    si_tracing_log_span_end();
    v28 = v47;
    *v16 = v46;
    *(v16 + 16) = v28;
    *(v16 + 32) = v48;
    si_tracing_log_span_end();
    v29 = v50;
    *v16 = v49;
    *(v16 + 16) = v29;
    *(v16 + 32) = v51;

    v9 = v32;
  }

  return v9;
}

void __39__MDSearchableIndexService_willModify___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v10 = *v3;
  v11 = *(v3 + 16);
  v12 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for willModify";
  si_tracing_log_span_begin();
  v8 = objc_opt_self();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 40), "id", *(a1 + 96));
  xpc_connection_send_message(*(a1 + 48), *(a1 + 40));
  si_tracing_log_span_end();
  *v3 = v10;
  *(v3 + 16) = v11;
  *(v3 + 32) = v12;
}

- (BOOL)deleteDomains:(id)domains
{
  domainsCopy = domains;
  v5 = xpc_dictionary_get_remote_connection(domainsCopy);
  reply = xpc_dictionary_create_reply(domainsCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v33 = v9;
    uint64 = xpc_dictionary_get_uint64(domainsCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:domainsCopy];
    v37 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:domainsCopy];
    v35 = xpc_dictionary_get_uint64(domainsCopy, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:domainsCopy];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v34 = v12;
    data = [v12 data];
    v15 = [v13 initWithData:data];

    v32 = v15;
    decode = [v15 decode];
    v16 = (*MEMORY[0x277D286C8])();
    v17 = *(v16 + 16);
    v53 = *v16;
    v54 = v17;
    v55 = *(v16 + 32);
    v18 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v16 = v18;
    *(v16 + 8) = spanid;
    *(v16 + 16) = 0;
    *(v16 + 24) = uint64;
    *(v16 + 28) = 102;
    *(v16 + 32) = "[MDSearchableIndexService deleteDomains:]";
    si_tracing_log_span_begin();
    v20 = *(v16 + 16);
    v50 = *v16;
    v51 = v20;
    v52 = *(v16 + 32);
    v21 = *v16;
    v22 = si_tracing_calc_next_spanid();
    v23 = *(v16 + 8);
    v24 = *(v16 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v25 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v25 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v25 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v25 = "Class C index";
      }

      else
      {
        v25 = "Unknown index";
      }
    }

    else
    {
      v25 = "Nil index";
    }

    *v16 = v21;
    *(v16 + 8) = v22;
    *(v16 + 16) = v23;
    *(v16 + 24) = v24;
    *(v16 + 28) = 102;
    *(v16 + 32) = v25;
    si_tracing_log_span_begin();
    v26 = *(v16 + 16);
    v47 = *v16;
    v48 = v26;
    v49 = *(v16 + 32);
    clientBundleID = [(MDSearchableIndexService *)selfCopy clientBundleID];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v43 = v47;
    v44 = v48;
    v39[2] = __42__MDSearchableIndexService_deleteDomains___block_invoke;
    v39[3] = &unk_278937A50;
    v45 = v49;
    v28 = v34;
    v40 = v28;
    v41 = v7;
    v46 = uint64;
    v42 = v5;
    [(MDSearchableIndexService *)selfCopy deleteSearchableItemsWithDomainIdentifiers:decode protectionClass:v11 forBundleID:v37 fromClient:clientBundleID options:v35 completionHandler:v39];

    si_tracing_log_span_end();
    v29 = v51;
    *v16 = v50;
    *(v16 + 16) = v29;
    *(v16 + 32) = v52;
    si_tracing_log_span_end();
    v30 = v54;
    *v16 = v53;
    *(v16 + 16) = v30;
    *(v16 + 32) = v55;

    v9 = v33;
  }

  return v9;
}

void __42__MDSearchableIndexService_deleteDomains___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v10 = *v3;
  v11 = *(v3 + 16);
  v12 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteDomains";
  si_tracing_log_span_begin();
  v8 = objc_opt_self();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 40), "id", *(a1 + 96));
  xpc_connection_send_message(*(a1 + 48), *(a1 + 40));
  si_tracing_log_span_end();
  *v3 = v10;
  *(v3 + 16) = v11;
  *(v3 + 32) = v12;
}

- (BOOL)deleteBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = xpc_dictionary_get_remote_connection(bundleCopy);
  reply = xpc_dictionary_create_reply(bundleCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v26 = v9;
    uint64 = xpc_dictionary_get_uint64(bundleCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:bundleCopy];
    v30 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:bundleCopy];
    v28 = xpc_dictionary_get_uint64(bundleCopy, "opt");
    int64 = xpc_dictionary_get_int64(bundleCopy, "dar");
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v41 = *v12;
    v42 = v13;
    v43 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService deleteBundle:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v38 = *v12;
    v39 = v16;
    v40 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v34 = *v12;
    v35 = v22;
    v36 = *(v12 + 32);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41__MDSearchableIndexService_deleteBundle___block_invoke;
    v31[3] = &unk_278937A28;
    v32 = v7;
    v37 = uint64;
    v33 = v5;
    [(MDSearchableIndexService *)selfCopy _deleteAllSearchableItemsWithBundleID:v30 protectionClass:v11 shouldGC:1 options:v28 deleteAllReason:int64 completionHandler:v31];

    si_tracing_log_span_end();
    v23 = v39;
    *v12 = v38;
    *(v12 + 16) = v23;
    *(v12 + 32) = v40;
    si_tracing_log_span_end();
    v24 = v42;
    *v12 = v41;
    *(v12 + 16) = v24;
    *(v12 + 32) = v43;

    v9 = v26;
  }

  return v9;
}

void __41__MDSearchableIndexService_deleteBundle___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteBundle";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)deleteSinceDate:(id)date
{
  dateCopy = date;
  v5 = xpc_dictionary_get_remote_connection(dateCopy);
  reply = xpc_dictionary_create_reply(dateCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v28 = v9;
    uint64 = xpc_dictionary_get_uint64(dateCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:dateCopy];
    v31 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:dateCopy];
    v29 = xpc_dictionary_get_uint64(dateCopy, "opt");
    v12 = xpc_dictionary_get_double(dateCopy, "time");
    v13 = (*MEMORY[0x277D286C8])();
    v14 = *(v13 + 16);
    v45 = *v13;
    v46 = v14;
    v47 = *(v13 + 32);
    v15 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v13 = v15;
    *(v13 + 8) = spanid;
    *(v13 + 16) = 0;
    *(v13 + 24) = uint64;
    *(v13 + 28) = 102;
    *(v13 + 32) = "[MDSearchableIndexService deleteSinceDate:]";
    si_tracing_log_span_begin();
    v17 = *(v13 + 16);
    v42 = *v13;
    v43 = v17;
    v44 = *(v13 + 32);
    v18 = *v13;
    v19 = si_tracing_calc_next_spanid();
    v20 = *(v13 + 8);
    v21 = *(v13 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v22 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v22 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v22 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v22 = "Class C index";
      }

      else
      {
        v22 = "Unknown index";
      }
    }

    else
    {
      v22 = "Nil index";
    }

    *v13 = v18;
    *(v13 + 8) = v19;
    *(v13 + 16) = v20;
    *(v13 + 24) = v21;
    *(v13 + 28) = 102;
    *(v13 + 32) = v22;
    si_tracing_log_span_begin();
    v23 = *(v13 + 16);
    v39 = *v13;
    v40 = v23;
    v41 = *(v13 + 32);
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v12];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __44__MDSearchableIndexService_deleteSinceDate___block_invoke;
    v32[3] = &unk_278937A28;
    v35 = v39;
    v36 = v40;
    v37 = v41;
    v33 = v7;
    v38 = uint64;
    v34 = v5;
    [(MDSearchableIndexService *)selfCopy deleteSearchableItemsSinceDate:v24 protectionClass:v11 forBundleID:v31 options:v29 completionHandler:v32];

    si_tracing_log_span_end();
    v25 = v43;
    *v13 = v42;
    *(v13 + 16) = v25;
    *(v13 + 32) = v44;
    si_tracing_log_span_end();
    v26 = v46;
    *v13 = v45;
    *(v13 + 16) = v26;
    *(v13 + 32) = v47;

    v9 = v28;
  }

  return v9;
}

void __44__MDSearchableIndexService_deleteSinceDate___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteSinceDate";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (void)_runLibraryDeletedCommand:(id)command
{
  v3 = MEMORY[0x277CCAE80];
  commandCopy = command;
  v7 = [[v3 alloc] initWithMachServiceName:@"com.apple.photos.service" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846DBD48];
  [v7 setRemoteObjectInterface:v5];

  [v7 resume];
  v6 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_211];
  [v6 photoLibraryDeletedAtURL:commandCopy reply:&__block_literal_global_214];
}

void __54__MDSearchableIndexService__runLibraryDeletedCommand___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Photoslibrary delete connection error:%@", &v4, 0xCu);
  }
}

void __54__MDSearchableIndexService__runLibraryDeletedCommand___block_invoke_212(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = logForCSLogCategoryIndex(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "Photoslibrary delete service error:%@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Photoslibrary delete";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

- (BOOL)photosLibraryDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = xpc_dictionary_get_remote_connection(deletedCopy);
  reply = xpc_dictionary_create_reply(deletedCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(deletedCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"path" fromXPCDictionary:deletedCopy];
    v12 = (*MEMORY[0x277D286C8])();
    v17 = *v12;
    v18 = *(v12 + 16);
    v19 = *(v12 + 32);
    v13 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v13;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService photosLibraryDeleted:]";
    si_tracing_log_span_begin();
    if ([(MDSearchableIndexService *)self searchInternal]&& [(MDSearchableIndexService *)self allowPhotosLibraryDeletion])
    {
      v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:1];
      [(MDSearchableIndexService *)self _runLibraryDeletedCommand:v15];
    }

    csindex_xpc_dictionary_encode_status_with_error();
    xpc_dictionary_set_uint64(v7, "id", uint64);
    xpc_connection_send_message(v5, v7);
    si_tracing_log_span_end();
    *v12 = v17;
    *(v12 + 16) = v18;
    *(v12 + 32) = v19;
  }

  return v9;
}

- (BOOL)openJournalFile:(id)file
{
  fileCopy = file;
  v5 = xpc_dictionary_get_remote_connection(fileCopy);
  reply = xpc_dictionary_create_reply(fileCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    allowOpenJournalFile = [(MDSearchableIndexService *)self allowOpenJournalFile];
    if (allowOpenJournalFile)
    {
      uint64 = xpc_dictionary_get_uint64(fileCopy, "id");
      v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"journal-name" fromXPCDictionary:fileCopy];
      v12 = v11;
      if (v11 && [v11 length])
      {
        v13 = open([v12 UTF8String], 0);
        if ((v13 & 0x80000000) != 0)
        {
          v16 = logForCSLogCategoryIndex(v13);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [MDSearchableIndexService openJournalFile:];
          }
        }

        else
        {
          v14 = v13;
          xpc_dictionary_set_fd(v7, "journal-fd", v13);
          close(v14);
        }

        xpc_dictionary_set_uint64(v7, "id", uint64);
        xpc_connection_send_message(v5, v7);
        v8 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v12 = logForCSLogCategoryIndex(allowOpenJournalFile);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "*warn* Connection not entitled to open journal file", v17, 2u);
      }
    }

    v8 = 0;
LABEL_11:
  }

  return v8;
}

- (BOOL)issueCommand:(id)command
{
  commandCopy = command;
  v5 = xpc_dictionary_get_remote_connection(commandCopy);
  reply = xpc_dictionary_create_reply(commandCopy);
  if (v5)
  {
    selfCopy = self;
    v24 = reply;
    uint64 = xpc_dictionary_get_uint64(commandCopy, "id");
    v8 = [MEMORY[0x277CC3510] copyNSStringForKey:"request" fromXPCDictionary:commandCopy];
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v49 = *v9;
    v50 = v10;
    v51 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService issueCommand:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v46 = *v9;
    v47 = v13;
    v48 = *(v9 + 32);
    v14 = v8 != 0;
    if (v8)
    {
      if (([v8 isEqualToString:@"diagnosemd"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"diagnosemd_q"))
      {
        v15 = [v8 isEqualToString:@"diagnosemd_q"];
        v16 = xpc_dictionary_dup_fd(commandCopy, "fd");
        string = xpc_dictionary_get_string(commandCopy, "b");
        if (string)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        }

        else
        {
          v18 = 0;
        }

        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __41__MDSearchableIndexService_issueCommand___block_invoke;
        v39[3] = &unk_278937A78;
        v42 = v46;
        v43 = v47;
        v44 = v48;
        v40 = v24;
        v45 = uint64;
        v41 = v5;
        [(MDSearchableIndexService *)selfCopy _issueDiagnose:v16 bundleID:v18 logQuery:v15 completionHandler:v39];
      }

      else
      {
        v19 = xpc_dictionary_dup_fd(commandCopy, "fd");
        __buf = 0;
        if ((v19 & 0x80000000) != 0)
        {
          v20 = 0;
        }

        else
        {
          arc4random_buf(&__buf, 8uLL);
          change_fdguard_np();
          v20 = __buf;
        }

        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x2020000000;
        v37 = 0;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v31 = v46;
        v32 = v47;
        v25[2] = __41__MDSearchableIndexService_issueCommand___block_invoke_2;
        v25[3] = &unk_278937AA0;
        v35 = v19;
        v29 = v36;
        v30 = v20;
        v33 = v48;
        v26 = v24;
        v34 = uint64;
        v27 = v5;
        v28 = v8;
        [(MDSearchableIndexService *)selfCopy _issueCommand:v28 outFileDescriptor:v19 searchContext:0 completionHandler:v25];

        _Block_object_dispose(v36, 8);
      }
    }

    si_tracing_log_span_end();
    v21 = v50;
    *v9 = v49;
    *(v9 + 16) = v21;
    *(v9 + 32) = v51;

    reply = v24;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __41__MDSearchableIndexService_issueCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v12 = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for issueDiagnose";
  si_tracing_log_span_begin();
  if (*(a1 + 32))
  {
    csindex_xpc_dictionary_encode_status_with_error();
    if (v11)
    {
      xpc_dictionary_set_data(*(a1 + 32), "data", [v11 bytes], objc_msgSend(v11, "length"));
    }

    xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }

  si_tracing_log_span_end();
  *v6 = v12;
  *(v6 + 16) = v13;
  *(v6 + 32) = v14;
}

void __41__MDSearchableIndexService_issueCommand___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24))
  {
    v9 = logForCSLogCategoryIndex(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __41__MDSearchableIndexService_issueCommand___block_invoke_2_cold_1();
    }
  }

  else
  {
    *(v8 + 24) = 1;
    if ((*(a1 + 120) & 0x80000000) == 0)
    {
      guarded_close_np();
    }

    v10 = (*MEMORY[0x277D286C8])();
    v18 = *v10;
    v19 = *(v10 + 16);
    v20 = *(v10 + 32);
    v11 = *(a1 + 88);
    *v10 = *(a1 + 72);
    *(v10 + 16) = v11;
    *(v10 + 32) = *(a1 + 104);
    v15 = *(a1 + 72);
    v16 = *(a1 + 88);
    v17 = *(a1 + 104);
    v12 = *v10;
    spanid = si_tracing_calc_next_spanid();
    v14 = *(v10 + 8);
    *v10 = v12;
    *(v10 + 8) = spanid;
    *(v10 + 16) = v14;
    *(v10 + 28) = 102;
    *(v10 + 32) = "completion handler for issueCommand";
    si_tracing_log_span_begin();
    if (*(a1 + 32))
    {
      csindex_xpc_dictionary_encode_status_with_error();
      if (v5)
      {
        xpc_dictionary_set_data(*(a1 + 32), "data", [v5 bytes], objc_msgSend(v5, "length"));
      }

      xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 112));
      xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
    }

    si_tracing_log_span_end();
    *v10 = v18;
    *(v10 + 16) = v19;
    *(v10 + 32) = v20;
  }
}

- (BOOL)fetchClientState:(id)state
{
  stateCopy = state;
  v5 = xpc_dictionary_get_remote_connection(stateCopy);
  reply = xpc_dictionary_create_reply(stateCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v26 = v9;
    uint64 = xpc_dictionary_get_uint64(stateCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:stateCopy];
    v30 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:stateCopy];
    v27 = xpc_dictionary_get_uint64(stateCopy, "opt");
    v29 = [MEMORY[0x277CC3510] copyNSStringForKey:"client-state-name" fromXPCDictionary:stateCopy];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v41 = *v12;
    v42 = v13;
    v43 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService fetchClientState:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v38 = *v12;
    v39 = v16;
    v40 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v34 = *v12;
    v35 = v22;
    v36 = *(v12 + 32);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __45__MDSearchableIndexService_fetchClientState___block_invoke;
    v31[3] = &unk_278937A78;
    v32 = v7;
    v37 = uint64;
    v33 = v5;
    [(MDSearchableIndexService *)selfCopy fetchLastClientStateWithProtectionClass:v11 forBundleID:v30 clientStateName:v29 options:v27 completionHandler:v31];

    si_tracing_log_span_end();
    v23 = v39;
    *v12 = v38;
    *(v12 + 16) = v23;
    *(v12 + 32) = v40;
    si_tracing_log_span_end();
    v24 = v42;
    *v12 = v41;
    *(v12 + 16) = v24;
    *(v12 + 32) = v43;

    v9 = v26;
  }

  return v9;
}

void __45__MDSearchableIndexService_fetchClientState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v16 = *v6;
  v17 = *(v6 + 16);
  v18 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for fetchClientState";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  if (!v5)
  {
    v11 = *(a1 + 32);
    v12 = [v15 bytes];
    v13 = [v15 length];
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = "";
    }

    xpc_dictionary_set_data(v11, "client-state-key", v14, v13);
  }

  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v6 = v16;
  *(v6 + 16) = v17;
  *(v6 + 32) = v18;
}

- (BOOL)fetchAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = xpc_dictionary_get_remote_connection(attributesCopy);
  reply = xpc_dictionary_create_reply(attributesCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v9 = MEMORY[0x277CC3510];
    v10 = xpc_dictionary_get_value(attributesCopy, "identifiers");
    v11 = [v9 copyNSStringArrayFromXPCArray:v10];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v27 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:attributesCopy];
      v12 = v27;
      if (!v27)
      {
        goto LABEL_17;
      }

      if (!self->_isInternal)
      {
        v14 = logForCSLogCategoryIndex(v27);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
        }

        v29 = 0;
        v8 = 0;
        goto LABEL_29;
      }

      data = [v27 data];
      if (!data)
      {
LABEL_17:
        v29 = 0;
        v8 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v11 = data;
    }

    v41 = v11;
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(attributesCopy, "id");
    v14 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:attributesCopy];
    v40 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:attributesCopy];
    v15 = MEMORY[0x277CC3510];
    v16 = xpc_dictionary_get_value(attributesCopy, "fa");
    v39 = [v15 copyNSStringArrayFromXPCArray:v16];

    v38 = xpc_dictionary_get_BOOL(attributesCopy, "fpa");
    int64 = xpc_dictionary_get_int64(attributesCopy, "qos");
    v17 = (*MEMORY[0x277D286C8])();
    v18 = *(v17 + 16);
    v57 = *v17;
    v58 = v18;
    v59 = *(v17 + 32);
    v19 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v17 = v19;
    *(v17 + 8) = spanid;
    *(v17 + 16) = 0;
    *(v17 + 24) = uint64;
    *(v17 + 28) = 102;
    *(v17 + 32) = "[MDSearchableIndexService fetchAttributes:]";
    si_tracing_log_span_begin();
    v36 = uint64;
    v21 = *(v17 + 16);
    v54 = *v17;
    v55 = v21;
    v56 = *(v17 + 32);
    v22 = *v17;
    v23 = si_tracing_calc_next_spanid();
    v24 = *(v17 + 8);
    v25 = *(v17 + 24);
    if (v14)
    {
      if (!strcmp([v14 UTF8String], "NSFileProtectionComplete"))
      {
        v26 = "Class A index";
      }

      else if (!strcmp([v14 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v26 = "Class B index";
      }

      else if (!strcmp([v14 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v26 = "Class Cx index";
      }

      else if (!strcmp([v14 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v26 = "Class C index";
      }

      else
      {
        v26 = "Unknown index";
      }
    }

    else
    {
      v26 = "Nil index";
    }

    *v17 = v22;
    *(v17 + 8) = v23;
    *(v17 + 16) = v24;
    *(v17 + 24) = v25;
    *(v17 + 28) = 102;
    *(v17 + 32) = v26;
    si_tracing_log_span_begin();
    v30 = *(v17 + 16);
    v51 = *v17;
    v52 = v30;
    v53 = *(v17 + 32);
    if (selfCopy->_entitledAttributes)
    {
      v31 = SIUserCtxCreateWithLanguages();
      if (v31)
      {
        SIUserCtxSetEntitlements();
      }
    }

    else
    {
      v31 = 0;
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v47 = v51;
    v48 = v52;
    v43[2] = __44__MDSearchableIndexService_fetchAttributes___block_invoke;
    v43[3] = &unk_278937A50;
    v49 = v53;
    v44 = v7;
    v50 = v36;
    v45 = v5;
    v12 = v12;
    v46 = v12;
    LODWORD(v35) = int64;
    v29 = v41;
    [(MDSearchableIndexService *)selfCopy fetchAttributes:v39 protectionClass:v14 bundleID:v40 identifiers:v41 userCtx:v31 flags:v38 qos:v35 reply:v44 completionHandler:v43];

    si_tracing_log_span_end();
    v32 = v55;
    *v17 = v54;
    *(v17 + 16) = v32;
    *(v17 + 32) = v56;
    si_tracing_log_span_end();
    v33 = v58;
    *v17 = v57;
    *(v17 + 16) = v33;
    *(v17 + 32) = v59;

    v8 = 1;
LABEL_29:

    goto LABEL_30;
  }

LABEL_31:

  return v8;
}

void __44__MDSearchableIndexService_fetchAttributes___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v10 = *v3;
  v11 = *(v3 + 16);
  v12 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for fetchAttributes";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 96));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v8 = objc_opt_self();
  si_tracing_log_span_end();
  *v3 = v10;
  *(v3 + 16) = v11;
  *(v3 + 32) = v12;
}

- (BOOL)fetchCacheFileDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v5 = xpc_dictionary_get_remote_connection(descriptorsCopy);
  reply = xpc_dictionary_create_reply(descriptorsCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v9 = MEMORY[0x277CC3510];
    v10 = xpc_dictionary_get_value(descriptorsCopy, "identifiers");
    v11 = [v9 copyNSStringArrayFromXPCArray:v10];

    v8 = v11 != 0;
    if (v11)
    {
      selfCopy = self;
      uint64 = xpc_dictionary_get_uint64(descriptorsCopy, "id");
      v32 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:descriptorsCopy];
      v30 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:descriptorsCopy];
      int64 = xpc_dictionary_get_int64(descriptorsCopy, "qos");
      v13 = (*MEMORY[0x277D286C8])();
      v14 = *(v13 + 16);
      v46 = *v13;
      v47 = v14;
      v48 = *(v13 + 32);
      v15 = si_tracing_calc_traceid();
      spanid = si_tracing_calc_next_spanid();
      *v13 = v15;
      *(v13 + 8) = spanid;
      *(v13 + 16) = 0;
      *(v13 + 24) = uint64;
      *(v13 + 28) = 102;
      *(v13 + 32) = "[MDSearchableIndexService fetchCacheFileDescriptors:]";
      si_tracing_log_span_begin();
      v28 = uint64;
      v17 = *(v13 + 16);
      v43 = *v13;
      v44 = v17;
      v45 = *(v13 + 32);
      v18 = *v13;
      v19 = si_tracing_calc_next_spanid();
      v20 = *(v13 + 8);
      v21 = *(v13 + 24);
      if (v32)
      {
        if (!strcmp([v32 UTF8String], "NSFileProtectionComplete"))
        {
          v22 = "Class A index";
        }

        else if (!strcmp([v32 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
        {
          v22 = "Class B index";
        }

        else if (!strcmp([v32 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
        {
          v22 = "Class Cx index";
        }

        else if (!strcmp([v32 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
        {
          v22 = "Class C index";
        }

        else
        {
          v22 = "Unknown index";
        }
      }

      else
      {
        v22 = "Nil index";
      }

      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 24) = v21;
      *(v13 + 28) = 102;
      *(v13 + 32) = v22;
      si_tracing_log_span_begin();
      v23 = *(v13 + 16);
      v40 = *v13;
      v41 = v23;
      v42 = *(v13 + 32);
      if (selfCopy->_entitledAttributes)
      {
        v24 = SIUserCtxCreateWithLanguages();
        if (v24)
        {
          SIUserCtxSetEntitlements();
        }
      }

      else
      {
        v24 = 0;
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __54__MDSearchableIndexService_fetchCacheFileDescriptors___block_invoke;
      v33[3] = &unk_278937A28;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      v34 = v7;
      v39 = v28;
      v35 = v5;
      [(MDSearchableIndexService *)selfCopy fetchCacheFileDescriptorsForProtectionClass:v32 bundleID:v30 identifiers:v11 userCtx:v24 flags:0 qos:int64 reply:v34 completionHandler:v33];

      si_tracing_log_span_end();
      v25 = v44;
      *v13 = v43;
      *(v13 + 16) = v25;
      *(v13 + 32) = v45;
      si_tracing_log_span_end();
      v26 = v47;
      *v13 = v46;
      *(v13 + 16) = v26;
      *(v13 + 32) = v48;
    }
  }

  return v8;
}

void __54__MDSearchableIndexService_fetchCacheFileDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for fetchCacheFileDescriptors";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)changeState:(id)state
{
  stateCopy = state;
  v5 = xpc_dictionary_get_remote_connection(stateCopy);
  reply = xpc_dictionary_create_reply(stateCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v27 = v9;
    uint64 = xpc_dictionary_get_uint64(stateCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:stateCopy];
    v33 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:stateCopy];
    v29 = xpc_dictionary_get_uint64(stateCopy, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:stateCopy];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v26 = v12;
    data = [v12 data];
    v15 = [v13 initWithData:data];

    v25 = v15;
    decode = [v15 decode];
    v28 = xpc_dictionary_get_uint64(stateCopy, "modify-state");
    v31 = [MEMORY[0x277CC3510] copyNSStringForKey:"ct" fromXPCDictionary:stateCopy];
    v16 = (*MEMORY[0x277D286C8])();
    v37 = *v16;
    v38 = *(v16 + 16);
    v39 = *(v16 + 32);
    v17 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v16 = v17;
    *(v16 + 8) = spanid;
    *(v16 + 16) = 0;
    *(v16 + 24) = uint64;
    *(v16 + 28) = 102;
    *(v16 + 32) = "[MDSearchableIndexService changeState:]";
    si_tracing_log_span_begin();
    v34 = *v16;
    v35 = *(v16 + 16);
    v36 = *(v16 + 32);
    v19 = *v16;
    v20 = si_tracing_calc_next_spanid();
    v21 = *(v16 + 8);
    v22 = *(v16 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v23 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v23 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v23 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v23 = "Class C index";
      }

      else
      {
        v23 = "Unknown index";
      }
    }

    else
    {
      v23 = "Nil index";
    }

    *v16 = v19;
    *(v16 + 8) = v20;
    *(v16 + 16) = v21;
    *(v16 + 24) = v22;
    *(v16 + 28) = 102;
    *(v16 + 32) = v23;
    si_tracing_log_span_begin();
    [(MDSearchableIndexService *)selfCopy changeStateOfSearchableItemsWithUIDs:decode toState:v28 protectionClass:v11 forBundleID:v33 forUTIType:v31 options:v29];
    csindex_xpc_dictionary_encode_status_with_error();
    xpc_dictionary_set_uint64(v7, "id", uint64);
    xpc_connection_send_message(v5, v7);
    si_tracing_log_span_end();
    *v16 = v34;
    *(v16 + 16) = v35;
    *(v16 + 32) = v36;
    si_tracing_log_span_end();
    *v16 = v37;
    *(v16 + 16) = v38;
    *(v16 + 32) = v39;

    v9 = v27;
  }

  return v9;
}

- (BOOL)dataMigration:(id)migration
{
  migrationCopy = migration;
  v5 = xpc_dictionary_get_remote_connection(migrationCopy);
  reply = xpc_dictionary_create_reply(migrationCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(migrationCopy, "id");
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:{xpc_dictionary_get_double(migrationCopy, "timeout")}];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v26 = *v12;
    v27 = v13;
    v28 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService dataMigration:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v22 = *v12;
    v23 = v16;
    v24 = *(v12 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__MDSearchableIndexService_dataMigration___block_invoke;
    v19[3] = &unk_278937A28;
    v20 = v7;
    v25 = uint64;
    v21 = v5;
    [(MDSearchableIndexService *)self performDataMigrationWithTimeout:v11 completionHandler:v19];

    si_tracing_log_span_end();
    v17 = v27;
    *v12 = v26;
    *(v12 + 16) = v17;
    *(v12 + 32) = v28;
  }

  return v9;
}

void __42__MDSearchableIndexService_dataMigration___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for dataMigration";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)transferDeleteJournals:(id)journals
{
  journalsCopy = journals;
  v5 = xpc_dictionary_get_remote_connection(journalsCopy);
  reply = xpc_dictionary_create_reply(journalsCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = xpc_dictionary_dup_fd(journalsCopy, "fd");
    v9 = *(v32 + 6);
    v8 = v9 > 0;
    if (v9 >= 1)
    {
      uint64 = xpc_dictionary_get_uint64(journalsCopy, "id");
      string = xpc_dictionary_get_string(journalsCopy, "pc");
      v12 = (*MEMORY[0x277D286C8])();
      v13 = *(v12 + 16);
      v28 = *v12;
      v29 = v13;
      v30 = *(v12 + 32);
      v14 = si_tracing_calc_traceid();
      spanid = si_tracing_calc_next_spanid();
      *v12 = v14;
      *(v12 + 8) = spanid;
      *(v12 + 16) = 0;
      *(v12 + 24) = uint64;
      *(v12 + 28) = 102;
      *(v12 + 32) = "[MDSearchableIndexService transferDeleteJournals:]";
      si_tracing_log_span_begin();
      v16 = *(v32 + 6);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v17 = *(v12 + 16);
      v24 = *v12;
      v25 = v17;
      v20[2] = __51__MDSearchableIndexService_transferDeleteJournals___block_invoke;
      v20[3] = &unk_278937AC8;
      v26 = *(v12 + 32);
      v21 = v7;
      v27 = uint64;
      v22 = v5;
      v23 = &v31;
      [(MDSearchableIndexService *)self transferDeleteJournalsForProtectionClass:string toDirectory:v16 withCompletionHandler:v20];

      si_tracing_log_span_end();
      v18 = v29;
      *v12 = v28;
      *(v12 + 16) = v18;
      *(v12 + 32) = v30;
    }

    _Block_object_dispose(&v31, 8);
  }

  return v8;
}

void __51__MDSearchableIndexService_transferDeleteJournals___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for transferDeleteJournals";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 96));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  close(*(*(*(a1 + 48) + 8) + 24));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)deleteAllUserActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = xpc_dictionary_get_remote_connection(activitiesCopy);
  reply = xpc_dictionary_create_reply(activitiesCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(activitiesCopy, "id");
    v11 = xpc_dictionary_get_uint64(activitiesCopy, "opt");
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:activitiesCopy];
    v13 = (*MEMORY[0x277D286C8])();
    v14 = *(v13 + 16);
    v31 = *v13;
    v32 = v14;
    v33 = *(v13 + 32);
    v15 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v13 = v15;
    *(v13 + 8) = spanid;
    *(v13 + 16) = 0;
    *(v13 + 24) = uint64;
    *(v13 + 28) = 102;
    *(v13 + 32) = "[MDSearchableIndexService deleteAllUserActivities:]";
    si_tracing_log_span_begin();
    v17 = *(v13 + 16);
    v28 = *v13;
    v29 = v17;
    v30 = *(v13 + 32);
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__MDSearchableIndexService_deleteAllUserActivities___block_invoke;
    v21[3] = &unk_278937A28;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    v22 = v7;
    v27 = uint64;
    v23 = v5;
    [(MDSearchableIndexService *)self deleteAllUserActivities:v12 fromClient:clientBundleID options:v11 completionHandler:v21];

    si_tracing_log_span_end();
    v19 = v32;
    *v13 = v31;
    *(v13 + 16) = v19;
    *(v13 + 32) = v33;
  }

  return v9;
}

void __52__MDSearchableIndexService_deleteAllUserActivities___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteAllUserActivities";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = xpc_dictionary_get_remote_connection(identifiersCopy);
  reply = xpc_dictionary_create_reply(identifiersCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(identifiersCopy, "id");
    v10 = xpc_dictionary_get_uint64(identifiersCopy, "opt");
    v23 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:identifiersCopy];
    v11 = (*MEMORY[0x277D286C8])();
    v12 = *(v11 + 16);
    v35 = *v11;
    v36 = v12;
    v37 = *(v11 + 32);
    v13 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v11 = v13;
    *(v11 + 8) = spanid;
    *(v11 + 16) = 0;
    *(v11 + 24) = uint64;
    *(v11 + 28) = 102;
    *(v11 + 32) = "[MDSearchableIndexService deleteUserActivitiesWithPersistentIdentifiers:]";
    si_tracing_log_span_begin();
    v15 = *(v11 + 16);
    v32 = *v11;
    v33 = v15;
    v34 = *(v11 + 32);
    v16 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:identifiersCopy];
    v8 = v16 != 0;
    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CC33C8]);
      data = [v16 data];
      v19 = [v17 initWithData:data];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v28 = v32;
      v29 = v33;
      v24[2] = __74__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers___block_invoke;
      v24[3] = &unk_278937A50;
      v30 = v34;
      v25 = v16;
      v26 = v7;
      v31 = uint64;
      v27 = v5;
      [(MDSearchableIndexService *)selfCopy deleteUserActivitiesWithPersistentIdentifiers:v19 bundleID:v23 options:v10 completionHandler:v24];
    }

    si_tracing_log_span_end();
    v20 = v36;
    *v11 = v35;
    *(v11 + 16) = v20;
    *(v11 + 32) = v37;
  }

  return v8;
}

void __74__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v10 = *v3;
  v11 = *(v3 + 16);
  v12 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteUserActivitiesWithPersistentIdentifiers";
  si_tracing_log_span_begin();
  v8 = objc_opt_self();
  xpc_dictionary_set_uint64(*(a1 + 40), "id", *(a1 + 96));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 48), *(a1 + 40));
  si_tracing_log_span_end();
  *v3 = v10;
  *(v3 + 16) = v11;
  *(v3 + 32) = v12;
}

- (BOOL)deleteActionsBeforeTime:(id)time
{
  timeCopy = time;
  v5 = xpc_dictionary_get_remote_connection(timeCopy);
  reply = xpc_dictionary_create_reply(timeCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(timeCopy, "id");
    v11 = xpc_dictionary_get_uint64(timeCopy, "opt");
    v12 = xpc_dictionary_get_double(timeCopy, "time");
    v13 = (*MEMORY[0x277D286C8])();
    v14 = *(v13 + 16);
    v27 = *v13;
    v28 = v14;
    v29 = *(v13 + 32);
    v15 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v13 = v15;
    *(v13 + 8) = spanid;
    *(v13 + 16) = 0;
    *(v13 + 24) = uint64;
    *(v13 + 28) = 102;
    *(v13 + 32) = "[MDSearchableIndexService deleteActionsBeforeTime:]";
    si_tracing_log_span_begin();
    v17 = *(v13 + 16);
    v23 = *v13;
    v24 = v17;
    v25 = *(v13 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52__MDSearchableIndexService_deleteActionsBeforeTime___block_invoke;
    v20[3] = &unk_278937A28;
    v21 = v7;
    v26 = uint64;
    v22 = v5;
    [(MDSearchableIndexService *)self deleteActionsBeforeTime:v11 options:v20 completionHandler:v12];

    si_tracing_log_span_end();
    v18 = v28;
    *v13 = v27;
    *(v13 + 16) = v18;
    *(v13 + 32) = v29;
  }

  return v9;
}

void __52__MDSearchableIndexService_deleteActionsBeforeTime___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteActionsBeforeTime";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)deleteActionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = xpc_dictionary_get_remote_connection(identifiersCopy);
  reply = xpc_dictionary_create_reply(identifiersCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(identifiersCopy, "id");
    v11 = xpc_dictionary_get_uint64(identifiersCopy, "opt");
    v12 = MEMORY[0x277CC3510];
    v13 = xpc_dictionary_get_value(identifiersCopy, "identifiers");
    v14 = [v12 copyNSStringArrayFromXPCArray:v13];

    v15 = (*MEMORY[0x277D286C8])();
    v16 = *(v15 + 16);
    v29 = *v15;
    v30 = v16;
    v31 = *(v15 + 32);
    v17 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v15 = v17;
    *(v15 + 8) = spanid;
    *(v15 + 16) = 0;
    *(v15 + 24) = uint64;
    *(v15 + 28) = 102;
    *(v15 + 32) = "[MDSearchableIndexService deleteActionsWithIdentifiers:]";
    si_tracing_log_span_begin();
    v19 = *(v15 + 16);
    v25 = *v15;
    v26 = v19;
    v27 = *(v15 + 32);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__MDSearchableIndexService_deleteActionsWithIdentifiers___block_invoke;
    v22[3] = &unk_278937A28;
    v23 = v7;
    v28 = uint64;
    v24 = v5;
    [(MDSearchableIndexService *)self deleteActionsWithIdentifiers:v14 options:v11 completionHandler:v22];

    si_tracing_log_span_end();
    v20 = v30;
    *v15 = v29;
    *(v15 + 16) = v20;
    *(v15 + 32) = v31;
  }

  return v9;
}

void __57__MDSearchableIndexService_deleteActionsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteActionsWithIdentifiers";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)processActivities:(id)activities
{
  v45 = *MEMORY[0x277D85DE8];
  original = activities;
  connection = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  if (connection)
  {
    v4 = reply == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  v32 = v5;
  if (!v4)
  {
    message = reply;
    v6 = (*MEMORY[0x277D286C8])();
    v7 = *(v6 + 16);
    v41 = *v6;
    v42 = v7;
    v31 = v6;
    v43 = *(v6 + 32);
    v8 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v31 = v8;
    *(v31 + 8) = spanid;
    *(v31 + 16) = 0;
    *(v31 + 24) = -1;
    *(v31 + 28) = 102;
    *(v31 + 32) = "[MDSearchableIndexService processActivities:]";
    si_tracing_log_span_begin();
    v27 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:original];
    data = [v27 data];
    if ([data length])
    {
      v26 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:data error:0];
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
      v28 = [v26 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CCA308]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = v28;
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v17)
        {
          v18 = *v38;
          v35 = *MEMORY[0x277CCA190];
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v37 + 1) + 8 * i);
              v21 = [v20 objectForKeyedSubscript:@"action"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [v20 objectForKeyedSubscript:@"item"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = v35;
                  [(MDSearchableIndexService *)self userPerformedAction:v21 withItem:v22 protectionClass:v23];
                }
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v37 objects:v44 count:16];
          }

          while (v17);
        }
      }
    }

    if (xpc_dictionary_get_BOOL(original, "flush"))
    {
      [(MDSearchableIndexService *)self flushUserActivities];
    }

    csindex_xpc_dictionary_encode_status_with_error();
    xpc_connection_send_message(connection, message);

    si_tracing_log_span_end();
    v24 = v42;
    reply = message;
    *v31 = v41;
    *(v31 + 16) = v24;
    *(v31 + 32) = v43;
  }

  return v32;
}

- (BOOL)addInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = xpc_dictionary_get_remote_connection(interactionCopy);
  reply = xpc_dictionary_create_reply(interactionCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(interactionCopy, "id");
    v10 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:interactionCopy];
    v28 = xpc_dictionary_get_uint64(interactionCopy, "opt");
    v31 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:interactionCopy];
    v30 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:interactionCopy];
    data = [v30 data];
    v32 = [data copy];

    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v46 = *v12;
    v47 = v13;
    v48 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService addInteraction:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v43 = *v12;
    v44 = v16;
    v45 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v10)
    {
      if (!strcmp([v10 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v10 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v10 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v10 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v40 = *v12;
    v41 = v22;
    v42 = *(v12 + 32);
    v23 = [v32 length];
    v8 = v23 != 0;
    if (v23)
    {
      v24 = [MEMORY[0x277CC3510] copyNSStringForKey:"icn" fromXPCDictionary:interactionCopy];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __43__MDSearchableIndexService_addInteraction___block_invoke;
      v33[3] = &unk_278937A28;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      v34 = v7;
      v39 = uint64;
      v35 = v5;
      [(MDSearchableIndexService *)selfCopy addInteraction:v32 intentClassName:v24 bundleID:v31 protectionClass:v10 options:v28 completionHandler:v33];
    }

    si_tracing_log_span_end();
    v25 = v44;
    *v12 = v43;
    *(v12 + 16) = v25;
    *(v12 + 32) = v45;
    si_tracing_log_span_end();
    v26 = v47;
    *v12 = v46;
    *(v12 + 16) = v26;
    *(v12 + 32) = v48;
  }

  return v8;
}

void __43__MDSearchableIndexService_addInteraction___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for addInteraction";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)_deleteInteractions:(id)interactions forGroup:(BOOL)group
{
  groupCopy = group;
  interactionsCopy = interactions;
  v7 = xpc_dictionary_get_remote_connection(interactionsCopy);
  reply = xpc_dictionary_create_reply(interactionsCopy);
  v9 = reply;
  v10 = 0;
  if (v7 && reply)
  {
    v32 = groupCopy;
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(interactionsCopy, "id");
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:interactionsCopy];
    v33 = xpc_dictionary_get_uint64(interactionsCopy, "opt");
    v35 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:interactionsCopy];
    v13 = MEMORY[0x277CC3510];
    v14 = xpc_dictionary_get_value(interactionsCopy, "identifiers");
    v36 = [v13 copyNSStringArrayFromXPCArray:v14];

    v15 = (*MEMORY[0x277D286C8])();
    v16 = *(v15 + 16);
    v53 = *v15;
    v54 = v16;
    v55 = *(v15 + 32);
    v17 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v15 = v17;
    *(v15 + 8) = spanid;
    *(v15 + 16) = 0;
    *(v15 + 24) = uint64;
    *(v15 + 28) = 102;
    *(v15 + 32) = "[MDSearchableIndexService _deleteInteractions:forGroup:]";
    si_tracing_log_span_begin();
    v19 = *(v15 + 16);
    v50 = *v15;
    v51 = v19;
    v52 = *(v15 + 32);
    v20 = *v15;
    v21 = si_tracing_calc_next_spanid();
    v22 = *(v15 + 8);
    v23 = *(v15 + 24);
    if (v12)
    {
      if (!strcmp([v12 UTF8String], "NSFileProtectionComplete"))
      {
        v24 = "Class A index";
      }

      else if (!strcmp([v12 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v24 = "Class B index";
      }

      else if (!strcmp([v12 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v24 = "Class Cx index";
      }

      else if (!strcmp([v12 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v24 = "Class C index";
      }

      else
      {
        v24 = "Unknown index";
      }
    }

    else
    {
      v24 = "Nil index";
    }

    *v15 = v20;
    *(v15 + 8) = v21;
    *(v15 + 16) = v22;
    *(v15 + 24) = v23;
    *(v15 + 28) = 102;
    *(v15 + 32) = v24;
    si_tracing_log_span_begin();
    v25 = *(v15 + 16);
    v47 = *v15;
    v48 = v25;
    v49 = *(v15 + 32);
    v26 = v36;
    v27 = [v36 count];
    v10 = v27 != 0;
    if (v27)
    {
      if (v32)
      {
        v28 = v42;
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke;
        v42[3] = &unk_278937A28;
        v43 = v47;
        v44 = v48;
        v45 = v49;
        v42[4] = v9;
        v46 = uint64;
        v42[5] = v7;
        [(MDSearchableIndexService *)selfCopy deleteInteractionsWithGroupIdentifiers:v36 bundleID:v35 protectionClass:v12 options:v33 completionHandler:v42];
      }

      else
      {
        v28 = v37;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke_2;
        v37[3] = &unk_278937A28;
        v38 = v47;
        v39 = v48;
        v40 = v49;
        v37[4] = v9;
        v41 = uint64;
        v37[5] = v7;
        [(MDSearchableIndexService *)selfCopy deleteInteractionsWithIdentifiers:v36 bundleID:v35 protectionClass:v12 options:v33 completionHandler:v37];
      }

      v26 = v36;
    }

    si_tracing_log_span_end();
    v29 = v51;
    *v15 = v50;
    *(v15 + 16) = v29;
    *(v15 + 32) = v52;
    si_tracing_log_span_end();
    v30 = v54;
    *v15 = v53;
    *(v15 + 16) = v30;
    *(v15 + 32) = v55;
  }

  return v10;
}

void __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteInteractions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

void __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteInteractions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)deleteAllInteractions:(id)interactions
{
  interactionsCopy = interactions;
  v5 = xpc_dictionary_get_remote_connection(interactionsCopy);
  reply = xpc_dictionary_create_reply(interactionsCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v26 = v9;
    uint64 = xpc_dictionary_get_uint64(interactionsCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:interactionsCopy];
    v27 = xpc_dictionary_get_uint64(interactionsCopy, "opt");
    v29 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:interactionsCopy];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v40 = *v12;
    v41 = v13;
    v42 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService deleteAllInteractions:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v37 = *v12;
    v38 = v16;
    v39 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v33 = *v12;
    v34 = v22;
    v35 = *(v12 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __50__MDSearchableIndexService_deleteAllInteractions___block_invoke;
    v30[3] = &unk_278937A28;
    v31 = v7;
    v36 = uint64;
    v32 = v5;
    [(MDSearchableIndexService *)selfCopy deleteAllInteractionsWithBundleID:v29 protectionClass:v11 options:v27 completionHandler:v30];

    si_tracing_log_span_end();
    v23 = v38;
    *v12 = v37;
    *(v12 + 16) = v23;
    *(v12 + 32) = v39;
    si_tracing_log_span_end();
    v24 = v41;
    *v12 = v40;
    *(v12 + 16) = v24;
    *(v12 + 32) = v42;

    v9 = v26;
  }

  return v9;
}

void __50__MDSearchableIndexService_deleteAllInteractions___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteAllInteractions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)donateRelevantActions:(id)actions
{
  actionsCopy = actions;
  v5 = xpc_dictionary_get_remote_connection(actionsCopy);
  reply = xpc_dictionary_create_reply(actionsCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    uint64 = xpc_dictionary_get_uint64(actionsCopy, "id");
    v10 = xpc_dictionary_get_uint64(actionsCopy, "opt");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:actionsCopy];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v30 = *v12;
    v31 = v13;
    v32 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService donateRelevantActions:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v27 = *v12;
    v28 = v16;
    v29 = *(v12 + 32);
    v17 = xpc_dictionary_get_value(actionsCopy, "data");
    v8 = v17 != 0;
    if (v17)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __50__MDSearchableIndexService_donateRelevantActions___block_invoke;
      v20[3] = &unk_278937A28;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v21 = v7;
      v26 = uint64;
      v22 = v5;
      [(MDSearchableIndexService *)self donateRelevantActions:v17 bundleID:v11 options:v10 completionHandler:v20];
    }

    si_tracing_log_span_end();
    v18 = v31;
    *v12 = v30;
    *(v12 + 16) = v18;
    *(v12 + 32) = v32;
  }

  return v8;
}

void __50__MDSearchableIndexService_donateRelevantActions___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for donateRelevantActions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (BOOL)updateCorrections:(id)corrections
{
  correctionsCopy = corrections;
  v5 = xpc_dictionary_get_remote_connection(correctionsCopy);
  reply = xpc_dictionary_create_reply(correctionsCopy);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    selfCopy = self;
    v27 = v9;
    uint64 = xpc_dictionary_get_uint64(correctionsCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:correctionsCopy];
    v26 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:correctionsCopy];
    v28 = xpc_dictionary_get_uint64(correctionsCopy, "opt");
    v30 = [MEMORY[0x277CC3510] copyNSStringForKey:"filepath" fromXPCDictionary:correctionsCopy];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v41 = *v12;
    v42 = v13;
    v43 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService updateCorrections:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v38 = *v12;
    v39 = v16;
    v40 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v34 = *v12;
    v35 = v22;
    v36 = *(v12 + 32);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__MDSearchableIndexService_updateCorrections___block_invoke;
    v31[3] = &unk_278937A78;
    v32 = v7;
    v37 = uint64;
    v33 = v5;
    [(MDSearchableIndexService *)selfCopy updateCorrectionsWithFilePath:v30 options:v28 completionHandler:v31];

    si_tracing_log_span_end();
    v23 = v39;
    *v12 = v38;
    *(v12 + 16) = v23;
    *(v12 + 32) = v40;
    si_tracing_log_span_end();
    v24 = v42;
    *v12 = v41;
    *(v12 + 16) = v24;
    *(v12 + 32) = v43;

    v9 = v27;
  }

  return v9;
}

void __46__MDSearchableIndexService_updateCorrections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v12 = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for updateCorrections";
  si_tracing_log_span_begin();
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  si_tracing_log_span_end();
  *v6 = v12;
  *(v6 + 16) = v13;
  *(v6 + 32) = v14;
}

- (BOOL)issueCacheCommand:(id)command
{
  commandCopy = command;
  v5 = xpc_dictionary_get_remote_connection(commandCopy);
  reply = xpc_dictionary_create_reply(commandCopy);
  if (v5)
  {
    uint64 = xpc_dictionary_get_uint64(commandCopy, "id");
    v8 = [MEMORY[0x277CC3510] copyNSStringForKey:"cache-request" fromXPCDictionary:commandCopy];
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v32 = *v9;
    v33 = v10;
    v34 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService issueCacheCommand:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v29 = *v9;
    v30 = v13;
    v31 = *(v9 + 32);
    v14 = v8 != 0;
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __46__MDSearchableIndexService_issueCacheCommand___block_invoke;
      v22 = &unk_278937A78;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v15 = reply;
      v23 = v15;
      v28 = uint64;
      v24 = v5;
      v16 = MEMORY[0x2383760E0](&v19);
      [(MDIndexer *)self->_indexer _issueCacheCommand:v8 xpc:v15 searchContext:0 completionHandler:v16, v19, v20, v21, v22];
    }

    si_tracing_log_span_end();
    v17 = v33;
    *v9 = v32;
    *(v9 + 16) = v17;
    *(v9 + 32) = v34;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __46__MDSearchableIndexService_issueCacheCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v12 = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for issueCacheCommand";
  si_tracing_log_span_begin();
  if (*(a1 + 32))
  {
    csindex_xpc_dictionary_encode_status_with_error();
    if (v11)
    {
      xpc_dictionary_set_data(*(a1 + 32), "cache-data-key", [v11 bytes], objc_msgSend(v11, "length"));
    }

    xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }

  si_tracing_log_span_end();
  *v6 = v12;
  *(v6 + 16) = v13;
  *(v6 + 32) = v14;
}

- (BOOL)_handleAssetsCommand:(id)command
{
  commandCopy = command;
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    [(MDIndexer *)self->_indexer handleAssetsCommand:commandCopy];
  }

  return v5 & 1;
}

- (BOOL)handleCommand:(const char *)command info:(id)info
{
  infoCopy = info;
  v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:infoCopy];
  if (([v7 isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    if (([clientBundleID isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
    {

      goto LABEL_11;
    }

    allowNotifications = [(MDSearchableIndexService *)self allowNotifications];

    if (allowNotifications)
    {
      goto LABEL_11;
    }

LABEL_6:
    v11 = logForCSLogCategoryDefault(allowNotifications2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _issueCommand:? outFileDescriptor:? searchContext:? completionHandler:?];
    }

    goto LABEL_9;
  }

  allowNotifications2 = [(MDSearchableIndexService *)self allowNotifications];
  if ((allowNotifications2 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_11:
  if (!strcmp(command, "delete-bundle"))
  {
    v15 = [(MDSearchableIndexService *)self deleteBundle:infoCopy];
LABEL_68:
    v12 = v15;
    goto LABEL_69;
  }

  if (!strcmp(command, "delete-from-date"))
  {
    v15 = [(MDSearchableIndexService *)self deleteSinceDate:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "check-in"))
  {
    v15 = [(MDSearchableIndexService *)self checkIn:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "process-index-data"))
  {
    v15 = [(MDSearchableIndexService *)self processIndexData:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fbi"))
  {
    v15 = [(MDSearchableIndexService *)self fetchBundleIDs:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "will-modify"))
  {
    v15 = [(MDSearchableIndexService *)self willModify:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-domains"))
  {
    v15 = [(MDSearchableIndexService *)self deleteDomains:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "issue"))
  {
    v15 = [(MDSearchableIndexService *)self issueCommand:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fetch-client-state"))
  {
    v15 = [(MDSearchableIndexService *)self fetchClientState:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "change-state"))
  {
    v15 = [(MDSearchableIndexService *)self changeState:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "data-migration"))
  {
    v15 = [(MDSearchableIndexService *)self dataMigration:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-journal-transfer"))
  {
    v15 = [(MDSearchableIndexService *)self transferDeleteJournals:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fetch_attributes"))
  {
    v15 = [(MDSearchableIndexService *)self fetchAttributes:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fetch_cache_file_descriptors"))
  {
    v15 = [(MDSearchableIndexService *)self fetchCacheFileDescriptors:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_all_activities"))
  {
    v15 = [(MDSearchableIndexService *)self deleteAllUserActivities:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_activities"))
  {
    v15 = [(MDSearchableIndexService *)self deleteUserActivitiesWithPersistentIdentifiers:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-actions-before-time"))
  {
    v15 = [(MDSearchableIndexService *)self deleteActionsBeforeTime:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-actions-with-identifiers"))
  {
    v15 = [(MDSearchableIndexService *)self deleteActionsWithIdentifiers:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "activities"))
  {
    v15 = [(MDSearchableIndexService *)self processActivities:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "add_interaction"))
  {
    v15 = [(MDSearchableIndexService *)self addInteraction:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_interactions"))
  {
    selfCopy2 = self;
    v17 = infoCopy;
    v18 = 0;
LABEL_67:
    v15 = [(MDSearchableIndexService *)selfCopy2 _deleteInteractions:v17 forGroup:v18];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_group_interactions"))
  {
    selfCopy2 = self;
    v17 = infoCopy;
    v18 = 1;
    goto LABEL_67;
  }

  if (!strcmp(command, "delete_all_interactions"))
  {
    v15 = [(MDSearchableIndexService *)self deleteAllInteractions:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "donate_relevant_actions"))
  {
    v15 = [(MDSearchableIndexService *)self donateRelevantActions:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "photoslibrary-deleted"))
  {
    v15 = [(MDSearchableIndexService *)self photosLibraryDeleted:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "prepare-indexing-locked"))
  {
    v15 = [(MDSearchableIndexService *)self prepareIndexingLocked:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "finish-indexing-locked"))
  {
    v15 = [(MDSearchableIndexService *)self finishIndexingLocked:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "cache-command-issue"))
  {
    v15 = [(MDSearchableIndexService *)self issueCacheCommand:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "update-corrections"))
  {
    v15 = [(MDSearchableIndexService *)self updateCorrections:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "open-journal"))
  {
    v15 = [(MDSearchableIndexService *)self openJournalFile:infoCopy];
    goto LABEL_68;
  }

  v13 = strcmp(command, "assets");
  if (!v13)
  {
    v15 = [(MDSearchableIndexService *)self _handleAssetsCommand:infoCopy];
    goto LABEL_68;
  }

  v14 = logForCSLogCategoryDefault(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService handleCommand:info:];
  }

LABEL_9:
  v12 = 0;
LABEL_69:

  return v12;
}

- (void)_checkNonEmptyBundle:(void *)a1 protectionClass:.cold.1(void *a1)
{
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = [v1 processDescription];
  v3 = [v0 clientBundleID];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_checkItems:(void *)a1 identifiers:protectionClass:bundleID:.cold.2(void *a1)
{
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_checkItems:(void *)a1 identifiers:protectionClass:bundleID:.cold.3(void *a1)
{
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.5()
{
  OUTLINED_FUNCTION_8_0();
  v2 = [v1 bundleID];
  v3 = [v0 clientBundleID];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_canProcessIndexDataForBundle:itemsDecoder:deletesDecoder:clientState:clientStateName:outError:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_dispatchToReceiversWithBundleID:protectionClass:options:items:itemsText:itemsHTML:deletes:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  [SpotlightSender jobForTest:v1];
  [SpotlightSender jobForDuet:v0];
  [SpotlightSender jobForSuggestions:v0];
  [SpotlightSender jobForTextUnderstanding:v0];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x3Eu);
}

- (void)provideDataForBundle:identifier:type:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_issueCommand:(void *)a1 outFileDescriptor:searchContext:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_issueCommand:(void *)a1 outFileDescriptor:searchContext:completionHandler:.cold.2(void *a1)
{
  v1 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)userPerformedAction:withItem:protectionClass:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Ignoring action:%@, item:%@");
}

- (void)checkInWithProtectionClass:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_4(os_log_t log, double a2, double a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = (a2 - a3);
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Finished waiting for index to update, totalTime:%llds", &v3, 0xCu);
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Extension %@ completed migration, error:%@");
}

- (void)transferDeleteJournalsForProtectionClass:(const char *)a1 toDirectory:withCompletionHandler:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)deleteInteractionsWithIdentifiers:(uint64_t)a1 bundleID:(uint64_t)a2 protectionClass:options:completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = 134218242;
  *(&v5 + 4) = a2;
  OUTLINED_FUNCTION_6_0();
  *v6 = v2;
  OUTLINED_FUNCTION_4(&dword_231A35000, v3, v4, "options:0x%lx, identifiers:%@", v5, DWORD2(v5), *&v6[2], v7);
}

- (void)fetchBundleIDs:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:clientStateName:protectionClass:forBundleID:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)indexFromBundle:protectionClass:options:items:itemsText:itemsHTML:clientState:expectedClientState:clientStateName:deletes:userActivities:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)openJournalFile:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  __error();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)processActivities:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
}

- (void)handleCommand:info:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end