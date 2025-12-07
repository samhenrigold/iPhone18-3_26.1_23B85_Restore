@interface CTXPCLoadSimSetupInfoResponse
+ (id)allowedClassesForArguments;
- (CTXPCLoadSimSetupInfoResponse)initWithInfo:(id)info;
- (NSObject)info;
@end

@implementation CTXPCLoadSimSetupInfoResponse

- (CTXPCLoadSimSetupInfoResponse)initWithInfo:(id)info
{
  v12[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v11 = @"info";
    v12[0] = infoCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10.receiver = self;
    v10.super_class = CTXPCLoadSimSetupInfoResponse;
    v7 = [(CTXPCMessage *)&v10 initWithNamedArguments:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CTXPCLoadSimSetupInfoResponse;
    v7 = [(CTXPCMessage *)&v9 initWithNamedArguments:MEMORY[0x1E695E0F8]];
  }

  return v7;
}

+ (id)allowedClassesForArguments
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCLoadSimSetupInfoResponse;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (NSObject)info
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v4 = [namedArguments objectForKeyedSubscript:@"info"];

  if (v4)
  {
    namedArguments2 = [(CTXPCMessage *)self namedArguments];
    v6 = [namedArguments2 objectForKeyedSubscript:@"info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end