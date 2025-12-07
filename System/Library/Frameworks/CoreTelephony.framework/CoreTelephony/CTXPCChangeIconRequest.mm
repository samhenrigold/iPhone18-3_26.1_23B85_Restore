@interface CTXPCChangeIconRequest
+ (id)allowedClassesForArguments;
- (CTLazuliGroupChatIcon)icon;
- (CTLazuliGroupChatUri)groupChatURI;
- (CTLazuliOperationID)operationID;
- (CTXPCChangeIconRequest)initWithContext:(id)context groupChatURI:(id)i icon:(id)icon operationID:(id)d security:(id)security;
- (id)security;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCChangeIconRequest

- (CTXPCChangeIconRequest)initWithContext:(id)context groupChatURI:(id)i icon:(id)icon operationID:(id)d security:(id)security
{
  v24[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  iCopy = i;
  iconCopy = icon;
  dCopy = d;
  securityCopy = security;
  v23[0] = @"groupChatURI";
  v23[1] = @"icon";
  v24[0] = iCopy;
  v24[1] = iconCopy;
  v23[2] = @"operationID";
  v24[2] = dCopy;
  v19 = v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v22.receiver = self;
  v22.super_class = CTXPCChangeIconRequest;
  v20 = [(CTXPCSubscriptionContextRequest *)&v22 initWithContext:contextCopy namedArguments:v19];

  return v20;
}

- (CTLazuliGroupChatUri)groupChatURI
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"groupChatURI"];
  v4 = CTThrowingCastIfClass<CTLazuliGroupChatUri>(v3);

  return v4;
}

- (CTLazuliGroupChatIcon)icon
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"icon"];
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

- (CTLazuliOperationID)operationID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operationID"];
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

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
  groupChatURI = [(CTXPCChangeIconRequest *)self groupChatURI];
  icon = [(CTXPCChangeIconRequest *)self icon];
  operationID = [(CTXPCChangeIconRequest *)self operationID];
  security = [(CTXPCChangeIconRequest *)self security];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CTXPCChangeIconRequest_performRequestWithHandler_completionHandler___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v13 = completionHandlerCopy;
  v15 = v13;
  [handlerCopy changeIcon:context forGroupChat:groupChatURI withNewIcon:icon withOperationID:operationID withSecurity:security completion:v14];
}

+ (id)allowedClassesForArguments
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCChangeIconRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end