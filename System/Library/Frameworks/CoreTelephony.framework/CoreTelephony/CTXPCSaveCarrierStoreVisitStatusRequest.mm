@interface CTXPCSaveCarrierStoreVisitStatusRequest
+ (id)allowedClassesForArguments;
- (BOOL)visited;
- (CTXPCSaveCarrierStoreVisitStatusRequest)initWithCarrier:(id)carrier visited:(BOOL)visited;
- (id)carrier;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSaveCarrierStoreVisitStatusRequest

- (CTXPCSaveCarrierStoreVisitStatusRequest)initWithCarrier:(id)carrier visited:(BOOL)visited
{
  visitedCopy = visited;
  v13[2] = *MEMORY[0x1E69E9840];
  carrierCopy = carrier;
  v12[0] = @"carrier";
  v12[1] = @"visited";
  v13[0] = carrierCopy;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:visitedCopy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCSaveCarrierStoreVisitStatusRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  carrier = [(CTXPCSaveCarrierStoreVisitStatusRequest *)self carrier];
  visited = [(CTXPCSaveCarrierStoreVisitStatusRequest *)self visited];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__CTXPCSaveCarrierStoreVisitStatusRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy saveCarrierStoreVisitStatus:carrier visited:visited completion:v11];
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCSaveCarrierStoreVisitStatusRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)carrier
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"carrier"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (BOOL)visited
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"visited"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end