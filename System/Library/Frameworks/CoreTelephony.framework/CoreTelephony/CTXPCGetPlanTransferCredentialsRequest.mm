@interface CTXPCGetPlanTransferCredentialsRequest
+ (id)allowedClassesForArguments;
- (BOOL)crossPlatform;
- (CTXPCGetPlanTransferCredentialsRequest)initWithIccid:(id)iccid crossPlatform:(BOOL)platform;
- (id)iccid;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetPlanTransferCredentialsRequest

- (CTXPCGetPlanTransferCredentialsRequest)initWithIccid:(id)iccid crossPlatform:(BOOL)platform
{
  platformCopy = platform;
  v13[2] = *MEMORY[0x1E69E9840];
  iccidCopy = iccid;
  v12[0] = @"iccid";
  v12[1] = @"crossPlatform";
  v13[0] = iccidCopy;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:platformCopy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCGetPlanTransferCredentialsRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  iccid = [(CTXPCGetPlanTransferCredentialsRequest *)self iccid];
  crossPlatform = [(CTXPCGetPlanTransferCredentialsRequest *)self crossPlatform];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__CTXPCGetPlanTransferCredentialsRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A45F28;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy getPlanTransferCredentials:iccid crossPlatform:crossPlatform completion:v11];
}

void __86__CTXPCGetPlanTransferCredentialsRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[CTXPCGetPlanTransferCredentialsResponse alloc] initWithInfo:v7];
  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCGetPlanTransferCredentialsRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)iccid
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"iccid"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (BOOL)crossPlatform
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"crossPlatform"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end