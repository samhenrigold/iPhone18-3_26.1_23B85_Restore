@interface CTXPCActivateCrossPlatformTransportRequest
+ (id)allowedClassesForArguments;
- (CTXPCActivateCrossPlatformTransportRequest)initWithEndpoint:(unint64_t)endpoint from:(int)from;
- (int)pid;
- (unint64_t)endpoint;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCActivateCrossPlatformTransportRequest

- (CTXPCActivateCrossPlatformTransportRequest)initWithEndpoint:(unint64_t)endpoint from:(int)from
{
  v4 = *&from;
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"endpoint";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:endpoint];
  v12[1] = @"pid";
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCActivateCrossPlatformTransportRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  endpoint = [(CTXPCActivateCrossPlatformTransportRequest *)self endpoint];
  v9 = [(CTXPCActivateCrossPlatformTransportRequest *)self pid];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__CTXPCActivateCrossPlatformTransportRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy activateCrossPlatformTransport:endpoint from:v9 completion:v11];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCActivateCrossPlatformTransportRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (unint64_t)endpoint
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"endpoint"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int)pid
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"pid"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end