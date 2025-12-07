@interface LAPasscodeRecoveryErrorBuilder
+ (id)redactError:(id)error;
@end

@implementation LAPasscodeRecoveryErrorBuilder

+ (id)redactError:(id)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_15;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.LocalAuthentication.LAPasscodeRecoveryErrorDomain"];

  if (v7)
  {
    v8 = v5;
    goto LABEL_15;
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
    selfCopy4 = self;
    v13 = 3;
    goto LABEL_14;
  }

  if (![v5 code])
  {
    userInfo = [v5 userInfo];
    selfCopy4 = self;
    v13 = 0;
    goto LABEL_14;
  }

  if ([v5 code] != 1)
  {
    if ([v5 code] == 3)
    {
      userInfo = [v5 userInfo];
      selfCopy4 = self;
      v13 = 2;
      goto LABEL_14;
    }

    v18 = *MEMORY[0x277CCA7E8];
    v19 = v5;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v19;
    v16 = &v18;
    goto LABEL_10;
  }

  userInfo = [v5 userInfo];
  selfCopy4 = self;
  v13 = 1;
LABEL_14:
  v8 = [selfCopy4 _errorWithCode:v13 userInfo:userInfo];

LABEL_15:

  return v8;
}

@end