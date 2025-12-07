@interface CTXPCUserDidExitWebsheetFlowForPlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCUserDidExitWebsheetFlowForPlanRequest)initWithPlan:(id)plan;
- (id)plan;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCUserDidExitWebsheetFlowForPlanRequest

- (CTXPCUserDidExitWebsheetFlowForPlanRequest)initWithPlan:(id)plan
{
  v10[1] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  v9 = @"plan";
  v10[0] = planCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCUserDidExitWebsheetFlowForPlanRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plan = [(CTXPCUserDidExitWebsheetFlowForPlanRequest *)self plan];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__CTXPCUserDidExitWebsheetFlowForPlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy userDidExitWebsheetFlowForPlan:plan completion:v10];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCUserDidExitWebsheetFlowForPlanRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)plan
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

  return v4;
}

@end