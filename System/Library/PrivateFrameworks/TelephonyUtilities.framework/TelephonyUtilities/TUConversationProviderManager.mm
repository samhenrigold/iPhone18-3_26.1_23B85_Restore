@interface TUConversationProviderManager
- (TUConversationProviderManager)init;
- (TUConversationProviderManager)initWithDataSource:(id)source;
- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler;
- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler;
- (void)registerConversationProviderForConfiguration:(id)configuration completionHandler:(id)handler;
- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler;
- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler;
- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler;
@end

@implementation TUConversationProviderManager

- (TUConversationProviderManager)init
{
  v3 = objc_alloc_init(TUConversationProviderManagerXPCClient);
  v4 = [(TUConversationProviderManager *)self initWithDataSource:v3];

  return v4;
}

- (TUConversationProviderManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = TUConversationProviderManager;
  v6 = [(TUConversationProviderManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (void)dealloc
{
  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource invalidate];

  v4.receiver = self;
  v4.super_class = TUConversationProviderManager;
  [(TUConversationProviderManager *)&v4 dealloc];
}

- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = providerCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "providerIdentifier: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource registerForCallbacksForProvider:providerCopy completionHandler:handlerCopy];
}

- (void)registerConversationProviderForConfiguration:(id)configuration completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = configurationCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "configuration: %@", buf, 0xCu);
  }

  v9 = [[TUConversationProvider alloc] initWithConfiguration:configurationCopy];
  dataSource = [(TUConversationProviderManager *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__TUConversationProviderManager_registerConversationProviderForConfiguration_completionHandler___block_invoke;
  v13[3] = &unk_1E7425568;
  v14 = v9;
  v15 = handlerCopy;
  v11 = v9;
  v12 = handlerCopy;
  [dataSource registerConversationProvider:v11 completionHandler:v13];
}

uint64_t __96__TUConversationProviderManager_registerConversationProviderForConfiguration_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "identifier: %@", &v10, 0xCu);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource conversationProviderForIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  iCopy = i;
  handlerCopy = handler;
  v13 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = providerCopy;
    v17 = 2048;
    durationCopy = duration;
    v19 = 2112;
    v20 = iCopy;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "provider: %@ expiryDuration: %f uri: %@", &v15, 0x20u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource generatePseudonymHandleForConversationProvider:providerCopy expiryDuration:iCopy URI:handlerCopy completionHandler:duration];
}

- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  providerCopy = provider;
  dateCopy = date;
  handlerCopy = handler;
  v14 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = handleCopy;
    v18 = 2112;
    v19 = providerCopy;
    v20 = 2112;
    v21 = dateCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "pseudonymHandle: %@ provider: %@ expirationDate: %@", &v16, 0x20u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource renewPseudonymHandle:handleCopy forConversationProvider:providerCopy expirationDate:dateCopy completionHandler:handlerCopy];
}

- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  v11 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = handleCopy;
    v15 = 2112;
    v16 = providerCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "pseudonymHandle: %@ provider: %@", &v13, 0x16u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource revokePseudonymHandle:handleCopy forConversationProvider:providerCopy completionHandler:handlerCopy];
}

- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  v11 = TUDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = handleCopy;
    v15 = 2112;
    v16 = providerCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "handle: %@ provider: %@", &v13, 0x16u);
  }

  dataSource = [(TUConversationProviderManager *)self dataSource];
  [dataSource doesHandle:handleCopy correspondToConversationProvider:providerCopy completionHandler:handlerCopy];
}

@end