@interface CTXPCGetRegulatedRATsSwitchEnabledResponse
+ (id)allowedClassesForArguments;
- (BOOL)enabled;
- (CTXPCGetRegulatedRATsSwitchEnabledResponse)initWithIsEnabled:(BOOL)enabled;
@end

@implementation CTXPCGetRegulatedRATsSwitchEnabledResponse

- (CTXPCGetRegulatedRATsSwitchEnabledResponse)initWithIsEnabled:(BOOL)enabled
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"enable";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetRegulatedRATsSwitchEnabledResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (BOOL)enabled
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"enable"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetRegulatedRATsSwitchEnabledResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end