@interface CTXPCAddQRCodePlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCAddQRCodePlanRequest)initWithRequest:(id)request appName:(id)name appType:(unint64_t)type;
- (id)appName;
- (id)request;
- (unint64_t)appType;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCAddQRCodePlanRequest

- (CTXPCAddQRCodePlanRequest)initWithRequest:(id)request appName:(id)name appType:(unint64_t)type
{
  v16[3] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  nameCopy = name;
  v15[0] = @"request";
  v15[1] = @"appName";
  v16[0] = requestCopy;
  v16[1] = nameCopy;
  v15[2] = @"appType";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v16[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v14.receiver = self;
  v14.super_class = CTXPCAddQRCodePlanRequest;
  v12 = [(CTXPCMessage *)&v14 initWithNamedArguments:v11];

  return v12;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  request = [(CTXPCAddQRCodePlanRequest *)self request];
  appName = [(CTXPCAddQRCodePlanRequest *)self appName];
  appType = [(CTXPCAddQRCodePlanRequest *)self appType];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CTXPCAddQRCodePlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A45E60;
  v11 = completionHandlerCopy;
  v13 = v11;
  [handlerCopy addQRCodePlanWith:request appName:appName appType:appType completionHandler:v12];
}

void __73__CTXPCAddQRCodePlanRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [[CTXPCAddQRCodePlanResponse alloc] initWithResult:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCAddQRCodePlanRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)request
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"request"];
  v4 = CTThrowingCastIfClass<CTCellularPlanProvisioningRequest>(v3);

  return v4;
}

- (id)appName
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"appName"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (unint64_t)appType
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"appType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end