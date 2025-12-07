@interface CTXPCSubscriptionInfoMessage
+ (id)allowedClassesForArguments;
- (CTXPCServiceSubscriptionInfo)info;
- (CTXPCSubscriptionInfoMessage)initWithInfo:(id)info;
@end

@implementation CTXPCSubscriptionInfoMessage

- (CTXPCSubscriptionInfoMessage)initWithInfo:(id)info
{
  v12[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v11 = @"info";
    v12[0] = infoCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9.receiver = self;
    v9.super_class = CTXPCSubscriptionInfoMessage;
    v7 = [(CTXPCMessage *)&v9 initWithNamedArguments:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CTXPCSubscriptionInfoMessage;
    v7 = [(CTXPCMessage *)&v10 init];
  }

  return v7;
}

- (CTXPCServiceSubscriptionInfo)info
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"info"];
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
  v5.super_class = &OBJC_METACLASS___CTXPCSubscriptionInfoMessage;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end