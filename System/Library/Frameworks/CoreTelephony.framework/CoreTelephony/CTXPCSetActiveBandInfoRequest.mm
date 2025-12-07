@interface CTXPCSetActiveBandInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCSetActiveBandInfoRequest)initWithContext:(id)context type:(unint64_t)type bandInfo:(id)info;
- (CTXPCSetActiveBandInfoRequest)initWithContext:(id)context type:(unint64_t)type bands:(id)bands;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSetActiveBandInfoRequest

- (CTXPCSetActiveBandInfoRequest)initWithContext:(id)context type:(unint64_t)type bands:(id)bands
{
  v16[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  bandsCopy = bands;
  v15[0] = @"type";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v15[1] = @"bands";
  v16[0] = v10;
  v16[1] = bandsCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14.receiver = self;
  v14.super_class = CTXPCSetActiveBandInfoRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v14 initWithContext:contextCopy namedArguments:v11];

  return v12;
}

- (CTXPCSetActiveBandInfoRequest)initWithContext:(id)context type:(unint64_t)type bandInfo:(id)info
{
  v16[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  infoCopy = info;
  v15[0] = @"type";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v15[1] = @"bands";
  v16[0] = v10;
  v16[1] = infoCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14.receiver = self;
  v14.super_class = CTXPCSetActiveBandInfoRequest;
  v12 = [(CTXPCSubscriptionContextRequest *)&v14 initWithContext:contextCopy namedArguments:v11];

  return v12;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"type"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  unsignedIntValue = [v10 unsignedIntValue];

  namedArguments2 = [(CTXPCMessage *)self namedArguments];
  v13 = [namedArguments2 objectForKey:@"bands"];

  if (unsignedIntValue == 1)
  {
    v14 = CTThrowingCastIfClass<CTBandInfo>(v13);
    context = [(CTXPCSubscriptionContextRequest *)self context];
    v16 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__CTXPCSetActiveBandInfoRequest_performRequestWithHandler_completionHandler___block_invoke_2;
    v17[3] = &unk_1E6A43CC8;
    v17[4] = completionHandlerCopy;
    [handlerCopy setActiveBandInfo:context bands:v14 completion:v17];
    goto LABEL_5;
  }

  if (!unsignedIntValue)
  {
    v14 = CTThrowingCastIfClass<NSDictionary>(v13);
    context = [(CTXPCSubscriptionContextRequest *)self context];
    v16 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__CTXPCSetActiveBandInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
    v18[3] = &unk_1E6A43CC8;
    v18[4] = completionHandlerCopy;
    [handlerCopy setBandInfo:context bands:v14 completion:v18];
LABEL_5:
  }
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCSetActiveBandInfoRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end