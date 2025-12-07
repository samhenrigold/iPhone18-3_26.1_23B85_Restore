@interface NSError(gamed)
+ (id)gkInternalErrorWithCode:()gamed andDetails:;
@end

@implementation NSError(gamed)

+ (id)gkInternalErrorWithCode:()gamed andDetails:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  if (a4)
  {
    v11 = *MEMORY[0x277CCA7E8];
    v12[0] = a4;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a4;
    v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v5 errorWithDomain:@"GKInternalErrorDomain" code:a3 userInfo:v8];
  }

  else
  {
    v8 = 0;
    v9 = [v5 errorWithDomain:@"GKInternalErrorDomain" code:a3 userInfo:0];
  }

  return v9;
}

@end