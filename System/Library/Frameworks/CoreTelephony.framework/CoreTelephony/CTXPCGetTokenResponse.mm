@interface CTXPCGetTokenResponse
+ (id)allowedClassesForArguments;
- (CTXPCGetTokenResponse)initWithToken:(id)token;
- (NSString)token;
@end

@implementation CTXPCGetTokenResponse

- (CTXPCGetTokenResponse)initWithToken:(id)token
{
  v12[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = tokenCopy;
  if (tokenCopy)
  {
    v11 = @"token";
    v12[0] = tokenCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9.receiver = self;
    v9.super_class = CTXPCGetTokenResponse;
    v7 = [(CTXPCMessage *)&v9 initWithNamedArguments:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CTXPCGetTokenResponse;
    v7 = [(CTXPCMessage *)&v10 init];
  }

  return v7;
}

- (NSString)token
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"token"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetTokenResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end