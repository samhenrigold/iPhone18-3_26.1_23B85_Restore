@interface CTXPCEncryptDataResponse
+ (id)allowedClassesForArguments;
- (CTXPCEncryptDataResponse)initWithCipherText:(id)text;
- (NSString)cipherText;
@end

@implementation CTXPCEncryptDataResponse

- (CTXPCEncryptDataResponse)initWithCipherText:(id)text
{
  v12[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v11 = @"cipherText";
    v12[0] = textCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9.receiver = self;
    v9.super_class = CTXPCEncryptDataResponse;
    v7 = [(CTXPCMessage *)&v9 initWithNamedArguments:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CTXPCEncryptDataResponse;
    v7 = [(CTXPCMessage *)&v10 init];
  }

  return v7;
}

- (NSString)cipherText
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"cipherText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCEncryptDataResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end