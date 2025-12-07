@interface DALocalDBHelper
+ (OS_os_log)os_log;
+ (id)sharedInstanceForAccountType:(id)type creatingClass:(Class)class;
+ (void)abSetTestABDBDir:(id)dir;
- (BOOL)_abOpenDBWithClientIdentifier:(id)identifier;
- (BOOL)abCloseDBAndSave:(BOOL)save;
- (BOOL)abSaveDB;
- (BOOL)noteCloseDBAndSave:(BOOL)save;
- (BOOL)noteSaveDB;
- (DALocalDBHelper)initWithCalendarMainDatabasePath:(id)path containerProvider:(id)provider;
- (DALocalDBHelper)initWithContactsFamilyDelegateAltDSID:(id)d familyDelegateACAccountID:(id)iD;
- (NoteContext)noteDB;
- (id)abChangeTrackingID;
- (id)abDefaultAccountInfoSuitableForLogging;
- (void)_registerForAddressBookYieldNotifications;
- (void)abDB;
- (void)abDBThrowOnNil:(BOOL)nil;
- (void)abOpenDBAsGenericClient;
- (void)abOpenDBWithClientIdentifier:(id)identifier;
- (void)abProcessAddedImages;
- (void)abProcessAddedRecords;
- (void)abSaveDB;
- (void)addSaveRequest:(id)request;
- (void)calOpenDatabaseForAccountID:(id)d clientID:(id)iD;
- (void)calOpenDatabaseForAuxDatabaseRef:(void *)ref clientID:(id)d;
- (void)dealloc;
- (void)executeAllSaveRequests;
- (void)noteDB;
- (void)noteOpenDB;
- (void)removeDelegateDatabasesNotMatchingAltDSIDs:(id)ds;
@end

@implementation DALocalDBHelper

+ (OS_os_log)os_log
{
  if (os_log_onceToken != -1)
  {
    +[DALocalDBHelper os_log];
  }

  v3 = os_log_os_log;

  return v3;
}

uint64_t __25__DALocalDBHelper_os_log__block_invoke()
{
  os_log_os_log = os_log_create("com.apple.dataaccess", "CardDAV-dbhelper");

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstanceForAccountType:(id)type creatingClass:(Class)class
{
  typeCopy = type;
  os_unfair_lock_lock(&sharedInstanceForAccountType_creatingClass__lock);
  v5 = sharedInstanceForAccountType_creatingClass____sharedInstances;
  if (!sharedInstanceForAccountType_creatingClass____sharedInstances)
  {
    v6 = objc_opt_new();
    v7 = sharedInstanceForAccountType_creatingClass____sharedInstances;
    sharedInstanceForAccountType_creatingClass____sharedInstances = v6;

    v5 = sharedInstanceForAccountType_creatingClass____sharedInstances;
  }

  v8 = [v5 objectForKeyedSubscript:typeCopy];
  if (!v8)
  {
    v8 = objc_opt_new();
    [sharedInstanceForAccountType_creatingClass____sharedInstances setObject:v8 forKeyedSubscript:typeCopy];
  }

  os_unfair_lock_unlock(&sharedInstanceForAccountType_creatingClass__lock);

  return v8;
}

- (DALocalDBHelper)initWithContactsFamilyDelegateAltDSID:(id)d familyDelegateACAccountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = [(DALocalDBHelper *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyDelegateAltDSID, d);
    objc_storeStrong(&v10->_familyDelegateACAccountID, iD);
  }

  return v10;
}

- (DALocalDBHelper)initWithCalendarMainDatabasePath:(id)path containerProvider:(id)provider
{
  pathCopy = path;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = DALocalDBHelper;
  v8 = [(DALocalDBHelper *)&v23 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.dataaccessd.abDBQueue", 0);
    abDBQueue = v8->_abDBQueue;
    v8->_abDBQueue = v9;

    v11 = dispatch_queue_create("com.apple.dataaccessd.calDBQueue", 0);
    calDBQueue = v8->_calDBQueue;
    v8->_calDBQueue = v11;

    v13 = [[DACalDBHelper alloc] initWithDatabaseInitOptions:6 mainDatabasePath:pathCopy containerProvider:providerCopy];
    calDBHelper = v8->_calDBHelper;
    v8->_calDBHelper = v13;

    if (!pathCopy)
    {
      v15 = +[DALocalDBWatcher sharedDBWatcher];
      [(DACalDBHelper *)v8->_calDBHelper setWatcher:v15];
    }

    v16 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v8->_contactStore;
    v8->_contactStore = v16;

    v18 = dispatch_queue_create("com.apple.dataaccessd.noteDBQueue", 0);
    noteDBQueue = v8->_noteDBQueue;
    v8->_noteDBQueue = v18;

    array = [MEMORY[0x277CBEB18] array];
    saveRequests = v8->_saveRequests;
    v8->_saveRequests = array;
  }

  return v8;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_saveRequests count];
  if (v3)
  {
    v4 = v3;
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v4;
      _os_log_impl(&dword_24844D000, os_log, OS_LOG_TYPE_DEFAULT, "Unexpected unsaved contact changes: %lu", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = DALocalDBHelper;
  [(DALocalDBHelper *)&v6 dealloc];
}

- (id)abChangeTrackingID
{
  v2 = self->_clientIdentifier;
  if ([(NSString *)v2 isEqualToString:@"com.apple.dataaccessd.changeinserter"])
  {

    v2 = 0;
  }

  return v2;
}

- (void)abDBThrowOnNil:(BOOL)nil
{
  if (nil && !self->_abDB)
  {
    [DALocalDBHelper abDBThrowOnNil:];
  }

  return self->_abDB;
}

- (void)abDB
{
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abDB is unsupported under modern Contacts framework :%@", v3, v4, v5, v6);
}

- (void)addSaveRequest:(id)request
{
  requestCopy = request;
  abDBQueue = self->_abDBQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DALocalDBHelper_addSaveRequest___block_invoke;
  v7[3] = &unk_278F13350;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_sync(abDBQueue, v7);
}

- (void)executeAllSaveRequests
{
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  *self = 138412290;
  *a2 = callStackSymbols;
  _os_log_error_impl(&dword_24844D000, a3, OS_LOG_TYPE_ERROR, "Unexpected error committing save request :%@", self, 0xCu);
}

- (void)removeDelegateDatabasesNotMatchingAltDSIDs:(id)ds
{
  dsCopy = ds;
  if (![(DALocalDBHelper *)self useContacts])
  {
    ABAddressBookDirectoryOnlyKeepFamilyDatabasesWithDSIDs();
  }
}

- (void)_registerForAddressBookYieldNotifications
{
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "_registerForAddressBookYieldNotifications is unsupported under modern Contacts framework :%@", v3, v4, v5, v6);
}

void __60__DALocalDBHelper__registerForAddressBookYieldNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v3, v4, "Someone asked us to yield the AddressBook database. Bumping up all clients to UI priority", buf, 2u);
  }

  v5 = +[DAPriorityManager sharedManager];
  [v5 bumpDataclassesToUIPriority:2];

  v6 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DALocalDBHelper__registerForAddressBookYieldNotifications__block_invoke_33;
  block[3] = &unk_278F131F0;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
}

uint64_t __60__DALocalDBHelper__registerForAddressBookYieldNotifications__block_invoke_33(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return ABAddressBookRegisterYieldBlock();
  }

  return result;
}

- (BOOL)_abOpenDBWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper _abOpenDBWithClientIdentifier:];
    }

    v6 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    abDBQueue = self->_abDBQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DALocalDBHelper__abOpenDBWithClientIdentifier___block_invoke;
    block[3] = &unk_278F13668;
    block[4] = self;
    v10 = identifierCopy;
    v11 = &v12;
    dispatch_sync(abDBQueue, block);
    v6 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

void __49__DALocalDBHelper__abOpenDBWithClientIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D03988];
  if (*(v3 + 40))
  {
    v5 = *(MEMORY[0x277D03988] + 7);
  }

  else
  {
    v6 = DALoggingwithCategory();
    v5 = *(v4 + 7);
    if (os_log_type_enabled(v6, v5))
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_24844D000, v6, v5, "Creating ab database for client %@", buf, 0xCu);
    }

    error = 0;
    if (_fakedOutABDBDir)
    {
      *(*(a1 + 32) + 40) = ABAddressBookCreateWithDatabaseDirectory();
    }

    else
    {
      if ([*(*(a1 + 32) + 48) length] && objc_msgSend(*(*(a1 + 32) + 56), "length"))
      {
        v8 = *(a1 + 32);
        v9 = *MEMORY[0x277CE9788];
        v29[0] = *MEMORY[0x277CE9790];
        v29[1] = v9;
        v10 = *(v8 + 48);
        v11 = *(v8 + 56);
        v30[0] = v10;
        v30[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      }

      else
      {
        v12 = 0;
      }

      *(*(a1 + 32) + 40) = ABAddressBookCreateWithOptions(v12, &error);
    }

    v13 = *(*(a1 + 32) + 40);
    v14 = DALoggingwithCategory();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, v5))
      {
        v16 = *(*(a1 + 32) + 40);
        *buf = 134217984;
        v26 = v16;
        _os_log_impl(&dword_24844D000, v15, v5, "Created ab database %p", buf, 0xCu);
      }

      ABAddressBookSetIsBackgroundProcess();
      [*(a1 + 32) _registerForAddressBookYieldNotifications];
      if ([*(a1 + 40) length])
      {
        ABChangeHistorySetAddressBookClientIdentifier();
      }

      [*(a1 + 32) setClientIdentifier:*(a1 + 40)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v17 = *(v4 + 3);
      if (os_log_type_enabled(v14, v4[3]))
      {
        *buf = 138412290;
        v26 = error;
        _os_log_impl(&dword_24844D000, v15, v17, "Couldn't create ab database: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    v3 = *(a1 + 32);
  }

  ++*(v3 + 32);
  v18 = DALoggingwithCategory();
  if (os_log_type_enabled(v18, v5))
  {
    v19 = *(a1 + 32);
    v20 = *(v19 + 40);
    LODWORD(v19) = *(v19 + 32);
    *buf = 134218240;
    v26 = v20;
    v27 = 1024;
    v28 = v19;
    _os_log_impl(&dword_24844D000, v18, v5, "AB database %p opened. Connection count is now %d", buf, 0x12u);
  }

  if (*(*(a1 + 32) + 32) >= 2)
  {
    v21 = DALoggingwithCategory();
    v22 = *(v4 + 6);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(*(a1 + 32) + 32);
      *buf = 67109120;
      LODWORD(v26) = v23;
      _os_log_impl(&dword_24844D000, v21, v22, "_abConnectionCount is > 1, at %d", buf, 8u);
    }
  }
}

- (void)abOpenDBWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abOpenDBWithClientIdentifier:];
    }
  }

  else
  {
    if (!identifierCopy)
    {
      [DALocalDBHelper abOpenDBWithClientIdentifier:];
    }

    [(DALocalDBHelper *)self _abOpenDBWithClientIdentifier:identifierCopy];
  }
}

- (void)abOpenDBAsGenericClient
{
  if (([MEMORY[0x277D03910] useContactsFramework] & 1) == 0 && -[DALocalDBHelper _abOpenDBWithClientIdentifier:](self, "_abOpenDBWithClientIdentifier:", 0))
  {

    ABChangeHistorySetAddressBookClientIdentifier();
  }
}

- (void)abProcessAddedRecords
{
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abOpenDBAsGenericClient is unsupported under modern Contacts framework :%@", v3, v4, v5, v6);
}

- (void)abProcessAddedImages
{
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abProcessAddedRecords];
    }
  }

  else
  {
    ABProcessAddedImages();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CE9AD8], 0, 0, 1u);
    v4 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v4 claimedOwnershipOfDataclasses:2];
  }
}

- (BOOL)abSaveDB
{
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abSaveDB];
    }

    return 0;
  }

  else
  {
    abDB = self->_abDB;

    return ABAddressBookSave(abDB, 0);
  }
}

- (BOOL)abCloseDBAndSave:(BOOL)save
{
  saveCopy = save;
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abSaveDB];
    }

    return 0;
  }

  else
  {
    v6 = !saveCopy || [(DALocalDBHelper *)self abSaveDB];
    abDBQueue = self->_abDBQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__DALocalDBHelper_abCloseDBAndSave___block_invoke;
    block[3] = &unk_278F131F0;
    block[4] = self;
    dispatch_sync(abDBQueue, block);
  }

  return v6;
}

void __36__DALocalDBHelper_abCloseDBAndSave___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 32);
  v3 = MEMORY[0x277D03988];
  if ((*(*(a1 + 32) + 32) & 0x80000000) != 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(v3 + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(*(a1 + 32) + 32);
      v15 = 67109120;
      LODWORD(v16) = v6;
      _os_log_impl(&dword_24844D000, v4, v5, "_abCloseDB called too many times (connection count %d).  Resetting count to 0", &v15, 8u);
    }

    *(*(a1 + 32) + 32) = 0;
  }

  v7 = DALoggingwithCategory();
  v8 = *(v3 + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    LODWORD(v9) = *(v9 + 32);
    v15 = 134218240;
    v16 = v10;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_24844D000, v7, v8, "Decrementing database %p reference count. _abConnectionCount is %d", &v15, 0x12u);
  }

  if (!*(*(a1 + 32) + 32))
  {
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v8))
    {
      v12 = *(*(a1 + 32) + 40);
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&dword_24844D000, v11, v8, "Destroying ab database %p", &v15, 0xCu);
    }

    ABAddressBookRegisterYieldBlock();
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    if (v14)
    {
      CFRelease(v14);
      *(*(a1 + 32) + 40) = 0;
      v13 = *(a1 + 32);
    }

    *(v13 + 40) = 0;
  }
}

- (id)abDefaultAccountInfoSuitableForLogging
{
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    v2 = 0;
  }

  else
  {
    sharedInstance = [objc_opt_class() sharedInstance];
    v4 = ABAddressBookCopyDefaultSource([sharedInstance abDBThrowOnNil:0]);

    if (v4)
    {
      IntValue = ABRecordGetIntValue();
      if (IntValue)
      {
        v6 = sharedDAAccountStore(IntValue);
        if (v6)
        {
          v2 = ABAccountStoreGetAccountTypeForSource();
        }

        else
        {
          v2 = @"<unknown>";
        }
      }

      else
      {
        v2 = @"local";
      }

      CFRelease(v4);
    }

    else
    {
      v2 = @"<unknown>";
    }
  }

  return v2;
}

- (void)calOpenDatabaseForAccountID:(id)d clientID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!iDCopy)
  {
    [DALocalDBHelper calOpenDatabaseForAccountID:clientID:];
  }

  [(DACalDBHelper *)self->_calDBHelper openDatabaseForAccountID:dCopy clientID:iDCopy];
}

- (void)calOpenDatabaseForAuxDatabaseRef:(void *)ref clientID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (!dCopy)
  {
    [DALocalDBHelper calOpenDatabaseForAuxDatabaseRef:clientID:];
    dCopy = 0;
  }

  [(DACalDBHelper *)self->_calDBHelper openDatabaseForAuxDatabaseRef:ref clientID:dCopy];
}

- (NoteContext)noteDB
{
  noteDB = self->_noteDB;
  if (!noteDB)
  {
    v6[1] = v2;
    v7 = v3;
    [(DALocalDBHelper *)self noteDB:a2];
    noteDB = v6[0];
    v3 = v7;
  }

  return noteDB;
}

- (void)noteOpenDB
{
  noteDBQueue = self->_noteDBQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DALocalDBHelper_noteOpenDB__block_invoke;
  block[3] = &unk_278F131F0;
  block[4] = self;
  dispatch_sync(noteDBQueue, block);
}

void __29__DALocalDBHelper_noteOpenDB__block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D03988];
  if (!*(v3 + 96))
  {
    v5 = DALoggingwithCategory();
    v6 = *(v4 + 7);
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_24844D000, v5, v6, "Creating note database", &v20, 2u);
    }

    v7 = objc_opt_new();
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = v7;

    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v6))
    {
      v11 = *(*(a1 + 32) + 96);
      v20 = 134217984;
      v21 = v11;
      _os_log_impl(&dword_24844D000, v10, v6, "Created note database %p", &v20, 0xCu);
    }

    v3 = *(a1 + 32);
  }

  v12 = *(v3 + 36);
  if (!v12)
  {
    [*(v3 + 96) enableChangeLogging:0];
    v3 = *(a1 + 32);
    v12 = *(v3 + 36);
  }

  *(v3 + 36) = v12 + 1;
  v13 = DALoggingwithCategory();
  v14 = *(v4 + 7);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 96);
    LODWORD(v15) = *(v15 + 36);
    v20 = 134218240;
    v21 = v16;
    v22 = 1024;
    v23 = v15;
    _os_log_impl(&dword_24844D000, v13, v14, "Note database %p opened. Connection count is now %d", &v20, 0x12u);
  }

  if (*(*(a1 + 32) + 36) >= 2)
  {
    v17 = DALoggingwithCategory();
    v18 = *(v4 + 6);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(*(a1 + 32) + 36);
      v20 = 67109120;
      LODWORD(v21) = v19;
      _os_log_impl(&dword_24844D000, v17, v18, "_noteConnectionCount is > 1, at %d", &v20, 8u);
    }
  }
}

- (BOOL)noteSaveDB
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    noteDB = self->_noteDB;
    noteConnectionCount = self->_noteConnectionCount;
    *buf = 134218240;
    v17 = noteDB;
    v18 = 1024;
    LODWORD(v19) = noteConnectionCount;
    _os_log_impl(&dword_24844D000, v3, v5, "Saving notes database %p. Connection count is %d", buf, 0x12u);
  }

  v8 = self->_noteDB;
  v15 = 0;
  v9 = [(NoteContext *)v8 save:&v15];
  v10 = v15;
  if ((v9 & 1) == 0)
  {
    v11 = DALoggingwithCategory();
    v12 = *(v4 + 3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = self->_noteDB;
      *buf = 134218242;
      v17 = v13;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_24844D000, v11, v12, "Saving notes database %p failed with error %@", buf, 0x16u);
    }
  }

  return v9;
}

- (BOOL)noteCloseDBAndSave:(BOOL)save
{
  v4 = !save || [(DALocalDBHelper *)self noteSaveDB];
  noteDBQueue = self->_noteDBQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DALocalDBHelper_noteCloseDBAndSave___block_invoke;
  block[3] = &unk_278F131F0;
  block[4] = self;
  dispatch_sync(noteDBQueue, block);
  return v4;
}

void __38__DALocalDBHelper_noteCloseDBAndSave___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 36);
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    LODWORD(v6) = *(v6 + 36);
    v16 = 134218240;
    v17 = v7;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_24844D000, v3, v5, "Decrementing database %p reference count. _noteConnectionCount is %d", &v16, 0x12u);
  }

  v8 = *(*(a1 + 32) + 36);
  if ((v8 & 0x80000000) == 0)
  {
    if (v8)
    {
      return;
    }

    goto LABEL_9;
  }

  v9 = DALoggingwithCategory();
  v10 = *(v4 + 3);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(*(a1 + 32) + 36);
    v16 = 67109120;
    LODWORD(v17) = v11;
    _os_log_impl(&dword_24844D000, v9, v10, "_noteCloseDB called too many times (connection count %d).  Resetting count to 0", &v16, 8u);
  }

  *(*(a1 + 32) + 36) = 0;
  if (!*(*(a1 + 32) + 36))
  {
LABEL_9:
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v5))
    {
      v13 = *(*(a1 + 32) + 96);
      v16 = 134217984;
      v17 = v13;
      _os_log_impl(&dword_24844D000, v12, v5, "Destroying notes database %p", &v16, 0xCu);
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 96);
    *(v14 + 96) = 0;
  }
}

+ (void)abSetTestABDBDir:(id)dir
{
  v9 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 138412290;
    v8 = dirCopy;
    _os_log_impl(&dword_24844D000, v5, v6, "Setting unit test Address Book Database directory to: %@", &v7, 0xCu);
  }

  if (_fakedOutABDBDir != dirCopy)
  {
    objc_storeStrong(&_fakedOutABDBDir, dir);
  }
}

- (void)abDBThrowOnNil:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"DALocalDBHelper.m" lineNumber:180 description:{@"You can't ask for an AddressBook db if you didn't open it.  Geez! %@", objc_opt_class()}];
}

- (void)_abOpenDBWithClientIdentifier:.cold.1()
{
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "_abOpenDBWithClientIdentifier is unsupported under modern Contacts framework :%@", v3, v4, v5, v6);
}

- (void)abOpenDBWithClientIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DALocalDBHelper.m" lineNumber:301 description:@"ClientIdentifier can not be nil"];
}

- (void)abOpenDBWithClientIdentifier:.cold.2()
{
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abOpenDBWithClientIdentifier is unsupported under modern Contacts framework :%@", v3, v4, v5, v6);
}

- (void)abSaveDB
{
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abSaveDB is unsupported under modern Contacts framework :%@", v3, v4, v5, v6);
}

- (void)calOpenDatabaseForAccountID:clientID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DALocalDBHelper.m" lineNumber:430 description:@"ClientIdentifier can not be nil"];
}

- (void)calOpenDatabaseForAuxDatabaseRef:clientID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DALocalDBHelper.m" lineNumber:435 description:@"ClientIdentifier can not be nil"];
}

- (void)noteDB
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DALocalDBHelper.m" lineNumber:472 description:{@"You can't ask for a note db if you didn't open it.  Geez! %@", objc_opt_class()}];

  *a4 = *a3;
}

@end