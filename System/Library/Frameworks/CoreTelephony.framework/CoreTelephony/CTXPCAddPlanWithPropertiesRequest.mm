@interface CTXPCAddPlanWithPropertiesRequest
+ (id)allowedClassesForArguments;
- (CTXPCAddPlanWithPropertiesRequest)initWithRequest:(id)request appName:(id)name appType:(unint64_t)type properties:(id)properties;
- (id)appName;
- (id)properties;
- (id)request;
- (unint64_t)appType;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCAddPlanWithPropertiesRequest

- (CTXPCAddPlanWithPropertiesRequest)initWithRequest:(id)request appName:(id)name appType:(unint64_t)type properties:(id)properties
{
  v19[4] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  nameCopy = name;
  propertiesCopy = properties;
  v18[0] = @"request";
  v18[1] = @"appName";
  v19[0] = requestCopy;
  v19[1] = nameCopy;
  v18[2] = @"appType";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v18[3] = @"properties";
  v19[2] = v13;
  v19[3] = propertiesCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v17.receiver = self;
  v17.super_class = CTXPCAddPlanWithPropertiesRequest;
  v15 = [(CTXPCMessage *)&v17 initWithNamedArguments:v14];

  return v15;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  request = [(CTXPCAddPlanWithPropertiesRequest *)self request];
  appName = [(CTXPCAddPlanWithPropertiesRequest *)self appName];
  appType = [(CTXPCAddPlanWithPropertiesRequest *)self appType];
  properties = [(CTXPCAddPlanWithPropertiesRequest *)self properties];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CTXPCAddPlanWithPropertiesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A45E60;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy addPlanWith:request appName:appName appType:appType properties:properties completionHandler:v13];
}

void __81__CTXPCAddPlanWithPropertiesRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [[CTXPCAddPlanWithProvisioningResponse alloc] initWithResult:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCAddPlanWithPropertiesRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
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

- (id)properties
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"properties"];
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

@end