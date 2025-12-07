@interface DiagCollectionServiceImpl
- (ABCAdministrator)administrator;
- (BOOL)assertEntitlement:(id)entitlement entitlement:(id)a4;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DiagCollectionServiceImpl)initWithQueue:(id)queue;
- (id)diagnosticExtensionController;
- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions reply:(id)reply;
- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters reply:(id)reply;
- (void)shutdown;
@end

@implementation DiagCollectionServiceImpl

- (DiagCollectionServiceImpl)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = DiagCollectionServiceImpl;
  v6 = [(DiagCollectionServiceImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->queue, queue);
  }

  return v7;
}

- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  extensionsCopy = extensions;
  replyCopy = reply;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = extensionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        null = [MEMORY[0x277CBEB68] null];
        [dictionary setObject:null forKeyedSubscript:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(DiagCollectionServiceImpl *)self collectPayloadsWithIdentifier:identifierCopy diagnosticExtensionsWithParameters:dictionary reply:replyCopy];
}

- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters reply:(id)reply
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  replyCopy = reply;
  queue = self->queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke;
  v15[3] = &unk_278CF0DD0;
  v16 = parametersCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = identifierCopy;
  v14 = parametersCopy;
  dispatch_async(queue, v15);
}

void __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = xpcLogHandle(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) allKeys];
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "DiagCollectionService: collectPayloadsForDiagnosticExtensions:%@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) diagnosticExtensionController];
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke_5;
  v10[3] = &unk_278CF0D08;
  v9 = *(a1 + 56);
  v10[4] = *(a1 + 40);
  v11 = v9;
  [v5 collectDEPayloadsWithIdentifier:v6 diagnosticExtensionsWithParameters:v7 queue:v8 reply:v10];
}

void __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke_5(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpcLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v3;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "DiagCollectionService: collected DE payloads:%@", &v18, 0xCu);
  }

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) diagnosticExtensionController];
    v6 = [v5 destinationRootDirectory];
    [v6 UTF8String];
    v7 = sandbox_extension_issue_file();

    v9 = xpcLogHandle(v8);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) diagnosticExtensionController];
        v12 = [v11 destinationRootDirectory];
        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "DiagCollectionService: Issued RW sandbox extension for: %@", &v18, 0xCu);
      }

      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      free(v7);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 32) diagnosticExtensionController];
        v15 = [v14 destinationRootDirectory];
        v16 = __error();
        v17 = strerror(*v16);
        v18 = 138412546;
        v19 = v15;
        v20 = 2080;
        v21 = v17;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "DiagCollectionService: Failed to issue RW sandbox extension for: %@ due to error: %s", &v18, 0x16u);
      }

      v13 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)assertEntitlement:(id)entitlement entitlement:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  v6 = a4;
  v7 = [entitlementCopy valueForEntitlement:v6];
  v8 = v7;
  if (v7 && (v7 = [v7 BOOLValue], (v7 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = xpcLogHandle(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12[0] = 67109378;
      v12[1] = [entitlementCopy processIdentifier];
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "DiagCollectionService: connection %d is missing entitlement %@", v12, 0x12u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)shutdown
{
  deController = self->deController;
  self->deController = 0;
  MEMORY[0x2821F96F8](self, deController);
}

- (id)diagnosticExtensionController
{
  v11 = *MEMORY[0x277D85DE8];
  deController = self->deController;
  if (!deController)
  {
    v4 = NSTemporaryDirectory();
    v5 = xpcLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "DiagCollectionService: creating DiagnosticExtensionsController with destination %@", &v9, 0xCu);
    }

    v6 = [[DiagnosticExtensionController alloc] initWithDestinationDirectory:v4];
    v7 = self->deController;
    self->deController = v6;

    deController = self->deController;
  }

  return deController;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [(DiagCollectionServiceImpl *)self assertEntitlement:connectionCopy entitlement:@"com.apple.symptom_diagnostics.collect"];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28538CC28];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    exportedInterface = [connectionCopy exportedInterface];
    [exportedInterface setClasses:v14 forSelector:sel_collectPayloadsWithIdentifier_diagnosticExtensions_reply_ argumentIndex:0 ofReply:1];

    [connectionCopy resume];
  }

  else
  {
    v14 = xpcLogHandle(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = connectionCopy;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "DiagCollectionService: connection (%@) lacks proper entitlements", buf, 0xCu);
    }
  }

  return v7;
}

- (ABCAdministrator)administrator
{
  WeakRetained = objc_loadWeakRetained(&self->_administrator);

  return WeakRetained;
}

@end