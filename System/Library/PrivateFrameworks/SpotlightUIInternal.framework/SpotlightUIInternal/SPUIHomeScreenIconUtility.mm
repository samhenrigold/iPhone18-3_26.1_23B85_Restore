@interface SPUIHomeScreenIconUtility
+ (void)addMenusToBuilder:(id)builder forFocusEnvironment:(id)environment;
@end

@implementation SPUIHomeScreenIconUtility

+ (void)addMenusToBuilder:(id)builder forFocusEnvironment:(id)environment
{
  v18 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  system = [builderCopy system];
  mainSystem = [MEMORY[0x277D75730] mainSystem];

  if (system == mainSystem)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    applicationIconMultitaskingMenus = [MEMORY[0x277D663F0] applicationIconMultitaskingMenus];
    v8 = [applicationIconMultitaskingMenus countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      v11 = *MEMORY[0x277D76D30];
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(applicationIconMultitaskingMenus);
          }

          [builderCopy insertChildMenu:*(*(&v13 + 1) + 8 * v12++) atEndOfMenuForIdentifier:v11];
        }

        while (v9 != v12);
        v9 = [applicationIconMultitaskingMenus countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

@end