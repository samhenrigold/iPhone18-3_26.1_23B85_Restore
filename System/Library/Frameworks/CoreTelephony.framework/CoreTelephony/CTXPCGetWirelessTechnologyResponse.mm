@interface CTXPCGetWirelessTechnologyResponse
- (CTXPCGetWirelessTechnologyResponse)initWithTechnology:(id)technology;
- (NSString)technology;
@end

@implementation CTXPCGetWirelessTechnologyResponse

- (CTXPCGetWirelessTechnologyResponse)initWithTechnology:(id)technology
{
  v10[1] = *MEMORY[0x1E69E9840];
  technologyCopy = technology;
  v9 = @"technology";
  v10[0] = technologyCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetWirelessTechnologyResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSString)technology
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"technology"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end