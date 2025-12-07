@interface CTXPCGetRejectCauseCodeResponse
+ (id)allowedClassesForArguments;
- (CTXPCGetRejectCauseCodeResponse)initWithCauseCode:(id)code;
- (NSNumber)causeCode;
@end

@implementation CTXPCGetRejectCauseCodeResponse

- (CTXPCGetRejectCauseCodeResponse)initWithCauseCode:(id)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v9 = @"causeCode";
  v10[0] = codeCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetRejectCauseCodeResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSNumber)causeCode
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"causeCode"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetRejectCauseCodeResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end