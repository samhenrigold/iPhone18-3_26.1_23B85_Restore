@interface CTXPCSetRatSelectionMaskRequest
+ (id)allowedClassesForArguments;
- (CTXPCSetRatSelectionMaskRequest)initWithDescriptor:(id)descriptor selection:(unsigned __int8)selection preferred:(unsigned __int8)preferred;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetRatSelectionMaskRequest

- (CTXPCSetRatSelectionMaskRequest)initWithDescriptor:(id)descriptor selection:(unsigned __int8)selection preferred:(unsigned __int8)preferred
{
  preferredCopy = preferred;
  selectionCopy = selection;
  v16[2] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v15[0] = @"selection";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:selectionCopy];
  v15[1] = @"preferred";
  v16[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:preferredCopy];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14.receiver = self;
  v14.super_class = CTXPCSetRatSelectionMaskRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v14 initWithDescriptor:descriptorCopy namedArguments:v11];

  return v12;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"selection"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  unsignedIntValue = [v10 unsignedIntValue];

  namedArguments2 = [(CTXPCMessage *)self namedArguments];
  v13 = [namedArguments2 objectForKey:@"preferred"];
  v14 = CTThrowingCastIfClass<NSNumber>(v13);
  LOBYTE(v9) = [v14 unsignedIntValue];

  descriptor = [(CTXPCSubscriptionContextRequest *)self descriptor];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__CTXPCSetRatSelectionMaskRequest_performRequestWithHandler_completionHandler___block_invoke;
  v17[3] = &unk_1E6A43CC8;
  v16 = completionHandlerCopy;
  v18 = v16;
  [handlerCopy setRatSelectionMask:descriptor selection:unsignedIntValue preferred:v9 completion:v17];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSetRatSelectionMaskRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end