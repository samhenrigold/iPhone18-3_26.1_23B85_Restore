@interface CDMBaseService
- (CDMBaseService)initWithConfig:(id)config;
- (NSSet)supportedCommands;
- (NSString)serviceName;
- (id)createErrorWithCode:(int64_t)code description:(id)description;
- (id)createSetupResponseCommand;
- (void)addObserver:(id)observer;
- (void)handleCommand:(id)command withCallback:(id)callback;
- (void)publish:(id)publish;
- (void)removeObserver:(id)observer;
- (void)request:(id)request withCallback:(id)callback;
@end

@implementation CDMBaseService

- (NSSet)supportedCommands
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMSetupRequestCommand];
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (NSString)serviceName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)createSetupResponseCommand
{
  v3 = [CDMSetupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v6 = [(CDMSetupResponseCommand *)v3 initWithServiceState:serviceState serviceName:serviceName];

  return v6;
}

- (id)createErrorWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  descriptionCopy = description;
  serviceName = [(CDMBaseService *)self serviceName];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = descriptionCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v6 errorWithDomain:serviceName code:code userInfo:v9];

  return v10;
}

- (void)request:(id)request withCallback:(id)callback
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  callbackCopy = callback;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    commandName = [requestCopy commandName];
    *buf = 136315394;
    v22 = "[CDMBaseService request:withCallback:]";
    v23 = 2112;
    v24 = commandName;
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(allObjects);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 smService:self didPublishRequest:requestCopy withResponseCallback:callbackCopy];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)publish:(id)publish
{
  v22 = *MEMORY[0x1E69E9840];
  publishCopy = publish;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    commandName = [publishCopy commandName];
    *buf = 136315394;
    v19 = "[CDMBaseService publish:]";
    v20 = 2112;
    v21 = commandName;
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 smService:self didPublishCommand:publishCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)handleCommand:(id)command withCallback:(id)callback
{
  v14 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  callbackCopy = callback;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    callbackCopy[2](callbackCopy, createSetupResponseCommand, 0);
  }

  else
  {
    createSetupResponseCommand = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(createSetupResponseCommand, OS_LOG_TYPE_INFO))
    {
      commandName = [commandCopy commandName];
      v10 = 136315394;
      v11 = "[CDMBaseService handleCommand:withCallback:]";
      v12 = 2112;
      v13 = commandName;
      _os_log_impl(&dword_1DC287000, createSetupResponseCommand, OS_LOG_TYPE_INFO, "%s Unhandled Command: %@", &v10, 0x16u);
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  if (![(NSHashTable *)observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers addObject:v8];
  }
}

- (CDMBaseService)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = CDMBaseService;
  v6 = [(CDMBaseService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_serviceState = 0;
    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

@end