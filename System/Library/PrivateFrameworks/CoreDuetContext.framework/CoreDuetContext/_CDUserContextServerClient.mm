@interface _CDUserContextServerClient
+ (id)clientInterface;
+ (id)clientOfService:(id)service withConnection:(id)connection andContext:(id)context;
+ (id)serverInterface;
- (BOOL)isMDCSNeededForKeyPath:(id)path;
- (BOOL)isMDCSNeededForKeyPathInKeyPaths:(id)paths;
- (id)deviceIDsForDeviceTypes:(unint64_t)types;
- (id)deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:(id)ds;
- (id)initForService:(id)service withConnection:(id)connection andContext:(id)context;
- (id)keyPathsSortedByDeviceID:(id)d;
- (id)remoteDeviceIDs;
- (id)remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)d;
- (id)remoteDevices;
- (id)remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)d;
- (id)remoteUserContextProxySourceDeviceUUIDByDeviceID;
- (id)remoteUserContextProxySourceDeviceUUIDForKeyPath:(id)path;
- (void)_hasKnowledgeOfPath:(id)path handler:(id)handler;
- (void)_propertiesOfPath:(id)path handler:(id)handler;
- (void)_propertiesOfRemotePath:(id)path handler:(id)handler;
- (void)_valueForPath:(id)path handler:(id)handler;
- (void)_valueForRemotePath:(id)path handler:(id)handler;
- (void)_valuesForPaths:(id)paths handler:(id)handler;
- (void)activateDevices:(id)devices remoteUserContextProxySourceDeviceUUID:(id)d;
- (void)addObjects:(id)objects andRemoveObjects:(id)removeObjects forArrayAtPath:(id)path handler:(id)handler;
- (void)addObjects:(id)objects toArrayAtPath:(id)path handler:(id)handler;
- (void)deactivateDevices:(id)devices remoteUserContextProxySourceDeviceUUID:(id)d;
- (void)dealloc;
- (void)deregisterAllCallbacks:(BOOL)callbacks;
- (void)deregisterCallback:(id)callback;
- (void)evaluatePredicate:(id)predicate handler:(id)handler;
- (void)fetchPropertiesOfRemoteKeyPaths:(id)paths handler:(id)handler;
- (void)fetchPropertiesOfRemoteKeyPaths:(id)paths remoteUserContextProxySourceDeviceUUID:(id)d handler:(id)handler;
- (void)handlePreviouslyFiredRegistration:(id)registration info:(id)info;
- (void)hasKnowledgeOfPath:(id)path handler:(id)handler;
- (void)performRegistrationCallbackWithRegistration:(id)registration info:(id)info;
- (void)propertiesOfPath:(id)path handler:(id)handler;
- (void)propertiesOfRemotePath:(id)path handler:(id)handler;
- (void)proxyTokenDidUpdate;
- (void)registerCallback:(id)callback;
- (void)removeObjects:(id)objects fromArrayAtPath:(id)path handler:(id)handler;
- (void)removeObjectsMatchingPredicate:(id)predicate fromArrayAtPath:(id)path handler:(id)handler;
- (void)setObject:(id)object forPath:(id)path handler:(id)handler;
- (void)setObject:(id)object lastModifiedDate:(id)date forContextualKeyPath:(id)path handler:(id)handler;
- (void)subscribeToContextValueNotificationsWithRegistration:(id)registration deviceIDs:(id)ds;
- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)types;
- (void)unsubscribeFromContextValueNotificationsWithRegistration:(id)registration deviceIDs:(id)ds;
- (void)valuesForPaths:(id)paths handler:(id)handler;
- (void)valuesForPaths:(id)paths inContextsMatching:(id)matching handler:(id)handler;
@end

@implementation _CDUserContextServerClient

+ (id)serverInterface
{
  if (serverInterface_onceToken_0 != -1)
  {
    +[_CDUserContextServerClient serverInterface];
  }

  v3 = serverInterface_serverInterface_0;

  return v3;
}

+ (id)clientInterface
{
  if (clientInterface_onceToken_0 != -1)
  {
    +[_CDUserContextServerClient clientInterface];
  }

  v3 = clientInterface_clientInterface_0;

  return v3;
}

- (id)initForService:(id)service withConnection:(id)connection andContext:(id)context
{
  serviceCopy = service;
  connectionCopy = connection;
  contextCopy = context;
  v43.receiver = self;
  v43.super_class = _CDUserContextServerClient;
  v12 = [(_CDUserContextServerClient *)&v43 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(&v13->_userContext, context);
    v14 = _CDProcessNameForXPCConnection();
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contextstored.client.queue [%@]", v14];
    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    queue = v13->_queue;
    v13->_queue = v18;

    v20 = [MEMORY[0x1E695DFA8] set];
    wakingRegistrations = v13->_wakingRegistrations;
    v13->_wakingRegistrations = v20;

    v22 = [MEMORY[0x1E695DFA8] set];
    nonWakingRegistration = v13->_nonWakingRegistration;
    v13->_nonWakingRegistration = v22;

    objc_storeStrong(&v13->_clientConnection, connection);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contextstored.client.activateMonitorQueue [%@]", v14];
    uTF8String2 = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(uTF8String2, v26);
    activateMonitorQueue = v13->_activateMonitorQueue;
    v13->_activateMonitorQueue = v27;

    clientInterface = [objc_opt_class() clientInterface];
    [(NSXPCConnection *)v13->_clientConnection setRemoteObjectInterface:clientInterface];

    serverInterface = [objc_opt_class() serverInterface];
    [(NSXPCConnection *)v13->_clientConnection setExportedInterface:serverInterface];

    [(NSXPCConnection *)v13->_clientConnection setExportedObject:v13];
    objc_initWeak(&location, serviceCopy);
    objc_initWeak(&from, v13);
    clientConnection = v13->_clientConnection;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __71___CDUserContextServerClient_initForService_withConnection_andContext___block_invoke;
    v38[3] = &unk_1E7886BA0;
    objc_copyWeak(&v39, &location);
    objc_copyWeak(&v40, &from);
    [(NSXPCConnection *)clientConnection setInterruptionHandler:v38];
    v32 = v13->_clientConnection;
    interruptionHandler = [(NSXPCConnection *)v32 interruptionHandler];
    [(NSXPCConnection *)v32 setInvalidationHandler:interruptionHandler];

    [(NSXPCConnection *)v13->_clientConnection resume];
    v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    devicesToActivateByRemoteUserContextProxySourceDeviceUUID = v13->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID;
    v13->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID = v34;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_proxyTokenDidUpdate name:@"_CDMDCSProxyTokenUpdated" object:0];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_CDMDCSProxyTokenUpdated" object:0];

  [(NSXPCConnection *)self->_clientConnection invalidate];
  v4.receiver = self;
  v4.super_class = _CDUserContextServerClient;
  [(_CDUserContextServerClient *)&v4 dealloc];
}

+ (id)clientOfService:(id)service withConnection:(id)connection andContext:(id)context
{
  contextCopy = context;
  connectionCopy = connection;
  serviceCopy = service;
  v10 = [objc_alloc(objc_opt_class()) initForService:serviceCopy withConnection:connectionCopy andContext:contextCopy];

  return v10;
}

- (void)hasKnowledgeOfPath:(id)path handler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:pathCopy])
  {
    [(_CDUserContextServerClient *)self _hasKnowledgeOfPath:pathCopy handler:handlerCopy];
  }

  else
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = pathCopy;
      _os_log_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57___CDUserContextServerClient_hasKnowledgeOfPath_handler___block_invoke;
    v10[3] = &unk_1E7886BC8;
    v10[4] = self;
    v11 = pathCopy;
    v12 = handlerCopy;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v10];
  }
}

- (void)_hasKnowledgeOfPath:(id)path handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v8 = pathCopy;
  v6 = handlerCopy;
  v7 = pathCopy;
  cd_dispatch_async_xpc();
}

- (void)propertiesOfPath:(id)path handler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:pathCopy])
  {
    [(_CDUserContextServerClient *)self _propertiesOfPath:pathCopy handler:handlerCopy];
  }

  else
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = pathCopy;
      _os_log_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55___CDUserContextServerClient_propertiesOfPath_handler___block_invoke;
    v10[3] = &unk_1E7886BC8;
    v10[4] = self;
    v11 = pathCopy;
    v12 = handlerCopy;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v10];
  }
}

- (void)_propertiesOfPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___CDUserContextServerClient__propertiesOfPath_handler___block_invoke;
  v8[3] = &unk_1E7886BF0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(_CDUserContextServerClient *)self _valueForPath:path handler:v8];
}

- (void)_valueForPath:(id)path handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = pathCopy;
  cd_dispatch_async_xpc();
}

- (void)propertiesOfRemotePath:(id)path handler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:pathCopy])
  {
    [(_CDUserContextServerClient *)self _propertiesOfRemotePath:pathCopy handler:handlerCopy];
  }

  else
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = pathCopy;
      _os_log_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61___CDUserContextServerClient_propertiesOfRemotePath_handler___block_invoke;
    v10[3] = &unk_1E7886BC8;
    v10[4] = self;
    v11 = pathCopy;
    v12 = handlerCopy;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v10];
  }
}

- (void)_propertiesOfRemotePath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___CDUserContextServerClient__propertiesOfRemotePath_handler___block_invoke;
  v8[3] = &unk_1E7886BF0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(_CDUserContextServerClient *)self _valueForRemotePath:path handler:v8];
}

- (void)_valueForRemotePath:(id)path handler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  if ([pathCopy isMultiDeviceKeyPath])
  {
    v8 = [(_CDInMemoryUserContext *)self->_userContext propertiesForContextualKeyPath:pathCopy];
    if (v8)
    {
      v9 = v8;
      lastModifiedDate = [v8 lastModifiedDate];
      [lastModifiedDate timeIntervalSinceNow];
      v12 = v11;

      if (v12 > -0.2)
      {
        mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
        if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
        {
          [_CDUserContextServerClient _valueForRemotePath:pathCopy handler:v9];
        }

        handlerCopy[2](handlerCopy, v9);
        goto LABEL_12;
      }
    }

    v18[0] = pathCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke;
    v15[3] = &unk_1E7886C40;
    v15[4] = self;
    v16 = pathCopy;
    v17 = handlerCopy;
    [(_CDUserContextServerClient *)self fetchPropertiesOfRemoteKeyPaths:v9 handler:v15];

LABEL_12:
    goto LABEL_13;
  }

  mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient _valueForRemotePath:handler:];
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_13:
}

- (void)handlePreviouslyFiredRegistration:(id)registration info:(id)info
{
  registrationCopy = registration;
  infoCopy = info;
  v8 = os_transaction_create();
  qualityOfService = [registrationCopy qualityOfService];
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke;
  v15[3] = &unk_1E7886618;
  v16 = registrationCopy;
  selfCopy = self;
  v18 = infoCopy;
  v19 = v8;
  v11 = v8;
  v12 = infoCopy;
  v13 = registrationCopy;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qualityOfService, 0, v15);
  dispatch_async(queue, v14);
}

- (void)registerCallback:(id)callback
{
  v34 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  isMultiDeviceRegistration = [callbackCopy isMultiDeviceRegistration];
  if (isMultiDeviceRegistration)
  {
    v6 = ![(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations];
  }

  else
  {
    v6 = 1;
  }

  objc_initWeak(&location, callbackCopy);
  [(_CDUserContextService *)self->_service removeOpenRegistration:callbackCopy];
  service = self->_service;
  v27 = 0;
  v8 = [(_CDUserContextService *)service obtainFiredRegistrationMatchingRegistration:callbackCopy info:&v27];
  v9 = v27;
  if (v8)
  {
    [(_CDUserContextServerClient *)self handlePreviouslyFiredRegistration:callbackCopy info:v9];
  }

  else
  {
    if ([callbackCopy mustWake])
    {
      v10 = self->_wakingRegistrations;
      objc_sync_enter(v10);
      [(NSMutableSet *)self->_wakingRegistrations addObject:callbackCopy];
    }

    else
    {
      v10 = self->_nonWakingRegistration;
      objc_sync_enter(v10);
      [(NSMutableSet *)self->_nonWakingRegistration addObject:callbackCopy];
    }

    objc_sync_exit(v10);

    objc_initWeak(&from, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47___CDUserContextServerClient_registerCallback___block_invoke;
    v23[3] = &unk_1E7886CD8;
    objc_copyWeak(&v24, &from);
    objc_copyWeak(&v25, &location);
    [callbackCopy setInformativeCallback:v23];
    activateMonitorQueue = self->_activateMonitorQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47___CDUserContextServerClient_registerCallback___block_invoke_2;
    v20[3] = &unk_1E7886250;
    v12 = callbackCopy;
    v21 = v12;
    selfCopy = self;
    v13 = v20;
    v14 = activateMonitorQueue;
    v15 = os_transaction_create();
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v30 = __cd_dispatch_async_capture_tx_block_invoke_0;
    v31 = &unk_1E7886668;
    v32 = v15;
    v33 = v13;
    v16 = v15;
    dispatch_async(v14, &block);

    if (isMultiDeviceRegistration)
    {
      mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
      {
        [_CDUserContextServerClient registerCallback:];
      }

      if (v6)
      {
        [(_CDUserContextServerClient *)self subscribeToDeviceStatusChangeNotificationsForDeviceTypes:0xFFFFLL];
      }

      v18 = -[_CDUserContextServerClient deviceIDsForDeviceTypes:](self, "deviceIDsForDeviceTypes:", [v12 deviceTypes]);
      [(_CDUserContextServerClient *)self subscribeToContextValueNotificationsWithRegistration:v12 deviceIDs:v18];
      if (![(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated])
      {
        mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
        if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(block) = 138412290;
          *(&block + 4) = v12;
          _os_log_impl(&dword_1A9611000, mdcsChannel2, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", &block, 0xCu);
        }

        [(_CDUserContextService *)self->_service requestActivateDevicesFromAllSubscribersWithHandler:&__block_literal_global_136];
      }
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&location);
}

- (void)performRegistrationCallbackWithRegistration:(id)registration info:(id)info
{
  registrationCopy = registration;
  infoCopy = info;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___CDUserContextServerClient_performRegistrationCallbackWithRegistration_info___block_invoke;
  block[3] = &unk_1E7886228;
  v12 = registrationCopy;
  selfCopy = self;
  v14 = infoCopy;
  v9 = infoCopy;
  v10 = registrationCopy;
  dispatch_sync(queue, block);
}

- (void)deregisterAllCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  v25 = *MEMORY[0x1E69E9840];
  hasMultiDeviceRegistrations = [(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations];
  v6 = 56;
  if (callbacksCopy)
  {
    v6 = 48;
  }

  v7 = *(&self->super.isa + v6);
  objc_sync_enter(v7);
  v8 = [v7 copy];
  [v7 removeAllObjects];
  objc_sync_exit(v7);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = *v19;
    v12 = !hasMultiDeviceRegistrations;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        persistence = [(_CDUserContextService *)self->_service persistence];
        [persistence deleteRegistration:v14];

        [(_CDInMemoryUserContext *)self->_userContext deregisterCallback:v14];
        if ([v14 isMultiDeviceRegistration])
        {
          mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = v14;
            _os_log_debug_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEBUG, "Deregistering multi-device callback: %@", buf, 0xCu);
          }

          if (((v12 | [(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations]) & 1) == 0)
          {
            [(_CDUserContextServerClient *)self subscribeToDeviceStatusChangeNotificationsForDeviceTypes:0];
          }

          v17 = -[_CDUserContextServerClient deviceIDsForDeviceTypes:](self, "deviceIDsForDeviceTypes:", [v14 deviceTypes]);
          if ([v17 count])
          {
            [(_CDUserContextServerClient *)self unsubscribeFromContextValueNotificationsWithRegistration:v14 deviceIDs:v17];
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)deregisterCallback:(id)callback
{
  callbackCopy = callback;
  if ([callbackCopy isMultiDeviceRegistration])
  {
    v5 = ![(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations];
  }

  else
  {
    v5 = 1;
  }

  mustWake = [callbackCopy mustWake];
  v7 = 56;
  if (mustWake)
  {
    v7 = 48;
  }

  v8 = *(&self->super.isa + v7);
  objc_sync_enter(v8);
  [v8 removeObject:callbackCopy];
  persistence = [(_CDUserContextService *)self->_service persistence];
  [persistence deleteRegistration:callbackCopy];

  [(_CDInMemoryUserContext *)self->_userContext deregisterCallback:callbackCopy];
  objc_sync_exit(v8);

  if ([callbackCopy isMultiDeviceRegistration])
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
    {
      [_CDUserContextServerClient deregisterCallback:];
    }

    if (((v5 | [(_CDInMemoryUserContext *)self->_userContext hasMultiDeviceRegistrations]) & 1) == 0)
    {
      [(_CDUserContextServerClient *)self subscribeToDeviceStatusChangeNotificationsForDeviceTypes:0];
      v11 = -[_CDUserContextServerClient deviceIDsForDeviceTypes:](self, "deviceIDsForDeviceTypes:", [callbackCopy deviceTypes]);
      if ([v11 count])
      {
        [(_CDUserContextServerClient *)self unsubscribeFromContextValueNotificationsWithRegistration:callbackCopy deviceIDs:v11];
      }
    }
  }
}

- (void)evaluatePredicate:(id)predicate handler:(id)handler
{
  userContext = self->_userContext;
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [(_CDInMemoryUserContext *)userContext evaluatePredicate:predicate]);
}

- (void)setObject:(id)object lastModifiedDate:(id)date forContextualKeyPath:(id)path handler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  dateCopy = date;
  pathCopy = path;
  handlerCopy = handler;
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    v18 = _CDRedactedObjectForKeyPath(pathCopy, objectCopy);
    v19 = 138412802;
    v20 = pathCopy;
    v21 = 2112;
    v22 = v18;
    v23 = 2112;
    v24 = dateCopy;
    _os_log_debug_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEBUG, "CDUserContext: SET %@ => %@ / %@", &v19, 0x20u);
  }

  v15 = [(_CDInMemoryUserContext *)self->_userContext setObject:objectCopy returningMetadataForContextualKeyPath:pathCopy];
  v16 = v15;
  if (v15)
  {
    if (dateCopy)
    {
      [v15 setLastModifiedDate:dateCopy];
    }

    persistence = [(_CDUserContextService *)self->_service persistence];
    [persistence saveValue:v16 forKeyPath:pathCopy];
  }

  handlerCopy[2](handlerCopy, v16 != 0);
}

- (void)proxyTokenDidUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID copy];
  objc_sync_exit(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v11}];
        [(_CDUserContextServerClient *)self activateDevices:v10 remoteUserContextProxySourceDeviceUUID:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)activateDevices:(id)devices remoteUserContextProxySourceDeviceUUID:(id)d
{
  v49 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  dCopy = d;
  effectiveUserIdentifier = [(NSXPCConnection *)self->_clientConnection effectiveUserIdentifier];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v6 = self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID;
  objc_sync_enter(v6);
  v7 = [_CDContextQueries keyPathForMDCSProxyTokenWithUserID:v33];
  v8 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
    {
      uUIDString = [dCopy UUIDString];
      -[_CDUserContextServerClient activateDevices:remoteUserContextProxySourceDeviceUUID:].cold.1(uUIDString, [devicesCopy count], v48, mdcsChannel);
    }

    v9 = devicesCopy;
  }

  [(NSMutableDictionary *)self->_devicesToActivateByRemoteUserContextProxySourceDeviceUUID setObject:v9 forKeyedSubscript:dCopy];

  objc_sync_exit(v6);
  if (v8)
  {
    mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
    v13 = os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_DEBUG);

    if (v13)
    {
      mdcsChannel3 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel3, OS_LOG_TYPE_DEBUG))
      {
        [_CDUserContextServerClient activateDevices:devicesCopy remoteUserContextProxySourceDeviceUUID:?];
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = devicesCopy;
      v16 = [v15 countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v16)
      {
        v17 = *v41;
        do
        {
          v18 = 0;
          do
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v40 + 1) + 8 * v18);
            mdcsChannel4 = [MEMORY[0x1E6997908] mdcsChannel];
            if (os_log_type_enabled(mdcsChannel4, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v46 = v19;
              _os_log_debug_impl(&dword_1A9611000, mdcsChannel4, OS_LOG_TYPE_DEBUG, "Activating device %{public}@", buf, 0xCu);
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v40 objects:v47 count:16];
        }

        while (v16);
      }
    }

    remoteDevicesByDeviceID = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
    objc_sync_enter(remoteDevicesByDeviceID);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = devicesCopy;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v23)
    {
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v36 + 1) + 8 * i);
          remoteDevicesByDeviceID2 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
          deviceID = [v26 deviceID];
          [remoteDevicesByDeviceID2 setObject:v26 forKeyedSubscript:deviceID];
        }

        v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    [(_CDUserContextService *)self->_service setRemoteDevicesHaveBeenActivated:1];
    objc_sync_exit(remoteDevicesByDeviceID);

    v29 = [(_CDUserContextService *)self->_service proxySourceDeviceUUIDForUserID:effectiveUserIdentifier];
    v30 = v29 == 0;

    if (v30)
    {
      mdcsChannel5 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel5, OS_LOG_TYPE_DEBUG))
      {
        [_CDUserContextServerClient activateDevices:dCopy remoteUserContextProxySourceDeviceUUID:?];
      }

      [(_CDUserContextService *)self->_service setProxySourceDeviceUUID:dCopy forUserID:effectiveUserIdentifier];
    }

    [(_CDInMemoryUserContext *)self->_userContext activateDevices:v22 remoteUserContextProxySourceDeviceUUID:dCopy];
  }
}

- (void)deactivateDevices:(id)devices remoteUserContextProxySourceDeviceUUID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  dCopy = d;
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  v9 = os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v18 = dCopy;
    selfCopy = self;
    mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_DEBUG))
    {
      [_CDUserContextServerClient deactivateDevices:devicesCopy remoteUserContextProxySourceDeviceUUID:?];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = devicesCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          mdcsChannel3 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel3, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v25 = v16;
            _os_log_debug_impl(&dword_1A9611000, mdcsChannel3, OS_LOG_TYPE_DEBUG, "Deactivating device %{public}@", buf, 0xCu);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v13);
    }

    dCopy = v18;
    self = selfCopy;
  }

  [(_CDInMemoryUserContext *)self->_userContext deactivateDevices:devicesCopy remoteUserContextProxySourceDeviceUUID:dCopy];
}

- (void)fetchPropertiesOfRemoteKeyPaths:(id)paths handler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  handlerCopy = handler;
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient fetchPropertiesOfRemoteKeyPaths:handler:];
  }

  v9 = [(_CDUserContextServerClient *)self keyPathsSortedByDeviceID:pathsCopy];
  if (![v9 count])
  {
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_20;
  }

  v26 = handlerCopy;
  v24 = pathsCopy;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v25 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v9;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = *v34;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v34 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v33 + 1) + 8 * i);
      v17 = [v11 objectForKeyedSubscript:{v16, v23}];
      firstObject = [v17 firstObject];
      v19 = [(_CDUserContextServerClient *)self remoteUserContextProxySourceDeviceUUIDForKeyPath:firstObject];

      if (v19)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __70___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_handler___block_invoke;
        v27[3] = &unk_1E7886D00;
        v28 = v25;
        v29 = v10;
        v30 = v16;
        v31 = v11;
        v32 = v26;
        [(_CDUserContextServerClient *)self fetchPropertiesOfRemoteKeyPaths:v17 remoteUserContextProxySourceDeviceUUID:v19 handler:v27];

        anyObject = v28;
LABEL_15:

        goto LABEL_16;
      }

      mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v16;
        _os_log_debug_impl(&dword_1A9611000, mdcsChannel2, OS_LOG_TYPE_DEBUG, "CDUserContext: Unknown device specified: %@", buf, 0xCu);
      }

      [v10 addObject:v16];
      v22 = [v10 count];
      if (v22 == [v11 count])
      {
        anyObject = [v25 anyObject];
        (v26)[2](v26, anyObject);
        goto LABEL_15;
      }

LABEL_16:
    }

    v13 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
  }

  while (v13);
LABEL_18:

  v9 = v23;
  pathsCopy = v24;
  handlerCopy = v26;
LABEL_20:
}

- (void)fetchPropertiesOfRemoteKeyPaths:(id)paths remoteUserContextProxySourceDeviceUUID:(id)d handler:(id)handler
{
  pathsCopy = paths;
  dCopy = d;
  handlerCopy = handler;
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:];
  }

  v19 = 0;
  v12 = [_CDXPCContextCodecs fetchPropertiesEventWithRemoteKeyPaths:pathsCopy error:&v19];
  v13 = v19;
  if (v12)
  {
    service = self->_service;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __109___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_remoteUserContextProxySourceDeviceUUID_handler___block_invoke;
    v16[3] = &unk_1E7886D28;
    v17 = pathsCopy;
    v18 = handlerCopy;
    [(_CDUserContextService *)service sendEvent:v12 toProxy:dCopy replyHandler:v16];
  }

  else
  {
    mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:];
    }

    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

- (void)subscribeToContextValueNotificationsWithRegistration:(id)registration deviceIDs:(id)ds
{
  v37 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  dsCopy = ds;
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient subscribeToContextValueNotificationsWithRegistration:deviceIDs:];
  }

  selfCopy = self;
  v8 = [(_CDUserContextServerClient *)self deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:dsCopy];
  v24 = dsCopy;
  v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:v15];
        v31 = 0;
        v17 = [_CDXPCContextCodecs subscribeToContextValueNotificationsEventWithRegistration:registrationCopy deviceIDs:v16 error:&v31];
        v18 = v31;
        if (v17)
        {
          service = selfCopy->_service;
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __93___CDUserContextServerClient_subscribeToContextValueNotificationsWithRegistration_deviceIDs___block_invoke;
          v29[3] = &unk_1E7886D50;
          v30 = v16;
          [(_CDUserContextService *)service sendEvent:v17 toProxy:v15 replyHandler:v29];
          mdcsChannel2 = v30;
        }

        else
        {
          mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_ERROR))
          {
            [(_CDUserContextServerClient *)&v27 subscribeToContextValueNotificationsWithRegistration:v28 deviceIDs:mdcsChannel2];
          }
        }

        [v9 addObjectsFromArray:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v21 = [v9 count];
  if (v21 != [v24 count])
  {
    v22 = [v24 mutableCopy];
    [v22 minusSet:v9];
    mdcsChannel3 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel3, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient subscribeToContextValueNotificationsWithRegistration:deviceIDs:];
    }
  }
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:(id)registration deviceIDs:(id)ds
{
  v42 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  dsCopy = ds;
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:];
  }

  selfCopy = self;
  v9 = [(_CDUserContextServerClient *)self deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:dsCopy];
  v27 = dsCopy;
  v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v29 = v11;
  if (v12)
  {
    v13 = v12;
    v30 = *v38;
    v14 = registrationCopy;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:v16];
        v36 = 0;
        [_CDXPCContextCodecs unsubscribeFromContextValueNotificationsEventWithRegistration:registrationCopy deviceIDs:v17 error:&v36];
        v19 = v18 = registrationCopy;
        v20 = v36;
        if (v19)
        {
          service = selfCopy->_service;
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __97___CDUserContextServerClient_unsubscribeFromContextValueNotificationsWithRegistration_deviceIDs___block_invoke;
          v33[3] = &unk_1E7886D78;
          v34 = v17;
          v35 = v18;
          v22 = service;
          v11 = v29;
          [(_CDUserContextService *)v22 sendEvent:v19 toProxy:v16 replyHandler:v33];

          mdcsChannel2 = v34;
        }

        else
        {
          mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_ERROR))
          {
            [(_CDUserContextServerClient *)&v31 unsubscribeFromContextValueNotificationsWithRegistration:v32 deviceIDs:mdcsChannel2];
          }
        }

        [v10 addObjectsFromArray:v17];
        registrationCopy = v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v13);
  }

  v24 = [v10 count];
  if (v24 != [v27 count])
  {
    v25 = [v27 mutableCopy];
    [v25 minusSet:v10];
    mdcsChannel3 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel3, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:];
    }
  }
}

- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:(unint64_t)types
{
  v22 = *MEMORY[0x1E69E9840];
  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient subscribeToDeviceStatusChangeNotificationsForDeviceTypes:];
  }

  v20 = 0;
  v6 = [(_CDXPCCodecs *)_CDXPCContextCodecs keepAliveEventWithKeepAlive:types != 0 error:&v20];
  v7 = v20;
  if (v6)
  {
    mdcsChannel2 = +[_CDContextQueries keyPathForMDCSProxies];
    v9 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:mdcsChannel2];
    v10 = [v9 copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(_CDUserContextService *)self->_service sendEvent:v6 toProxy:*(*(&v16 + 1) + 8 * v15++) replyHandler:&__block_literal_global_146_0, v16];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else
  {
    mdcsChannel2 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel2, OS_LOG_TYPE_ERROR))
    {
      [_CDUserContextServerClient subscribeToDeviceStatusChangeNotificationsForDeviceTypes:];
    }
  }
}

- (id)remoteUserContextProxySourceDeviceUUIDForKeyPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  deviceID = [path deviceID];
  if (deviceID)
  {
    v5 = +[_CDContextQueries keyPathForMDCSProxies];
    v6 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v5];
    v7 = [v6 copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
LABEL_4:
      v13 = 0;
      v14 = v11;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v18 + 1) + 8 * v13);

        v15 = [(_CDUserContextServerClient *)self remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v11, v18];
        v16 = [v15 containsObject:deviceID];

        if (v16)
        {
          break;
        }

        ++v13;
        v14 = v11;
        if (v10 == v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)remoteDevices
{
  remoteDevicesByDeviceID = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  objc_sync_enter(remoteDevicesByDeviceID);
  remoteDevicesByDeviceID2 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  allValues = [remoteDevicesByDeviceID2 allValues];

  objc_sync_exit(remoteDevicesByDeviceID);

  return allValues;
}

- (id)remoteDeviceIDs
{
  remoteDevicesByDeviceID = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  objc_sync_enter(remoteDevicesByDeviceID);
  remoteDevicesByDeviceID2 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  allKeys = [remoteDevicesByDeviceID2 allKeys];

  objc_sync_exit(remoteDevicesByDeviceID);

  return allKeys;
}

- (id)remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  remoteDevicesByDeviceID = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  objc_sync_enter(remoteDevicesByDeviceID);
  v6 = MEMORY[0x1E695DF70];
  remoteDevicesByDeviceID2 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(remoteDevicesByDeviceID2, "count")}];

  [(_CDUserContextServerClient *)self remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:dCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        remoteDevicesByDeviceID3 = [(_CDUserContextService *)self->_service remoteDevicesByDeviceID];
        v15 = [remoteDevicesByDeviceID3 objectForKeyedSubscript:v13];

        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v8 copy];
  objc_sync_exit(remoteDevicesByDeviceID);

  return v16;
}

- (id)remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)d
{
  v4 = [_CDContextQueries keyPathForMDCSDeviceIDsWithProxySourceDeviceUUID:d];
  v5 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (id)deviceIDsForDeviceTypes:(unint64_t)types
{
  v31 = *MEMORY[0x1E69E9840];
  remoteDevices = [(_CDUserContextServerClient *)self remoteDevices];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(remoteDevices, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = remoteDevices;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 matchesDeviceTypes:{types, v18}])
        {
          deviceID = [v11 deviceID];
          [v5 addObject:deviceID];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v8);
  }

  mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v5 count];
    v16 = [v6 count];
    v17 = _CDPrettyPrintCollection();
    *buf = 67109890;
    v23 = v15;
    v24 = 1024;
    v25 = v16;
    v26 = 1024;
    typesCopy = types;
    v28 = 2114;
    v29 = v17;
    _os_log_debug_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEBUG, "Found %d out of %d device IDs for device types %X: %{public}@", buf, 0x1Eu);
  }

  return v5;
}

- (id)keyPathsSortedByDeviceID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        deviceID = [v10 deviceID];
        if (deviceID)
        {
          v12 = [v4 objectForKeyedSubscript:deviceID];
          if (!v12)
          {
            v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
            [v4 setObject:v12 forKeyedSubscript:deviceID];
          }

          [v12 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)remoteUserContextProxySourceDeviceUUIDByDeviceID
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v17 = +[_CDContextQueries keyPathForMDCSProxies];
  v4 = [(_CDInMemoryUserContext *)self->_userContext objectForKeyedSubscript:?];
  v5 = [v4 copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(_CDUserContextServerClient *)self remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v10];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v3 setObject:v10 forKeyedSubscript:*(*(&v19 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)deviceIDsSortedByRemoteUserContextProxySourceDeviceUUIDFromDeviceIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  remoteUserContextProxySourceDeviceUUIDByDeviceID = [(_CDUserContextServerClient *)self remoteUserContextProxySourceDeviceUUIDByDeviceID];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    *&v9 = 138543362;
    v17 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [remoteUserContextProxySourceDeviceUUIDByDeviceID objectForKeyedSubscript:{v13, v17, v18}];
        if (v14)
        {
          mdcsChannel = [v5 objectForKeyedSubscript:v14];
          if (!mdcsChannel)
          {
            mdcsChannel = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
            [v5 setObject:mdcsChannel forKeyedSubscript:v14];
          }

          [mdcsChannel addObject:v13];
        }

        else
        {
          mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = v13;
            _os_log_error_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_ERROR, "Unknown device id: %{public}@", buf, 0xCu);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isMDCSNeededForKeyPath:(id)path
{
  pathCopy = path;
  if ([_CDContextQueries isMDCSKeyPath:pathCopy])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = +[_CDDevice localDevice];
    deviceID = [v5 deviceID];
    deviceID2 = [pathCopy deviceID];
    v4 = [deviceID isEqualToString:deviceID2] ^ 1;
  }

  return v4;
}

- (BOOL)isMDCSNeededForKeyPathInKeyPaths:(id)paths
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pathsCopy = paths;
  v5 = [pathsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(pathsCopy);
        }

        if ([(_CDUserContextServerClient *)self isMDCSNeededForKeyPath:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [pathsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)setObject:(id)object forPath:(id)path handler:(id)handler
{
  objectCopy = object;
  pathCopy = path;
  handlerCopy = handler;
  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
  {
    [_CDUserContextServerClient setObject:pathCopy forPath:objectCopy handler:?];
  }

  v12 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  if ([pathCopy isEqual:v12])
  {
    _shouldUpdateWebUsageForCurrentUser = [(_CDUserContextServerClient *)self _shouldUpdateWebUsageForCurrentUser];

    if (!_shouldUpdateWebUsageForCurrentUser)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = [(_CDInMemoryUserContext *)self->_userContext setObject:objectCopy returningMetadataForContextualKeyPath:pathCopy];
  if (v14)
  {
    persistence = [(_CDUserContextService *)self->_service persistence];
    [persistence saveValue:v14 forKeyPath:pathCopy];
  }

  handlerCopy[2](handlerCopy, v14 != 0);

LABEL_10:
}

- (void)addObjects:(id)objects andRemoveObjects:(id)removeObjects forArrayAtPath:(id)path handler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  removeObjectsCopy = removeObjects;
  pathCopy = path;
  handlerCopy = handler;
  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEFAULT))
  {
    v15 = _CDRedactedObjectForKeyPath(pathCopy, objectsCopy);
    v16 = _CDRedactedObjectForKeyPath(pathCopy, removeObjectsCopy);
    v23 = 138412802;
    v24 = pathCopy;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_DEFAULT, "CDUserContext: %@ => ADD %@, REMOVE %@", &v23, 0x20u);
  }

  v17 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  v18 = [pathCopy isEqual:v17];
  if (objectsCopy && v18)
  {
    _shouldUpdateWebUsageForCurrentUser = [(_CDUserContextServerClient *)self _shouldUpdateWebUsageForCurrentUser];

    if (!_shouldUpdateWebUsageForCurrentUser)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  LOBYTE(v23) = 0;
  v20 = [(_CDInMemoryUserContext *)self->_userContext addObjects:objectsCopy andRemoveObjects:removeObjectsCopy fromArrayAtKeyPath:pathCopy valueDidChange:&v23];
  v21 = 0;
  if (v23 == 1)
  {
    persistence = [(_CDUserContextService *)self->_service persistence];
    [persistence saveValue:v20 forKeyPath:pathCopy];

    v21 = v23;
  }

  handlerCopy[2](handlerCopy, v21 & 1);

LABEL_11:
}

- (void)addObjects:(id)objects toArrayAtPath:(id)path handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  pathCopy = path;
  handlerCopy = handler;
  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _CDRedactedObjectForKeyPath(pathCopy, objectsCopy);
    v18 = 138412546;
    v19 = pathCopy;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_DEFAULT, "CDUserContext: ADD %@ => %@", &v18, 0x16u);
  }

  v13 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  if ([pathCopy isEqual:v13])
  {
    _shouldUpdateWebUsageForCurrentUser = [(_CDUserContextServerClient *)self _shouldUpdateWebUsageForCurrentUser];

    if (!_shouldUpdateWebUsageForCurrentUser)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  LOBYTE(v18) = 0;
  v15 = [(_CDInMemoryUserContext *)self->_userContext addObjects:objectsCopy andRemoveObjects:0 fromArrayAtKeyPath:pathCopy valueDidChange:&v18];
  v16 = 0;
  if (v18 == 1)
  {
    persistence = [(_CDUserContextService *)self->_service persistence];
    [persistence saveValue:v15 forKeyPath:pathCopy];

    v16 = v18;
  }

  handlerCopy[2](handlerCopy, v16 & 1);

LABEL_10:
}

- (void)removeObjects:(id)objects fromArrayAtPath:(id)path handler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  pathCopy = path;
  handlerCopy = handler;
  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _CDRedactedObjectForKeyPath(pathCopy, objectsCopy);
    v16 = 138412546;
    v17 = pathCopy;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_DEFAULT, "CDUserContext: REMOVE %@ => %@", &v16, 0x16u);
  }

  LOBYTE(v16) = 0;
  v13 = [(_CDInMemoryUserContext *)self->_userContext addObjects:0 andRemoveObjects:objectsCopy fromArrayAtKeyPath:pathCopy valueDidChange:&v16];
  v14 = 0;
  if (v16 == 1)
  {
    persistence = [(_CDUserContextService *)self->_service persistence];
    [persistence saveValue:v13 forKeyPath:pathCopy];

    v14 = v16;
  }

  handlerCopy[2](handlerCopy, v14 & 1);
}

- (void)removeObjectsMatchingPredicate:(id)predicate fromArrayAtPath:(id)path handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  pathCopy = path;
  handlerCopy = handler;
  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = pathCopy;
    v20 = 2112;
    v21 = predicateCopy;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_DEFAULT, "CDUserContext: Remove object matching predicate %@ => %@", buf, 0x16u);
  }

  if (![_CDPredicateValidator validatePredicate:predicateCopy allowedKeys:0 error:0])
  {
    contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_FAULT))
    {
      [_CDUserContextServerClient removeObjectsMatchingPredicate:fromArrayAtPath:handler:];
    }

    goto LABEL_14;
  }

  if (predicateCopy)
  {
    if ([_CDPredicateValidator validatePredicate:predicateCopy allowedKeys:0 error:0])
    {
      [predicateCopy allowEvaluation];
      goto LABEL_7;
    }

    contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_FAULT))
    {
      [_CDUserContextServerClient removeObjectsMatchingPredicate:fromArrayAtPath:handler:];
    }

LABEL_14:

    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
    goto LABEL_15;
  }

LABEL_7:
  userContext = self->_userContext;
  v17 = 0;
  v13 = [(_CDInMemoryUserContext *)userContext removeObjectsMatchingPredicate:predicateCopy fromArrayAtKeyPath:pathCopy removedObjects:&v17];
  v14 = v17;
  if ([v14 count])
  {
    persistence = [(_CDUserContextService *)self->_service persistence];
    [persistence saveValue:v13 forKeyPath:pathCopy];
  }

  (handlerCopy)[2](handlerCopy, v14);

LABEL_15:
}

- (void)valuesForPaths:(id)paths inContextsMatching:(id)matching handler:(id)handler
{
  userContext = self->_userContext;
  handlerCopy = handler;
  v10 = [(_CDInMemoryUserContext *)userContext valuesForKeyPaths:paths inContextsMatchingPredicate:matching];
  (*(handler + 2))(handlerCopy, v10);
}

- (void)valuesForPaths:(id)paths handler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  handlerCopy = handler;
  if ([(_CDUserContextService *)self->_service remoteDevicesHaveBeenActivated]|| ![(_CDUserContextServerClient *)self isMDCSNeededForKeyPathInKeyPaths:pathsCopy])
  {
    [(_CDUserContextServerClient *)self _valuesForPaths:pathsCopy handler:handlerCopy];
  }

  else
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = pathsCopy;
      _os_log_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_DEFAULT, "Requesting activate devices for %@", buf, 0xCu);
    }

    service = self->_service;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53___CDUserContextServerClient_valuesForPaths_handler___block_invoke;
    v10[3] = &unk_1E7886BC8;
    v10[4] = self;
    v11 = pathsCopy;
    v12 = handlerCopy;
    [(_CDUserContextService *)service requestActivateDevicesFromAllSubscribersWithHandler:v10];
  }
}

- (void)_valuesForPaths:(id)paths handler:(id)handler
{
  pathsCopy = paths;
  handlerCopy = handler;
  v8 = [pathsCopy count];
  if (v8)
  {
    v9 = v8;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__2;
    v23[4] = __Block_byref_object_dispose__2;
    v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v8];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = 0;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__2;
    v20[4] = __Block_byref_object_dispose__2;
    v21 = os_transaction_create();
    v10 = dispatch_time(0, 10000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke;
    block[3] = &unk_1E7886DC0;
    v17 = v23;
    v19 = v9;
    v12 = handlerCopy;
    v16 = v12;
    v18 = v20;
    dispatch_after(v10, queue, block);
    v13 = pathsCopy;
    v14 = v12;
    cd_dispatch_async_xpc();

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v23, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_valueForRemotePath:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_valueForRemotePath:(void *)a1 handler:(void *)a2 .cold.2(void *a1, void *a2)
{
  v2 = _CDRedactedObjectForKeyPath(a1, a2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)registerCallback:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deregisterCallback:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)activateDevices:(uint8_t *)buf remoteUserContextProxySourceDeviceUUID:(os_log_t)log .cold.1(void *a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEBUG, "Waiting for proxy token for remote user context proxy %{public}@ before activating %u devices", buf, 0x12u);
}

- (void)activateDevices:(void *)a1 remoteUserContextProxySourceDeviceUUID:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)activateDevices:(void *)a1 remoteUserContextProxySourceDeviceUUID:.cold.3(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)deactivateDevices:(void *)a1 remoteUserContextProxySourceDeviceUUID:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)fetchPropertiesOfRemoteKeyPaths:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v5 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)fetchPropertiesOfRemoteKeyPaths:remoteUserContextProxySourceDeviceUUID:handler:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)subscribeToContextValueNotificationsWithRegistration:deviceIDs:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)subscribeToContextValueNotificationsWithRegistration:(NSObject *)a3 deviceIDs:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_11(&dword_1A9611000, a3, a3, "Invalid registration or remote deviceIDs", a1);
}

- (void)subscribeToContextValueNotificationsWithRegistration:deviceIDs:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:(NSObject *)a3 deviceIDs:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_11(&dword_1A9611000, a3, a3, "Invalid registration or deviceIDs", a1);
}

- (void)unsubscribeFromContextValueNotificationsWithRegistration:deviceIDs:.cold.3()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  v0 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setObject:(void *)a1 forPath:(void *)a2 handler:.cold.1(void *a1, void *a2)
{
  v2 = _CDRedactedObjectForKeyPath(a1, a2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)removeObjectsMatchingPredicate:fromArrayAtPath:handler:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1A9611000, v0, OS_LOG_TYPE_FAULT, "Client provided invalid predicate to removeObjectsMatchingPredicate:fromArrayAtPath:handler: %@", v1, 0xCu);
}

- (void)removeObjectsMatchingPredicate:fromArrayAtPath:handler:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1A9611000, v0, OS_LOG_TYPE_FAULT, "Client provided invalid predicate %@", v1, 0xCu);
}

@end