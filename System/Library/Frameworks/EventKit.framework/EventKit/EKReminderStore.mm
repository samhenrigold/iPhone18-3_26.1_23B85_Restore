@interface EKReminderStore
+ (BOOL)isNotFoundError:(id)error;
+ (Class)frozenClassForReminderClass:(Class)class;
+ (OS_os_log)log;
+ (id)uniqueIdentifierForREMObject:(id)object;
- (BOOL)_commit:(id *)_commit error:(id *)error;
- (BOOL)commit:(id *)commit;
- (BOOL)isSourceManaged:(id)managed;
- (BOOL)removeCalendar:(id)calendar error:(id *)error;
- (BOOL)removeReminder:(id)reminder error:(id *)error;
- (BOOL)saveCalendar:(id)calendar error:(id *)error;
- (BOOL)saveObject:(id)object withFrozenObject:(id)frozenObject error:(id *)error;
- (BOOL)saveReminder:(id)reminder error:(id *)error;
- (EKEventStore)eventStore;
- (EKReminderStore)initWithEventStore:(id)store token:(id)token;
- (NSArray)calendars;
- (NSArray)sources;
- (id)_allLists;
- (id)_fetchAndCacheConstraintsForFrozenSource:(id)source;
- (id)_moveRemindersToNewLists:(id)lists error:(id *)error;
- (id)backingCalendarWithIdentifier:(id)identifier;
- (id)backingReminderWithIdentifier:(id)identifier;
- (id)cachedConstraintsForSource:(id)source;
- (id)calendarWithIdentifier:(id)identifier;
- (id)completionBlockForFetchRequestToken:(id)token remove:(BOOL)remove;
- (id)createNewReminder;
- (id)createNewReminderCalendar;
- (id)defaultCalendarForNewReminders;
- (id)fetchRemindersMatchingPredicate:(id)predicate completion:(id)completion;
- (id)frozenAlarmForREMAlarms:(id)alarms;
- (id)frozenCalendarFromCalendar:(id)calendar error:(id *)error;
- (id)frozenObjectForReminderObject:(id)object;
- (id)newFrozenObjectForReminderObject:(id)object withChanges:(id)changes;
- (id)predicateForCalendarStoreForRemindersInCalendars:(id)calendars;
- (id)predicateForCompletedRemindersWithCompletionDateStarting:(id)starting ending:(id)ending calendars:(id)calendars;
- (id)predicateForIncompleteRemindersWithDueDateStarting:(id)starting ending:(id)ending calendars:(id)calendars;
- (id)predicateForRemindersInCalendars:(id)calendars;
- (id)reminderWithIdentifier:(id)identifier;
- (id)reminderWithUniqueId:(id)id;
- (id)remindersMatchingPredicate:(id)predicate;
- (id)remindersWithExternalIdentifier:(id)identifier;
- (id)resetBackingAlarmWithBackingAlarm:(id)alarm;
- (id)resetBackingLocationWithBackingLocation:(id)location;
- (id)sourceWithIdentifier:(id)identifier;
- (void)_checkPredicate:(id)predicate;
- (void)_loadAccounts;
- (void)_loadAccountsIfNeeded;
- (void)_loadLists;
- (void)_loadListsIfNeeded;
- (void)_reminderCopiedToNewList:(id)list;
- (void)fillInPath:(id)path usingParents:(id)parents;
- (void)remindersChanged;
- (void)reset;
@end

@implementation EKReminderStore

- (void)remindersChanged
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EKReminderStore_remindersChanged__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(queue, block);
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  [WeakRetained reminderStoreChanged];
}

uint64_t __35__EKReminderStore_remindersChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(*(a1 + 32) + 24);

  return [v6 removeAllObjects];
}

+ (OS_os_log)log
{
  if (log_onceToken != -1)
  {
    +[EKReminderStore log];
  }

  v3 = log_log;

  return v3;
}

uint64_t __22__EKReminderStore_log__block_invoke()
{
  v0 = os_log_create(ekSubSystem, "Reminders");
  v1 = log_log;
  log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (EKReminderStore)initWithEventStore:(id)store token:(id)token
{
  storeCopy = store;
  tokenCopy = token;
  v30.receiver = self;
  v30.super_class = EKReminderStore;
  v8 = [(EKReminderStore *)&v30 init];
  if (v8)
  {
    REMStoreClass = getREMStoreClass();
    if (tokenCopy)
    {
      v10 = [[REMStoreClass alloc] initWithStoreContainerToken:tokenCopy];
    }

    else
    {
      v10 = objc_alloc_init(REMStoreClass);
    }

    remStore = v8->_remStore;
    v8->_remStore = v10;

    if (!v8->_remStore)
    {
      v12 = +[EKReminderStore log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [EKReminderStore initWithEventStore:v12 token:?];
      }
    }

    v13 = dispatch_queue_create("com.apple.eventkit.EKReminderStore.queue", 0);
    queue = v8->_queue;
    v8->_queue = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    newObjectsIDs = v8->_newObjectsIDs;
    v8->_newObjectsIDs = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updatedObjects = v8->_updatedObjects;
    v8->_updatedObjects = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objectIDsToCommit = v8->_objectIDsToCommit;
    v8->_objectIDsToCommit = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deletedObjects = v8->_deletedObjects;
    v8->_deletedObjects = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objectsToReset = v8->_objectsToReset;
    v8->_objectsToReset = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedConstraints = v8->_cachedConstraints;
    v8->_cachedConstraints = v25;

    objc_storeWeak(&v8->_eventStore, storeCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    storeDidChangeNotificationName = [getREMStoreClass() storeDidChangeNotificationName];
    [defaultCenter addObserver:v8 selector:sel_remindersChanged name:storeDidChangeNotificationName object:0];
  }

  return v8;
}

- (void)_loadAccountsIfNeeded
{
  if (!self->_sources)
  {
    [(EKReminderStore *)self _loadAccounts];
  }
}

- (void)_loadAccounts
{
  remStore = self->_remStore;
  v8 = 0;
  v4 = [(REMStore *)remStore fetchAccountsWithError:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = +[EKReminderStore log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore _loadAccounts];
    }
  }

  sources = self->_sources;
  self->_sources = v4;
}

- (NSArray)sources
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EKReminderStore_sources__block_invoke;
  block[3] = &unk_1E77FD440;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(queue, block);
  v4 = v19[5];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v19[5];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(EKReminderStore *)self frozenObjectForReminderObject:*(*(&v13 + 1) + 8 * i), v13];
          v11 = [(EKObject *)[EKSource alloc] initWithPersistentObject:v10];
          [v5 addObject:v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v5;
}

void __26__EKReminderStore_sources__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadAccountsIfNeeded];
  v2 = *(*(a1 + 32) + 16);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (id)sourceWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [(EKReminderStore *)self sources];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        sourceIdentifier = [v9 sourceIdentifier];
        v11 = [sourceIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)cachedConstraintsForSource:(id)source
{
  sourceCopy = source;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  backingObject = [sourceCopy backingObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    v7 = [WeakRetained reminderSourceForEventSource:backingObject];

    backingObject2 = [v7 backingObject];

    backingObject = backingObject2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = backingObject;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKReminderStore_cachedConstraintsForSource___block_invoke;
    block[3] = &unk_1E77FD688;
    v15 = v9;
    v16 = &v17;
    block[4] = self;
    dispatch_sync(queue, block);
    v11 = v18[5];
  }

  else
  {
    v12 = +[EKReminderStore log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore cachedConstraintsForSource:];
    }

    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __46__EKReminderStore_cachedConstraintsForSource___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) sourceIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 32) _fetchAndCacheConstraintsForFrozenSource:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x1EEE66BB8](v7, v9);
  }
}

- (id)_fetchAndCacheConstraintsForFrozenSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = objc_opt_new();
  remAccount = [sourceCopy remAccount];
  if (!remAccount)
  {
    capabilities = [objc_opt_class() log];
    if (os_log_type_enabled(capabilities, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore _fetchAndCacheConstraintsForFrozenSource:];
    }

    goto LABEL_15;
  }

  remAccount2 = [sourceCopy remAccount];
  capabilities = [remAccount2 capabilities];

  if (!capabilities)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(EKReminderStore *)sourceCopy _fetchAndCacheConstraintsForFrozenSource:v16];
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  supportsLocation = [capabilities supportsLocation];
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    remAccount3 = [sourceCopy remAccount];
    remAccount4 = [sourceCopy remAccount];
    v18 = 138413058;
    v19 = sourceCopy;
    v20 = 2112;
    v21 = remAccount3;
    v22 = 1024;
    type = [remAccount4 type];
    v24 = 1024;
    v25 = supportsLocation;
    _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "Fetching capabilities for source (%@), remAccount (%@), type (%d), supportsLocation (%d)", &v18, 0x22u);
  }

  [v5 setSupportsReminderLocations:supportsLocation];
  [v5 setSupportsAlarmProximity:supportsLocation];
  [v5 setSupportsStructuredLocations:supportsLocation];
  [v5 setSupportsAttachments:{-[NSObject supportsAttachments](capabilities, "supportsAttachments")}];
  [v5 setAllowsEvents:0];
  if (objc_opt_respondsToSelector())
  {
    [v5 setAllowsCalendarAddDeleteModify:{objc_msgSend(remAccount, "daAllowsCalendarAddDeleteModify")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setSupportsReminderActions:{-[NSObject supportsReminderActions](capabilities, "supportsReminderActions")}];
  }

  cachedConstraints = self->_cachedConstraints;
  sourceIdentifier = [sourceCopy sourceIdentifier];
  [(NSMutableDictionary *)cachedConstraints setObject:v5 forKeyedSubscript:sourceIdentifier];

  v15 = v5;
LABEL_16:

  return v15;
}

- (BOOL)isSourceManaged:(id)managed
{
  managedCopy = managed;
  backingObject = [managedCopy backingObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    backingObject2 = [managedCopy backingObject];
    remAccount = [backingObject2 remAccount];
    v8 = remAccount;
    if (remAccount)
    {
      v15 = 0;
      v14 = 0;
      v9 = [remAccount MCIsManagedWithResultPtr:&v15 error:&v14];
      v10 = v14;
      if (v9)
      {
        v11 = v15;
      }

      else
      {
        v12 = [objc_opt_class() log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [EKReminderStore isSourceManaged:];
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    backingObject2 = [objc_opt_class() log];
    if (os_log_type_enabled(backingObject2, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore isSourceManaged:];
    }

    v11 = 0;
  }

  return v11 & 1;
}

- (void)_loadListsIfNeeded
{
  if (!self->_lists)
  {
    [(EKReminderStore *)self _loadLists];
  }
}

- (void)_loadLists
{
  remStore = self->_remStore;
  v8 = 0;
  v4 = [(REMStore *)remStore fetchListsForEventKitBridgingWithError:&v8];
  v5 = v8;
  lists = self->_lists;
  self->_lists = v4;

  if (!self->_lists)
  {
    v7 = +[EKReminderStore log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore _loadLists];
    }
  }
}

- (id)_allLists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__EKReminderStore__allLists__block_invoke;
  v5[3] = &unk_1E77FD440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __28__EKReminderStore__allLists__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadListsIfNeeded];
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSArray)calendars
{
  v47 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EKReminderStore_calendars__block_invoke;
  block[3] = &unk_1E77FD440;
  block[4] = self;
  block[5] = &v39;
  dispatch_sync(queue, block);
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v40[5], "count")}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v40[5];
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v6)
  {
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(EKReminderStore *)self frozenObjectForReminderObject:*(*(&v34 + 1) + 8 * i)];
        WeakRetained = objc_loadWeakRetained(&self->_eventStore);
        v11 = [v9 meltedObjectInStore:WeakRetained];

        [v4 addObject:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v6);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v12 = self->_queue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __28__EKReminderStore_calendars__block_invoke_3;
  v27[3] = &unk_1E77FD440;
  v27[4] = self;
  v27[5] = &v28;
  dispatch_sync(v12, v27);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v29[5];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v45 count:16];
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        v18 = [EKFrozenReminderCalendar alloc];
        v19 = [(EKFrozenReminderObject *)v18 initWithREMObject:0 inStore:self withChanges:v17, v23];
        v20 = objc_loadWeakRetained(&self->_eventStore);
        v21 = [(EKPersistentObject *)v19 meltedObjectInStore:v20];

        [v4 addObject:v21];
      }

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v45 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v39, 8);

  return v4;
}

void __28__EKReminderStore_calendars__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadListsIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__EKReminderStore_calendars__block_invoke_2;
  v8[3] = &unk_1E77FD6B0;
  v8[4] = v2;
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

BOOL __28__EKReminderStore_calendars__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  v6 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v5];
  v7 = v6 == 0;

  return v7;
}

void __28__EKReminderStore_calendars__block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 40) count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(*(a1 + 32) + 40);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * v9), v13}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = *(*(*(a1 + 40) + 8) + 40);
          v12 = [v10 uncommittedChanges];
          [v11 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)calendarWithIdentifier:(id)identifier
{
  v4 = [(EKReminderStore *)self backingCalendarWithIdentifier:identifier];
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  v6 = [v4 meltedObjectInStore:WeakRetained];

  return v6;
}

- (id)backingCalendarWithIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EKReminderStore_backingCalendarWithIdentifier___block_invoke;
  block[3] = &unk_1E77FD468;
  block[4] = self;
  v6 = identifierCopy;
  v23 = v6;
  v24 = &v25;
  dispatch_sync(queue, block);
  v7 = 0;
  if ((v26[3] & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
    if (v8)
    {
      v9 = [getREMListClass_0() objectIDWithUUID:v8];
      remStore = self->_remStore;
      v21 = 0;
      v11 = [(REMStore *)remStore fetchListWithObjectID:v9 error:&v21];
      v12 = v21;
      v13 = v12;
      if (v11)
      {
        v7 = [(EKReminderStore *)self frozenObjectForReminderObject:v11];
      }

      else
      {
        if (v12)
        {
          if ([EKReminderStore isNotFoundError:v12])
          {
            v14 = +[EKReminderStore log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v6;
              _os_log_impl(&dword_1A805E000, v14, OS_LOG_TYPE_INFO, "No existing reminder list with identifier %@", &buf, 0xCu);
            }
          }

          else
          {
            v14 = +[EKReminderStore log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [EKReminderStore backingCalendarWithIdentifier:];
            }
          }
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy__1;
        v32 = __Block_byref_object_dispose__1;
        v33 = 0;
        v15 = self->_queue;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __49__EKReminderStore_backingCalendarWithIdentifier___block_invoke_40;
        v18[3] = &unk_1E77FD468;
        v18[4] = self;
        v19 = v6;
        p_buf = &buf;
        dispatch_sync(v15, v18);
        if (*(*(&buf + 1) + 40))
        {
          v16 = [EKFrozenReminderCalendar alloc];
          v7 = [(EKFrozenReminderObject *)v16 initWithREMObject:0 inStore:self withChanges:*(*(&buf + 1) + 40)];
        }

        else
        {
          v7 = 0;
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  _Block_object_dispose(&v25, 8);

  return v7;
}

void __49__EKReminderStore_backingCalendarWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __49__EKReminderStore_backingCalendarWithIdentifier___block_invoke_40(void *a1)
{
  if ([*(a1[4] + 40) containsObject:a1[5]])
  {
    v5 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
    v2 = [v5 uncommittedChanges];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)createNewReminderCalendar
{
  v3 = [[EKFrozenReminderCalendar alloc] initNewListInStore:self];
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  v5 = [v3 meltedObjectInStore:WeakRetained];

  return v5;
}

- (id)frozenCalendarFromCalendar:(id)calendar error:(id *)error
{
  backingObject = [calendar backingObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = backingObject;
  }

  else
  {
    v7 = +[EKReminderStore log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [EKReminderStore frozenCalendarFromCalendar:backingObject error:v7];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
      *error = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)saveCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  if ([calendarCopy validate:error])
  {
    v7 = [(EKReminderStore *)self frozenCalendarFromCalendar:calendarCopy error:error];
    if (v7)
    {
      v8 = [(EKReminderStore *)self saveObject:calendarCopy withFrozenObject:v7 error:error];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  if ([calendarCopy _validateDeletable:error])
  {
    v7 = [(EKReminderStore *)self frozenCalendarFromCalendar:calendarCopy error:error];
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      uniqueIdentifier = [v7 uniqueIdentifier];
      isNew = [calendarCopy isNew];
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__EKReminderStore_removeCalendar_error___block_invoke;
      block[3] = &unk_1E77FD6D8;
      v19 = isNew;
      block[4] = self;
      v16 = uniqueIdentifier;
      v17 = v8;
      v18 = calendarCopy;
      v13 = uniqueIdentifier;
      dispatch_sync(queue, block);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __40__EKReminderStore_removeCalendar_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  }

  else
  {
    v2 = [*(a1 + 48) REMObject];
    [*(*(a1 + 32) + 64) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 72);
  v4 = *(a1 + 56);

  return [v3 addObject:v4];
}

- (id)defaultCalendarForNewReminders
{
  remStore = self->_remStore;
  v10 = 0;
  v4 = [(REMStore *)remStore fetchDefaultListWithError:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [(EKReminderStore *)self frozenObjectForReminderObject:v4];
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    v8 = [v6 meltedObjectInStore:WeakRetained];
  }

  else
  {
    v6 = +[EKReminderStore log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore defaultCalendarForNewReminders];
    }

    v8 = 0;
  }

  return v8;
}

- (id)reminderWithUniqueId:(id)id
{
  v17 = *MEMORY[0x1E69E9840];
  idCopy = id;
  remStore = self->_remStore;
  v14 = 0;
  v6 = [(REMStore *)remStore fetchReminderWithDACalendarItemUniqueIdentifier:idCopy inList:0 error:&v14];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v9 = [(EKReminderStore *)self frozenObjectForReminderObject:v6];
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    v11 = [v9 meltedObjectInStore:WeakRetained];

    if (v11)
    {
      goto LABEL_13;
    }

    v12 = +[EKReminderStore log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore reminderWithUniqueId:];
    }
  }

  else
  {
    if (v7 && [EKReminderStore isNotFoundError:v7])
    {
      v12 = +[EKReminderStore log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = idCopy;
        _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_INFO, "No reminder found with unique identifier %@", buf, 0xCu);
      }
    }

    else
    {
      v12 = +[EKReminderStore log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [EKReminderStore reminderWithUniqueId:];
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (id)reminderWithIdentifier:(id)identifier
{
  v4 = [(EKReminderStore *)self backingReminderWithIdentifier:identifier];
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  v6 = [v4 meltedObjectInStore:WeakRetained];

  return v6;
}

- (id)remindersWithExternalIdentifier:(id)identifier
{
  v31[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  remStore = self->_remStore;
  v22 = identifierCopy;
  v31[0] = identifierCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v27 = 0;
  v7 = [(REMStore *)remStore fetchRemindersWithDACalendarItemUniqueIdentifiers:v6 inList:0 error:&v27];
  v8 = v27;

  if (v7)
  {
    v9 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    allValues = [v7 allValues];
    v11 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v20 = v8;
      v21 = v7;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(allValues);
          }

          v15 = [(EKReminderStore *)self frozenObjectForReminderObject:*(*(&v23 + 1) + 8 * i), v20, v21];
          WeakRetained = objc_loadWeakRetained(&self->_eventStore);
          v17 = [v15 meltedObjectInStore:WeakRetained];

          if (v17)
          {
            [v9 addObject:v17];
          }

          else
          {
            v18 = +[EKReminderStore log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v22;
              _os_log_error_impl(&dword_1A805E000, v18, OS_LOG_TYPE_ERROR, "Unable to create EKReminder from REMReminder for external identifier %@", buf, 0xCu);
            }
          }
        }

        v12 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
      v8 = v20;
      v7 = v21;
    }
  }

  else
  {
    if (v8 && [EKReminderStore isNotFoundError:v8])
    {
      allValues = +[EKReminderStore log];
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v22;
        _os_log_impl(&dword_1A805E000, allValues, OS_LOG_TYPE_INFO, "No reminders found with external identifier %@", buf, 0xCu);
      }
    }

    else
    {
      allValues = +[EKReminderStore log];
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
      {
        [EKReminderStore remindersWithExternalIdentifier:];
      }
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)backingReminderWithIdentifier:(id)identifier
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EKReminderStore_backingReminderWithIdentifier___block_invoke;
  block[3] = &unk_1E77FD700;
  v24 = &v26;
  block[4] = self;
  v6 = identifierCopy;
  v23 = v6;
  v25 = &v32;
  dispatch_sync(queue, block);
  v7 = 0;
  if ((v33[3] & 1) == 0)
  {
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [v8 initWithUUIDString:v27[5]];
    if (v9)
    {
      v10 = [getREMReminderClass_0() objectIDWithUUID:v9];
      remStore = self->_remStore;
      v21 = 0;
      v12 = [(REMStore *)remStore fetchReminderWithObjectID:v10 error:&v21];
      v13 = v21;
      v14 = v13;
      if (v12)
      {
        v7 = [(EKReminderStore *)self frozenObjectForReminderObject:v12];
      }

      else
      {
        if (v13)
        {
          if ([EKReminderStore isNotFoundError:v13])
          {
            v15 = +[EKReminderStore log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = v27[5];
              *buf = 138412546;
              *&buf[4] = v6;
              *&buf[12] = 2112;
              *&buf[14] = v16;
              _os_log_impl(&dword_1A805E000, v15, OS_LOG_TYPE_INFO, "No reminder found with identifier %@ (%@)", buf, 0x16u);
            }
          }

          else
          {
            v15 = +[EKReminderStore log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [EKReminderStore backingReminderWithIdentifier:];
            }
          }
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v37 = __Block_byref_object_copy__1;
        v38 = __Block_byref_object_dispose__1;
        v39 = 0;
        v17 = self->_queue;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __49__EKReminderStore_backingReminderWithIdentifier___block_invoke_43;
        v20[3] = &unk_1E77FD728;
        v20[4] = self;
        v20[5] = &v26;
        v20[6] = buf;
        dispatch_sync(v17, v20);
        if (*(*&buf[8] + 40))
        {
          v18 = [EKFrozenReminderReminder alloc];
          v7 = [(EKFrozenReminderObject *)v18 initWithREMObject:0 inStore:self withChanges:*(*&buf[8] + 40)];
        }

        else
        {
          v7 = 0;
        }

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v7;
}

void __49__EKReminderStore_backingReminderWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, *(a1 + 40));
  }

  v8 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:?];

  if (v8)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __49__EKReminderStore_backingReminderWithIdentifier___block_invoke_43(void *a1)
{
  if ([*(a1[4] + 40) containsObject:*(*(a1[5] + 8) + 40)])
  {
    v5 = [*(a1[4] + 48) objectForKeyedSubscript:*(*(a1[5] + 8) + 40)];
    v2 = [v5 uncommittedChanges];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)createNewReminder
{
  v3 = [[EKFrozenReminderReminder alloc] initNewReminderInStore:self];
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  v5 = [v3 meltedObjectInStore:WeakRetained];

  return v5;
}

- (BOOL)saveReminder:(id)reminder error:(id *)error
{
  reminderCopy = reminder;
  if ([reminderCopy validate:error])
  {
    calendar = [reminderCopy calendar];
    if ([(EKReminderStore *)self saveCalendar:calendar error:error])
    {
      backingObject = [reminderCopy backingObject];
      v9 = [(EKReminderStore *)self frozenCalendarFromCalendar:calendar error:error];
      v10 = v9 && ([reminderCopy forceUpdateFrozenCalendar:v9], objc_msgSend(reminderCopy, "save:", error)) && -[EKReminderStore saveObject:withFrozenObject:error:](self, "saveObject:withFrozenObject:error:", reminderCopy, backingObject, error);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)removeReminder:(id)reminder error:(id *)error
{
  reminderCopy = reminder;
  v7 = [reminderCopy _validateDeletable:error];
  if (v7)
  {
    backingObject = [reminderCopy backingObject];
    uniqueIdentifier = [backingObject uniqueIdentifier];
    isNew = [reminderCopy isNew];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__EKReminderStore_removeReminder_error___block_invoke;
    block[3] = &unk_1E77FD6D8;
    v19 = isNew;
    block[4] = self;
    v16 = uniqueIdentifier;
    v17 = backingObject;
    v18 = reminderCopy;
    v12 = backingObject;
    v13 = uniqueIdentifier;
    dispatch_sync(queue, block);
  }

  return v7;
}

uint64_t __40__EKReminderStore_removeReminder_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  }

  else
  {
    v2 = [*(a1 + 48) REMObject];
    [*(*(a1 + 32) + 64) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 72);
  v4 = *(a1 + 56);

  return [v3 addObject:v4];
}

- (id)resetBackingAlarmWithBackingAlarm:(id)alarm
{
  v26 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  path = [alarmCopy path];
  firstObject = [path firstObject];
  uuid = [firstObject uuid];
  uUIDString = [uuid UUIDString];
  v9 = [(EKReminderStore *)self backingReminderWithIdentifier:uUIDString];

  if (v9)
  {
    [v9 alarms];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v19 = firstObject;
      v20 = path;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          uniqueIdentifier = [v14 uniqueIdentifier];
          uniqueIdentifier2 = [alarmCopy uniqueIdentifier];
          v17 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

          if (v17)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:
      firstObject = v19;
      path = v20;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)resetBackingLocationWithBackingLocation:(id)location
{
  v27 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  path = [locationCopy path];
  firstObject = [path firstObject];
  uuid = [firstObject uuid];
  uUIDString = [uuid UUIDString];
  v9 = [(EKReminderStore *)self backingReminderWithIdentifier:uUIDString];

  if (v9)
  {
    uniqueIdentifier = [locationCopy uniqueIdentifier];
    [v9 alarms];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v25 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v20 = firstObject;
      v21 = path;
      v14 = *v23;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        structuredLocation = [*(*(&v22 + 1) + 8 * v15) structuredLocation];
        uniqueIdentifier2 = [structuredLocation uniqueIdentifier];
        v18 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          structuredLocation = 0;
          break;
        }
      }

      firstObject = v20;
      path = v21;
    }

    else
    {
      structuredLocation = 0;
    }
  }

  else
  {
    structuredLocation = 0;
  }

  return structuredLocation;
}

- (BOOL)saveObject:(id)object withFrozenObject:(id)frozenObject error:(id *)error
{
  objectCopy = object;
  frozenObjectCopy = frozenObject;
  uniqueIdentifier = [frozenObjectCopy uniqueIdentifier];
  isNew = [frozenObjectCopy isNew];

  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__EKReminderStore_saveObject_withFrozenObject_error___block_invoke;
  v15[3] = &unk_1E77FD750;
  v16 = objectCopy;
  selfCopy = self;
  v19 = isNew;
  v18 = uniqueIdentifier;
  v12 = uniqueIdentifier;
  v13 = objectCopy;
  dispatch_sync(queue, v15);

  return 1;
}

void __53__EKReminderStore_saveObject_withFrozenObject_error___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) prepareReminderKitObjectForSaveWithUpdatedBackingObjectProvider:*(a1 + 40)];
  v3 = v2;
  if (*(a1 + 56))
  {
    goto LABEL_4;
  }

  if (![v2 count])
  {
    goto LABEL_31;
  }

  if (*(a1 + 56))
  {
LABEL_4:
    [*(*(a1 + 40) + 40) addObject:*(a1 + 48)];
  }

  v4 = [*(a1 + 32) cachedMeltedChildIdentifierToParentMap];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = v3;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        [*(*(a1 + 40) + 48) setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * j);
        v17 = [v16 uniqueIdentifier];
        v18 = [v4 objectForKeyedSubscript:v17];
        v19 = v18;
        if (!v18 || ([v18 persistentObject], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isNew"), v20, (v21 & 1) == 0))
        {
          if ([objc_opt_class() canCommitSelf])
          {
            [*(*(a1 + 40) + 56) addObject:v17];
          }

          else
          {
            if (v19)
            {
              v22 = [v19 uniqueIdentifier];
              v23 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v22];
              if (!v23)
              {
                v23 = [v19 backingObject];
              }

              v24 = [v16 updateParentToCommitSelf:v23];
              [*(a1 + 40) fillInPath:v24 usingParents:v4];
              [v19 setBackingObject:v24];
              [*(*(a1 + 40) + 56) addObject:v22];
              [*(*(a1 + 40) + 48) setObject:v24 forKeyedSubscript:v22];
            }

            else
            {
              v22 = +[EKReminderStore log];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v36 = v16;
                _os_log_error_impl(&dword_1A805E000, v22, OS_LOG_TYPE_ERROR, "Object requiring parent to commit has no parent: %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v13);
  }

  [*(*(a1 + 40) + 72) addObject:*(a1 + 32)];
  v3 = v25;
LABEL_31:
}

- (void)fillInPath:(id)path usingParents:(id)parents
{
  pathCopy = path;
  parentsCopy = parents;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  uniqueIdentifier = [pathCopy uniqueIdentifier];
  v8 = [parentsCopy objectForKeyedSubscript:uniqueIdentifier];

  if (v8)
  {
    do
    {
      backingObject = [v8 backingObject];
      remObjectID = [backingObject remObjectID];
      [v6 insertObject:remObjectID atIndex:0];
      uniqueIdentifier2 = [v8 uniqueIdentifier];
      v12 = [parentsCopy objectForKeyedSubscript:uniqueIdentifier2];

      v8 = v12;
    }

    while (v12);
  }

  [pathCopy setPath:v6];
}

- (BOOL)commit:(id *)commit
{
  v46 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EKReminderStore_commit___block_invoke;
  block[3] = &unk_1E77FD778;
  block[4] = self;
  block[5] = &v35;
  block[6] = &v23;
  block[7] = &v39;
  block[8] = &v29;
  dispatch_sync(queue, block);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v30[5];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v45 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v18 + 1) + 8 * v9++) reset];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v45 count:16];
    }

    while (v7);
  }

  if (*(v36 + 24) == 1)
  {
    v10 = v24[5];
    if (v10)
    {
      allKeys = [v10 allKeys];
      v12 = self->_queue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __26__EKReminderStore_commit___block_invoke_2;
      v16[3] = &unk_1E77FD580;
      v16[4] = self;
      v17 = allKeys;
      v13 = allKeys;
      dispatch_sync(v12, v16);
    }
  }

  if (commit)
  {
    *commit = v40[5];
  }

  v14 = *(v36 + 24);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v14 & 1;
}

void __26__EKReminderStore_commit___block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  v5 = a1[4];
  v6 = *(v2 + 8);
  v16 = *(v6 + 40);
  obj = v4;
  v7 = [v5 _commit:&obj error:&v16];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v6 + 40), v16);
  *(*(a1[5] + 8) + 24) = v7;
  v8 = [*(a1[4] + 72) copy];
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(a1[4] + 72) removeAllObjects];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v11 = *(*(a1[6] + 8) + 40);
    if (v11)
    {
      v12 = *(a1[4] + 88);
      if (v12)
      {
        [v12 addEntriesFromDictionary:?];
      }

      else
      {
        v13 = [v11 mutableCopy];
        v14 = a1[4];
        v15 = *(v14 + 88);
        *(v14 + 88) = v13;
      }
    }
  }
}

void __26__EKReminderStore_commit___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 88) removeObjectsForKeys:*(a1 + 40)];
  if (![*(*(a1 + 32) + 88) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 88);
    *(v2 + 88) = 0;
  }
}

- (BOOL)_commit:(id *)_commit error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  if (![(NSMutableSet *)self->_objectIDsToCommit count]&& ![(NSMutableDictionary *)self->_deletedObjects count])
  {
    v26 = 1;
    goto LABEL_32;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v7 = getREMSaveRequestClass_softClass;
  v40 = getREMSaveRequestClass_softClass;
  if (!getREMSaveRequestClass_softClass)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __getREMSaveRequestClass_block_invoke;
    v36[3] = &unk_1E77FCFD8;
    v36[4] = &v37;
    __getREMSaveRequestClass_block_invoke(v36);
    v7 = v38[3];
  }

  v8 = v7;
  _Block_object_dispose(&v37, 8);
  v9 = [[v7 alloc] initWithStore:self->_remStore];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_objectIDsToCommit;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v11)
  {
LABEL_13:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = self->_deletedObjects;
    v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (v17)
    {
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [(NSMutableDictionary *)self->_deletedObjects objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i), v28];
          getREMListClass_0();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v9 updateList:v20];
            [v21 removeFromParent];
          }

          else
          {
            getREMReminderClass_0();
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_23;
            }

            v21 = [v9 updateReminder:v20];
            [v21 removeFromList];
          }

LABEL_23:
        }

        v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v28 objects:v41 count:16];
      }

      while (v17);
    }

    [(NSMutableSet *)self->_objectIDsToCommit removeAllObjects];
    [(NSMutableDictionary *)self->_deletedObjects removeAllObjects];
    [(NSMutableSet *)self->_newObjectsIDs removeAllObjects];
    lists = self->_lists;
    self->_lists = 0;

    if ([(NSMutableArray *)self->_remindersNeedingMove count]&& ([(EKReminderStore *)self _moveRemindersToNewLists:v9 error:error], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v25 = v23, *_commit = v25, v25, v24))
    {
      v26 = 0;
    }

    else
    {
      v26 = [v9 saveSynchronouslyWithError:{error, v28}];
    }

LABEL_32:
    [(NSMutableDictionary *)self->_updatedObjects removeAllObjects];
    return v26;
  }

  v12 = *v33;
LABEL_7:
  v13 = 0;
  while (1)
  {
    if (*v33 != v12)
    {
      objc_enumerationMutation(v10);
    }

    v14 = [(NSMutableDictionary *)self->_updatedObjects objectForKeyedSubscript:*(*(&v32 + 1) + 8 * v13)];
    v15 = [v14 _applyChangesToSaveRequest:v9 error:error];

    if (!v15)
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (!v11)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  return 0;
}

- (id)_moveRemindersToNewLists:(id)lists error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  listsCopy = lists;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableArray count](self->_remindersNeedingMove, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_remindersNeedingMove;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        uniqueIdentifier = [v13 uniqueIdentifier];
        v15 = [v13 _copyToNewList:listsCopy error:error];
        if (!v15)
        {

          v18 = 0;
          goto LABEL_11;
        }

        v16 = v15;
        [v7 setObject:v15 forKeyedSubscript:uniqueIdentifier];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  remindersNeedingMove = self->_remindersNeedingMove;
  self->_remindersNeedingMove = 0;

  v18 = v7;
LABEL_11:

  return v18;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EKReminderStore_reset__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __24__EKReminderStore_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  [*(*(a1 + 32) + 40) removeAllObjects];
  [*(*(a1 + 32) + 48) removeAllObjects];
  [*(*(a1 + 32) + 56) removeAllObjects];
  [*(*(a1 + 32) + 64) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  v6 = *(*(a1 + 32) + 24);

  return [v6 removeAllObjects];
}

- (id)predicateForRemindersInCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v4 = [[EKREMReminderPredicate alloc] initWithCalendars:calendarsCopy];

  return v4;
}

- (id)predicateForCalendarStoreForRemindersInCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v4 = [[EKREMReminderPredicate alloc] initForCalendarStoreWithCalendars:calendarsCopy];

  return v4;
}

- (id)predicateForIncompleteRemindersWithDueDateStarting:(id)starting ending:(id)ending calendars:(id)calendars
{
  calendarsCopy = calendars;
  endingCopy = ending;
  startingCopy = starting;
  v10 = [[EKREMCompletionStateReminderPredicate alloc] initForIncompleteRemindersWithDueDateStarting:startingCopy ending:endingCopy calendars:calendarsCopy];

  return v10;
}

- (id)predicateForCompletedRemindersWithCompletionDateStarting:(id)starting ending:(id)ending calendars:(id)calendars
{
  calendarsCopy = calendars;
  endingCopy = ending;
  startingCopy = starting;
  v10 = [[EKREMCompletionStateReminderPredicate alloc] initForCompletedRemindersWithCompletionDateStarting:startingCopy ending:endingCopy calendars:calendarsCopy];

  return v10;
}

- (void)_checkPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is nil"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is not a reminder predicate created through EKEventStore"];
  }
}

- (id)fetchRemindersMatchingPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  [(EKReminderStore *)self _checkPredicate:predicateCopy];
  v8 = [[EKReminderFetchRequestToken alloc] initWithReminderStore:self];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__EKReminderStore_fetchRemindersMatchingPredicate_completion___block_invoke;
  block[3] = &unk_1E77FD7A0;
  block[4] = self;
  v10 = v8;
  v22 = v10;
  v23 = completionCopy;
  v11 = completionCopy;
  dispatch_sync(queue, block);
  queryQueue = self->_queryQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__EKReminderStore_fetchRemindersMatchingPredicate_completion___block_invoke_2;
  v18[3] = &unk_1E77FD7C8;
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v20 = predicateCopy;
  v14 = predicateCopy;
  dispatch_async(queryQueue, v18);
  v15 = v20;
  v16 = v13;

  return v13;
}

void __62__EKReminderStore_fetchRemindersMatchingPredicate_completion___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 104))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 104);
    *(v3 + 104) = v2;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.eventkit.reminders.search", v5);
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;
  }

  v9 = _Block_copy(*(a1 + 48));
  [*(*(a1 + 32) + 104) setObject:v9 forKeyedSubscript:*(a1 + 40)];
}

void __62__EKReminderStore_fetchRemindersMatchingPredicate_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlockForFetchRequestToken:*(a1 + 40) remove:0];

  if (v2)
  {
    v5 = [*(a1 + 32) remindersMatchingPredicate:*(a1 + 48)];
    v3 = [*(a1 + 32) completionBlockForFetchRequestToken:*(a1 + 40) remove:1];
    v4 = v3;
    if (v3)
    {
      (*(v3 + 16))(v3, v5);
    }
  }
}

- (id)completionBlockForFetchRequestToken:(id)token remove:(BOOL)remove
{
  tokenCopy = token;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__56;
  v19 = __Block_byref_object_dispose__57;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__EKReminderStore_completionBlockForFetchRequestToken_remove___block_invoke;
  v11[3] = &unk_1E77FD7F0;
  v12 = tokenCopy;
  v13 = &v15;
  v11[4] = self;
  removeCopy = remove;
  v8 = tokenCopy;
  dispatch_sync(queue, v11);
  v9 = _Block_copy(v16[5]);

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __62__EKReminderStore_completionBlockForFetchRequestToken_remove___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 104);

    [v6 removeObjectForKey:v5];
  }
}

- (id)remindersMatchingPredicate:(id)predicate
{
  v78 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  [(EKReminderStore *)self _checkPredicate:predicateCopy];
  v44 = predicateCopy;
  _allLists = [(EKReminderStore *)self _allLists];
  remStore = self->_remStore;
  v74 = 0;
  v43 = [v44 fetchMatchingRemindersInStore:remStore allLists:_allLists error:&v74];
  v41 = v74;
  if (v43)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v43, "count")}];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v7 = v43;
    v8 = [v7 countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v8)
    {
      v9 = *v71;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v71 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(EKReminderStore *)self frozenObjectForReminderObject:*(*(&v70 + 1) + 8 * i)];
          WeakRetained = objc_loadWeakRetained(&self->_eventStore);
          v13 = [v11 meltedObjectInStore:WeakRetained];
          [v6 addObject:v13];
        }

        v8 = [v7 countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v8);
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__1;
    v68 = __Block_byref_object_dispose__1;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__1;
    v62 = __Block_byref_object_dispose__1;
    v63 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKReminderStore_remindersMatchingPredicate___block_invoke;
    block[3] = &unk_1E77FD728;
    block[4] = self;
    block[5] = &v64;
    block[6] = &v58;
    dispatch_sync(queue, block);
    if ([v65[5] count] || objc_msgSend(v59[5], "count"))
    {
      if (v59[5])
      {
        v15 = [MEMORY[0x1E695DFD8] setWithArray:?];
      }

      else
      {
        v15 = 0;
      }

      v17 = MEMORY[0x1E696AE18];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __46__EKReminderStore_remindersMatchingPredicate___block_invoke_2;
      v53[3] = &unk_1E77FD818;
      v40 = v15;
      v54 = v40;
      v56 = &v64;
      v39 = v44;
      v55 = v39;
      v18 = [v17 predicateWithBlock:v53];
      [v6 filterUsingPredicate:v18];

      if (v65[5])
      {
        v19 = objc_alloc(MEMORY[0x1E695DF70]);
        v20 = [v19 initWithCapacity:{objc_msgSend(v65[5], "count")}];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v21 = v65[5];
        v22 = [v21 countByEnumeratingWithState:&v49 objects:v76 count:16];
        if (v22)
        {
          v23 = *v50;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v50 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v49 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = objc_loadWeakRetained(&self->_eventStore);
                v27 = [v25 meltedObjectInStore:v26];
                [v20 addObject:v27];
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v49 objects:v76 count:16];
          }

          while (v22);
        }

        [v20 filterUsingPredicate:v39];
        v28 = MEMORY[0x1E695DFD8];
        v29 = [v6 valueForKey:@"calendarItemIdentifier"];
        v30 = [v28 setWithArray:v29];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v31 = v20;
        v32 = [v31 countByEnumeratingWithState:&v45 objects:v75 count:16];
        if (v32)
        {
          v33 = *v46;
          do
          {
            for (k = 0; k != v32; ++k)
            {
              if (*v46 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v35 = *(*(&v45 + 1) + 8 * k);
              calendarItemIdentifier = [v35 calendarItemIdentifier];
              v37 = [v30 containsObject:calendarItemIdentifier];

              if ((v37 & 1) == 0)
              {
                [v6 addObject:v35];
              }
            }

            v32 = [v31 countByEnumeratingWithState:&v45 objects:v75 count:16];
          }

          while (v32);
        }
      }
    }

    _Block_object_dispose(&v58, 8);

    _Block_object_dispose(&v64, 8);
  }

  else
  {
    v16 = +[EKReminderStore log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [EKReminderStore remindersMatchingPredicate:];
    }

    v6 = 0;
  }

  return v6;
}

void *__46__EKReminderStore_remindersMatchingPredicate___block_invoke(void *a1)
{
  if ([*(a1[4] + 48) count])
  {
    v2 = [*(a1[4] + 48) allValues];
    v3 = *(a1[5] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = [*(a1[4] + 64) count];
  if (result)
  {
    v6 = [*(a1[4] + 64) allKeys];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t __46__EKReminderStore_remindersMatchingPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) && ([v5 backingObject], v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 32), objc_msgSend(v7, "uniqueIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, v7, (v8 & 1) != 0))
  {
    v10 = 0;
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = [*(a1 + 40) evaluateWithObject:v5];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)frozenObjectForReminderObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = 0;
    v5 = [EKReminderStore uniqueIdentifierForREMObject:objectCopy];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__EKReminderStore_frozenObjectForReminderObject___block_invoke;
    block[3] = &unk_1E77FD688;
    v12 = &v13;
    block[4] = self;
    v7 = v5;
    v11 = v7;
    dispatch_sync(queue, block);
    v8 = [(EKReminderStore *)self newFrozenObjectForReminderObject:objectCopy withChanges:v14[5]];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __49__EKReminderStore_frozenObjectForReminderObject___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v2 = [v5 uncommittedChanges];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)frozenAlarmForREMAlarms:(id)alarms
{
  v31 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(alarmsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = alarmsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [EKReminderStore uniqueIdentifierForREMObject:*(*(&v20 + 1) + 8 * i)];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EKReminderStore_frozenAlarmForREMAlarms___block_invoke;
  block[3] = &unk_1E77FD4B8;
  v12 = v5;
  selfCopy = self;
  v19 = &v24;
  v17 = v12;
  dispatch_sync(queue, block);
  v13 = [EKFrozenReminderAlarm alloc];
  v14 = [(EKFrozenReminderAlarm *)v13 initWithAlarms:v6 inStore:self withChanges:v25[5]];

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __43__EKReminderStore_frozenAlarmForREMAlarms___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v6), v11}];
      v8 = [v7 uncommittedChanges];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)newFrozenObjectForReminderObject:(id)object withChanges:(id)changes
{
  objectCopy = object;
  changesCopy = changes;
  if (objectCopy && (v8 = [EKReminderStore frozenClassForReminderClass:objc_opt_class()]) != 0)
  {
    v9 = [[v8 alloc] initWithREMObject:objectCopy inStore:self withChanges:changesCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (Class)frozenClassForReminderClass:(Class)class
{
  if (frozenClassForReminderClass__onceToken != -1)
  {
    +[EKReminderStore frozenClassForReminderClass:];
  }

  v5 = [frozenClassForReminderClass__reminderClassToFrozenClassMap objectForKey:class];
  if (!v5)
  {
    v6 = [self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EKReminderStore frozenClassForReminderClass:class];
    }
  }

  return v5;
}

void __47__EKReminderStore_frozenClassForReminderClass___block_invoke()
{
  v0 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:258];
  v1 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v0 valuePointerFunctions:v0 capacity:6];
  v2 = frozenClassForReminderClass__reminderClassToFrozenClassMap;
  frozenClassForReminderClass__reminderClassToFrozenClassMap = v1;

  v3 = frozenClassForReminderClass__reminderClassToFrozenClassMap;
  v4 = objc_opt_class();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v5 = getREMAccountClass_softClass;
  v31 = getREMAccountClass_softClass;
  if (!getREMAccountClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getREMAccountClass_block_invoke;
    v26 = &unk_1E77FCFD8;
    v27 = &v28;
    __getREMAccountClass_block_invoke(&v23);
    v5 = v29[3];
  }

  v6 = v5;
  _Block_object_dispose(&v28, 8);
  [v3 setObject:v4 forKey:objc_opt_class()];
  v7 = frozenClassForReminderClass__reminderClassToFrozenClassMap;
  v8 = objc_opt_class();
  getREMListClass_0();
  [v7 setObject:v8 forKey:objc_opt_class()];
  v9 = frozenClassForReminderClass__reminderClassToFrozenClassMap;
  v10 = objc_opt_class();
  getREMReminderClass_0();
  [v9 setObject:v10 forKey:objc_opt_class()];
  v11 = frozenClassForReminderClass__reminderClassToFrozenClassMap;
  v12 = objc_opt_class();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v13 = getREMAlarmClass_softClass;
  v31 = getREMAlarmClass_softClass;
  if (!getREMAlarmClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getREMAlarmClass_block_invoke;
    v26 = &unk_1E77FCFD8;
    v27 = &v28;
    __getREMAlarmClass_block_invoke(&v23);
    v13 = v29[3];
  }

  v14 = v13;
  _Block_object_dispose(&v28, 8);
  [v11 setObject:v12 forKey:objc_opt_class()];
  v15 = frozenClassForReminderClass__reminderClassToFrozenClassMap;
  v16 = objc_opt_class();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v17 = getREMRecurrenceRuleClass_softClass;
  v31 = getREMRecurrenceRuleClass_softClass;
  if (!getREMRecurrenceRuleClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getREMRecurrenceRuleClass_block_invoke;
    v26 = &unk_1E77FCFD8;
    v27 = &v28;
    __getREMRecurrenceRuleClass_block_invoke(&v23);
    v17 = v29[3];
  }

  v18 = v17;
  _Block_object_dispose(&v28, 8);
  [v15 setObject:v16 forKey:objc_opt_class()];
  v19 = frozenClassForReminderClass__reminderClassToFrozenClassMap;
  v20 = objc_opt_class();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v21 = getREMStructuredLocationClass_softClass;
  v31 = getREMStructuredLocationClass_softClass;
  if (!getREMStructuredLocationClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getREMStructuredLocationClass_block_invoke;
    v26 = &unk_1E77FCFD8;
    v27 = &v28;
    __getREMStructuredLocationClass_block_invoke(&v23);
    v21 = v29[3];
  }

  v22 = v21;
  _Block_object_dispose(&v28, 8);
  [v19 setObject:v20 forKey:objc_opt_class()];
}

- (void)_reminderCopiedToNewList:(id)list
{
  listCopy = list;
  dispatch_assert_queue_V2(self->_queue);
  remindersNeedingMove = self->_remindersNeedingMove;
  if (!remindersNeedingMove)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_remindersNeedingMove;
    self->_remindersNeedingMove = v5;

    remindersNeedingMove = self->_remindersNeedingMove;
  }

  [(NSMutableArray *)remindersNeedingMove addObject:listCopy];
}

+ (id)uniqueIdentifierForREMObject:(id)object
{
  objectCopy = object;
  v5 = [self frozenClassForReminderClass:objc_opt_class()];
  if (v5)
  {
    v6 = [v5 uniqueIdentifierForREMObject:objectCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isNotFoundError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getREMErrorDomainSymbolLoc_ptr;
  v12 = getREMErrorDomainSymbolLoc_ptr;
  if (!getREMErrorDomainSymbolLoc_ptr)
  {
    v6 = ReminderKitLibrary_1();
    v10[3] = dlsym(v6, "REMErrorDomain");
    getREMErrorDomainSymbolLoc_ptr = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v5)
  {
    +[EKReminderStore isNotFoundError:];
  }

  if ([domain isEqualToString:*v5])
  {
    v7 = [errorCopy code] == -3000;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

- (void)_fetchAndCacheConstraintsForFrozenSource:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a1 remAccount];
  v5 = [a1 remAccount];
  v6 = 138412802;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  v10 = 1024;
  v11 = [v5 type];
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Got a nil capabilities when fetching constraints for %@ (remAccount = %@, type = %d)", &v6, 0x1Cu);
}

- (void)isSourceManaged:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A805E000, v1, OS_LOG_TYPE_ERROR, "Failed to check whether REMAccount (%@) is managed: %@", v2, 0x16u);
}

- (void)frozenCalendarFromCalendar:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_1A805E000, v4, v5, "calendar being saved should have an EKFrozenReminderCalendar backing class, but instead has a backing object of type %@", v6, v7, v8, v9);
}

+ (void)frozenClassForReminderClass:(objc_class *)a1 .cold.2(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_1A805E000, v2, v3, "Class has no known frozen version: %@", v4, v5, v6, v7);
}

+ (void)isNotFoundError:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSErrorDomain getREMErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

@end