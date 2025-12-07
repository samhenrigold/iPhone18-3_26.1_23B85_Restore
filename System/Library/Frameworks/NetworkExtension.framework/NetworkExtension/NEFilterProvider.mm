@interface NEFilterProvider
+ (__CFString)descriptionForAction:(uint64_t)action;
- (void)handleReport:(NEFilterReport *)report;
- (void)startFilterWithCompletionHandler:(void *)completionHandler;
- (void)stopFilterWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler;
@end

@implementation NEFilterProvider

- (void)handleReport:(NEFilterReport *)report
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = report;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: handleReport %@", &v6, 0x16u);
  }
}

- (void)stopFilterWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = completionHandler;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2048;
    v11 = reason;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: Stop Filter with reason %ld", &v8, 0x16u);
  }

  v6[2](v6);
}

- (void)startFilterWithCompletionHandler:(void *)completionHandler
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Start Filter", &v6, 0xCu);
  }

  v4[2](v4, 0);
}

+ (__CFString)descriptionForAction:(uint64_t)action
{
  objc_opt_self();
  if ((a2 - 1) >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid (%ld)", a2];
  }

  else
  {
    v3 = off_1E7F07740[a2 - 1];
  }

  return v3;
}

@end