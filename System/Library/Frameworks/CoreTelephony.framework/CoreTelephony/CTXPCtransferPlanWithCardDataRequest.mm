@interface CTXPCtransferPlanWithCardDataRequest
+ (id)allowedClassesForArguments;
- (CTXPCtransferPlanWithCardDataRequest)initWithCardData:(id)data flowType:(unint64_t)type;
- (id)cardData;
- (unint64_t)flowType;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCtransferPlanWithCardDataRequest

- (CTXPCtransferPlanWithCardDataRequest)initWithCardData:(id)data flowType:(unint64_t)type
{
  v13[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12[0] = @"cardData";
  v12[1] = @"flowType";
  v13[0] = dataCopy;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCtransferPlanWithCardDataRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  cardData = [(CTXPCtransferPlanWithCardDataRequest *)self cardData];
  flowType = [(CTXPCtransferPlanWithCardDataRequest *)self flowType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__CTXPCtransferPlanWithCardDataRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy transferPlanWithCardData:cardData flowType:flowType completion:v11];
}

void __84__CTXPCtransferPlanWithCardDataRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(CTXPCResponseMessage);
  (*(v3 + 16))(v3, v4, v5);
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCtransferPlanWithCardDataRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)cardData
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"cardData"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (unint64_t)flowType
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"flowType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end