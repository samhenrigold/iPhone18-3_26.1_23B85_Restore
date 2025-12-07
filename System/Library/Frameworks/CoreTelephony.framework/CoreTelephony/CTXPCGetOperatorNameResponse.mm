@interface CTXPCGetOperatorNameResponse
- (CTXPCGetOperatorNameResponse)initWithOperatorName:(id)name;
- (NSString)operatorName;
@end

@implementation CTXPCGetOperatorNameResponse

- (NSString)operatorName
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operatorName"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetOperatorNameResponse)initWithOperatorName:(id)name
{
  v10[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = @"operatorName";
  v10[0] = nameCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetOperatorNameResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

@end