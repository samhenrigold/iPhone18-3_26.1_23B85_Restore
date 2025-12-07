@interface DALocalDBWatcher
+ (id)sharedDBWatcher;
- (DALocalDBWatcher)init;
- (id)_dbInfoForAccountID:(id)d create:(BOOL)create;
- (int)lastSavedCalSequenceNumberForDatabaseInContainer:(id)container;
- (void)_handleCalChangeNotification;
- (void)_notesChangedExternally;
- (void)didReceiveDarwinNotification:(id)notification;
- (void)noteCalDBDirChanged;
- (void)registerConcernedCalParty:(id)party forAccountID:(id)d withChangedBlock:(id)block;
- (void)registerConcernedNoteParty:(id)party withChangedBlock:(id)block;
- (void)removeConcernedCalParty:(id)party forAccountID:(id)d;
- (void)removeConcernedNoteParty:(id)party;
- (void)setLastSavedCalSequenceNumber:(int)number forDatabaseInContainer:(id)container;
@end

@implementation DALocalDBWatcher

+ (id)sharedDBWatcher
{
  if (sharedDBWatcher_onceToken != -1)
  {
    +[DALocalDBWatcher sharedDBWatcher];
  }

  v3 = sharedDBWatcher___sharedInstance;

  return v3;
}

uint64_t __35__DALocalDBWatcher_sharedDBWatcher__block_invoke()
{
  sharedDBWatcher___sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DALocalDBWatcher)init
{
  v10.receiver = self;
  v10.super_class = DALocalDBWatcher;
  v2 = [(DALocalDBWatcher *)&v10 init];
  if (v2)
  {
    v3 = [[DACalDBHelper alloc] initWithDatabaseInitOptions:6];
    calDBHelper = v2->_calDBHelper;
    v2->_calDBHelper = v3;

    v5 = objc_opt_new();
    calDBInfosByPath = v2->_calDBInfosByPath;
    v2->_calDBInfosByPath = v5;

    mapTableWithWeakToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    concernedNotePartyToBlockMap = v2->_concernedNotePartyToBlockMap;
    v2->_concernedNotePartyToBlockMap = mapTableWithWeakToStrongObjects;
  }

  return v2;
}

- (void)_handleCalChangeNotification
{
  v55 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  p_isa = &selfCopy->super.isa;
  allOpenDatabases = [(DACalDBHelper *)selfCopy->_calDBHelper allOpenDatabases];
  v4 = [allOpenDatabases countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v4)
  {
    v34 = *v46;
    type = *(MEMORY[0x277D03988] + 7);
    v32 = *(MEMORY[0x277D03988] + 5);
    v33 = *(MEMORY[0x277D03988] + 6);
    *&v5 = 138543362;
    v30 = v5;
    obj = allOpenDatabases;
    do
    {
      v6 = 0;
      v35 = v4;
      do
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = CalDatabaseCopyDirectoryPathForDatabase();
        v10 = [v8 _canonicalizePath:v9];

        v11 = [p_isa[2] objectForKeyedSubscript:v10];
        SequenceNumber = CalDatabaseGetSequenceNumber();
        lastSavedSequenceNumber = [v11 lastSavedSequenceNumber];
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, type))
        {
          *buf = 67109634;
          *v51 = SequenceNumber;
          *&v51[4] = 1024;
          *&v51[6] = lastSavedSequenceNumber;
          v52 = 2112;
          v53 = v7;
          _os_log_impl(&dword_24844D000, v14, type, "__CalDatabaseChangedExternally - comparing current sequence number %d to saved sequence number %d in database: %@", buf, 0x18u);
        }

        if (SequenceNumber > lastSavedSequenceNumber + 1)
        {
          v15 = objc_opt_new();
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v33))
          {
            transactionId = [v15 transactionId];
            *buf = v30;
            *v51 = transactionId;
            _os_log_impl(&dword_24844D000, v16, v33, "DATransaction starting, ID: %{public}@", buf, 0xCu);
          }

          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v32))
          {
            *buf = 0;
            _os_log_impl(&dword_24844D000, v18, v32, "Notifying agents that the Calendar database has changed.", buf, 2u);
          }

          v19 = objc_opt_new();
          blocksByConcernedParty = [v11 blocksByConcernedParty];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __48__DALocalDBWatcher__handleCalChangeNotification__block_invoke;
          v42[3] = &unk_278F13920;
          v21 = v19;
          v43 = v21;
          v22 = v15;
          v44 = v22;
          [blocksByConcernedParty enumerateKeysAndObjectsUsingBlock:v42];

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v38 objects:v49 count:16];
          if (v24)
          {
            v25 = *v39;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v39 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v38 + 1) + 8 * i);
                blocksByConcernedParty2 = [v11 blocksByConcernedParty];
                [blocksByConcernedParty2 setObject:0 forKeyedSubscript:v27];

                blocksByConcernedParty3 = [v11 blocksByConcernedParty];
                LODWORD(v27) = [blocksByConcernedParty3 count] == 0;

                if (v27)
                {
                  [v11 setLastSavedSequenceNumber:0];
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v38 objects:v49 count:16];
            }

            while (v24);
          }
        }

        ++v6;
      }

      while (v6 != v35);
      allOpenDatabases = obj;
      v4 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v4);
  }

  objc_sync_exit(p_isa);
}

void __48__DALocalDBWatcher__handleCalChangeNotification__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 concernedParty];

  if (v7)
  {
    v8 = dataaccess_get_global_queue();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__DALocalDBWatcher__handleCalChangeNotification__block_invoke_2;
    v9[3] = &unk_278F138F8;
    v11 = v6;
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_dbInfoForAccountID:(id)d create:(BOOL)create
{
  createCopy = create;
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(DACalDBHelper *)self->_calDBHelper databaseForAccountID:dCopy];
  if (!v7)
  {
    v11 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v14))
    {
      v23 = 138543362;
      v24 = dCopy;
      _os_log_impl(&dword_24844D000, v11, v14, "No database for account: %{public}@", &v23, 0xCu);
    }

    goto LABEL_15;
  }

  v8 = v7;
  v9 = objc_opt_class();
  v10 = CalDatabaseCopyDirectoryPathForDatabase();
  v11 = [v9 _canonicalizePath:v10];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_calDBInfosByPath objectForKeyedSubscript:v11];
    if (v12)
    {
      v13 = v12;
      goto LABEL_16;
    }

    if (createCopy)
    {
      v13 = [[DALocalDBWatcherDBInfo alloc] initWithPath:v11];
      [(NSMutableDictionary *)self->_calDBInfosByPath setObject:v13 forKeyedSubscript:v11];
      goto LABEL_16;
    }

    v15 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v15, *(MEMORY[0x277D03988] + 3)))
    {
      goto LABEL_14;
    }

    v23 = 138543874;
    v24 = v11;
    v25 = 2048;
    v26 = v8;
    v27 = 2114;
    v28 = dCopy;
    v17 = "No dbInfo for path: %{public}@, database: %p, account: %{public}@";
    v18 = v15;
    v19 = v21;
    v20 = 32;
    goto LABEL_13;
  }

  v15 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v15, v16))
  {
    v23 = 134218242;
    v24 = v8;
    v25 = 2114;
    v26 = dCopy;
    v17 = "no path for database: %p, account: %{public}@";
    v18 = v15;
    v19 = v16;
    v20 = 22;
LABEL_13:
    _os_log_impl(&dword_24844D000, v18, v19, v17, &v23, v20);
  }

LABEL_14:

LABEL_15:
  v13 = 0;
LABEL_16:

  return v13;
}

- (void)registerConcernedCalParty:(id)party forAccountID:(id)d withChangedBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  partyCopy = party;
  dCopy = d;
  blockCopy = block;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    v17 = 138412546;
    v18 = partyCopy;
    v19 = 2114;
    v20 = dCopy;
    _os_log_impl(&dword_24844D000, v11, v12, "Registering concerned cal party: %@ for account: %{public}@", &v17, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DACalDBHelper *)selfCopy->_calDBHelper openDatabaseForAccountID:dCopy clientID:0];
  v14 = [(DALocalDBWatcher *)selfCopy _dbInfoForAccountID:dCopy create:1];
  blocksByConcernedParty = [v14 blocksByConcernedParty];
  v16 = [blocksByConcernedParty count] == 0;

  if (!v16)
  {
    [(DACalDBHelper *)selfCopy->_calDBHelper closeDatabaseForAccountID:dCopy save:0];
  }

  [v14 addBlock:blockCopy forConcernedParty:partyCopy account:dCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeConcernedCalParty:(id)party forAccountID:(id)d
{
  partyCopy = party;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(DALocalDBWatcher *)selfCopy _dbInfoForAccountID:dCopy create:0];
  v9 = v8;
  if (v8)
  {
    [v8 removeBlockForConcernedParty:partyCopy account:dCopy];
    blocksByConcernedParty = [v9 blocksByConcernedParty];
    if ([blocksByConcernedParty count])
    {
    }

    else
    {
      path = [v9 path];

      if (path)
      {
        calDBInfosByPath = selfCopy->_calDBInfosByPath;
        path2 = [v9 path];
        [(NSMutableDictionary *)calDBInfosByPath setObject:0 forKeyedSubscript:path2];

        [(DACalDBHelper *)selfCopy->_calDBHelper closeDatabaseForAccountID:dCopy save:0];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)noteCalDBDirChanged
{
  v53 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_calDBInfosByPath allValues];
  v4 = [allValues countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v4)
  {
    v5 = *v46;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v46 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        v8 = objc_opt_new();
        blocksByConcernedParty = [v7 blocksByConcernedParty];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke;
        v43[3] = &unk_278F13948;
        v10 = v8;
        v44 = v10;
        [blocksByConcernedParty enumerateKeysAndObjectsUsingBlock:v43];
      }

      v4 = [allValues countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v4);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obja = obj;
  v11 = [obja countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v11)
  {
    v12 = *v40;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obja);
        }

        v14 = *(*(&v39 + 1) + 8 * j);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        blocksByConcernedParty2 = [v14 blocksByConcernedParty];
        allKeys = [blocksByConcernedParty2 allKeys];

        v17 = [allKeys countByEnumeratingWithState:&v35 objects:v50 count:16];
        if (v17)
        {
          v18 = *v36;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(allKeys);
              }

              v20 = *(*(&v35 + 1) + 8 * k);
              concernedParty = [v20 concernedParty];
              accountID = [v20 accountID];
              [(DALocalDBWatcher *)selfCopy removeConcernedCalParty:concernedParty forAccountID:accountID];
            }

            v17 = [allKeys countByEnumeratingWithState:&v35 objects:v50 count:16];
          }

          while (v17);
        }
      }

      v11 = [obja countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = obja;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v24)
  {
    v25 = *v32;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v23);
        }

        blocksByConcernedParty3 = [*(*(&v31 + 1) + 8 * m) blocksByConcernedParty];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke_2;
        v30[3] = &unk_278F13948;
        v30[4] = selfCopy;
        [blocksByConcernedParty3 enumerateKeysAndObjectsUsingBlock:v30];
      }

      v24 = [v23 countByEnumeratingWithState:&v31 objects:v49 count:16];
    }

    while (v24);
  }

  [MEMORY[0x277CF77C0] addObserver:selfCopy selector:sel__handleCalChangeNotification name:*MEMORY[0x277CF7658]];
  objc_sync_exit(selfCopy);
}

void __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = MEMORY[0x24C1CE570](a3);
  v6 = [*(a1 + 32) blocksByConcernedParty];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

void __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 concernedParty];
  v7 = [v6 accountID];

  [v4 registerConcernedCalParty:v8 forAccountID:v7 withChangedBlock:v5];
}

- (int)lastSavedCalSequenceNumberForDatabaseInContainer:(id)container
{
  containerCopy = container;
  v5 = [objc_opt_class() _canonicalizePath:containerCopy];

  v6 = [(NSMutableDictionary *)self->_calDBInfosByPath objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    lastSavedSequenceNumber = [v6 lastSavedSequenceNumber];
  }

  else
  {
    lastSavedSequenceNumber = 0;
  }

  return lastSavedSequenceNumber;
}

- (void)setLastSavedCalSequenceNumber:(int)number forDatabaseInContainer:(id)container
{
  v4 = *&number;
  containerCopy = container;
  v8 = [objc_opt_class() _canonicalizePath:containerCopy];

  v7 = [(NSMutableDictionary *)self->_calDBInfosByPath objectForKeyedSubscript:v8];
  [v7 setLastSavedSequenceNumber:v4];
}

- (void)_notesChangedExternally
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v3, v4, "__NotesChanged externally.", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v17 = transactionId;
    _os_log_impl(&dword_24844D000, v6, v4, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  objectEnumerator = [(NSMapTable *)self->_concernedNotePartyToBlockMap objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v11 = dataaccess_get_global_queue();
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __43__DALocalDBWatcher__notesChangedExternally__block_invoke;
      v13[3] = &unk_278F138F8;
      v15 = nextObject2;
      v14 = v5;
      v12 = nextObject2;
      dispatch_async(v11, v13);

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)registerConcernedNoteParty:(id)party withChangedBlock:(id)block
{
  partyCopy = party;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMapTable *)selfCopy->_concernedNotePartyToBlockMap objectForKey:partyCopy];

  if (v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DALocalDBWatcher.m" lineNumber:217 description:{@"Someone registered themselves for the Note notification more than once.  Why?  Bad guy %@", partyCopy}];
  }

  v10 = [blockCopy copy];

  concernedNotePartyToBlockMap = selfCopy->_concernedNotePartyToBlockMap;
  v12 = MEMORY[0x24C1CE570](v10);
  [(NSMapTable *)concernedNotePartyToBlockMap setObject:v12 forKey:partyCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeConcernedNoteParty:(id)party
{
  partyCopy = party;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMapTable *)selfCopy->_concernedNotePartyToBlockMap objectForKey:partyCopy];

  if (v5)
  {
    [(NSMapTable *)selfCopy->_concernedNotePartyToBlockMap removeObjectForKey:partyCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)didReceiveDarwinNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_24844D000, v5, v6, "Received darwin notification %@", &v7, 0xCu);
  }

  if ([notificationCopy isEqualToString:@"_CalDatabaseChangedNotification"])
  {
    [(DALocalDBWatcher *)self _handleCalChangeNotification];
  }

  else if ([notificationCopy isEqualToString:@"NoteContextDarwinNotificationWithLoggedChanges"])
  {
    [(DALocalDBWatcher *)self _notesChangedExternally];
  }
}

@end