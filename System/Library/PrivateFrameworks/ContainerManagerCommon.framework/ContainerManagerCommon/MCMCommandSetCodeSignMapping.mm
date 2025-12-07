@interface MCMCommandSetCodeSignMapping
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandSetCodeSignMapping)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandSetCodeSignMapping

- (void)execute
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = gCodeSigningMapping;
  info = [(MCMCommandSetCodeSignMapping *)self info];
  identifier = [(MCMCommandSetCodeSignMapping *)self identifier];
  options = [(MCMCommandSetCodeSignMapping *)self options];
  v21 = 0;
  v8 = [v4 processCodeSigningInfo:info identifier:identifier options:options error:&v21];
  v9 = v21;

  if (v8 && [v8 count])
  {
    v10 = objc_alloc_init(MCMResultPromise);
    allObjects = [v8 allObjects];
    context = [(MCMCommand *)self context];
    v13 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:allObjects removeAllCodeSignInfo:0 context:context resultPromise:v10];

    [v13 execute];
    result = [(MCMResultPromise *)v10 result];
    error = [result error];

    if (error)
    {
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = error;
        _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) during setCodeSigningMapping; error = %@", buf, 0xCu);
      }
    }
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "Set code sign mapping; error = %@", buf, 0xCu);
  }

  if (v8)
  {
    v18 = objc_opt_new();
  }

  else
  {
    v18 = [[MCMResultBase alloc] initWithError:v9];
  }

  v19 = v18;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v19];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToAccessCodesignMapping = [clientIdentity isAllowedToAccessCodesignMapping];

  return isAllowedToAccessCodesignMapping;
}

- (MCMCommandSetCodeSignMapping)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = MCMCommandSetCodeSignMapping;
  v9 = [(MCMCommand *)&v17 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    identifier = [messageCopy identifier];
    identifier = v9->_identifier;
    v9->_identifier = identifier;

    options = [messageCopy options];
    options = v9->_options;
    v9->_options = options;

    info = [messageCopy info];
    info = v9->_info;
    v9->_info = info;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end