@interface MCMCommandFlushContainerCache
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandFlushContainerCache)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandFlushContainerCache

- (void)execute
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  context2 = [(MCMCommand *)self context];
  clientIdentity = [context2 clientIdentity];
  userIdentity = [clientIdentity userIdentity];
  containerConfig = [(MCMCommandFlushContainerCache *)self containerConfig];
  [containerCache flushCacheForUserIdentity:userIdentity containerClass:objc_msgSend(containerConfig transient:{"containerClass"), -[MCMCommandFlushContainerCache transient](self, "transient")}];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "Cache flushed", v13, 2u);
  }

  v11 = objc_opt_new();
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v11];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToControlCaches = [clientIdentity isAllowedToControlCaches];

  return isAllowedToControlCaches;
}

- (MCMCommandFlushContainerCache)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandFlushContainerCache;
  v10 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v10)
  {
    containerConfig = [messageCopy containerConfig];
    containerConfig = v10->_containerConfig;
    v10->_containerConfig = containerConfig;

    v10->_transient = [messageCopy transient];
    objc_storeStrong(&v10->_message, message);
  }

  return v10;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end