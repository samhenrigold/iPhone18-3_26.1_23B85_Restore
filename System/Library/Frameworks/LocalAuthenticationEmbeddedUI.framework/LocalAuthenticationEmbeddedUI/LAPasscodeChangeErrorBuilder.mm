@interface LAPasscodeChangeErrorBuilder
+ (id)genericErrorWithDebugDescription:(id)description;
+ (id)redactError:(id)error;
@end

@implementation LAPasscodeChangeErrorBuilder

+ (id)redactError:(id)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_11;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.LocalAuthentication.LAPasscodeChangeErrorDomain"];

  if (v7)
  {
    v8 = v5;
    goto LABEL_11;
  }

  domain2 = [v5 domain];
  v10 = [domain2 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if (v10)
  {
    if (![v5 code])
    {
      userInfo = [v5 userInfo];
      selfCopy2 = self;
      v16 = 0;
      goto LABEL_10;
    }

    v18 = *MEMORY[0x277CCA7E8];
    v19 = v5;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v19;
    v13 = &v18;
  }

  else
  {
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v5;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v21;
    v13 = &v20;
  }

  userInfo = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  selfCopy2 = self;
  v16 = 1;
LABEL_10:
  v8 = [selfCopy2 _errorWithCode:v16 userInfo:userInfo];

LABEL_11:

  return v8;
}

+ (id)genericErrorWithDebugDescription:(id)description
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA068];
  v10[0] = description;
  v4 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [self _errorWithCode:1 userInfo:v6];

  return v7;
}

@end