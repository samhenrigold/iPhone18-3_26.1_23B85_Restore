@interface CTXPCGetSignalStrengthInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetSignalStrengthInfoRequest)initWithContext:(id)context forPublic:(BOOL)public;
- (CTXPCGetSignalStrengthInfoRequest)initWithDescriptor:(id)descriptor forPublic:(BOOL)public;
- (int)requiredEntitlement;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetSignalStrengthInfoRequest

- (CTXPCGetSignalStrengthInfoRequest)initWithContext:(id)context forPublic:(BOOL)public
{
  publicCopy = public;
  v13[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v12 = @"public";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:publicCopy];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CTXPCGetSignalStrengthInfoRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v11 initWithContext:contextCopy namedArguments:v8];

  return v9;
}

- (CTXPCGetSignalStrengthInfoRequest)initWithDescriptor:(id)descriptor forPublic:(BOOL)public
{
  publicCopy = public;
  v13[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v12 = @"public";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:publicCopy];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CTXPCGetSignalStrengthInfoRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v11 initWithDescriptor:descriptorCopy namedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"public"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    descriptor = [(CTXPCSubscriptionContextRequest *)self descriptor];
    v13 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
    v15[3] = &unk_1E6A488C8;
    v15[4] = completionHandlerCopy;
    [handlerCopy getPublicSignalStrength:descriptor completion:v15];
  }

  else
  {
    descriptor = [(CTXPCSubscriptionContextRequest *)self context];
    v13 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v14[3] = &unk_1E6A488C8;
    v14[4] = completionHandlerCopy;
    [handlerCopy getSignalStrengthInfo:descriptor completion:v14];
  }
}

void __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetSignalStrengthInfoResponse alloc] initWithSignalStrengthInfo:v7];
  }

  (*(*(a1 + 32) + 16))();
}

void __81__CTXPCGetSignalStrengthInfoRequest_performRequestWithHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetSignalStrengthInfoResponse alloc] initWithSignalStrengthInfo:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (int)requiredEntitlement
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"public"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    return 8;
  }

  else
  {
    return 3;
  }
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSignalStrengthInfoRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end