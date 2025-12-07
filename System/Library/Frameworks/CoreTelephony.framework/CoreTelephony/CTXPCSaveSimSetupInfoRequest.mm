@interface CTXPCSaveSimSetupInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCSaveSimSetupInfoRequest)initWithInfo:(id)info info:(id)a4;
- (id)info;
- (id)infoKey;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSaveSimSetupInfoRequest

- (CTXPCSaveSimSetupInfoRequest)initWithInfo:(id)info info:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = a4;
  v12[0] = @"infoKey";
  v12[1] = @"info";
  v13[0] = infoCopy;
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCSaveSimSetupInfoRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  infoKey = [(CTXPCSaveSimSetupInfoRequest *)self infoKey];
  info = [(CTXPCSaveSimSetupInfoRequest *)self info];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CTXPCSaveSimSetupInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy saveSimSetupInfo:infoKey info:info completion:v11];
}

+ (id)allowedClassesForArguments
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCSaveSimSetupInfoRequest;
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

- (id)info
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"info"];
  v4 = CTThrowingCastIfClass<NSObject>(v3);

  return v4;
}

@end