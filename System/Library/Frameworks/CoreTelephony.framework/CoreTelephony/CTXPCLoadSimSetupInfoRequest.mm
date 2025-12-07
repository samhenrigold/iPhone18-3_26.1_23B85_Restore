@interface CTXPCLoadSimSetupInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCLoadSimSetupInfoRequest)initWithInfo:(id)info;
- (id)infoKey;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCLoadSimSetupInfoRequest

- (CTXPCLoadSimSetupInfoRequest)initWithInfo:(id)info
{
  v10[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = @"infoKey";
  v10[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCLoadSimSetupInfoRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  infoKey = [(CTXPCLoadSimSetupInfoRequest *)self infoKey];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CTXPCLoadSimSetupInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46040;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy loadSimSetupInfo:infoKey completion:v10];
}

void __76__CTXPCLoadSimSetupInfoRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [[CTXPCLoadSimSetupInfoResponse alloc] initWithInfo:v5];
  (*(v3 + 16))(v3, v4, 0);
}

+ (id)allowedClassesForArguments
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCLoadSimSetupInfoRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)infoKey
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"infoKey"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end