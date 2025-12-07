@interface CTXPCPrepareCrossPlatformPlanTransferRequest
+ (id)allowedClassesForArguments;
- (CTXPCPrepareCrossPlatformPlanTransferRequest)initWithRequest:(id)request;
- (id)request;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCPrepareCrossPlatformPlanTransferRequest

- (CTXPCPrepareCrossPlatformPlanTransferRequest)initWithRequest:(id)request
{
  v10[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v9 = @"request";
  v10[0] = requestCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCPrepareCrossPlatformPlanTransferRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  request = [(CTXPCPrepareCrossPlatformPlanTransferRequest *)self request];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__CTXPCPrepareCrossPlatformPlanTransferRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy prepareCrossPlatformPlanTransfer:request completion:v10];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCPrepareCrossPlatformPlanTransferRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)request
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"request"];
  v4 = CTThrowingCastIfClass<CTCellularPlanTransferCrossPlatformRequest>(v3);

  return v4;
}

@end