@interface CTXPCTraveleSIMCheckResponse
+ (id)allowedClassesForArguments;
- (BOOL)isTraveleSIM;
- (BOOL)isUserTraveling;
- (CTXPCTraveleSIMCheckResponse)initWithResults:(BOOL)results travelStatus:(BOOL)status;
@end

@implementation CTXPCTraveleSIMCheckResponse

- (CTXPCTraveleSIMCheckResponse)initWithResults:(BOOL)results travelStatus:(BOOL)status
{
  statusCopy = status;
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"isTraveleSIM";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:results];
  v12[1] = @"isUserTraveling";
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:statusCopy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = CTXPCTraveleSIMCheckResponse;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCTraveleSIMCheckResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (BOOL)isTraveleSIM
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"isTraveleSIM"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isUserTraveling
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"isUserTraveling"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end