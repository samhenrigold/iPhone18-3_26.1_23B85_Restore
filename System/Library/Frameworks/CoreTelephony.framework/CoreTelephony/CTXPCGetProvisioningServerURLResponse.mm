@interface CTXPCGetProvisioningServerURLResponse
- (CTXPCGetProvisioningServerURLResponse)initWithURL:(id)l;
- (NSString)url;
@end

@implementation CTXPCGetProvisioningServerURLResponse

- (CTXPCGetProvisioningServerURLResponse)initWithURL:(id)l
{
  v10[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9 = @"url";
  v10[0] = lCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetProvisioningServerURLResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSString)url
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"url"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end