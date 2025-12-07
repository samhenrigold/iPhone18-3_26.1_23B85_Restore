@interface CTXPCTravelTripInfoRequest
+ (id)allowedClassesForArguments;
- (CTXPCTravelTripInfoRequest)initWithCountryCode:(id)code date:(id)date;
- (id)arrivalCountryCode;
- (id)arrivalDate;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCTravelTripInfoRequest

- (CTXPCTravelTripInfoRequest)initWithCountryCode:(id)code date:(id)date
{
  v13[2] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  dateCopy = date;
  v12[0] = @"arrivalCountryCode";
  v12[1] = @"arrivalDate";
  v13[0] = codeCopy;
  v13[1] = dateCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCTravelTripInfoRequest;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  arrivalCountryCode = [(CTXPCTravelTripInfoRequest *)self arrivalCountryCode];
  arrivalDate = [(CTXPCTravelTripInfoRequest *)self arrivalDate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CTXPCTravelTripInfoRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy setTripInfo:arrivalCountryCode date:arrivalDate completion:v11];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCTravelTripInfoRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)arrivalCountryCode
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"arrivalCountryCode"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (id)arrivalDate
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"arrivalDate"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end