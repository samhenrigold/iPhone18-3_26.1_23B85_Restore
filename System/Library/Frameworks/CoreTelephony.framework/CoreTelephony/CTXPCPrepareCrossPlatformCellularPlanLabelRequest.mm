@interface CTXPCPrepareCrossPlatformCellularPlanLabelRequest
+ (id)allowedClassesForArguments;
- (CTXPCPrepareCrossPlatformCellularPlanLabelRequest)initWithPlanLabels:(id)labels;
- (id)planLabels;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCPrepareCrossPlatformCellularPlanLabelRequest

- (CTXPCPrepareCrossPlatformCellularPlanLabelRequest)initWithPlanLabels:(id)labels
{
  v10[1] = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  v9 = @"planLabels";
  v10[0] = labelsCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCPrepareCrossPlatformCellularPlanLabelRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  planLabels = [(CTXPCPrepareCrossPlatformCellularPlanLabelRequest *)self planLabels];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__CTXPCPrepareCrossPlatformCellularPlanLabelRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46180;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy prepareCrossPlatformCellularPlanLabel:planLabels completion:v10];
}

void __97__CTXPCPrepareCrossPlatformCellularPlanLabelRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [[CTXPCSubscriptionInfoMessage alloc] initWithInfo:v8];
  (*(v6 + 16))(v6, v7, v5);
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCPrepareCrossPlatformCellularPlanLabelRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)planLabels
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"planLabels"];
  v4 = CTThrowingCastIfClass<NSArray<CTCellularPlanCrossPlatformLabel *>>(v3);

  return v4;
}

@end