@interface CTXPCSendComposingIndicatorRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliMessageComposingIndicator)indication;
- (CTLazuliMessageID)messageID;
- (CTXPCSendComposingIndicatorRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d indication:(id)indication security:(id)security;
- (CTXPCSendComposingIndicatorRequest)initWithContext:(id)context groupChatURI:(id)i messageID:(id)d indication:(id)indication security:(id)security;
- (id)security;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendComposingIndicatorRequest

- (CTXPCSendComposingIndicatorRequest)initWithContext:(id)context destination:(id)destination messageID:(id)d indication:(id)indication security:(id)security
{
  v24[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  dCopy = d;
  indicationCopy = indication;
  securityCopy = security;
  v23[0] = @"destination";
  v23[1] = @"messageID";
  v24[0] = destinationCopy;
  v24[1] = dCopy;
  v23[2] = @"indication";
  v24[2] = indicationCopy;
  v19 = v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v22.receiver = self;
  v22.super_class = CTXPCSendComposingIndicatorRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v22 initWithContext:contextCopy namedArguments:v19];

  return v20;
}

- (CTXPCSendComposingIndicatorRequest)initWithContext:(id)context groupChatURI:(id)i messageID:(id)d indication:(id)indication security:(id)security
{
  v24[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  iCopy = i;
  dCopy = d;
  indicationCopy = indication;
  securityCopy = security;
  v23[0] = @"groupChatURI";
  v23[1] = @"messageID";
  v24[0] = iCopy;
  v24[1] = dCopy;
  v23[2] = @"indication";
  v24[2] = indicationCopy;
  v19 = v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v22.receiver = self;
  v22.super_class = CTXPCSendComposingIndicatorRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v22 initWithContext:contextCopy namedArguments:v19];

  return v20;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliMessageComposingIndicator)indication
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"indication"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageComposingIndicator>(v3);

  return v4;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
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

- (CTLazuliGroupChatUri)groupChatURI
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"groupChatURI"];
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

- (id)security
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"security"];
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

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  messageID = [(CTXPCSendComposingIndicatorRequest *)self messageID];
  indication = [(CTXPCSendComposingIndicatorRequest *)self indication];
  security = [(CTXPCSendComposingIndicatorRequest *)self security];
  destination = [(CTXPCSendComposingIndicatorRequest *)self destination];
  if (destination)
  {
    v17 = 0;
    [handlerCopy sendComposingIndicator:context to:destination withMessageID:messageID withIndication:indication withSecurity:security withError:&v17];
    groupChatURI = v17;
    completionHandlerCopy[2](completionHandlerCopy, 0, groupChatURI);
  }

  else
  {
    groupChatURI = [(CTXPCSendComposingIndicatorRequest *)self groupChatURI];
    if (groupChatURI)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __82__CTXPCSendComposingIndicatorRequest_performRequestWithHandler_completionHandler___block_invoke;
      v15[3] = &unk_1E6A43CC8;
      v16 = completionHandlerCopy;
      [handlerCopy sendGroupComposingIndicator:context toGroupDestination:groupChatURI withMessageID:messageID withIndication:indication withSecurity:security completion:v15];
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      completionHandlerCopy[2](completionHandlerCopy, 0, v14);
    }
  }
}

+ (id)allowedClassesForArguments
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCSendComposingIndicatorRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end