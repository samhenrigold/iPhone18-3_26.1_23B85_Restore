@interface MCMCommandDeleteWithUIDClassAndIdentifier
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteWithUIDClassAndIdentifier)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandDeleteWithUIDClassAndIdentifier

- (void)execute
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  deleteCommand = [(MCMCommandDeleteWithUIDClassAndIdentifier *)self deleteCommand];
  [deleteCommand execute];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    resultPromise = [(MCMCommand *)self resultPromise];
    result = [resultPromise result];
    error = [result error];
    v9 = 138412290;
    v10 = error;
    _os_log_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEFAULT, "Delete with uid_t, container_class_t, and identifier result; error = %@", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  deleteCommand = [(MCMCommandDeleteWithUIDClassAndIdentifier *)self deleteCommand];
  preflightClientAllowed = [deleteCommand preflightClientAllowed];

  return preflightClientAllowed;
}

- (MCMCommandDeleteWithUIDClassAndIdentifier)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v19[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = MCMCommandDeleteWithUIDClassAndIdentifier;
  v9 = [(MCMCommand *)&v18 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;

    v19[0] = v9->_containerIdentity;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    context = [(MCMCommand *)v9 context];
    resultPromise = [(MCMCommand *)v9 resultPromise];
    v15 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v12 removeAllCodeSignInfo:0 context:context resultPromise:resultPromise];
    deleteCommand = v9->_deleteCommand;
    v9->_deleteCommand = v15;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end