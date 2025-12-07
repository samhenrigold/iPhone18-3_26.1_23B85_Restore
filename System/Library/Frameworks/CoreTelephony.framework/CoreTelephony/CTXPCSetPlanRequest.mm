@interface CTXPCSetPlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCSetPlanRequest)initWithPlan:(id)plan state:(unint64_t)state;
- (id)plan;
- (unint64_t)state;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetPlanRequest

- (CTXPCSetPlanRequest)initWithPlan:(id)plan state:(unint64_t)state
{
  v13[2] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  v12[0] = @"plan";
  v12[1] = @"state";
  v13[0] = planCopy;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCSetPlanRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plan = [(CTXPCSetPlanRequest *)self plan];
  state = [(CTXPCSetPlanRequest *)self state];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CTXPCSetPlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy setPlan:plan state:state completion:v11];
}

- (id)plan
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

  return v4;
}

- (unint64_t)state
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"state"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCSetPlanRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end