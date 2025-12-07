@interface CTXPCGetLocalDeviceIdentifierRequest
+ (id)allowedClassesForArguments;
- (CTXPCGetLocalDeviceIdentifierRequest)initWithType:(unint64_t)type clientBundleIdentifier:(id)identifier;
- (id)clientBundleIdentifier;
- (unint64_t)type;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetLocalDeviceIdentifierRequest

- (CTXPCGetLocalDeviceIdentifierRequest)initWithType:(unint64_t)type clientBundleIdentifier:(id)identifier
{
  v13[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12[0] = @"type";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v12[1] = @"bundleID";
  v13[0] = v7;
  v13[1] = identifierCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCGetLocalDeviceIdentifierRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  type = [(CTXPCGetLocalDeviceIdentifierRequest *)self type];
  clientBundleIdentifier = [(CTXPCGetLocalDeviceIdentifierRequest *)self clientBundleIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__CTXPCGetLocalDeviceIdentifierRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A46158;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy getLocalDeviceIdentifier:type clientBundleIdentifier:clientBundleIdentifier completion:v11];
}

void __84__CTXPCGetLocalDeviceIdentifierRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [[CTXPCDeviceIdentifierMessage alloc] initWithDeviceID:v8];
  (*(v6 + 16))(v6, v7, v5);
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCGetLocalDeviceIdentifierRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (unint64_t)type
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"type"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)clientBundleIdentifier
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"bundleID"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end