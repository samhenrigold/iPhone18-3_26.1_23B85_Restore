@interface MCMCommandFetchPersonaUniqueStrings
+ (Class)incomingMessageClass;
- (void)execute;
@end

@implementation MCMCommandFetchPersonaUniqueStrings

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

- (void)execute
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  userIdentity = [clientIdentity userIdentity];

  if ([userIdentity isNoSpecificPersona])
  {
    context2 = [(MCMCommand *)self context];
    userIdentityCache = [context2 userIdentityCache];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__MCMCommandFetchPersonaUniqueStrings_execute__block_invoke;
    v14[3] = &unk_1E86AF940;
    v15 = v4;
    [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v14];
  }

  else
  {
    personaUniqueString = [userIdentity personaUniqueString];
    if (personaUniqueString)
    {
      [v4 addObject:personaUniqueString];
    }
  }

  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = 0;
    _os_log_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEFAULT, "Fetch persona unique strings result: %@; error = %@", buf, 0x16u);
  }

  v12 = [[MCMResultFetchPersonaUniqueStrings alloc] initWithPersonaUniqueStrings:v4];
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v12];

  objc_autoreleasePoolPop(v3);
}

uint64_t __46__MCMCommandFetchPersonaUniqueStrings_execute__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 personaUniqueString];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end