@interface RMUIError
+ (id)legacyProfilesInvalidURLForDeclarationID:(id)d urlString:(id)string;
+ (id)legacyProfilesNoDeclarationToSetActivated:(BOOL)activated;
+ (id)legacyProfilesNoObserverStoreForDeclarationID:(id)d;
@end

@implementation RMUIError

+ (id)legacyProfilesInvalidURLForDeclarationID:(id)d urlString:(id)string
{
  v10[1] = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid profile URL for declaration %@: %@", d, string];
  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA068];
  v10[0] = string;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"RMUILegacyProfilesErrorDomain" code:0 userInfo:v6];

  return v7;
}

+ (id)legacyProfilesNoObserverStoreForDeclarationID:(id)d
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"No observer store for declaration %@", d];
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA068];
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"RMUILegacyProfilesErrorDomain" code:2 userInfo:v5];

  return v6;
}

+ (id)legacyProfilesNoDeclarationToSetActivated:(BOOL)activated
{
  v9[1] = *MEMORY[0x277D85DE8];
  activated = [MEMORY[0x277CCACA8] stringWithFormat:@"No declaration to set activation %d", activated];
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA068];
  v9[0] = activated;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"RMUILegacyProfilesErrorDomain" code:3 userInfo:v5];

  return v6;
}

@end