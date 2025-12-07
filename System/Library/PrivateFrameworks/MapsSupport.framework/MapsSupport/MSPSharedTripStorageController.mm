@interface MSPSharedTripStorageController
+ (id)_receivedNotificationRulesPath;
+ (id)_receivedSessionsPath;
+ (id)_senderSessionStoragePath;
+ (id)_sentNotificationRulesPath;
+ (void)removeFilesFromBackupsIfNeeded;
- (MSPSharedTripStorageController)init;
- (MSPSharedTripStorageDelegate)delegate;
- (id)_identifiersOfStaleSessions:(id)sessions;
- (id)receivingRulesForIdentifier:(id)identifier;
- (id)sendingRulesForIdentifier:(id)identifier;
- (void)_loadSenderSession;
- (void)_loadStoredSessions;
- (void)_saveReceivingRules;
- (void)_saveSenderSession;
- (void)_saveSendingRules;
- (void)_saveStoredSessions;
- (void)addNewSession:(id)session originator:(id)originator receivingHandle:(id)handle receivingAccountIdentifier:(id)identifier;
- (void)dealloc;
- (void)initialiseStoredSessionsIfNeeded;
- (void)removeSession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)setSenderSessionStorage:(id)storage;
- (void)updateGroupSessionStorageWithState:(id)state;
@end

@implementation MSPSharedTripStorageController

- (void)initialiseStoredSessionsIfNeeded
{
  if (!self->_initalisedStoredSessions)
  {
    v3 = MSPGetSharedTripStorageLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[STORAGE] Triggering immediate load of stored sessions", v4, 2u);
    }

    [(MSPSharedTripStorageController *)self _loadStoredSessions];
  }
}

- (MSPSharedTripStorageController)init
{
  v17.receiver = self;
  v17.super_class = MSPSharedTripStorageController;
  v2 = [(MSPSharedTripStorageController *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = MSPGetSharedTripLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "[STORAGE] initializing new MSPSharedTripStorageController", buf, 2u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sharedTripGroupSessionInfo = v3->_sharedTripGroupSessionInfo;
    v3->_sharedTripGroupSessionInfo = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    receiverRules = v3->_receiverRules;
    v3->_receiverRules = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    senderRules = v3->_senderRules;
    v3->_senderRules = dictionary3;

    v11 = MSPGetSharedTripStorageLog([(MSPSharedTripStorageController *)v3 _loadSenderSession]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[STORAGE] Scheduling deferred load of stored sessions", buf, 2u);
    }

    objc_initWeak(buf, v3);
    v12 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__MSPSharedTripStorageController_init__block_invoke;
    block[3] = &unk_279866390;
    objc_copyWeak(&v15, buf);
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __38__MSPSharedTripStorageController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[8];
    v4 = MSPGetSharedTripStorageLog(WeakRetained);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] Ignoring deferred load of stored sessions, already completed", buf, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] Triggering deferred load of stored sessions", v6, 2u);
      }

      [v2 _loadStoredSessions];
    }
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v6 = "[MSPSharedTripStorageController dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[STORAGE] %{private}s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MSPSharedTripStorageController;
  [(MSPSharedTripStorageController *)&v4 dealloc];
}

- (void)setSenderSessionStorage:(id)storage
{
  v22 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  hasGroupIdentifier = [(MSPGroupSessionStorage *)storageCopy hasGroupIdentifier];
  if (hasGroupIdentifier && (hasGroupIdentifier = [(MSPGroupSessionStorage *)self->_senderSessionStorage hasGroupIdentifier], hasGroupIdentifier))
  {
    groupIdentifier = [(MSPGroupSessionStorage *)storageCopy groupIdentifier];
    groupIdentifier2 = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
    v8 = [groupIdentifier isEqualToString:groupIdentifier2];

    if (storageCopy && (v8 & 1) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = MSPGetSharedTripStorageLog(hasGroupIdentifier);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v11 = v10;
    groupIdentifier3 = [(MSPGroupSessionStorage *)storageCopy groupIdentifier];
    groupIdentifier4 = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
    v16 = 138412802;
    v17 = v11;
    v18 = 2112;
    v19 = groupIdentifier3;
    v20 = 2112;
    v21 = groupIdentifier4;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[STORAGE] setSenderSessionStorage clearing storage (sameGroup: %@, incoming: %@, existing: %@)", &v16, 0x20u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(MSPSharedTripStorageController *)self setSenderRules:dictionary];

LABEL_12:
  senderSessionStorage = self->_senderSessionStorage;
  self->_senderSessionStorage = storageCopy;

  [(MSPSharedTripStorageController *)self _saveSenderSession];
}

- (void)setDelegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_storeWeak(&self->_delegate, delegateCopy);
  v6 = MSPGetSharedTripStorageLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
    v9 = 138412290;
    v10 = sharedTripGroupSessionInfo;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[STORAGE] setDelegate %@", &v9, 0xCu);
  }

  if ([(NSMutableDictionary *)self->_sharedTripGroupSessionInfo count])
  {
    v8 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
    [delegateCopy storageController:self updatedSharedTripGroupStorage:v8];
  }
}

- (void)addNewSession:(id)session originator:(id)originator receivingHandle:(id)handle receivingAccountIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v11 = [MSPGroupSessionStorage groupStorageWithIdentifier:sessionCopy originator:originator receivingHandle:handle receivingAccountIdentifier:identifier];
  [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo setObject:v11 forKeyedSubscript:sessionCopy];

  v12 = MSPGetSharedTripStorageLog([(MSPSharedTripStorageController *)self _saveStoredSessions]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
    v16 = 138412290;
    v17 = sharedTripGroupSessionInfo;
    _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[STORAGE] addNewSession %@", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
  [WeakRetained storageController:self updatedSharedTripGroupStorage:v15];
}

- (void)removeSession:(id)session
{
  v13 = *MEMORY[0x277D85DE8];
  sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
  sessionCopy = session;
  [(NSMutableDictionary *)sharedTripGroupSessionInfo setObject:0 forKeyedSubscript:sessionCopy];
  receiverRules = [(MSPSharedTripStorageController *)self receiverRules];
  [receiverRules setObject:0 forKeyedSubscript:sessionCopy];

  v7 = MSPGetSharedTripStorageLog([(MSPSharedTripStorageController *)self _saveStoredSessions]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_sharedTripGroupSessionInfo;
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[STORAGE] removeSession %@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
  [WeakRetained storageController:self updatedSharedTripGroupStorage:v10];
}

- (void)updateGroupSessionStorageWithState:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  groupIdentifier = [stateCopy groupIdentifier];
  v6 = MSPGetSharedTripStorageLog(groupIdentifier);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = groupIdentifier;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[STORAGE] updateGroupSessionStorageWithState %@", &v8, 0xCu);
  }

  v7 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo objectForKeyedSubscript:groupIdentifier];
  [v7 updateWithState:stateCopy];

  [(MSPSharedTripStorageController *)self _saveStoredSessions];
}

- (id)receivingRulesForIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  receiverRules = [(MSPSharedTripStorageController *)self receiverRules];
  v6 = [receiverRules objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    v8 = MSPGetSharedTripLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "MSPSharedTripStorageController allocated receiving MSPSharedTripNotificationRules for groupIdentifier %@", &v11, 0xCu);
    }

    v6 = objc_alloc_init(MSPSharedTripNotificationRules);
    receiverRules2 = [(MSPSharedTripStorageController *)self receiverRules];
    [receiverRules2 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  return v6;
}

- (id)sendingRulesForIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  senderSessionStorage = self->_senderSessionStorage;
  identifierCopy = identifier;
  groupIdentifier = [(MSPGroupSessionStorage *)senderSessionStorage groupIdentifier];
  identifierCopy = [v4 stringWithFormat:@"%@+%@", groupIdentifier, identifierCopy];

  v9 = [(NSMutableDictionary *)self->_senderRules objectForKeyedSubscript:identifierCopy];
  if (!v9)
  {
    v10 = MSPGetSharedTripLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "MSPSharedTripStorageController allocated sending MSPSharedTripNotificationRules for key %@", buf, 0xCu);
    }

    v12 = MSPGetSharedTripLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      senderRules = self->_senderRules;
      *buf = 138412290;
      v16 = senderRules;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "rules %@", buf, 0xCu);
    }

    v9 = [[MSPSharedTripNotificationRules alloc] initWithMaximumNumberOfNotifications:GEOConfigGetUInteger()];
    [(NSMutableDictionary *)self->_senderRules setObject:v9 forKeyedSubscript:identifierCopy];
  }

  return v9;
}

+ (id)_receivedSessionsPath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  groupDirectory = [v2 groupDirectory];
  v4 = groupDirectory;
  if (groupDirectory)
  {
    mapsDirectory = groupDirectory;
  }

  else
  {
    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    mapsDirectory = [v6 mapsDirectory];
  }

  v7 = [mapsDirectory stringByAppendingPathComponent:@"receivedsessions.data"];

  return v7;
}

+ (id)_receivedNotificationRulesPath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  groupDirectory = [v2 groupDirectory];
  v4 = groupDirectory;
  if (groupDirectory)
  {
    mapsDirectory = groupDirectory;
  }

  else
  {
    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    mapsDirectory = [v6 mapsDirectory];
  }

  v7 = [mapsDirectory stringByAppendingPathComponent:@"rules.data"];

  return v7;
}

- (void)_loadStoredSessions
{
  v60 = *MEMORY[0x277D85DE8];
  _receivedSessionsPath = [objc_opt_class() _receivedSessionsPath];
  v4 = MSPGetSharedTripStorageLog(_receivedSessionsPath);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = _receivedSessionsPath;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadStoredSessions %@", buf, 0xCu);
  }

  v6 = MSPGetSharedTripLog(v5);
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "_loadStoredSessions", &unk_2581CCE6D, buf, 2u);
  }

  spid = v7;

  v55 = _receivedSessionsPath;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:_receivedSessionsPath];
  v12 = 0x277CCA000uLL;
  if (v11)
  {
    v13 = MEMORY[0x277CCAAC8];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v52 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, v52, objc_opt_class(), 0}];
    v57 = 0;
    v18 = [v13 unarchivedObjectOfClasses:v17 fromData:v11 error:&v57];
    v19 = v57;

    if (v19)
    {
      v21 = MSPGetSharedTripLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v19;
        _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_ERROR, "[STORAGE] _loadStoredSessions unarchiving error %@", buf, 0xCu);
      }

      v22 = v9;
      v23 = v22;
      v12 = 0x277CCA000;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v23, OS_SIGNPOST_EVENT, spid, "_loadStoredSessionsUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v24 = [v18 mutableCopy];
      sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
      self->_sharedTripGroupSessionInfo = v24;

      v23 = MSPGetSharedTripStorageLog(v26);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v27 = self->_sharedTripGroupSessionInfo;
        *buf = 138412290;
        v59 = v27;
        _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_INFO, "[STORAGE] cached group %@", buf, 0xCu);
      }

      v12 = 0x277CCA000uLL;
    }
  }

  v28 = [(MSPSharedTripStorageController *)self _identifiersOfStaleSessions:self->_sharedTripGroupSessionInfo];
  allObjects = [v28 allObjects];

  [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo removeObjectsForKeys:allObjects];
  _receivedNotificationRulesPath = [objc_opt_class() _receivedNotificationRulesPath];
  v31 = MSPGetSharedTripStorageLog(_receivedNotificationRulesPath);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = _receivedNotificationRulesPath;
    _os_log_impl(&dword_25813A000, v31, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadStoredSessions rulesPath %@", buf, 0xCu);
  }

  v32 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:_receivedNotificationRulesPath];
  if (v32)
  {
    v53 = v11;
    v33 = *(v12 + 2760);
    v34 = +[MSPSharedTripNotificationRules unarchivingObjectsSet];
    v56 = 0;
    v35 = [v33 unarchivedObjectOfClasses:v34 fromData:v32 error:&v56];
    v36 = v56;

    if (v36)
    {
      v38 = MSPGetSharedTripLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v36;
        _os_log_impl(&dword_25813A000, v38, OS_LOG_TYPE_ERROR, "[STORAGE] rules unarchiving error %@", buf, 0xCu);
      }

      v39 = v9;
      v40 = v39;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v40, OS_SIGNPOST_EVENT, spid, "_loadStoredSessionsRulesUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v41 = [v35 mutableCopy];
      [(MSPSharedTripStorageController *)self setReceiverRules:v41];

      v40 = MSPGetSharedTripStorageLog(v42);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        receiverRules = [(MSPSharedTripStorageController *)self receiverRules];
        *buf = 138412290;
        v59 = receiverRules;
        _os_log_impl(&dword_25813A000, v40, OS_LOG_TYPE_INFO, "[STORAGE] cached rules %@", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_receiverRules removeObjectsForKeys:allObjects];
    v11 = v53;
  }

  else
  {
    [(NSMutableDictionary *)self->_receiverRules removeObjectsForKeys:allObjects];
    if (!v11)
    {
      goto LABEL_32;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v45 = [(NSMutableDictionary *)self->_sharedTripGroupSessionInfo copy];
  [WeakRetained storageController:self updatedSharedTripGroupStorage:v45];

LABEL_32:
  v46 = v9;
  v47 = v46;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v47, OS_SIGNPOST_INTERVAL_END, spid, "_loadStoredSessions", &unk_2581CCE6D, buf, 2u);
  }

  _saveReceivingRules = [allObjects count];
  if (_saveReceivingRules)
  {
    v49 = MSPGetSharedTripStorageLog(_saveReceivingRules);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = [allObjects count];
      *buf = 134217984;
      v59 = v50;
      _os_log_impl(&dword_25813A000, v49, OS_LOG_TYPE_INFO, "[STORAGE] %lu sessions are stale, re-saving remaining sessions", buf, 0xCu);
    }

    [(MSPSharedTripStorageController *)self _saveStoredSessions];
    _saveReceivingRules = [(MSPSharedTripStorageController *)self _saveReceivingRules];
  }

  if (!self->_initalisedStoredSessions)
  {
    v51 = MSPGetSharedTripStorageLog(_saveReceivingRules);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v51, OS_LOG_TYPE_DEFAULT, "[STORAGE] initialised stored sessions", buf, 2u);
    }

    self->_initalisedStoredSessions = 1;
  }
}

- (id)_identifiersOfStaleSessions:(id)sessions
{
  sessionsCopy = sessions;
  if ([sessionsCopy count])
  {
    [sessionsCopy keysOfEntriesPassingTest:&__block_literal_global_5];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;

  return v4;
}

uint64_t __62__MSPSharedTripStorageController__identifiersOfStaleSessions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v5 state];
  v7 = v6;
  if (v6)
  {
    if ([v6 hasArrived])
    {
      v8 = [v7 arrived];
    }

    else
    {
      v8 = 0;
    }

    if ([v7 hasClosed])
    {
      v11 = [v7 closed];
    }

    else
    {
      v11 = 0;
    }

    v12 = MEMORY[0x277CBEAA8];
    v13 = [v7 etaInfo];
    [v13 etaTimestamp];
    v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    [v14 timeIntervalSinceNow];
    v16 = v15;
    v17 = v15 < 0.0;

    v18 = MEMORY[0x277CBEAA8];
    [v5 lastUpdateTimestamp];
    v9 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
    [v9 timeIntervalSinceNow];
    v20 = v19;
    Double = GEOConfigGetDouble();
    v10 = (v20 < -v22) & (v8 | v11 | v17);
    if (v10 == 1)
    {
      v23 = MSPGetSharedTripLog(Double);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        if (v8)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        v25 = v24;
        if (v11)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v27 = v26;
        if (v16 >= 0.0)
        {
          v28 = @"NO";
        }

        else
        {
          v28 = @"YES";
        }

        v29 = v28;
        v31 = 138413058;
        v32 = v4;
        v33 = 2112;
        v34 = v25;
        v35 = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v29;
        _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_INFO, "restored session %@ is stale: arrived %@ closed %@ etaInPast %@", &v31, 0x2Au);
      }

      v10 = 1;
    }
  }

  else
  {
    v9 = MSPGetSharedTripLog(0);
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v31 = 138412290;
      v32 = v4;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "restored session %@ is stale: no trip state", &v31, 0xCu);
    }
  }

  return v10;
}

- (void)_saveStoredSessions
{
  v32 = *MEMORY[0x277D85DE8];
  _receivedSessionsPath = [objc_opt_class() _receivedSessionsPath];
  v4 = MSPGetSharedTripStorageLog(_receivedSessionsPath);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sharedTripGroupSessionInfo = self->_sharedTripGroupSessionInfo;
    *buf = 138412546;
    v29 = sharedTripGroupSessionInfo;
    v30 = 2112;
    v31 = _receivedSessionsPath;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveStoredSessions groupsData %@ at path %@", buf, 0x16u);
  }

  v7 = MSPGetSharedTripLog(v6);
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_saveStoredSessions", &unk_2581CCE6D, buf, 2u);
  }

  v12 = self->_sharedTripGroupSessionInfo;
  v27 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v27];
  v14 = v27;
  v15 = v14;
  if (v14 || !_receivedSessionsPath)
  {
    v21 = MSPGetSharedTripStorageLog(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_ERROR, "[STORAGE] groupArchivingError %@", buf, 0xCu);
    }

    v22 = v10;
    v16 = v22;
    if (v11 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v25 = v16;
      goto LABEL_24;
    }

    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v16, OS_SIGNPOST_EVENT, v8, "_saveStoredSessionsArchiveError", &unk_2581CCE6D, buf, 2u);
    }
  }

  else
  {
    v26 = 0;
    [v13 writeToFile:_receivedSessionsPath options:1 error:&v26];
    v16 = v26;
    v17 = MSPExcludePathFromBackup(_receivedSessionsPath);
    if (v16)
    {
      v18 = MSPGetSharedTripStorageLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v16;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_ERROR, "[STORAGE] groupWriteError %@", buf, 0xCu);
      }

      v19 = v10;
      v20 = v19;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v20, OS_SIGNPOST_EVENT, v8, "_saveStoredSessionsWriteError", &unk_2581CCE6D, buf, 2u);
      }
    }
  }

  v23 = v10;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v24, OS_SIGNPOST_INTERVAL_END, v8, "_saveStoredSessions", &unk_2581CCE6D, buf, 2u);
    }
  }

LABEL_24:
}

- (void)_saveReceivingRules
{
  v33 = *MEMORY[0x277D85DE8];
  _receivedNotificationRulesPath = [objc_opt_class() _receivedNotificationRulesPath];
  v4 = MSPGetSharedTripStorageLog(_receivedNotificationRulesPath);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    receiverRules = [(MSPSharedTripStorageController *)self receiverRules];
    *buf = 138412546;
    v30 = receiverRules;
    v31 = 2112;
    v32 = _receivedNotificationRulesPath;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveRules %@ at path %@", buf, 0x16u);
  }

  v7 = MSPGetSharedTripLog(v6);
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_saveReceivingRules", &unk_2581CCE6D, buf, 2u);
  }

  v12 = MEMORY[0x277CCAAB0];
  receiverRules2 = [(MSPSharedTripStorageController *)self receiverRules];
  v28 = 0;
  v14 = [v12 archivedDataWithRootObject:receiverRules2 requiringSecureCoding:1 error:&v28];
  v15 = v28;

  if (v15 || !_receivedNotificationRulesPath)
  {
    v22 = MSPGetSharedTripStorageLog(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_ERROR, "[STORAGE] rulesArchivingError %@", buf, 0xCu);
    }

    v23 = v10;
    v17 = v23;
    if (v11 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v26 = v17;
      goto LABEL_24;
    }

    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v17, OS_SIGNPOST_EVENT, v8, "_saveReceivingRulesArchiveError", &unk_2581CCE6D, buf, 2u);
    }
  }

  else
  {
    v27 = 0;
    [v14 writeToFile:_receivedNotificationRulesPath options:1 error:&v27];
    v17 = v27;
    v18 = MSPExcludePathFromBackup(_receivedNotificationRulesPath);
    if (v17)
    {
      v19 = MSPGetSharedTripStorageLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_ERROR, "[STORAGE] rulesWriteError %@", buf, 0xCu);
      }

      v20 = v10;
      v21 = v20;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v21, OS_SIGNPOST_EVENT, v8, "_saveReceivingRulesWriteError", &unk_2581CCE6D, buf, 2u);
      }
    }
  }

  v24 = v10;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v24;
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v25, OS_SIGNPOST_INTERVAL_END, v8, "_saveReceivingRules", &unk_2581CCE6D, buf, 2u);
    }
  }

LABEL_24:
}

+ (id)_senderSessionStoragePath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  groupDirectory = [v2 groupDirectory];

  v4 = [groupDirectory stringByAppendingPathComponent:@"sender.data"];

  return v4;
}

+ (id)_sentNotificationRulesPath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  groupDirectory = [v2 groupDirectory];

  v4 = [groupDirectory stringByAppendingPathComponent:@"senderRules.data"];

  return v4;
}

- (void)_loadSenderSession
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "_loadSenderSession", &unk_2581CCE6D, buf, 2u);
  }

  spid = v4;

  _sentNotificationRulesPath = [objc_opt_class() _sentNotificationRulesPath];
  v9 = MSPGetSharedTripStorageLog(_sentNotificationRulesPath);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = _sentNotificationRulesPath;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadSenderSession rulesPath %@", buf, 0xCu);
  }

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:_sentNotificationRulesPath];
  if (v10)
  {
    v11 = MEMORY[0x277CCAAC8];
    v12 = +[MSPSharedTripNotificationRules unarchivingObjectsSet];
    v37 = 0;
    v13 = [v11 unarchivedObjectOfClasses:v12 fromData:v10 error:&v37];
    v14 = v37;

    if (v14)
    {
      v16 = MSPGetSharedTripLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v14;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_ERROR, "[STORAGE] sender rules unarchiving error %@", buf, 0xCu);
      }

      v17 = v6;
      v18 = v17;
      if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v18, OS_SIGNPOST_EVENT, spid, "_loadSenderSessionRulesUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v19 = [v13 mutableCopy];
      [(MSPSharedTripStorageController *)self setSenderRules:v19];

      v18 = MSPGetSharedTripStorageLog(v20);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        senderRules = [(MSPSharedTripStorageController *)self senderRules];
        *buf = 138412290;
        v39 = senderRules;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "[STORAGE] cached sender rules %@", buf, 0xCu);
      }
    }
  }

  _senderSessionStoragePath = [objc_opt_class() _senderSessionStoragePath];
  v23 = MSPGetSharedTripStorageLog(_senderSessionStoragePath);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = _senderSessionStoragePath;
    _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_DEFAULT, "[STORAGE] _loadSenderSession %@", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:_senderSessionStoragePath];
  if (v24)
  {
    v36 = 0;
    v25 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v24 error:&v36];
    v26 = v36;
    v27 = v26;
    if (v26)
    {
      v28 = MSPGetSharedTripLog(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v27;
        _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_ERROR, "[STORAGE] _loadSenderSession unarchiver error %@", buf, 0xCu);
      }

      v29 = v6;
      v30 = v29;
      if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v30, OS_SIGNPOST_EVENT, spid, "_loadSenderSessionUnarchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      objc_storeStrong(&self->_senderSessionStorage, v25);
      v30 = MSPGetSharedTripStorageLog(v31);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        groupIdentifier = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
        *buf = 138412290;
        v39 = groupIdentifier;
        _os_log_impl(&dword_25813A000, v30, OS_LOG_TYPE_INFO, "[STORAGE] cached session for group id %@", buf, 0xCu);
      }
    }
  }

  v33 = v6;
  v34 = v33;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v34, OS_SIGNPOST_INTERVAL_END, spid, "_loadSenderSession", &unk_2581CCE6D, buf, 2u);
  }
}

- (void)_saveSenderSession
{
  v40 = *MEMORY[0x277D85DE8];
  _senderSessionStoragePath = [objc_opt_class() _senderSessionStoragePath];
  v4 = _senderSessionStoragePath;
  if (!_senderSessionStoragePath)
  {
    goto LABEL_37;
  }

  v5 = MSPGetSharedTripStorageLog(_senderSessionStoragePath);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    groupIdentifier = [(MSPGroupSessionStorage *)self->_senderSessionStorage groupIdentifier];
    *buf = 138412546;
    v37 = groupIdentifier;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveSenderSession session for group id: %@ path: %@", buf, 0x16u);
  }

  v8 = MSPGetSharedTripLog(v7);
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_saveSenderSession", &unk_2581CCE6D, buf, 2u);
  }

  senderSessionStorage = self->_senderSessionStorage;
  if (senderSessionStorage)
  {
    v35 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:senderSessionStorage requiringSecureCoding:1 error:&v35];
    v15 = v35;
    v16 = v15;
    if (v15)
    {
      v17 = MSPGetSharedTripStorageLog(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v16;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_ERROR, "[STORAGE] archiveError %@", buf, 0xCu);
      }

      v18 = v11;
      v19 = v18;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v19, OS_SIGNPOST_EVENT, v9, "_saveSenderSessionArchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    if (v14)
    {
      v34 = 0;
      [v14 writeToFile:v4 options:1 error:&v34];
      v20 = v34;
      v21 = MSPExcludePathFromBackup(v4);
      if (v20)
      {
        v22 = MSPGetSharedTripStorageLog(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v20;
          _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_ERROR, "[STORAGE] writeError %@", buf, 0xCu);
        }

        v23 = v11;
        v24 = v23;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25813A000, v24, OS_SIGNPOST_EVENT, v9, "_saveSenderSessionWriteError", &unk_2581CCE6D, buf, 2u);
        }
      }

LABEL_31:

      goto LABEL_32;
    }
  }

  else
  {
    v16 = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v26 = [defaultManager fileExistsAtPath:v4];

  if (!v26)
  {
    goto LABEL_33;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = 0;
  [defaultManager2 removeItemAtPath:v4 error:&v33];
  v14 = v33;

  if (v14)
  {
    v29 = MSPGetSharedTripStorageLog(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v14;
      _os_log_impl(&dword_25813A000, v29, OS_LOG_TYPE_ERROR, "[STORAGE] deleteError %@", buf, 0xCu);
    }

    v30 = v11;
    v20 = v30;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v20, OS_SIGNPOST_EVENT, v9, "_saveSenderSessionDeleteError", &unk_2581CCE6D, buf, 2u);
    }

    goto LABEL_31;
  }

LABEL_32:

LABEL_33:
  v31 = v11;
  v32 = v31;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v32, OS_SIGNPOST_INTERVAL_END, v9, "_saveSenderSession", &unk_2581CCE6D, buf, 2u);
  }

LABEL_37:
}

- (void)_saveSendingRules
{
  v33 = *MEMORY[0x277D85DE8];
  _sentNotificationRulesPath = [objc_opt_class() _sentNotificationRulesPath];
  v4 = _sentNotificationRulesPath;
  if (_sentNotificationRulesPath)
  {
    v5 = MSPGetSharedTripStorageLog(_sentNotificationRulesPath);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      senderRules = self->_senderRules;
      *buf = 138412546;
      v30 = senderRules;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[STORAGE] _saveSendingRules rules %@ at path %@", buf, 0x16u);
    }

    v8 = MSPGetSharedTripLog(v7);
    v9 = os_signpost_id_generate(v8);
    v10 = v8;
    v11 = v10;
    v12 = v9 - 1;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_saveSendingRules", &unk_2581CCE6D, buf, 2u);
    }

    v13 = self->_senderRules;
    v28 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v28];
    v15 = v28;
    v16 = v15;
    if (v15)
    {
      v17 = MSPGetSharedTripStorageLog(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v16;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_ERROR, "[STORAGE] _saveSendingRules archiving error %@", buf, 0xCu);
      }

      v18 = v11;
      v19 = v18;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v26 = v19;
LABEL_24:

        goto LABEL_25;
      }

      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v19, OS_SIGNPOST_EVENT, v9, "_saveSendingRulesArchiveError", &unk_2581CCE6D, buf, 2u);
      }
    }

    else
    {
      v27 = 0;
      [v14 writeToFile:v4 options:1 error:&v27];
      v19 = v27;
      v20 = MSPExcludePathFromBackup(v4);
      if (v19)
      {
        v21 = MSPGetSharedTripStorageLog(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v19;
          _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_ERROR, "[STORAGE] _saveSendingRules write error %@", buf, 0xCu);
        }

        v22 = v11;
        v23 = v22;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25813A000, v23, OS_SIGNPOST_EVENT, v9, "_saveSendingRulesWriteError", &unk_2581CCE6D, buf, 2u);
        }
      }
    }

    v24 = v11;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v25 = v24;
      if (os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v25, OS_SIGNPOST_INTERVAL_END, v9, "_saveSendingRules", &unk_2581CCE6D, buf, 2u);
      }
    }

    goto LABEL_24;
  }

LABEL_25:
}

+ (void)removeFilesFromBackupsIfNeeded
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__MSPSharedTripStorageController_removeFilesFromBackupsIfNeeded__block_invoke;
  v10[3] = &unk_2798663D8;
  v11 = defaultManager;
  v4 = defaultManager;
  v5 = MEMORY[0x259C7AD60](v10);
  _senderSessionStoragePath = [self _senderSessionStoragePath];
  (v5)[2](v5, _senderSessionStoragePath);

  _sentNotificationRulesPath = [self _sentNotificationRulesPath];
  (v5)[2](v5, _sentNotificationRulesPath);

  _receivedSessionsPath = [self _receivedSessionsPath];
  (v5)[2](v5, _receivedSessionsPath);

  _receivedNotificationRulesPath = [self _receivedNotificationRulesPath];
  (v5)[2](v5, _receivedNotificationRulesPath);
}

void __64__MSPSharedTripStorageController_removeFilesFromBackupsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if ([*(a1 + 32) fileExistsAtPath:v3])
    {
      v4 = MSPIsExcludedFromBackup(v3);
      if ((v4 & 1) == 0)
      {
        v5 = MSPGetSharedTripStorageLog(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [v3 lastPathComponent];
          v10 = 138412290;
          v11 = v6;
          _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[STORAGE] Found file not excluded from backup, excluding now: %@", &v10, 0xCu);
        }

        v7 = MSPExcludePathFromBackup(v3);
        if ((v7 & 1) == 0)
        {
          v8 = MSPGetSharedTripStorageLog(v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = [v3 lastPathComponent];
            v10 = 138412290;
            v11 = v9;
            _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "[STORAGE] Failed to exclude file from backup: %@", &v10, 0xCu);
          }
        }
      }
    }
  }
}

- (MSPSharedTripStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end