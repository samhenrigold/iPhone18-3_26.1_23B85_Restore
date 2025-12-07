@interface NEFilterControlProvider
- (void)handleNewFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler;
- (void)handleRemediationForFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler;
- (void)notifyRulesChanged;
@end

@implementation NEFilterControlProvider

- (void)notifyRulesChanged
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: Notify rules changed", &v5, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context notifyRulesChanged];
}

- (void)handleRemediationForFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = flow;
  v7 = completionHandler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@: Handle remediation for flow: %@", &v9, 0x16u);
  }

  v7[2](v7, 0);
}

- (void)handleNewFlow:(NEFilterFlow *)flow completionHandler:(void *)completionHandler
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = flow;
  v7 = completionHandler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@: Handle new flow: %@", &v9, 0x16u);
  }

  v7[2](v7, 0);
}

@end