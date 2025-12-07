@interface CTXPCUnhideTransferPlanRequest
+ (id)allowedClassesForArguments;
- (CTXPCUnhideTransferPlanRequest)initWithPlan:(id)plan;
- (id)plan;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCUnhideTransferPlanRequest

- (CTXPCUnhideTransferPlanRequest)initWithPlan:(id)plan
{
  v10[1] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  v9 = @"plan";
  v10[0] = planCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCUnhideTransferPlanRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  plan = [(CTXPCUnhideTransferPlanRequest *)self plan];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CTXPCUnhideTransferPlanRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A460B8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy unhideTransferPlan:plan completion:v10];
}

void __78__CTXPCUnhideTransferPlanRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v5 + 16))(v5, v6, v7);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCUnhideTransferPlanRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)plan
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"plan"];
  v4 = CTThrowingCastIfClass<CTPlan>(v3);

  return v4;
}

@end