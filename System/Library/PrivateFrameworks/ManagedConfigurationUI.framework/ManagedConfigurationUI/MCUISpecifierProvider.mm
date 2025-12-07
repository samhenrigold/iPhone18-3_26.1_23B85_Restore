@interface MCUISpecifierProvider
- (BOOL)isSectionPopulated:(id)populated outIsPlural:(BOOL *)plural;
- (MCUISpecifierProvider)initWithDelegate:(id)delegate;
- (MCUISpecifierProviderDelegate)delegate;
- (id)_specifierForProfile:(id)profile profileInstalled:(BOOL)installed;
- (id)_specifiersForProfiles:(id)profiles singularHeader:(id)header pluralHeaader:(id)heaader profilesInstalled:(BOOL)installed;
- (id)specifierWithName:(id)name detail:(Class)detail;
- (id)specifiersForInstalledProfiles:(id)profiles;
- (id)specifiersForMDMProfiles:(id)profiles;
- (id)specifiersForUninstalledProfiles:(id)profiles;
- (void)registerCustomCellClassesInTableView:(id)view;
@end

@implementation MCUISpecifierProvider

- (MCUISpecifierProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MCUISpecifierProvider;
  v5 = [(MCUISpecifierProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (BOOL)isSectionPopulated:(id)populated outIsPlural:(BOOL *)plural
{
  populatedCopy = populated;
  v6 = populatedCopy;
  if (populatedCopy && [populatedCopy count])
  {
    *plural = [v6 count] > 1;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)specifierWithName:(id)name detail:(Class)detail
{
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:name target:self set:0 get:0 detail:detail cell:1 edit:0];
  [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [MEMORY[0x277D03250] setGearIconForSpecifier:v4];

  return v4;
}

- (void)registerCustomCellClassesInTableView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)MCUISpecifierCell];
  [viewCopy registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)_specifierForProfile:(id)profile profileInstalled:(BOOL)installed
{
  installedCopy = installed;
  profileCopy = profile;
  identifier = [profileCopy identifier];
  v8 = [(MCUISpecifierProvider *)self specifierWithName:identifier detail:objc_opt_class()];

  friendlyName = [profileCopy friendlyName];
  [v8 setProperty:friendlyName forKey:*MEMORY[0x277D40170]];

  organization = [profileCopy organization];
  [v8 setProperty:organization forKey:*MEMORY[0x277D40160]];

  [v8 setProperty:profileCopy forKey:@"MCUIPSItemKey"];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:installedCopy];
  [v8 setProperty:v11 forKey:@"MCUIPSInstalledKey"];

  identifier2 = [profileCopy identifier];
  [v8 setIdentifier:identifier2];

  expiryDate = [profileCopy expiryDate];
  if (expiryDate)
  {
    expiryDate2 = [profileCopy expiryDate];
    dMCProfilePastExpiration = [expiryDate2 DMCProfilePastExpiration];
  }

  else
  {
    dMCProfilePastExpiration = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:dMCProfilePastExpiration];
  [v8 setProperty:v16 forKey:@"MCUIPSExpiredKey"];

  [v8 setControllerLoadAction:sel_loadProfileFromSpecifier_];

  return v8;
}

- (id)_specifiersForProfiles:(id)profiles singularHeader:(id)header pluralHeaader:(id)heaader profilesInstalled:(BOOL)installed
{
  installedCopy = installed;
  v30 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  headerCopy = header;
  heaaderCopy = heaader;
  v28 = 0;
  if ([(MCUISpecifierProvider *)self isSectionPopulated:profilesCopy outIsPlural:&v28])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(profilesCopy, "count") + 1}];
    v23 = headerCopy;
    if (v28)
    {
      v14 = heaaderCopy;
    }

    else
    {
      v14 = headerCopy;
    }

    v15 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v14];
    [v13 addObject:v15];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = profilesCopy;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(MCUISpecifierProvider *)self _specifierForProfile:*(*(&v24 + 1) + 8 * i) profileInstalled:installedCopy];
          [v13 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    headerCopy = v23;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)specifiersForMDMProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT");
  v6 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT");
  v7 = [(MCUISpecifierProvider *)self _specifiersForProfiles:profilesCopy singularHeader:v5 pluralHeaader:v6 profilesInstalled:1];

  return v7;
}

- (id)specifiersForUninstalledProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = MCUILocalizedString(@"UNINSTALLED_PROFILE");
  v6 = MCUILocalizedString(@"UNINSTALLED_PROFILE_PLURAL");
  v7 = [(MCUISpecifierProvider *)self _specifiersForProfiles:profilesCopy singularHeader:v5 pluralHeaader:v6 profilesInstalled:0];

  return v7;
}

- (id)specifiersForInstalledProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = profilesCopy;
  if (profilesCopy && [profilesCopy count])
  {
    v6 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
    v7 = [v5 filteredArrayUsingPredicate:v6];

    v5 = v7;
  }

  v8 = MCUILocalizedString(@"CONFIGURATION_PROFILE");
  v9 = MCUILocalizedString(@"CONFIGURATION_PROFILE_PLURAL");
  v10 = [(MCUISpecifierProvider *)self _specifiersForProfiles:v5 singularHeader:v8 pluralHeaader:v9 profilesInstalled:1];

  return v10;
}

- (MCUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end