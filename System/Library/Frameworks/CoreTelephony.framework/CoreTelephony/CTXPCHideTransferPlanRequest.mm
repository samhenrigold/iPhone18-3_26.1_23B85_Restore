@interface CTXPCHideTransferPlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCHideTransferPlanRequest)initWithPlan:(id)plan fromDevice:(id)device;
- (id)deviceIdentifier;
- (id)plan;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCHideTransferPlanRequest

- (CTXPCHideTransferPlanRequest)initWithPlan:(id)plan fromDevice:(id)device
{
  v13[2] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  deviceCopy = device;
  v12[0] = @"plan";
  v12[1] = @"deviceID";
  v13[0] = planCopy;
  v13[1] = deviceCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCHideTransferPlanRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plan = [(CTXPCHideTransferPlanRequest *)self plan];
  deviceIdentifier = [(CTXPCHideTransferPlanRequest *)self deviceIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CTXPCHideTransferPlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A460B8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy hideTransferCellularPlan:plan fromDevice:deviceIdentifier completion:v11];
}

void __76__CTXPCHideTransferPlanRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCHideTransferPlanRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)plan
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

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