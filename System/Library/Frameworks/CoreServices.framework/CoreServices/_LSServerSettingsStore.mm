@interface _LSServerSettingsStore
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)resetUserElectionsWithError:(id *)error;
- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error;
- (_LSServerSettingsStore)init;
- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)token;
- (void)_internalQueue_initializeDatabase;
- (void)_internalQueue_insertIdentifier:(id)identifier userElection:(unsigned __int8)election;
- (void)_internalQueue_insertIdentifier:(id)identifier userElection:(unsigned __int8)election timestamp:(double)timestamp;
- (void)_internalQueue_loadDatabase;
- (void)_internalQueue_loadPluginKitDatabase;
- (void)_internalQueue_resetUserElection;
- (void)postSettingsChangeNotification;
- (void)resetUserElectionsWithReply:(id)reply;
- (void)setUserElection:(unsigned __int8)election forExtensionKey:(id)key reply:(id)reply;
- (void)userElectionForExtensionKey:(id)key reply:(id)reply;
@end

@implementation _LSServerSettingsStore

- (void)_internalQueue_loadDatabase
{
  v19 = *MEMORY[0x1E69E9840];
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v6 = [__LSDefaultsGetSharedInstance(v4 v5)];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path];

  if ((v9 & 1) == 0)
  {
    v11 = _LSExtensionsLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(_LSServerSettingsStore *)v11 _internalQueue_loadDatabase];
    }
  }

  v12 = _LSExtensionsLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v16 = 138412546;
    *&v16[4] = v6;
    v17 = 1024;
    v18 = v9 ^ 1;
    _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_INFO, "Loading readwrite settings database from: '%@', will initialize: %d", v16, 0x12u);
  }

  *v16 = 0;
  v13 = v6;
  sqlite3_open_v2([v6 fileSystemRepresentation], v16, 6, 0);
  [(_LSInProcessSettingsStore *)self setDatabase:*v16];
  if ((v9 & 1) == 0)
  {
    _internalQueue_initializeDatabase = [(_LSServerSettingsStore *)self _internalQueue_initializeDatabase];
    if ([__LSDefaultsGetSharedInstance(_internalQueue_initializeDatabase v15)])
    {
      [(_LSServerSettingsStore *)self _internalQueue_loadPluginKitDatabase];
    }
  }
}

- (_LSServerSettingsStore)init
{
  v6.receiver = self;
  v6.super_class = _LSServerSettingsStore;
  v2 = [(_LSInProcessSettingsStore *)&v6 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)token
{
  v4 = [LSSettingsStoreConfiguration alloc];
  listener = [(_LSServerSettingsStore *)self listener];
  endpoint = [listener endpoint];
  v7 = [(LSSettingsStoreConfiguration *)v4 initWithEndpoint:endpoint];

  return v7;
}

- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error
{
  keyCopy = key;
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___LSServerSettingsStore_setUserElection_forExtensionKey_error___block_invoke;
  block[3] = &unk_1E6A1CF98;
  block[4] = self;
  v12 = keyCopy;
  electionCopy = election;
  v9 = keyCopy;
  dispatch_sync(internalQueue, block);

  return 1;
}

- (BOOL)resetUserElectionsWithError:(id *)error
{
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___LSServerSettingsStore_resetUserElectionsWithError___block_invoke;
  block[3] = &unk_1E6A1A830;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  return 1;
}

- (void)_internalQueue_loadPluginKitDatabase
{
  v45 = *MEMORY[0x1E69E9840];
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL29pluginKitUserElectionStoreURLv_block_invoke_250;
  block[3] = &unk_1E6A1C820;
  v43 = &__block_literal_global_243;
  if (pluginKitUserElectionStoreURL(void)::onceToken != -1)
  {
    dispatch_once(&pluginKitUserElectionStoreURL(void)::onceToken, block);
  }

  v35 = pluginKitUserElectionStoreURL(void)::annotations;

  v5 = _LSExtensionsLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_LSServerSettingsStore _internalQueue_loadPluginKitDatabase];
  }

  v6 = [MEMORY[0x1E695DF00] now];
  v41 = 0;
  v7 = [v35 getResourceValue:&v41 forKey:*MEMORY[0x1E695DA98] error:0];
  v32 = v41;

  v8 = 0.0;
  if (v7)
  {
    [v32 timeIntervalSince1970];
    v8 = v9;
  }

  v34 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:{v35, v32}];
  v10 = objc_opt_class();
  v11 = [v34 objectForKey:@"version"];
  v12 = v11;
  if (v10 && v11 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v12 = 0;
  }

  v13 = [v12 integerValue] == 16;

  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:443 description:@"Unexpected version"];
  }

  v14 = objc_opt_class();
  v15 = [v34 objectForKey:@"data"];
  v16 = v15;
  if (v14 && v15 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v16 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v44 count:16];
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
          v23 = objc_opt_class();
          v24 = [v17 objectForKey:v22];
          v25 = v24;
          if (v23 && v24 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v25 = 0;
          }

          v26 = objc_opt_class();
          v27 = [v25 objectForKey:@"election"];
          v28 = v27;
          if (v26 && v27 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v28 = 0;
          }

          integerValue = [v28 integerValue];

          if (integerValue <= 2uLL)
          {
            v30 = integerValue;
          }

          else
          {
            v30 = 0;
          }

          [(_LSServerSettingsStore *)self _internalQueue_insertIdentifier:v22 userElection:v30 timestamp:v8];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v18);
  }
}

- (void)_internalQueue_initializeDatabase
{
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  errmsg = 0;
  v4 = sqlite3_exec([(_LSInProcessSettingsStore *)self database], "CREATE TABLE IF NOT EXISTS Election( identifier TEXT PRIMARY KEY NOT NULL, timestamp INT DEFAULT CURRENT_TIMESTAMP NOT NULL, userElection INT);CREATE TRIGGER insert_Timestamp_Trigger AFTER INSERT ON Election BEGIN UPDATE Election SET timestamp = datetime('NOW') WHERE identifier = NEW. identifier;END;CREATE TRIGGER update_Timestamp_Trigger AFTER UPDATE On Election BEGIN UPDATE Election SET timestamp = datetime('NOW') WHERE identifier = NEW. identifier;END;CREATE TABLE IF NOT EXISTS LegacyElection( identifier TEXT PRIMARY KEY NOT NULL, timestamp INT DEFAULT CURRENT_TIMESTAMP NOT NULL, userElection INT, pkTimestamp TEXT);CREATE TRIGGER insert_Timestamp_Trigger AFTER INSERT ON LegacyElection BEGIN UPDATE LegacyElection SET timestamp = datetime('NOW') WHERE identifier = NEW. identifier;END;CREATE TRIGGER update_Timestamp_Trigger AFTER UPDATE On LegacyElection BEGIN UPDATE LegacyElection SET timestamp = datetime('NOW') WHERE identifier = NEW. identifier;END;", 0, 0, &errmsg);
  if (v4)
  {
    v5 = _LSExtensionsLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_LSServerSettingsStore _internalQueue_initializeDatabase];
    }

    if (errmsg)
    {
      sqlite3_free(errmsg);
    }
  }
}

- (void)_internalQueue_insertIdentifier:(id)identifier userElection:(unsigned __int8)election
{
  electionCopy = election;
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  ppStmt = 0;
  v9 = sqlite3_prepare_v2([(_LSInProcessSettingsStore *)self database], "INSERT OR REPLACE INTO Election (identifier, userElection) VALUES (?, ?)", -1, &ppStmt, 0);
  if (v9)
  {
    v10 = _LSExtensionsLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sqlite3_errmsg([(_LSInProcessSettingsStore *)self database]);
      [(_LSInProcessSettingsStore *)v11 _internalQueue_selectUserElectionForIdentifier:v17];
    }
  }

  else
  {
    v12 = ppStmt;
    v13 = identifierCopy;
    sqlite3_bind_text(v12, 1, [identifierCopy UTF8String], -1, 0);
    sqlite3_bind_int(ppStmt, 2, electionCopy);
  }

  v14 = sqlite3_step(ppStmt);
  if (v14 != 8 && v14 != 101)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:501 description:{@"failed to set user election to '%d' for extension record: %@", electionCopy, identifierCopy}];
  }

  sqlite3_finalize(ppStmt);
}

- (void)_internalQueue_insertIdentifier:(id)identifier userElection:(unsigned __int8)election timestamp:(double)timestamp
{
  electionCopy = election;
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  ppStmt = 0;
  v11 = sqlite3_prepare_v2([(_LSInProcessSettingsStore *)self database], "INSERT OR REPLACE INTO LegacyElection (identifier, userElection, pkTimestamp) VALUES (?, ?, ?)", -1, &ppStmt, 0);
  if (v11)
  {
    v12 = _LSExtensionsLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg([(_LSInProcessSettingsStore *)self database]);
      [(_LSInProcessSettingsStore *)v13 _internalQueue_selectUserElectionForIdentifier:v18];
    }
  }

  else
  {
    v14 = ppStmt;
    v15 = identifierCopy;
    sqlite3_bind_text(v14, 1, [identifierCopy UTF8String], -1, 0);
    sqlite3_bind_int64(ppStmt, 2, electionCopy);
    sqlite3_bind_double(ppStmt, 3, timestamp);
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:525 description:{@"failed to import user elcection '%ld' for extension record: %@", electionCopy, identifierCopy}];
  }

  sqlite3_finalize(ppStmt);
}

- (void)_internalQueue_resetUserElection
{
  v12 = *MEMORY[0x1E69E9840];
  internalQueue = [(_LSInProcessSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  ppStmt = 0;
  v5 = sqlite3_prepare_v2([(_LSInProcessSettingsStore *)self database], "DELETE FROM Election", -1, &ppStmt, 0);
  if (v5)
  {
    v6 = _LSExtensionsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg([(_LSInProcessSettingsStore *)self database]);
      [(_LSInProcessSettingsStore *)v7 _internalQueue_selectUserElectionForIdentifier:v11];
    }
  }

  v8 = sqlite3_step(ppStmt);
  if (v8 != 8 && v8 != 101)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:545 description:@"failed to reset user election"];
  }

  sqlite3_finalize(ppStmt);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = connectionCopy;
  listener = self->_listener;
  if (listener == listener)
  {
    [connectionCopy setExportedObject:self];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFB22B0];
    [v7 setExportedInterface:v9];

    [v7 resume];
  }

  return listener == listener;
}

- (void)userElectionForExtensionKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  (*(replyCopy + 2))(replyCopy, [(_LSInProcessSettingsStore *)self userElectionForExtensionKey:keyCopy], 0);
}

- (void)setUserElection:(unsigned __int8)election forExtensionKey:(id)key reply:(id)reply
{
  electionCopy = election;
  keyCopy = key;
  replyCopy = reply;
  v15 = 0u;
  v16 = 0u;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v11 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  if (_LSCheckEntitlementForAuditToken(&v15, @"com.apple.private.extensionkit.extension-management"))
  {
    v14 = 0;
    v12 = [(_LSServerSettingsStore *)self setUserElection:electionCopy forExtensionKey:keyCopy error:&v14];
    v13 = v14;
    if (v12)
    {
      [(_LSServerSettingsStore *)self postSettingsChangeNotification];
    }

    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSServerSettingsStore setUserElection:forExtensionKey:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 585);
    replyCopy[2](replyCopy, v13);
  }
}

- (void)resetUserElectionsWithReply:(id)reply
{
  replyCopy = reply;
  v10 = 0u;
  v11 = 0u;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  if (_LSCheckEntitlementForAuditToken(&v10, @"com.apple.private.extensionkit.extension-management"))
  {
    v9 = 0;
    v7 = [(_LSServerSettingsStore *)self resetUserElectionsWithError:&v9];
    v8 = v9;
    if (v7)
    {
      [(_LSServerSettingsStore *)self postSettingsChangeNotification];
    }

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSServerSettingsStore resetUserElectionsWithReply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 599);
    replyCopy[2](replyCopy, v8);
  }
}

- (void)postSettingsChangeNotification
{
  SharedInstance = __LSDefaultsGetSharedInstance(self, a2);
  v3 = [SharedInstance settingsUpdateNotificationNameForUserID:geteuid()];
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _LSDatabaseCommit_cold_1();
  }

  LaunchServices::notifyd::NotifyToken::Post(v3, v5);
}

@end