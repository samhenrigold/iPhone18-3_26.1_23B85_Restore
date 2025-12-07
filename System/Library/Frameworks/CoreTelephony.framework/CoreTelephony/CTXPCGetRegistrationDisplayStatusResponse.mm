@interface CTXPCGetRegistrationDisplayStatusResponse
+ (id)allowedClassesForArguments;
- (CTRegistrationDisplayStatus)status;
- (CTXPCGetRegistrationDisplayStatusResponse)initWithStatus:(id)status;
@end

@implementation CTXPCGetRegistrationDisplayStatusResponse

- (CTXPCGetRegistrationDisplayStatusResponse)initWithStatus:(id)status
{
  v10[1] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v9 = @"status";
  v10[0] = statusCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetRegistrationDisplayStatusResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTRegistrationDisplayStatus)status
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"status"];
  v4 = CTThrowingCastIfClass<CTRegistrationDisplayStatus>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetRegistrationDisplayStatusResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end