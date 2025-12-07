@interface CTXPCGetMobileNetworkCodeResponse
- (CTXPCGetMobileNetworkCodeResponse)initWithMnc:(id)mnc;
- (NSString)mnc;
@end

@implementation CTXPCGetMobileNetworkCodeResponse

- (NSString)mnc
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"mnc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetMobileNetworkCodeResponse)initWithMnc:(id)mnc
{
  v10[1] = *MEMORY[0x1E69E9840];
  mncCopy = mnc;
  v9 = @"mnc";
  v10[0] = mncCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetMobileNetworkCodeResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

@end