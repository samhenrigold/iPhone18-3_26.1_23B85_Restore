@interface CTXPCTriggerKeepAliveWakeupRequest
+ (id)allowedClassesForArguments;
- (CTXPCTriggerKeepAliveWakeupRequest)initWithNetworkInterfaceType:(int)type;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCTriggerKeepAliveWakeupRequest

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCTriggerKeepAliveWakeupRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (CTXPCTriggerKeepAliveWakeupRequest)initWithNetworkInterfaceType:(int)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCTriggerKeepAliveWakeupRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"type"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  integerValue = [v10 integerValue];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__CTXPCTriggerKeepAliveWakeupRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy triggerKeepAliveWakeupEvent:integerValue completion:v13];
}

@end