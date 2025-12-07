@interface CTXPCCancelTransferPlanRequest
+ (id)allowedClassesForArguments;
- (BOOL)keepCache;
- (CTXPCCancelTransferPlanRequest)initWithPlan:(id)plan fromDevice:(id)device keepCache:(BOOL)cache;
- (id)deviceIdentifier;
- (id)plan;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCCancelTransferPlanRequest

- (CTXPCCancelTransferPlanRequest)initWithPlan:(id)plan fromDevice:(id)device keepCache:(BOOL)cache
{
  cacheCopy = cache;
  v16[3] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  deviceCopy = device;
  v15[0] = @"plan";
  v15[1] = @"deviceID";
  v16[0] = planCopy;
  v16[1] = deviceCopy;
  v15[2] = @"keepCache";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:cacheCopy];
  v16[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v14.receiver = self;
  v14.super_class = CTXPCCancelTransferPlanRequest;
  v12 = [(CTXPCMessage *)&v14 initWithNamedArguments:v11];

  return v12;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plan = [(CTXPCCancelTransferPlanRequest *)self plan];
  deviceIdentifier = [(CTXPCCancelTransferPlanRequest *)self deviceIdentifier];
  keepCache = [(CTXPCCancelTransferPlanRequest *)self keepCache];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CTXPCCancelTransferPlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = completionHandlerCopy;
  v13 = v11;
  [handlerCopy cancelCellularPlanTransfer:plan fromDevice:deviceIdentifier keepCache:keepCache completionHandler:v12];
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCCancelTransferPlanRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
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

- (BOOL)keepCache
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"keepCache"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end