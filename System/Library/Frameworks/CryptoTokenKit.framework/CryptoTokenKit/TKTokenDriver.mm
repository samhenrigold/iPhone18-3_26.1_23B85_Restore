@interface TKTokenDriver
+ (id)createDriver;
+ (void)createDriver;
- (NSArray)tokenSessions;
- (NSString)classID;
- (TKTokenDriver)init;
- (TKTokenDriverContext)context;
- (id)createTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage error:(id *)error;
- (id)delegate;
- (id)endpointForToken:(id)token;
- (id)keepAlive;
- (void)acquireTokenWithInstanceID:(id)d reply:(id)reply;
- (void)acquireTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage reply:(id)reply;
- (void)auditAuthOperation:(id)operation auditToken:(id *)token success:(BOOL)success;
- (void)configureWithReply:(id)reply;
- (void)dealloc;
- (void)getTokenWithAttributes:(id)attributes reply:(id)reply;
- (void)releaseTokenWithInstanceID:(id)d;
- (void)terminate;
@end

@implementation TKTokenDriver

+ (id)createDriver
{
  v26 = *MEMORY[0x1E69E9840];
  gotLoadHelper_x19__OBJC_CLASS___PKService(v3);
  if (!objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Token plugins are not supported without PlugInKit"];
  }

  defaultService = [*(v2 + 2728) defaultService];
  solePersonality = [defaultService solePersonality];

  plugInDictionary = [solePersonality plugInDictionary];
  v9 = [plugInDictionary objectForKey:@"NSExtensionAttributes"];

  v10 = [v9 objectForKeyedSubscript:@"com.apple.ctk.driver-class"];
  v11 = TK_LOG_token(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[(TKTokenDriver *)solePersonality];
  }

  v12 = -[objc_class init](-[objc_class alloc](objc_getClass([v10 UTF8String]), "alloc"), "init");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v14 = TK_LOG_token(isKindOfClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      identifier = [solePersonality identifier];
      *buf = 138543874;
      v21 = identifier;
      v22 = 2114;
      v23 = v10;
      v24 = 2048;
      v25 = v12;
      _os_log_fault_impl(&dword_1DF413000, v14, OS_LOG_TYPE_FAULT, "extension %{public}@: cannot instantiate TKTokenDriver-based class '%{public}@' (%p)", buf, 0x20u);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    identifier2 = [solePersonality identifier];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TKToken.m" lineNumber:112 description:{@"extension %@: cannot instantiate TKTokenDriver-based class '%@' (%p)", identifier2, v10, v12}];
  }

  v15 = TK_LOG_token([(objc_class *)v12 setExtensionAttributes:v9]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[TKTokenDriver createDriver];
  }

  return v12;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (TKTokenDriver)init
{
  v7.receiver = self;
  v7.super_class = TKTokenDriver;
  v2 = [(TKTokenDriver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if ([(TKTokenDriver *)v2 conformsToProtocol:&unk_1F5A8FF90])
    {
      objc_storeWeak(&v3->_delegate, v3);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tokenConnections = v3->_tokenConnections;
    v3->_tokenConnections = dictionary;
  }

  return v3;
}

- (NSString)classID
{
  extensionAttributes = [(TKTokenDriver *)self extensionAttributes];
  v3 = [extensionAttributes objectForKeyedSubscript:@"com.apple.ctk.class-id"];

  return v3;
}

- (id)keepAlive
{
  keepAlive = self->_keepAlive;
  if (keepAlive)
  {
    v3 = keepAlive;
  }

  else
  {
    v3 = [(TKSharedResourceSlot *)self->_keepAliveResourceSlot resourceWithError:0];
  }

  return v3;
}

- (id)endpointForToken:(id)token
{
  tokenCopy = token;
  tokenID = [tokenCopy tokenID];
  instanceID = [tokenID instanceID];

  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(tokenConnections);
  tokenConnections2 = [(TKTokenDriver *)self tokenConnections];
  v9 = [tokenConnections2 objectForKeyedSubscript:instanceID];

  if (v9)
  {
    v11 = TK_LOG_token(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenDriver endpointForToken:];
    }

    [v9 invalidate];
  }

  v12 = [[TKTokenConnection alloc] initWithToken:tokenCopy];

  tokenConnections3 = [(TKTokenDriver *)self tokenConnections];
  [tokenConnections3 setObject:v12 forKeyedSubscript:instanceID];

  listener = [(TKTokenConnection *)v12 listener];
  endpoint = [listener endpoint];

  objc_sync_exit(tokenConnections);

  return endpoint;
}

- (void)acquireTokenWithInstanceID:(id)d reply:(id)reply
{
  v30[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v8 = [TKTokenID alloc];
  classID = [(TKTokenDriver *)self classID];
  v10 = [(TKTokenID *)v8 initWithClassID:classID instanceID:dCopy];

  delegate = [(TKTokenDriver *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [TKTokenConfiguration alloc];
    context = [(TKTokenDriver *)self context];
    configurationConnection = [context configurationConnection];
    v16 = [(TKTokenConfiguration *)v13 initWithTokenID:v10 configurationConnection:configurationConnection];

    beginTransaction = [(TKTokenConfiguration *)v16 beginTransaction];
    delegate2 = [(TKTokenDriver *)self delegate];
    v28 = 0;
    v19 = [delegate2 tokenDriver:self tokenForConfiguration:v16 error:&v28];
    v20 = v28;

    if (v19)
    {
      [beginTransaction commit];
      v22 = [(TKTokenDriver *)self endpointForToken:v19];
      replyCopy[2](replyCopy, v22, 0);
    }

    else
    {
      v25 = TK_LOG_token(v21);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenDriver acquireTokenWithInstanceID:reply:];
      }

      [beginTransaction commit];
      (replyCopy)[2](replyCopy, 0, v20);
    }
  }

  else
  {
    v29 = *MEMORY[0x1E697AEC8];
    stringRepresentation = [(TKTokenID *)v10 stringRepresentation];
    v30[0] = stringRepresentation;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__TKTokenDriver_acquireTokenWithInstanceID_reply___block_invoke;
    v26[3] = &unk_1E86B6E30;
    v26[4] = self;
    v27 = replyCopy;
    [(TKTokenDriver *)self getTokenWithAttributes:v24 reply:v26];

    v20 = v27;
  }
}

void __50__TKTokenDriver_acquireTokenWithInstanceID_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) endpointForToken:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }
}

- (void)acquireTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage reply:(id)reply
{
  usageCopy = usage;
  v18 = 0;
  replyCopy = reply;
  v11 = [(TKTokenDriver *)self createTokenWithSlot:slot AID:d proprietaryCardUsage:usageCopy error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    v14 = [(TKTokenDriver *)self endpointForToken:v11];
    tokenID = [v11 tokenID];
    instanceID = [tokenID instanceID];
    replyCopy[2](replyCopy, v14, instanceID, 0);

    replyCopy = v14;
  }

  else
  {
    v17 = TK_LOG_token(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenDriver acquireTokenWithSlot:AID:proprietaryCardUsage:reply:];
    }

    (replyCopy)[2](replyCopy, 0, 0, v13);
  }
}

- (void)releaseTokenWithInstanceID:(id)d
{
  dCopy = d;
  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(tokenConnections);
  tokenConnections2 = [(TKTokenDriver *)self tokenConnections];
  v7 = [tokenConnections2 objectForKeyedSubscript:dCopy];

  if (v7)
  {
    tokenConnections3 = [(TKTokenDriver *)self tokenConnections];
    v10 = [tokenConnections3 objectForKeyedSubscript:dCopy];
    [v10 invalidate];

    tokenConnections4 = [(TKTokenDriver *)self tokenConnections];
    [tokenConnections4 removeObjectForKey:dCopy];
  }

  else
  {
    tokenConnections4 = TK_LOG_token(v8);
    if (os_log_type_enabled(tokenConnections4, OS_LOG_TYPE_ERROR))
    {
      [TKTokenDriver releaseTokenWithInstanceID:];
    }
  }

  objc_sync_exit(tokenConnections);
}

- (void)configureWithReply:(id)reply
{
  replyCopy = reply;
  delegate = [(TKTokenDriver *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [TKTokenDriverConfiguration alloc];
    classID = [(TKTokenDriver *)self classID];
    context = [(TKTokenDriver *)self context];
    configurationConnection = [context configurationConnection];
    v10 = [(TKTokenDriverConfiguration *)v6 initWithClassID:classID configurationConnection:configurationConnection];

    delegate2 = [(TKTokenDriver *)self delegate];
    [delegate2 tokenDriver:self configure:v10];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (id)createTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"token driver does not implement any way to create new slot-based token instances";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v8];
  }

  return 0;
}

- (void)getTokenWithAttributes:(id)attributes reply:(id)reply
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = @"token driver does not implement any way to create new token instances";
  v6 = MEMORY[0x1E695DF20];
  replyCopy = reply;
  v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [v5 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v8];
  (*(reply + 2))(replyCopy, 0, v9);
}

- (void)terminate
{
  v15 = *MEMORY[0x1E69E9840];
  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(tokenConnections);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  tokenConnections2 = [(TKTokenDriver *)self tokenConnections];
  allValues = [tokenConnections2 allValues];

  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  tokenConnections3 = [(TKTokenDriver *)self tokenConnections];
  [tokenConnections3 removeAllObjects];

  objc_sync_exit(tokenConnections);
}

- (void)auditAuthOperation:(id)operation auditToken:(id *)token success:(BOOL)success
{
  successCopy = success;
  operationCopy = operation;
  context = [(TKTokenDriver *)self context];
  v10 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v10;
  [context auditAuthOperation:operationCopy auditToken:v11 success:successCopy];
}

- (NSArray)tokenSessions
{
  v31 = *MEMORY[0x1E69E9840];
  obj = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(obj);
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  allValues = [tokenConnections allValues];

  v6 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v19 = allValues;
    v20 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v19);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        sessions = [v8 sessions];
        v10 = [sessions countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(sessions);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              sessions2 = [v8 sessions];
              v15 = [sessions2 objectForKey:v13];
              [v3 addObject:v15];
            }

            v10 = [sessions countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      allValues = v19;
      v6 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];
  objc_sync_exit(obj);

  return v16;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TKTokenDriverContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

+ (void)createDriver
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)endpointForToken:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)acquireTokenWithInstanceID:reply:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1DF413000, v1, OS_LOG_TYPE_DEBUG, "failed to instantiate token with instanceID %@, error: %@", v2, 0x16u);
}

- (void)acquireTokenWithSlot:AID:proprietaryCardUsage:reply:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)releaseTokenWithInstanceID:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DF413000, v0, OS_LOG_TYPE_ERROR, "An attempt to release nonexistent token with instanceID=%{public}@", v1, 0xCu);
}

@end