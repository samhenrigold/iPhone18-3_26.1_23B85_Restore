@interface CTXPCTransferPlansRequest
+ (id)allowedClassesForArguments;
- (CTXPCTransferPlansRequest)initWithPlans:(id)plans fromDevice:(id)device;
- (id)deviceIdentifier;
- (id)plans;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCTransferPlansRequest

- (CTXPCTransferPlansRequest)initWithPlans:(id)plans fromDevice:(id)device
{
  v13[2] = *MEMORY[0x1E69E9840];
  plansCopy = plans;
  deviceCopy = device;
  v12[0] = @"plans";
  v12[1] = @"deviceID";
  v13[0] = plansCopy;
  v13[1] = deviceCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCTransferPlansRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plans = [(CTXPCTransferPlansRequest *)self plans];
  deviceIdentifier = [(CTXPCTransferPlansRequest *)self deviceIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CTXPCTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A45F00;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy transferCellularPlans:plans fromDevice:deviceIdentifier completionHandler:v11];
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCTransferPlansRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)plans
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plans"];
  v4 = CTThrowingCastIfClass<CTPlanList>(v3);

  return v4;
}

- (id)deviceIdentifier
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"deviceID"];
  v4 = CTThrowingCastIfClass<CTDeviceIdentifier>(v3);

  return v4;
}

@end