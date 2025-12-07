@interface _EXSourceLoadOperator
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSItemProvider)itemProvider;
- (_EXSourceLoadOperator)initWithCoder:(id)coder;
- (_EXSourceLoadOperator)initWithItemProvider:(id)provider;
- (void)encodeWithCoder:(id)coder;
- (void)previewImageWithClassName:(id)name options:(id)options reply:(id)reply;
- (void)resolveWithIdentifier:(id)identifier className:(id)name options:(id)options reply:(id)reply;
@end

@implementation _EXSourceLoadOperator

- (_EXSourceLoadOperator)initWithItemProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = _EXSourceLoadOperator;
  _init = [(_EXLoadOperator *)&v10 _init];
  v6 = _init;
  if (_init)
  {
    objc_storeWeak(_init + 1, providerCopy);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v6->_listener;
    v6->_listener = anonymousListener;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (_EXSourceLoadOperator)initWithCoder:(id)coder
{
  v3 = _EXDefaultLog(coder);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 136315650;
    v8 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v9 = 1024;
    v10 = 122;
    v11 = 2112;
    v12 = v5;
    _os_log_fault_impl(&dword_1847D1000, v3, OS_LOG_TYPE_FAULT, "%s - %d: %@ cannot be decoded", &v7, 0x1Cu);
  }

  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  listener = self->_listener;
  coderCopy = coder;
  endpoint = [(NSXPCListener *)listener endpoint];
  [coderCopy encodeObject:endpoint forKey:@"endpoint"];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1EF2A5190];
  v8 = +[_EXDefaults sharedInstance];
  plistAndValueTypes = [v8 plistAndValueTypes];
  [v7 setClasses:plistAndValueTypes forSelector:sel_resolveWithIdentifier_className_options_reply_ argumentIndex:2 ofReply:0];

  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)resolveWithIdentifier:(id)identifier className:(id)name options:(id)options reply:(id)reply
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  optionsCopy = options;
  replyCopy = reply;
  v34 = 0u;
  v35 = 0u;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v15 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v16 = NSClassFromString(nameCopy);
  v17 = v16;
  if (nameCopy && !v16)
  {
    v18 = _EXDefaultLog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = nameCopy;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71___EXSourceLoadOperator_resolveWithIdentifier_className_options_reply___block_invoke;
  v25[3] = &unk_1E6E4E698;
  v26 = WeakRetained;
  v27 = identifierCopy;
  v32 = v34;
  v33 = v35;
  v28 = optionsCopy;
  v29 = nameCopy;
  v30 = replyCopy;
  v31 = v17;
  v20 = replyCopy;
  v21 = nameCopy;
  v22 = optionsCopy;
  v23 = identifierCopy;
  v24 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v25);
}

- (void)previewImageWithClassName:(id)name options:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);
  v12 = NSClassFromString(nameCopy);

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___EXSourceLoadOperator_previewImageWithClassName_options_reply___block_invoke;
  v16[3] = &unk_1E6E4E6C0;
  v17 = WeakRetained;
  v18 = optionsCopy;
  v19 = replyCopy;
  v20 = v12;
  v13 = replyCopy;
  v14 = optionsCopy;
  v15 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

- (NSItemProvider)itemProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);

  return WeakRetained;
}

@end