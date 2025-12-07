@interface CTXPCFetchRenderInformationRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliOperationID)operationID;
- (CTXPCFetchRenderInformationRequest)initWithContext:(id)context destination:(id)destination;
- (CTXPCFetchRenderInformationRequest)initWithContext:(id)context destination:(id)destination operationID:(id)d;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCFetchRenderInformationRequest

- (CTXPCFetchRenderInformationRequest)initWithContext:(id)context destination:(id)destination
{
  v13[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  v12 = @"destination";
  v13[0] = destinationCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CTXPCFetchRenderInformationRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v11 initWithContext:contextCopy namedArguments:v8];

  return v9;
}

- (CTXPCFetchRenderInformationRequest)initWithContext:(id)context destination:(id)destination operationID:(id)d
{
  v16[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  dCopy = d;
  v15[0] = @"destination";
  v15[1] = @"operationID";
  v16[0] = destinationCopy;
  v16[1] = dCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14.receiver = self;
  v14.super_class = CTXPCFetchRenderInformationRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v14 initWithContext:contextCopy namedArguments:v11];

  return v12;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliOperationID)operationID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operationID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCFetchRenderInformationRequest *)self destination];
  operationID = [(CTXPCFetchRenderInformationRequest *)self operationID];
  if (operationID)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__CTXPCFetchRenderInformationRequest_performRequestWithHandler_completionHandler___block_invoke;
    v14[3] = &unk_1E6A43CC8;
    v11 = &v15;
    v15 = completionHandlerCopy;
    [handlerCopy fetchRenderInformation:context forChatBot:destination withOperationID:operationID completion:v14];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__CTXPCFetchRenderInformationRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v12[3] = &unk_1E6A43CC8;
    v11 = &v13;
    v13 = completionHandlerCopy;
    [handlerCopy fetchChatBotRenderInformation:context forDestination:destination completion:v12];
  }
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCFetchRenderInformationRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end