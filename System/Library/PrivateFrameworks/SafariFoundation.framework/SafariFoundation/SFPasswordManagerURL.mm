@interface SFPasswordManagerURL
+ (id)passwordManagerURLForFamilySharingGroupSetup;
+ (id)passwordManagerURLForSharingGroupWithGroupID:(id)d;
@end

@implementation SFPasswordManagerURL

+ (id)passwordManagerURLForSharingGroupWithGroupID:(id)d
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D49A98];
  v9 = *MEMORY[0x277D49C98];
  v10[0] = d;
  v4 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 passwordManagerURLWithDictionary:v6];

  return v7;
}

+ (id)passwordManagerURLForFamilySharingGroupSetup
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D49A98];
  v6 = *MEMORY[0x277D49C88];
  v7[0] = *MEMORY[0x277D49CA8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 passwordManagerURLWithDictionary:v3];

  return v4;
}

@end