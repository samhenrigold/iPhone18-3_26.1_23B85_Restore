@interface NSError(NanoMail)
+ (id)genericErrorWithMessage:()NanoMail;
+ (id)httpErrorWithCode:()NanoMail message:;
@end

@implementation NSError(NanoMail)

+ (id)genericErrorWithMessage:()NanoMail
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [self errorWithCode:999 userInfo:v6];

  return v7;
}

+ (id)httpErrorWithCode:()NanoMail message:
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277CCA450];
  v12[1] = @"NNMKErrorHTTPStatusCodeUserInfoKey";
  v13[0] = a4;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [self errorWithCode:998 userInfo:v9];

  return v10;
}

@end