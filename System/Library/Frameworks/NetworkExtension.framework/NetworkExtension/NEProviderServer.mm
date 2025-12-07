@interface NEProviderServer
+ (NEProviderServer)sharedServer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NEExtensionProviderContext)firstContext;
- (void)generateProviderEndpointInfoInMessage:(id)message extensionPoint:(id)point;
- (void)removeProviderContext:(id)context;
- (void)start;
@end

@implementation NEProviderServer

- (void)removeProviderContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_contexts removeObject:contextCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v34 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = listenerCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      v22 = "Got a non-provider listener";
      v23 = v16;
      v24 = 2;
LABEL_16:
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v22, &buf, v24);
    }

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  if (v8)
  {
    v9 = v8[7];
  }

  else
  {
    v9 = 0;
  }

  v10 = NSClassFromString(v9);
  if (!v10)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v25 = v8[7];
      }

      else
      {
        v25 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      v22 = "Failed to create a Class from %@";
      v23 = v16;
      v24 = 12;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v11 = [v10 alloc];
  v12 = connectionCopy;
  if (!v11 || (v29.receiver = v11, v29.super_class = NEExtensionProviderContext, (v13 = [(NEProviderServer *)&v29 init]) == 0))
  {

    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v28 = v8[7];
      }

      else
      {
        v28 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v28;
      _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Failed to instantiate a %@ object", &buf, 0xCu);
    }

    v16 = 0;
    goto LABEL_19;
  }

  _extensionAuxiliaryHostProtocol = [objc_opt_class() _extensionAuxiliaryHostProtocol];
  [v12 setRemoteObjectInterface:_extensionAuxiliaryHostProtocol];

  _extensionAuxiliaryVendorProtocol = [objc_opt_class() _extensionAuxiliaryVendorProtocol];
  [v12 setExportedInterface:_extensionAuxiliaryVendorProtocol];

  [v12 setExportedObject:v13];
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v31 = __49__NEExtensionProviderContext_initWithConnection___block_invoke;
  v32 = &unk_1E7F0B0E8;
  v16 = v13;
  v33 = v16;
  [v12 setInvalidationHandler:&buf];
  [v12 resume];
  objc_storeStrong(&v16[8].isa, connection);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  contexts = selfCopy->_contexts;
  if (!contexts)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = selfCopy->_contexts;
    selfCopy->_contexts = v19;

    contexts = selfCopy->_contexts;
  }

  [(NSMutableArray *)contexts addObject:v16];
  objc_sync_exit(selfCopy);

  v21 = 1;
LABEL_20:

  return v21;
}

- (void)start
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __25__NEProviderServer_start__block_invoke;
  handler[3] = &unk_1E7F0AF98;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.networkextension.provider.matching", MEMORY[0x1E69E96A0], handler);
}

void __25__NEProviderServer_start__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "extension-point");
  if (string && (v5 = string, *string))
  {
    reply = xpc_dictionary_create_reply(v3);
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    [v7 generateProviderEndpointInfoInMessage:reply extensionPoint:v8];

    xpc_dictionary_send_reply();
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "com.apple.networkextension.provider.matching";
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Received a %s event without an extension point", &v10, 0xCu);
    }
  }
}

- (NEExtensionProviderContext)firstContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  firstObject = [(NSMutableArray *)selfCopy->_contexts firstObject];
  objc_sync_exit(selfCopy);

  return firstObject;
}

- (void)generateProviderEndpointInfoInMessage:(id)message extensionPoint:(id)point
{
  v27 = *MEMORY[0x1E69E9840];
  xdict = message;
  pointCopy = point;
  endpoint = pointCopy;
  if (!self)
  {
    goto LABEL_20;
  }

  if (objc_msgSend_isEqualToString_(pointCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(endpoint) & 1) != 0 || (objc_msgSend_isEqualToString_(endpoint) & 1) != 0 || (objc_msgSend_isEqualToString_(endpoint) & 1) != 0 || (objc_msgSend_isEqualToString_(endpoint) & 1) != 0 || (objc_msgSend_isEqualToString_(endpoint))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if ([(NSMutableArray *)self->_listeners count]&& (v10 = self->_listeners, v21 = MEMORY[0x1E69E9820], v22 = 3221225472, v23 = __49__NEProviderServer_getListenerForExtensionPoint___block_invoke, v24 = &unk_1E7F0AF70, v11 = v9, v25 = v11, v12 = [(NSMutableArray *)v10 indexOfObjectPassingTest:&v21], v25, v12 != 0x7FFFFFFFFFFFFFFFLL))
    {
      self = [(NSMutableArray *)self->_listeners objectAtIndexedSubscript:v12];
    }

    else
    {
      v13 = [NEProviderXPCListener alloc];
      v11 = v9;
      if (v13 && (v26.receiver = v13, v26.super_class = NEProviderXPCListener, (v14 = [(NEProviderServer *)&v26 initWithServiceName:&stru_1F3880810]) != 0))
      {
        v15 = v14;
        objc_storeStrong(&v14[2]._listeners, v9);

        [(NEProviderServer *)v15 setDelegate:self];
        [(NEProviderServer *)v15 resume];
        listeners = self->_listeners;
        if (!listeners)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v18 = self->_listeners;
          self->_listeners = v17;

          listeners = self->_listeners;
        }

        [(NSMutableArray *)listeners addObject:v15, xdict, v21, v22, v23, v24];
        self = v15;
      }

      else
      {

        self = 0;
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v26.receiver) = 138412290;
      *(&v26.receiver + 4) = endpoint;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to create a listener, extension point is not supported: %@", &v26, 0xCu);
    }

    self = 0;
  }

  if (self)
  {
    endpoint = [(NEProviderServer *)self endpoint];
    _endpoint = [endpoint _endpoint];
    xpc_dictionary_set_value(xdict, "listener-endpoint", _endpoint);

LABEL_20:
  }
}

uint64_t __49__NEProviderServer_getListenerForExtensionPoint___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return objc_msgSend_isEqualToString_(*(a2 + 56));
  }

  else
  {
    return objc_msgSend_isEqualToString_(0);
  }
}

+ (NEProviderServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    dispatch_once(&sharedServer_onceToken, &__block_literal_global_26804);
  }

  v3 = sharedServer_g_server;

  return v3;
}

uint64_t __32__NEProviderServer_sharedServer__block_invoke()
{
  v0 = objc_alloc_init(NEProviderServer);
  v1 = sharedServer_g_server;
  sharedServer_g_server = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end