@interface CTXPCSetSupports5GStandaloneRequest
+ (id)allowedClassesForArguments;
- (CTXPCSetSupports5GStandaloneRequest)initWithDescriptor:(id)descriptor enabled:(BOOL)enabled;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetSupports5GStandaloneRequest

- (CTXPCSetSupports5GStandaloneRequest)initWithDescriptor:(id)descriptor enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v12 = @"enable";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CTXPCSetSupports5GStandaloneRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v11 initWithDescriptor:descriptorCopy namedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"enable"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  bOOLValue = [v10 BOOLValue];

  descriptor = [(CTXPCSubscriptionContextRequest *)self descriptor];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__CTXPCSetSupports5GStandaloneRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = completionHandlerCopy;
  v15 = v13;
  [handlerCopy setSupports5GStandalone:descriptor enabled:bOOLValue completion:v14];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSetSupports5GStandaloneRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end