@interface CTXPCGetDCTCodeResponse
+ (id)allowedClassesForArguments;
- (CTXPCGetDCTCodeResponse)initWithCode:(id)code;
- (NSString)code;
@end

@implementation CTXPCGetDCTCodeResponse

- (CTXPCGetDCTCodeResponse)initWithCode:(id)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v9 = @"code";
  v10[0] = codeCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetDCTCodeResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSString)code
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"code"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetDCTCodeResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end