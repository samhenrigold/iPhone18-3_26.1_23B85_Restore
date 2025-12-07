@interface SFCompanionManager
+ (id)serviceManager;
- (SFCompanionManager)init;
- (id)serviceForIdentifier:(id)identifier;
- (id)streamDataForIdentifier:(id)identifier;
- (void)dealloc;
- (void)disableStreamSupportForIdentifier:(id)identifier;
- (void)getStreamsForData:(id)data withStreamHandler:(id)handler;
- (void)retrieveManagerProxy;
- (void)signalSemaphore;
- (void)streamToService:(id)service withFileHandle:(id)handle acceptReply:(id)reply;
- (void)streamsFromFileHandle:(id)handle withCompletionHandler:(id)handler;
- (void)supportStreamsWithIdentifier:(id)identifier withStreamHandler:(id)handler;
- (void)xpcManagerConnectionInterrupted;
- (void)xpcManagerDidInvalidate:(id)invalidate;
@end

@implementation SFCompanionManager

+ (id)serviceManager
{
  if (serviceManager_onceToken != -1)
  {
    +[SFCompanionManager serviceManager];
  }

  v3 = serviceManager_serviceManager;

  return v3;
}

void __36__SFCompanionManager_serviceManager__block_invoke()
{
  v0 = objc_alloc_init(SFCompanionManager);
  v1 = serviceManager_serviceManager;
  serviceManager_serviceManager = v0;
}

- (SFCompanionManager)init
{
  v14.receiver = self;
  v14.super_class = SFCompanionManager;
  v2 = [(SFCompanionManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    managerProxy = v2->_managerProxy;
    v2->_managerProxy = 0;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    services = v3->_services;
    v3->_services = v5;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = uUIDString;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    streamHandlers = v3->_streamHandlers;
    v3->_streamHandlers = v10;

    v12 = +[SFCompanionXPCManager sharedManager];
    [v12 registerObserver:v3];

    [(SFCompanionManager *)v3 retrieveManagerProxy];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[SFCompanionXPCManager sharedManager];
  [v3 unregisterObserver:self];

  [(SFCompanionManager *)self signalSemaphore];
  v4.receiver = self;
  v4.super_class = SFCompanionManager;
  [(SFCompanionManager *)&v4 dealloc];
}

- (id)serviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serviceIdentifierQueue = [(SFCompanionManager *)self serviceIdentifierQueue];

  if (!serviceIdentifierQueue)
  {
    v6 = dispatch_queue_create("com.apple.sharing.service-identifier-queue", 0);
    [(SFCompanionManager *)self setServiceIdentifierQueue:v6];
  }

  serviceIdentifierQueue2 = [(SFCompanionManager *)self serviceIdentifierQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFCompanionManager_serviceForIdentifier___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_sync(serviceIdentifierQueue2, block);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_services objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  deviceID = [v9 deviceID];

  if (!deviceID)
  {
    v12 = streams_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionManager *)v12 serviceForIdentifier:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  return v9;
}

void __43__SFCompanionManager_serviceForIdentifier___block_invoke(uint64_t a1)
{
  v14 = +[SFCompanionXPCManager sharedManager];
  if ([v14 isInvalid])
  {
  }

  else
  {
    v2 = [*(a1 + 32) managerProxy];

    if (!v2)
    {
      v4 = streams_log(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for manager proxy", buf, 2u);
      }

      v5 = dispatch_semaphore_create(0);
      v6 = *(a1 + 32);
      v7 = *(v6 + 72);
      *(v6 + 72) = v5;

      v8 = dispatch_time(0, 4000000000);
      dispatch_semaphore_wait(*(*(a1 + 32) + 72), v8);
      v9 = *(a1 + 32);
      objc_sync_enter(v9);
      v10 = *(a1 + 32);
      v11 = *(v10 + 72);
      *(v10 + 72) = 0;

      objc_sync_exit(v9);
      v13 = streams_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Finished Wait", v15, 2u);
      }
    }
  }
}

- (id)streamDataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SFCompanionManager *)self serviceForIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    messageData = [v5 messageData];
  }

  else
  {
    messageData = 0;
  }

  return messageData;
}

- (void)retrieveManagerProxy
{
  if (self->_managerProxy)
  {
    v2 = streams_log(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Trying to retrieve manager proxy when one already exists", v6, 2u);
    }
  }

  else
  {
    v4 = +[SFCompanionXPCManager sharedManager];
    identifier = self->_identifier;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__SFCompanionManager_retrieveManagerProxy__block_invoke;
    v7[3] = &unk_1E788CF08;
    v7[4] = self;
    [v4 serviceManagerProxyForIdentifier:identifier client:self withCompletionHandler:v7];
  }
}

void __42__SFCompanionManager_retrieveManagerProxy__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v11 && v12 && v13)
  {
    [*(a1 + 32) setManagerProxy:v11];
    [*(a1 + 32) setDeviceName:v12];
    [*(a1 + 32) setDeviceID:v13];
    [*(a1 + 32) setDeviceIP:v14];
    v17 = *(a1 + 32);
    objc_sync_enter(v17);
    [*(*(a1 + 32) + 48) allValues];
    v23 = v16;
    v24 = v11;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v18 = v26 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v19)
    {
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          [v22 setDeviceName:{v12, v23, v24, v25}];
          [v22 setDeviceID:v13];
          [v22 setIpAddress:v14];
          [*(*(a1 + 32) + 16) enableService:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v19);
    }

    v16 = v23;
    v11 = v24;

    objc_sync_exit(v17);
  }

  else
  {
    v17 = streams_log(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v16;
      _os_log_error_impl(&dword_1A9662000, v17, OS_LOG_TYPE_ERROR, "Error retrieving proxy object. Returned values (proxy = %@, deviceName = %@, deviceID = %@, deviceIP = %@, error = %@)", buf, 0x34u);
    }
  }

  [*(a1 + 32) signalSemaphore];
}

- (void)signalSemaphore
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (selfCopy->_managerSemaphore)
  {
    v4 = streams_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Signaling the semaphore", v5, 2u);
    }

    dispatch_semaphore_signal(selfCopy->_managerSemaphore);
  }

  objc_sync_exit(selfCopy);
}

- (void)streamToService:(id)service withFileHandle:(id)handle acceptReply:(id)reply
{
  serviceCopy = service;
  handleCopy = handle;
  replyCopy = reply;
  v11 = replyCopy;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (handleCopy)
  {
    streamHandlers = self->_streamHandlers;
    identifier = [serviceCopy identifier];
    v14 = [(NSMutableDictionary *)streamHandlers objectForKeyedSubscript:identifier];

    if (v14)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __65__SFCompanionManager_streamToService_withFileHandle_acceptReply___block_invoke;
      v31[3] = &unk_1E788CF30;
      v33 = &v34;
      v32 = v14;
      [(SFCompanionManager *)self streamsFromFileHandle:handleCopy withCompletionHandler:v31];
      v16 = v32;
    }

    else
    {
      v16 = streams_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(SFCompanionManager *)v16 streamToService:v24 withFileHandle:v25 acceptReply:v26, v27, v28, v29, v30];
      }
    }
  }

  else
  {
    v14 = streams_log(replyCopy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionManager *)v14 streamToService:v17 withFileHandle:v18 acceptReply:v19, v20, v21, v22, v23];
    }
  }

  v11[2](v11, *(v35 + 24));
  _Block_object_dispose(&v34, 8);
}

uint64_t __65__SFCompanionManager_streamToService_withFileHandle_acceptReply___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = result;
      result = (*(*(result + 32) + 16))();
      *(*(*(v3 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

- (void)xpcManagerConnectionInterrupted
{
  managerProxy = self->_managerProxy;
  self->_managerProxy = 0;

  v5 = streams_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "XPC Manager connection interrupted", v6, 2u);
  }

  [(SFCompanionManager *)self retrieveManagerProxy];
}

- (void)xpcManagerDidInvalidate:(id)invalidate
{
  managerProxy = self->_managerProxy;
  self->_managerProxy = 0;

  [(SFCompanionManager *)self signalSemaphore];
}

- (void)getStreamsForData:(id)data withStreamHandler:(id)handler
{
  v16[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  v15 = 0;
  v16[0] = 0;
  v8 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:v16 error:&v15];
  v9 = v15;
  v10 = v9;
  if (v9)
  {
    v11 = streams_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionManager *)v10 getStreamsForData:v16 withStreamHandler:v11];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v10);
  }

  else
  {
    v12 = +[SFCompanionXPCManager sharedManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__SFCompanionManager_getStreamsForData_withStreamHandler___block_invoke;
    v13[3] = &unk_1E788CF80;
    v13[4] = self;
    v14 = handlerCopy;
    [v12 streamsForMessage:v8 withCompletionHandler:v13];
  }
}

void __58__SFCompanionManager_getStreamsForData_withStreamHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SFCompanionManager_getStreamsForData_withStreamHandler___block_invoke_2;
    v9[3] = &unk_1E788CF58;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v8 streamsFromFileHandle:v5 withCompletionHandler:v9];
  }

  else if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)supportStreamsWithIdentifier:(id)identifier withStreamHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [[SFCompanionService alloc] initWithServiceName:identifierCopy];
  [(SFCompanionService *)v9 setManagerID:selfCopy->_identifier];
  deviceName = [(SFCompanionManager *)selfCopy deviceName];
  [(SFCompanionService *)v9 setDeviceName:deviceName];

  deviceID = [(SFCompanionManager *)selfCopy deviceID];
  [(SFCompanionService *)v9 setDeviceID:deviceID];

  deviceIP = [(SFCompanionManager *)selfCopy deviceIP];
  [(SFCompanionService *)v9 setIpAddress:deviceIP];

  v13 = [(NSMutableDictionary *)selfCopy->_services setObject:v9 forKeyedSubscript:identifierCopy];
  if (handlerCopy)
  {
    v14 = streams_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Storing stream handler", buf, 2u);
    }

    v15 = [handlerCopy copy];
    v16 = _Block_copy(v15);
    streamHandlers = selfCopy->_streamHandlers;
    identifier = [(SFCompanionService *)v9 identifier];
    [(NSMutableDictionary *)streamHandlers setObject:v16 forKeyedSubscript:identifier];
  }

  managerProxy = selfCopy->_managerProxy;
  if (managerProxy)
  {
    [(SFCompanionServiceManagerProtocol *)managerProxy enableService:v9];
  }

  else
  {
    v20 = streams_log(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "Service enabled before manager proxy retrieved", v21, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)disableStreamSupportForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_services objectForKeyedSubscript:identifierCopy];
  v7 = v6;
  if (v6 && ([v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    managerProxy = selfCopy->_managerProxy;
    if (managerProxy)
    {
      [(SFCompanionServiceManagerProtocol *)managerProxy disableService:v7];
    }

    [(NSMutableDictionary *)selfCopy->_services removeObjectForKey:identifierCopy];
    streamHandlers = selfCopy->_streamHandlers;
    identifier = [v7 identifier];
    [(NSMutableDictionary *)streamHandlers removeObjectForKey:identifier];
  }

  else
  {
    identifier = streams_log(v6);
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A9662000, identifier, OS_LOG_TYPE_DEFAULT, "Trying to disable service that has never been enabled", v12, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)streamsFromFileHandle:(id)handle withCompletionHandler:(id)handler
{
  stream = 0;
  readStream = 0;
  handlerCopy = handler;
  handleCopy = handle;
  v7 = dup([handleCopy fileDescriptor]);
  CFStreamCreatePairWithSocket(0, v7, &readStream, &stream);
  v8 = *MEMORY[0x1E695E940];
  v9 = *MEMORY[0x1E695E4D0];
  CFReadStreamSetProperty(readStream, *MEMORY[0x1E695E940], *MEMORY[0x1E695E4D0]);
  CFWriteStreamSetProperty(stream, v8, v9);
  [handleCopy closeFile];

  handlerCopy[2](handlerCopy, readStream, stream);
}

- (void)streamDataForIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Caught exception getting endpoint data %@", &v2, 0xCu);
}

- (void)getStreamsForData:(os_log_t)log withStreamHandler:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Deserialization error = %@, format = %ld", &v4, 0x16u);
}

@end