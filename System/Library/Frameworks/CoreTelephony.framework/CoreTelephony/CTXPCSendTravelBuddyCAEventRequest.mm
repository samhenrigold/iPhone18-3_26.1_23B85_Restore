@interface CTXPCSendTravelBuddyCAEventRequest
+ (id)allowedClassesForArguments;
- (CTXPCSendTravelBuddyCAEventRequest)initWithAction:(id)action carrierName:(id)name;
- (id)action;
- (id)carrierName;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendTravelBuddyCAEventRequest

- (CTXPCSendTravelBuddyCAEventRequest)initWithAction:(id)action carrierName:(id)name
{
  v13[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  nameCopy = name;
  v12[0] = @"action";
  v12[1] = @"carrier";
  v13[0] = actionCopy;
  v13[1] = nameCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCSendTravelBuddyCAEventRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  action = [(CTXPCSendTravelBuddyCAEventRequest *)self action];
  carrierName = [(CTXPCSendTravelBuddyCAEventRequest *)self carrierName];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__CTXPCSendTravelBuddyCAEventRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy sendTravelBuddyCAEventWithCompletion:action carrierName:carrierName completion:v11];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSendTravelBuddyCAEventRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)action
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"action"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)carrierName
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"carrier"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end