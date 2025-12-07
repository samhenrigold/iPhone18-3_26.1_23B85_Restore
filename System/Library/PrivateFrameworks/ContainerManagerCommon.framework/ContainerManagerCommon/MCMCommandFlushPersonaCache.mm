@interface MCMCommandFlushPersonaCache
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (void)execute;
@end

@implementation MCMCommandFlushPersonaCache

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

- (void)execute
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  userIdentityCache = [context userIdentityCache];
  [userIdentityCache flush];

  v6 = container_log_handle_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEFAULT, "Flush persona cache; error = nil", v9, 2u);
  }

  v7 = objc_opt_new();
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v7];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToControlCaches = [clientIdentity isAllowedToControlCaches];

  return isAllowedToControlCaches;
}

@end