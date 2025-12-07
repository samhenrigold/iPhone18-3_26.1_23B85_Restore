@interface CTXPCUpdateSecureIntentDataRequest
+ (id)allowedClassesForArguments;
- (BOOL)isDTOEvaluationFailed;
- (CTXPCUpdateSecureIntentDataRequest)initWithData:(id)data isDTOEvaluationFailed:(BOOL)failed;
- (id)data;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCUpdateSecureIntentDataRequest

- (CTXPCUpdateSecureIntentDataRequest)initWithData:(id)data isDTOEvaluationFailed:(BOOL)failed
{
  failedCopy = failed;
  v18[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy)
  {
    v15[0] = @"data";
    v15[1] = @"isDTOEvaluationFailed";
    v16[0] = dataCopy;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:failedCopy];
    v16[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v13.receiver = self;
    v13.super_class = CTXPCUpdateSecureIntentDataRequest;
    v10 = [(CTXPCMessage *)&v13 initWithNamedArguments:v9];
  }

  else
  {
    v17 = @"isDTOEvaluationFailed";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:failedCopy];
    v18[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14.receiver = self;
    v14.super_class = CTXPCUpdateSecureIntentDataRequest;
    v10 = [(CTXPCMessage *)&v14 initWithNamedArguments:v9];
  }

  v11 = v10;

  return v11;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  data = [(CTXPCUpdateSecureIntentDataRequest *)self data];
  isDTOEvaluationFailed = [(CTXPCUpdateSecureIntentDataRequest *)self isDTOEvaluationFailed];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__CTXPCUpdateSecureIntentDataRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy updateSecureIntentData:data isDTOEvaluationFailed:isDTOEvaluationFailed completion:v11];
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCUpdateSecureIntentDataRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)data
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"data"];
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

- (BOOL)isDTOEvaluationFailed
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"isDTOEvaluationFailed"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end