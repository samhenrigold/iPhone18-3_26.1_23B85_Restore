@interface LAPasscodeServiceErrorBuilder
+ (id)genericErrorWithDebugDescription:(id)description;
+ (id)redactError:(id)error;
@end

@implementation LAPasscodeServiceErrorBuilder

+ (id)redactError:(id)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_17;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.LocalAuthentication.LAPasscodeServiceErrorDomain"];

  if (v7)
  {
    v8 = v5;
    goto LABEL_17;
  }

  domain2 = [v5 domain];
  v10 = [domain2 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if ((v10 & 1) == 0)
  {
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v5;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v21;
    v16 = &v20;
LABEL_10:
    userInfo = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    selfCopy5 = self;
    v13 = 4;
    goto LABEL_16;
  }

  if (![v5 code])
  {
    userInfo = [v5 userInfo];
    selfCopy5 = self;
    v13 = 0;
    goto LABEL_16;
  }

  if ([v5 code] != 1)
  {
    if ([v5 code] == 2)
    {
      userInfo = [v5 userInfo];
      selfCopy5 = self;
      v13 = 3;
      goto LABEL_16;
    }

    if ([v5 code] == 3)
    {
      userInfo = [v5 userInfo];
      selfCopy5 = self;
      v13 = 2;
      goto LABEL_16;
    }

    v18 = *MEMORY[0x277CCA7E8];
    v19 = v5;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v19;
    v16 = &v18;
    goto LABEL_10;
  }

  userInfo = [v5 userInfo];
  selfCopy5 = self;
  v13 = 1;
LABEL_16:
  v8 = [selfCopy5 _errorWithCode:v13 userInfo:userInfo];

LABEL_17:

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

  v7 = [self _errorWithCode:4 userInfo:v6];

  return v7;
}

@end