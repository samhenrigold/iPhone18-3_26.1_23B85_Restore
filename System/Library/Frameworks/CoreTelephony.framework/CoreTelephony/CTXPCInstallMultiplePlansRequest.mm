@interface CTXPCInstallMultiplePlansRequest
+ (id)allowedClassesForArguments;
- (CTXPCInstallMultiplePlansRequest)initWithPlans:(id)plans;
- (id)plans;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCInstallMultiplePlansRequest

- (CTXPCInstallMultiplePlansRequest)initWithPlans:(id)plans
{
  v10[1] = *MEMORY[0x1E69E9840];
  plansCopy = plans;
  v9 = @"plans";
  v10[0] = plansCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCInstallMultiplePlansRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plans = [(CTXPCInstallMultiplePlansRequest *)self plans];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CTXPCInstallMultiplePlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy installMultiplePlans:plans completionHandler:v10];
}

+ (id)allowedClassesForArguments
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCInstallMultiplePlansRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
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

@end