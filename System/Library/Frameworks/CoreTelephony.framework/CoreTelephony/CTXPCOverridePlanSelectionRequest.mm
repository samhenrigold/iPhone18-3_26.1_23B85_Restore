@interface CTXPCOverridePlanSelectionRequest
+ (id)allowedClassesForArguments;
- (CTXPCOverridePlanSelectionRequest)initWithIccid:(id)iccid;
- (id)iccid;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCOverridePlanSelectionRequest

- (CTXPCOverridePlanSelectionRequest)initWithIccid:(id)iccid
{
  v12[1] = *MEMORY[0x1E69E9840];
  iccidCopy = iccid;
  v5 = iccidCopy;
  if (iccidCopy)
  {
    v11 = @"iccid";
    v12[0] = iccidCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9.receiver = self;
    v9.super_class = CTXPCOverridePlanSelectionRequest;
    v7 = [(CTXPCMessage *)&v9 initWithNamedArguments:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CTXPCOverridePlanSelectionRequest;
    v7 = [(CTXPCRequestMessage *)&v10 init];
  }

  return v7;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  iccid = [(CTXPCOverridePlanSelectionRequest *)self iccid];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CTXPCOverridePlanSelectionRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A45E38;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy overridePlanSelection:iccid completion:v10];
}

void __81__CTXPCOverridePlanSelectionRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v2 + 16))(v2);
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCOverridePlanSelectionRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)iccid
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"iccid"];
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