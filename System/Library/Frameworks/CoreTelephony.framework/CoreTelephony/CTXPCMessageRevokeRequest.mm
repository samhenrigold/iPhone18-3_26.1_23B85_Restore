@interface CTXPCMessageRevokeRequest
+ (id)allowedClassesForArguments;
- (CTLazuliMessageID)messageID;
- (CTLazuliMessageRevokeData)revokeData;
- (CTXPCMessageRevokeRequest)initWithContext:(id)context revokeData:(id)data messageID:(id)d;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCMessageRevokeRequest

- (CTXPCMessageRevokeRequest)initWithContext:(id)context revokeData:(id)data messageID:(id)d
{
  v16[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dataCopy = data;
  dCopy = d;
  v15[0] = @"revokeData";
  v15[1] = @"messageID";
  v16[0] = dataCopy;
  v16[1] = dCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14.receiver = self;
  v14.super_class = CTXPCMessageRevokeRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v14 initWithContext:contextCopy namedArguments:v11];

  return v12;
}

- (CTLazuliMessageRevokeData)revokeData
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"revokeData"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageRevokeData>(v3);

  return v4;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  revokeData = [(CTXPCMessageRevokeRequest *)self revokeData];
  messageID = [(CTXPCMessageRevokeRequest *)self messageID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CTXPCMessageRevokeRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = completionHandlerCopy;
  v13 = v11;
  [handlerCopy revokeMessage:context withRevokeData:revokeData withMessageID:messageID completion:v12];
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCMessageRevokeRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end