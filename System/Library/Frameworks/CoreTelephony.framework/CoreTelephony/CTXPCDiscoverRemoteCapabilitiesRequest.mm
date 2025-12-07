@interface CTXPCDiscoverRemoteCapabilitiesRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliOperationID)operationID;
- (CTXPCDiscoverRemoteCapabilitiesRequest)initWithContext:(id)context destination:(id)destination operationID:(id)d;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCDiscoverRemoteCapabilitiesRequest

- (CTXPCDiscoverRemoteCapabilitiesRequest)initWithContext:(id)context destination:(id)destination operationID:(id)d
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
  v14.super_class = CTXPCDiscoverRemoteCapabilitiesRequest;
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
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCDiscoverRemoteCapabilitiesRequest *)self destination];
  operationID = [(CTXPCDiscoverRemoteCapabilitiesRequest *)self operationID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CTXPCDiscoverRemoteCapabilitiesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = completionHandlerCopy;
  v13 = v11;
  [handlerCopy discoverRemoteCapabilities:context forDestination:destination withOperationID:operationID completion:v12];
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCDiscoverRemoteCapabilitiesRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end