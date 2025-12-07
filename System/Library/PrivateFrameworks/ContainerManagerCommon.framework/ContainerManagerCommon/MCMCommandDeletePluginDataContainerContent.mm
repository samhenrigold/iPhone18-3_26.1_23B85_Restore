@interface MCMCommandDeletePluginDataContainerContent
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeletePluginDataContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandDeletePluginDataContainerContent

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [MCMCommandDeleteContainerContent alloc];
  containerIdentity = [(MCMCommandDeletePluginDataContainerContent *)self containerIdentity];
  context = [(MCMCommand *)self context];
  resultPromise = [(MCMCommand *)self resultPromise];
  v8 = [(MCMCommandDeleteContainerContent *)v4 initWithContainerIdentity:containerIdentity context:context resultPromise:resultPromise];

  [(MCMCommandDeleteContainerContent *)v8 execute];
  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    resultPromise2 = [(MCMCommand *)self resultPromise];
    result = [resultPromise2 result];
    error = [result error];
    v13 = 138412290;
    v14 = error;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Wipe plugin data container; error = %@", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  containerIdentity = [(MCMCommandDeletePluginDataContainerContent *)self containerIdentity];
  v6 = [clientIdentity isAllowedToPerformOperationType:3 containerIdentity:containerIdentity part:0 partDomain:0 access:0];

  return v6 != 0;
}

- (MCMCommandDeletePluginDataContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandDeletePluginDataContainerContent;
  v9 = [(MCMCommand *)&v13 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end