@interface CTXPCReadCachedCapabilitiesRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTXPCReadCachedCapabilitiesRequest)initWithContext:(id)context destination:(id)destination;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCReadCachedCapabilitiesRequest

- (CTXPCReadCachedCapabilitiesRequest)initWithContext:(id)context destination:(id)destination
{
  v13[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  v12 = @"destination";
  v13[0] = destinationCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CTXPCReadCachedCapabilitiesRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v11 initWithContext:contextCopy namedArguments:v8];

  return v9;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCReadCachedCapabilitiesRequest *)self destination];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__CTXPCReadCachedCapabilitiesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A46220;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy readCachedCapabilities:context forDestination:destination completion:v11];
}

void __82__CTXPCReadCachedCapabilitiesRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[CTXPCReadCachedCapabilitiesResponse alloc] initWithCapabilitiesInfo:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCReadCachedCapabilitiesRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end