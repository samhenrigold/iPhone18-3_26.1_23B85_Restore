@interface TPSSubscriptionListController
- (id)specifiers;
@end

@implementation TPSSubscriptionListController

- (id)specifiers
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    subscriptions = [(TPSListController *)selfCopy subscriptions];
    if ([subscriptions count])
    {
      v22 = v3;
      v26 = selfCopy;
      specifier = [(TPSSubscriptionListController *)selfCopy specifier];
      v7 = [specifier propertyForKey:@"TPSSpecifierSubscriptionDetailControllerKey"];

      v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(subscriptions, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = subscriptions;
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v24 = *v28;
        v10 = *MEMORY[0x277D40128];
        v11 = *MEMORY[0x277D3FE58];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v27 + 1) + 8 * i);
            v14 = MEMORY[0x277D3FAD8];
            tps_localizedLabel = [v13 tps_localizedLabel];
            v16 = [v14 preferenceSpecifierNamed:tps_localizedLabel target:0 set:0 get:0 detail:v7 cell:2 edit:0];

            [v16 setProperty:v13 forKey:v10];
            v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_282D54710 target:v26 set:0 get:0 detail:v7 cell:2 edit:0];

            [v17 setProperty:v13 forKey:v10];
            [v17 setProperty:objc_opt_class() forKey:v11];
            userDefaultVoice = [v13 userDefaultVoice];
            LODWORD(v16) = [userDefaultVoice BOOLValue];

            if (v16)
            {
              [v25 insertObject:v17 atIndex:0];
            }

            else
            {
              [v25 addObject:v17];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v9);
      }

      v19 = [v25 copy];
      selfCopy = v26;
      v3 = v22;
      v20 = *(&v26->super.super.super.super.super.super.isa + v22);
      *(&v26->super.super.super.super.super.super.isa + v22) = v19;
    }

    v4 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

@end