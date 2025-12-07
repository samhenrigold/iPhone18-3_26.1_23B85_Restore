@interface CTXPCValidateProximityTransferRequest
+ (id)allowedClassesForArguments;
- (CTXPCValidateProximityTransferRequest)initWithEndpoint:(unint64_t)endpoint pin:(id)pin;
- (id)pin;
- (unint64_t)endpoint;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCValidateProximityTransferRequest

- (CTXPCValidateProximityTransferRequest)initWithEndpoint:(unint64_t)endpoint pin:(id)pin
{
  v13[2] = *MEMORY[0x1E69E9840];
  pinCopy = pin;
  v12[0] = @"endpoint";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:endpoint];
  v12[1] = @"pin";
  v13[0] = v7;
  v13[1] = pinCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCValidateProximityTransferRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  endpoint = [(CTXPCValidateProximityTransferRequest *)self endpoint];
  v9 = [(CTXPCValidateProximityTransferRequest *)self pin];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__CTXPCValidateProximityTransferRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy validateProximityTransfer:endpoint pin:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCValidateProximityTransferRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (unint64_t)endpoint
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"endpoint"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)pin
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"pin"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end