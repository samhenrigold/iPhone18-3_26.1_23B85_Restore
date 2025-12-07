@interface AFManagedStorageConnection
- (id)_connection;
- (id)_managedStoreService;
- (id)_managedStoreServiceWithErrorHandler:(id)handler;
- (id)_synchronousManagedStoreServiceWithErrorHandler:(id)handler;
- (id)dataForKey:(id)key inKnowledgeStoreWithName:(id)name;
- (id)domainObjectForKey:(id)key;
- (void)_clearConnection;
- (void)dealloc;
- (void)resetKnowledgeStoreWithName:(id)name;
- (void)setData:(id)data forKey:(id)key inKnowledgeStoreWithName:(id)name;
- (void)setDomainObject:(id)object forKey:(id)key;
@end

@implementation AFManagedStorageConnection

- (void)resetKnowledgeStoreWithName:(id)name
{
  v11 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFManagedStorageConnection resetKnowledgeStoreWithName:]";
    v9 = 2112;
    v10 = nameCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  v6 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:&__block_literal_global_68_19768];
  [v6 resetKnowledgeStoreWithName:nameCopy completion:&__block_literal_global_71];
}

void __58__AFManagedStorageConnection_resetKnowledgeStoreWithName___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[AFManagedStorageConnection resetKnowledgeStoreWithName:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error: %@", &v4, 0x16u);
  }
}

- (void)setData:(id)data forKey:(id)key inKnowledgeStoreWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  nameCopy = name;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[AFManagedStorageConnection setData:forKey:inKnowledgeStoreWithName:]";
    v15 = 2112;
    v16 = nameCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %@", &v13, 0x16u);
  }

  v12 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:&__block_literal_global_63];
  [v12 setKnowledgeStoreData:dataCopy forKey:keyCopy inStoreWithName:nameCopy completion:&__block_literal_global_66_19772];
}

void __70__AFManagedStorageConnection_setData_forKey_inKnowledgeStoreWithName___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[AFManagedStorageConnection setData:forKey:inKnowledgeStoreWithName:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error: %@", &v4, 0x16u);
  }
}

- (id)dataForKey:(id)key inKnowledgeStoreWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  nameCopy = name;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[AFManagedStorageConnection dataForKey:inKnowledgeStoreWithName:]";
    *&buf[12] = 2112;
    *&buf[14] = nameCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__19776;
  v15 = __Block_byref_object_dispose__19777;
  v16 = 0;
  v9 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:&__block_literal_global_19778];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__AFManagedStorageConnection_dataForKey_inKnowledgeStoreWithName___block_invoke_60;
  v12[3] = &unk_1E7344EE0;
  v12[4] = buf;
  [v9 getKnowledgeStoreDataForKey:keyCopy inStoreWithName:nameCopy completion:v12];

  v10 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v10;
}

void __66__AFManagedStorageConnection_dataForKey_inKnowledgeStoreWithName___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[AFManagedStorageConnection dataForKey:inKnowledgeStoreWithName:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error: %@", &v4, 0x16u);
  }
}

- (void)setDomainObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  _managedStoreService = [(AFManagedStorageConnection *)self _managedStoreService];
  [_managedStoreService setManagedStoreObject:objectCopy forKey:keyCopy];
}

- (id)domainObjectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19776;
  v16 = __Block_byref_object_dispose__19777;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__AFManagedStorageConnection_domainObjectForKey___block_invoke;
  v10[3] = &unk_1E73493C0;
  v5 = keyCopy;
  v11 = v5;
  v6 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__AFManagedStorageConnection_domainObjectForKey___block_invoke_58;
  v9[3] = &unk_1E7344EB8;
  v9[4] = &v12;
  [v6 fetchManagedStoreObjectForKey:v5 reply:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__AFManagedStorageConnection_domainObjectForKey___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[AFManagedStorageConnection domainObjectForKey:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Could not get domain objects for %@: %{public}@", &v6, 0x20u);
  }
}

- (id)_synchronousManagedStoreServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(AFManagedStorageConnection *)self _connection];
  v6 = [_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_managedStoreServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(AFManagedStorageConnection *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_managedStoreService
{
  _connection = [(AFManagedStorageConnection *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistantd.managedstorage" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    objc_initWeak(&location, self);
    v6 = self->_connection;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __41__AFManagedStorageConnection__connection__block_invoke;
    v13 = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:&v10];
    v7 = self->_connection;
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F05BEE40, v10, v11, v12, v13}];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __41__AFManagedStorageConnection__connection__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AFManagedStorageConnection__connection__block_invoke_2;
  block[3] = &unk_1E7348A80;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __41__AFManagedStorageConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  connection = self->_connection;
  if (connection)
  {
    v4 = connection;
    v5 = self->_connection;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__AFManagedStorageConnection__clearConnection__block_invoke;
    v8[3] = &unk_1E73497C8;
    v9 = v4;
    v6 = v4;
    [(NSXPCConnection *)v5 addBarrierBlock:v8];
    v7 = self->_connection;
    self->_connection = 0;
  }
}

- (void)dealloc
{
  [(AFManagedStorageConnection *)self _clearConnection];
  v3.receiver = self;
  v3.super_class = AFManagedStorageConnection;
  [(AFManagedStorageConnection *)&v3 dealloc];
}

@end