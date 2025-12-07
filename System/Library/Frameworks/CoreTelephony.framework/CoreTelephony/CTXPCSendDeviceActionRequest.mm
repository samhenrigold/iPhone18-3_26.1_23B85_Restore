@interface CTXPCSendDeviceActionRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliMessageID)messageID;
- (CTLazuliSuggestedActionDevice)action;
- (CTXPCSendDeviceActionRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d action:(id)action;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendDeviceActionRequest

- (CTXPCSendDeviceActionRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d action:(id)action
{
  v19[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  dCopy = d;
  actionCopy = action;
  v18[0] = @"destination";
  v18[1] = @"messageID";
  v19[0] = destinationCopy;
  v19[1] = dCopy;
  v18[2] = @"action";
  v19[2] = actionCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v17.receiver = self;
  v17.super_class = CTXPCSendDeviceActionRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v17 initWithContext:contextCopy namedArguments:v14];

  return v15;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliSuggestedActionDevice)action
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"action"];
  v4 = CTThrowingCastIfClass<CTLazuliSuggestedActionDevice>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCSendDeviceActionRequest *)self destination];
  messageID = [(CTXPCSendDeviceActionRequest *)self messageID];
  action = [(CTXPCSendDeviceActionRequest *)self action];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CTXPCSendDeviceActionRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy sendDeviceAction:context to:destination withMessageID:messageID withAction:action completion:v13];
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCSendDeviceActionRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end