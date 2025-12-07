@interface NSUserDefaults(SIAppleGlobalDomain)
+ (id)appleGlobalDomain;
+ (id)appleGlobalDomainSIDefaults;
+ (id)appleGlobalDomainSIKeys;
@end

@implementation NSUserDefaults(SIAppleGlobalDomain)

+ (id)appleGlobalDomain
{
  if (appleGlobalDomain_onceToken != -1)
  {
    +[NSUserDefaults(SIAppleGlobalDomain) appleGlobalDomain];
  }

  v2 = appleGlobalDomain_defaults;

  return v2;
}

+ (id)appleGlobalDomainSIKeys
{
  appleGlobalDomain = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  dictionaryRepresentation = [appleGlobalDomain dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
  v4 = [allKeys filteredArrayUsingPredicate:v3];

  return v4;
}

+ (id)appleGlobalDomainSIDefaults
{
  v17 = *MEMORY[0x277D85DE8];
  appleGlobalDomainSIKeys = [MEMORY[0x277CBEBD0] appleGlobalDomainSIKeys];
  appleGlobalDomain = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  dictionaryRepresentation = [appleGlobalDomain dictionaryRepresentation];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = appleGlobalDomainSIKeys;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [dictionaryRepresentation objectForKey:{v9, v12}];
        [dictionary setObject:v10 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return dictionary;
}

@end