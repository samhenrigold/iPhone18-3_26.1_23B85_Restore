@interface CTXPCAddPlanWithProvisioningResponse
+ (id)allowedClassesForArguments;
- (CTXPCAddPlanWithProvisioningResponse)initWithResult:(unint64_t)result;
- (unint64_t)result;
@end

@implementation CTXPCAddPlanWithProvisioningResponse

- (CTXPCAddPlanWithProvisioningResponse)initWithResult:(unint64_t)result
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"result";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:result];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCAddPlanWithProvisioningResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (unint64_t)result
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"result"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);

  unsignedIntegerValue = [v4 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCAddPlanWithProvisioningResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end