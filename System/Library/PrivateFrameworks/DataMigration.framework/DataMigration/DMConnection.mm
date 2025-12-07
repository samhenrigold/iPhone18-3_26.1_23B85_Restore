@interface DMConnection
- (BOOL)isMigrationNeeded;
- (DMConnection)init;
- (id)migrationPhaseDescription;
- (id)orderedPluginIdentifiers;
- (id)previousBuildVersion;
- (id)userDataDispositionAuxiliaryData;
- (int64_t)migrateCheckingNecessity:(BOOL)necessity lastRelevantPlugin:(id)plugin testMigrationInfrastructureOnly:(BOOL)only;
- (unsigned)userDataDisposition;
- (void)cancelDeferredExit;
- (void)changeVisibility:(BOOL)visibility completion:(id)completion;
- (void)dealloc;
- (void)deferExit;
- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)disposition context:(id)context;
- (void)migrationPluginResults:(id)results;
- (void)reportMigrationFailure;
- (void)testMigrationUIWithProgress:(BOOL)progress forceInvert:(BOOL)invert;
@end

@implementation DMConnection

- (DMConnection)init
{
  v13.receiver = self;
  v13.super_class = DMConnection;
  v8 = [(DMConnection *)&v13 init];
  if (v8)
  {
    v9 = [[DMXPCConnection alloc] initWithServiceName:@"com.apple.datamigrator"];
    connection = v8->_connection;
    v8->_connection = v9;

    v11 = v8->_connection;
    if (v11)
    {
      [(DMXPCConnection *)v11 targetForegroundUserSessionIfNecessary];
      [(DMXPCConnection *)v8->_connection resume];
    }

    else
    {

      v8 = 0;
    }
  }

  _DMLogFunc(v2, 7, @"DMConnection did init %@", v3, v4, v5, v6, v7, v8);
  return v8;
}

- (void)dealloc
{
  _DMLogFunc(v7, 7, @"DMConnection will dealloc %@", v2, v3, v4, v5, v6, self);
  [(DMXPCConnection *)self->_connection invalidate];
  v9.receiver = self;
  v9.super_class = DMConnection;
  [(DMConnection *)&v9 dealloc];
}

- (BOOL)isMigrationNeeded
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 5);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    _DMLogFunc(v2, 6, @"Data migrator -isMigrationNeeded: XPC error: %s", v8, v9, v10, v11, v12, string);
    v6 = 0;
  }

  else
  {
    v6 = xpc_dictionary_get_BOOL(v5, "isMigrationNeeded");
  }

  return v6;
}

- (unsigned)userDataDisposition
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 6);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    _DMLogFunc(v2, 6, @"Data migrator -userDataDisposition: XPC error: %s", v8, v9, v10, v11, v12, string);
    uint64 = 0;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v5, "disposition");
  }

  return uint64;
}

- (id)userDataDispositionAuxiliaryData
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 13);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    _DMLogFunc(v2, 6, @"Data migrator -userDataDispositionAuxiliaryData: XPC error: %s", v27, v28, v29, v30, v31, string);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v5, "dispositionAuxiliaryData", &length);
    if (data)
    {
      v12 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
      v13 = MEMORY[0x277CCAAC8];
      v14 = MEMORY[0x277CBEB98];
      v38[0] = objc_opt_class();
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      v16 = [v14 setWithArray:v15];
      v17 = MEMORY[0x277CBEB98];
      v37[0] = objc_opt_class();
      v37[1] = objc_opt_class();
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      v19 = [v17 setWithArray:v18];
      v35 = 0;
      v20 = [v13 unarchivedDictionaryWithKeysOfClasses:v16 objectsOfClasses:v19 fromData:v12 error:&v35];
      v21 = v35;

      _DMLogFunc(v2, 6, @"Data migrator -userDataDispositionAuxiliaryData: did unarchive auxiliary data with success %d error %@", v22, v23, v24, v25, v26, v20 != 0);
      goto LABEL_7;
    }

    _DMLogFunc(v2, 6, @"Data migrator -userDataDispositionAuxiliaryData: got no auxiliary data", v7, v8, v9, v10, v11, v33);
  }

  v20 = 0;
LABEL_7:

  return v20;
}

- (id)previousBuildVersion
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 7);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    _DMLogFunc(v2, 6, @"Data migrator -userDataDisposition: XPC error: %s", v9, v10, v11, v12, v13, string);
  }

  else
  {
    v6 = xpc_dictionary_get_string(v5, "previousBuildVersion");
    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (int64_t)migrateCheckingNecessity:(BOOL)necessity lastRelevantPlugin:(id)plugin testMigrationInfrastructureOnly:(BOOL)only
{
  onlyCopy = only;
  pluginCopy = plugin;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, "msgID", 0);
  xpc_dictionary_set_BOOL(v10, "checkNecessity", necessity);
  if (pluginCopy)
  {
    xpc_dictionary_set_string(v10, "lastRelevantPlugin", [pluginCopy UTF8String]);
  }

  if (onlyCopy)
  {
    xpc_dictionary_set_BOOL(v10, "testMigrationInfrastructureOnly", 1);
  }

  v11 = [(DMXPCConnection *)self->_connection sendMessageSync:v10];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    v13 = v11 == MEMORY[0x277D863F0];
    string = xpc_dictionary_get_string(v11, *MEMORY[0x277D86400]);
    _DMLogFunc(v5, 6, @"Data migrator -migrateWithCompletion: XPC error: %s", v15, v16, v17, v18, v19, string);
    int64 = 4 * v13;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v11, "migrationResult");
  }

  return int64;
}

- (id)orderedPluginIdentifiers
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "msgID", 1);
  v4 = [(DMXPCConnection *)self->_connection sendMessageSync:v3];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    v6 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_value(v4, "results");
    if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86440])
    {
      count = xpc_array_get_count(v5);
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(v5, i)}];
          [v6 addObject:v9];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)changeVisibility:(BOOL)visibility completion:(id)completion
{
  completionCopy = completion;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, "msgID", 3);
  xpc_dictionary_set_BOOL(v7, "visible", visibility);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  connection = selfCopy->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__DMConnection_changeVisibility_completion___block_invoke;
  v10[3] = &unk_2788551C0;
  v9 = completionCopy;
  v11 = v9;
  v12 = v13;
  [(DMXPCConnection *)connection sendMessage:v7 replyHandler:v10];

  _Block_object_dispose(v13, 8);
}

void __44__DMConnection_changeVisibility_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2318EDE00](a2);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)testMigrationUIWithProgress:(BOOL)progress forceInvert:(BOOL)invert
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "msgID", 2);
  xpc_dictionary_set_BOOL(xdict, "progress", progress);
  xpc_dictionary_set_BOOL(xdict, "invert", invert);
  v7 = [(DMXPCConnection *)self->_connection sendMessageSync:xdict];
}

- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)disposition context:(id)context
{
  contextCopy = context;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "msgID", 4);
  xpc_dictionary_set_uint64(xdict, "disposition", disposition);
  v7 = objc_alloc_init(DMContextManager);
  [(DMContextManager *)v7 addContext:contextCopy toXPCDictionary:xdict];

  v8 = [(DMXPCConnection *)self->_connection sendMessageSync:xdict];
}

- (void)reportMigrationFailure
{
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v12, "msgID", 8);
  v4 = [(DMXPCConnection *)self->_connection sendMessageSync:v12];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86400]);
    v10 = @"Data migrator -reportMigrationFailure: XPC error: %s";
  }

  else
  {
    v10 = @"Data migrator -reportMigrationFailure: succeeded";
  }

  _DMLogFunc(v2, 6, v10, v5, v6, v7, v8, v9, string);
}

- (id)migrationPhaseDescription
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "msgID", 9);
  v4 = [(DMXPCConnection *)self->_connection sendMessageSync:v3];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480] || (string = xpc_dictionary_get_string(v4, "description")) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  return v6;
}

- (void)migrationPluginResults:(id)results
{
  resultsCopy = results;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "msgID", 10);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy_;
  v11[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  connection = selfCopy->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__DMConnection_migrationPluginResults___block_invoke;
  v8[3] = &unk_2788551C0;
  v7 = resultsCopy;
  v9 = v7;
  v10 = v11;
  [(DMXPCConnection *)connection sendMessage:v5 replyHandler:v8];

  _Block_object_dispose(v11, 8);
}

void __39__DMConnection_migrationPluginResults___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    if (*(a1 + 32))
    {
      _DMLogFunc(v2, 6, @"Data migrator -migrationPluginResults: got xpc error", v5, v6, v7, v8, v9, v30);
      v25 = *(a1 + 32);
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.datamigrator" code:2 userInfo:0];
      (*(v25 + 16))(v25, 0, v26);
    }
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v4, "results", &length);
    if (data)
    {
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
      v31 = 0;
      v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v31];
      v18 = v31;
      _DMLogFunc(v2, 6, @"Data migrator -migrationPluginResults: did unarchive results with success %d error %@", v19, v20, v21, v22, v23, v17 != 0);
      v24 = *(a1 + 32);
      if (v24)
      {
        (*(v24 + 16))(v24, v17, v18);
      }
    }

    else
    {
      _DMLogFunc(v2, 6, @"Data migrator -migrationPluginResults: got no results", v11, v12, v13, v14, v15, v30);
      v27 = *(a1 + 32);
      if (v27)
      {
        (*(v27 + 16))(v27, 0, 0);
      }
    }
  }

  v28 = *(*(a1 + 40) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;
}

- (void)deferExit
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 11);
  v3 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
}

- (void)cancelDeferredExit
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 12);
  v3 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
}

@end