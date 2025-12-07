@interface CTXPCGetServingPlmnResponse
- (CTXPCGetServingPlmnResponse)initWithPlmn:(id)plmn;
- (NSString)plmn;
@end

@implementation CTXPCGetServingPlmnResponse

- (CTXPCGetServingPlmnResponse)initWithPlmn:(id)plmn
{
  v10[1] = *MEMORY[0x1E69E9840];
  plmnCopy = plmn;
  v9 = @"plmn";
  v10[0] = plmnCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetServingPlmnResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSString)plmn
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plmn"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end