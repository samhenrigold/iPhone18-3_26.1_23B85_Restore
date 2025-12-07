@interface CTXPCGetRegistrationStatusResponse
- (CTXPCGetRegistrationStatusResponse)initWithStatus:(id)status;
- (NSString)status;
@end

@implementation CTXPCGetRegistrationStatusResponse

- (NSString)status
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"status"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetRegistrationStatusResponse)initWithStatus:(id)status
{
  v10[1] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v9 = @"status";
  v10[0] = statusCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetRegistrationStatusResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

@end