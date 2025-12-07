@interface AAFService
- (AAFService)init;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)_configureListener;
- (void)startup;
@end

@implementation AAFService

- (AAFService)init
{
  v3.receiver = self;
  v3.super_class = AAFService;
  return [(AAFService *)&v3 init];
}

- (void)startup
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _AAFLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(AAFService *)self serviceName];
    v5 = 138412290;
    v6 = serviceName;
    _os_log_impl(&dword_1C8644000, v3, OS_LOG_TYPE_DEFAULT, "Service: starting up xpc service - %@", &v5, 0xCu);
  }

  [(AAFService *)self _configureListener];
}

- (void)_configureListener
{
  serviceName = [(AAFService *)self serviceName];
  if (serviceName)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0D8]);
    serviceName2 = [(AAFService *)self serviceName];
    v6 = [v4 initWithMachServiceName:serviceName2];
    serviceListener = self->_serviceListener;
    self->_serviceListener = v6;

    [(NSXPCListener *)self->_serviceListener setDelegate:self];
    [(NSXPCListener *)self->_serviceListener resume];
  }

  else
  {
    v8 = _AAFLogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AAFService *)v8 _configureListener];
    }
  }
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  v30 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  preConnectEntitlements = [(AAFService *)self preConnectEntitlements];
  v6 = [preConnectEntitlements countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = MEMORY[0x1E695E118];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(preConnectEntitlements);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [connectionCopy valueForEntitlement:v11];
        v13 = v12;
        if (!v12 || (v12 = [v9 isEqual:v12], (v12 & 1) == 0))
        {
          v22 = _AAFLogSystem(v12);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(AAFService *)v11 shouldAcceptNewConnection:v22];
          }

          goto LABEL_16;
        }
      }

      v7 = [preConnectEntitlements countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  exportedProtocol = [(AAFService *)self exportedProtocol];

  if (!exportedProtocol)
  {
    preConnectEntitlements = _AAFLogSystem(v15);
    if (os_log_type_enabled(preConnectEntitlements, OS_LOG_TYPE_FAULT))
    {
      [AAFService shouldAcceptNewConnection:preConnectEntitlements];
    }

    goto LABEL_16;
  }

  v16 = MEMORY[0x1E696B0D0];
  exportedProtocol2 = [(AAFService *)self exportedProtocol];
  preConnectEntitlements = [v16 interfaceWithProtocol:exportedProtocol2];

  [connectionCopy setExportedInterface:preConnectEntitlements];
  exportedObject = [(AAFService *)self exportedObject];

  if (!exportedObject)
  {
    v24 = _AAFLogSystem(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [AAFService shouldAcceptNewConnection:v24];
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  exportedObject2 = [(AAFService *)self exportedObject];
  [connectionCopy setExportedObject:exportedObject2];

  [(AAFService *)self configureExportedInterface:preConnectEntitlements];
  [connectionCopy resume];
  v21 = 1;
LABEL_17:

  return v21;
}

- (void)shouldAcceptNewConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Client doesn't have entitlement - %@. Terminating connection!", &v2, 0xCu);
}

@end