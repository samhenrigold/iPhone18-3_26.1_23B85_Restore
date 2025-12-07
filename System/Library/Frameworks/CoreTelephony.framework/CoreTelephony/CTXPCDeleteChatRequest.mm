@interface CTXPCDeleteChatRequest
+ (id)allowedClassesForArguments;
- (CTXPCDeleteChatRequest)initWithContext:(id)context chat:(id)chat;
- (NSString)chat;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCDeleteChatRequest

- (CTXPCDeleteChatRequest)initWithContext:(id)context chat:(id)chat
{
  v13[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  chatCopy = chat;
  v12 = @"chat";
  v13[0] = chatCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CTXPCDeleteChatRequest;
  v9 = [(CTXPCSubscriptionContextRequest *)&v11 initWithContext:contextCopy namedArguments:v8];

  return v9;
}

- (NSString)chat
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"chat"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  chat = [(CTXPCDeleteChatRequest *)self chat];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CTXPCDeleteChatRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy deleteChat:context chat:chat completion:v11];
}

+ (id)allowedClassesForArguments
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCDeleteChatRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end