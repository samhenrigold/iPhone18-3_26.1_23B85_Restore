@interface _STXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_STXPCServer)initWithError:(id *)error;
- (_STXPCServer)initWithManagerProvider:(id)provider xpcListener:(id)listener error:(id *)error;
- (void)dealloc;
- (void)makePeerWithConfiguration:(id)configuration inReply:(id)reply;
- (void)makePeerWithIdentifier:(id)identifier inReply:(id)reply;
@end

@implementation _STXPCServer

- (_STXPCServer)initWithError:(id *)error
{
  v5 = objc_alloc_init(_STManagerProviderDefault);
  v6 = objc_alloc(MEMORY[0x277CCAE98]);
  v7 = +[_STXPCServerInterface machService];
  v8 = [v6 initWithMachServiceName:v7];
  v9 = [(_STXPCServer *)self initWithManagerProvider:v5 xpcListener:v8 error:error];

  return v9;
}

- (_STXPCServer)initWithManagerProvider:(id)provider xpcListener:(id)listener error:(id *)error
{
  providerCopy = provider;
  listenerCopy = listener;
  v17.receiver = self;
  v17.super_class = _STXPCServer;
  v10 = [(_STXPCServer *)&v17 init];
  v11 = v10;
  if (listenerCopy && v10)
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.speechtranslation.SpeechTranslationXPCServer.listenerQueue", v12);
    [listenerCopy _setQueue:v13];
    [listenerCopy setDelegate:v11];
    [(_STXPCServer *)v11 setManagerProvider:providerCopy];
    [(_STXPCServer *)v11 setXpcListener:listenerCopy];
    [(_STXPCServer *)v11 setListenerQueue:v13];
    xpcListener = [(_STXPCServer *)v11 xpcListener];
    [xpcListener activate];

    v15 = v11;
  }

  else
  {
    [MEMORY[0x277CCA9B8] st_populateError:error forCode:10];
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  xpcListener = [(_STXPCServer *)self xpcListener];
  [xpcListener invalidate];

  v4.receiver = self;
  v4.super_class = _STXPCServer;
  [(_STXPCServer *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  listenerQueue = [(_STXPCServer *)self listenerQueue];
  dispatch_assert_queue_V2(listenerQueue);

  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.speechtranslationclient"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
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

  v9 = v8;
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v13 = +[_STXPCServerInterface interface];
    [connectionCopy setExportedInterface:v13];
    [connectionCopy setExportedObject:self];
    activate = [connectionCopy activate];
    v16 = _LTOSLogSTMultiprocess(activate, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = connectionCopy;
      _os_log_impl(&dword_26B5BC000, v16, OS_LOG_TYPE_DEFAULT, "Accepting new connection: %{public}@", &v19, 0xCu);
    }
  }

  else
  {
    v17 = _LTOSLogSTMultiprocess(v11, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_STXPCServer listener:connectionCopy shouldAcceptNewConnection:v17];
    }
  }

  return bOOLValue;
}

- (void)makePeerWithConfiguration:(id)configuration inReply:(id)reply
{
  replyCopy = reply;
  configurationCopy = configuration;
  managerProvider = [(_STXPCServer *)self managerProvider];
  speechTranslatorManager = [managerProvider speechTranslatorManager];
  [speechTranslatorManager makePeerWithConfiguration:configurationCopy inReply:replyCopy];
}

- (void)makePeerWithIdentifier:(id)identifier inReply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  managerProvider = [(_STXPCServer *)self managerProvider];
  speechTranslatorManager = [managerProvider speechTranslatorManager];
  [speechTranslatorManager makePeerWithIdentifier:identifierCopy inReply:replyCopy];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Denying connection: %{public}@ due to insufficient privilege", &v2, 0xCu);
}

@end