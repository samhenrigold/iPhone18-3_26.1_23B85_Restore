@interface CTXPCDecodeSuggestionsBase64Request
+ (id)allowedClassesForArguments;
- (CTLazuliDeepLinkBase64String)base64String;
- (CTXPCDecodeSuggestionsBase64Request)initWithContext:(id)context base64String:(id)string;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCDecodeSuggestionsBase64Request

- (CTXPCDecodeSuggestionsBase64Request)initWithContext:(id)context base64String:(id)string
{
  v13[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  stringCopy = string;
  v12 = @"base64String";
  v13[0] = stringCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CTXPCDecodeSuggestionsBase64Request;
  v9 = [(CTXPCSubscriptionContextRequest *)&v11 initWithContext:contextCopy namedArguments:v8];

  return v9;
}

- (CTLazuliDeepLinkBase64String)base64String
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"base64String"];
  v4 = CTThrowingCastIfClass<CTLazuliDeepLinkBase64String>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  base64String = [(CTXPCDecodeSuggestionsBase64Request *)self base64String];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CTXPCDecodeSuggestionsBase64Request_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A46270;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy decodeSuggestionsBase64:context withBase64String:base64String completion:v11];
}

void __83__CTXPCDecodeSuggestionsBase64Request_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [[CTXPCDecodeSuggestionsBase64Response alloc] initWithDecodedPayload:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)allowedClassesForArguments
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCDecodeSuggestionsBase64Request;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end