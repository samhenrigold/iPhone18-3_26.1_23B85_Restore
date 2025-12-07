@interface CTXPCGetLastKnownMobileCountryCodeResponse
- (CTXPCGetLastKnownMobileCountryCodeResponse)initWithLastMcc:(id)mcc;
- (NSString)mcc;
@end

@implementation CTXPCGetLastKnownMobileCountryCodeResponse

- (CTXPCGetLastKnownMobileCountryCodeResponse)initWithLastMcc:(id)mcc
{
  v10[1] = *MEMORY[0x1E69E9840];
  mccCopy = mcc;
  v9 = @"mcc";
  v10[0] = mccCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetLastKnownMobileCountryCodeResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSString)mcc
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"mcc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end