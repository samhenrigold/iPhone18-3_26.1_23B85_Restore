@interface NSError(ADError)
- (uint64_t)initWithAdCode:()ADError andDescription:;
- (void)AD_Log:()ADError;
@end

@implementation NSError(ADError)

- (uint64_t)initWithAdCode:()ADError andDescription:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_2850FB348;
  }

  v11 = *MEMORY[0x277CCA450];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [self initWithDomain:@"com.apple.ap.adcore" code:a3 userInfo:v8];

  return v9;
}

- (void)AD_Log:()ADError
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  localizedDescription = [self localizedDescription];
  v6 = [v4 stringWithFormat:@"%@", localizedDescription];
  _ADLog(v5, v6, 0);
}

@end