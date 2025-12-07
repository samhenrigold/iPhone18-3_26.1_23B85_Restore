@interface CTXPCHandleTermsAndConditionsCompletedRequest
+ (id)allowedClassesForArguments;
- (BOOL)consented;
- (CTXPCHandleTermsAndConditionsCompletedRequest)initWithSourceIccid:(id)iccid consented:(BOOL)consented;
- (id)sourceIccid;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCHandleTermsAndConditionsCompletedRequest

- (CTXPCHandleTermsAndConditionsCompletedRequest)initWithSourceIccid:(id)iccid consented:(BOOL)consented
{
  consentedCopy = consented;
  v13[2] = *MEMORY[0x1E69E9840];
  iccidCopy = iccid;
  v12[0] = @"sourceIccid";
  v12[1] = @"consented";
  v13[0] = iccidCopy;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:consentedCopy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCHandleTermsAndConditionsCompletedRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  sourceIccid = [(CTXPCHandleTermsAndConditionsCompletedRequest *)self sourceIccid];
  consented = [(CTXPCHandleTermsAndConditionsCompletedRequest *)self consented];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__CTXPCHandleTermsAndConditionsCompletedRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy handleTermsAndConditionsCompleted:sourceIccid consented:consented completion:v11];
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCHandleTermsAndConditionsCompletedRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)sourceIccid
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"sourceIccid"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (BOOL)consented
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"consented"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end