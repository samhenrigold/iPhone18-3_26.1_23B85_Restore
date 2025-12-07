@interface CTXPCGetSystemConfigResponse
+ (id)allowedClassesForArguments;
- (CTLazuliSystemConfiguration)config;
- (CTXPCGetSystemConfigResponse)initWithSystemConfiguration:(id)configuration;
@end

@implementation CTXPCGetSystemConfigResponse

- (CTXPCGetSystemConfigResponse)initWithSystemConfiguration:(id)configuration
{
  v10[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v9 = @"config";
  v10[0] = configurationCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetSystemConfigResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTLazuliSystemConfiguration)config
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"config"];
  v4 = CTThrowingCastIfClass<CTLazuliSystemConfiguration>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSystemConfigResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end