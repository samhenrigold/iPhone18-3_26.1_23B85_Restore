@interface AirPodChooserSettingsController
- (id)_deviceConnected:(id)connected;
- (id)specifiers;
@end

@implementation AirPodChooserSettingsController

- (id)specifiers
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v23 = *MEMORY[0x277D3FC48];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = MEMORY[0x277D3FAD8];
    mEMORY[0x277CE7CF8] = [MEMORY[0x277CE7CF8] sharedInstance];
    disambiguationString = [mEMORY[0x277CE7CF8] disambiguationString];
    v8 = [v5 groupSpecifierWithName:disambiguationString];

    v22 = v8;
    [v4 addObject:v8];
    specifier = [(AirPodChooserSettingsController *)self specifier];
    v10 = [specifier propertyForKey:@"AirPods"];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = MEMORY[0x277D3FAD8];
          name = [v15 name];
          v18 = [v16 preferenceSpecifierNamed:name target:self set:0 get:sel__deviceConnected_ detail:objc_opt_class() cell:2 edit:0];

          v29 = v15;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          [v18 setProperty:v19 forKey:@"AirPods"];

          [v4 addObject:v18];
        }

        v12 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }

    v20 = *(&self->super.super.super.super.super.super.isa + v23);
    *(&self->super.super.super.super.super.super.isa + v23) = v4;

    v3 = *(&self->super.super.super.super.super.super.isa + v23);
  }

  return v3;
}

- (id)_deviceConnected:(id)connected
{
  v3 = [connected propertyForKey:@"AirPods"];
  firstObject = [v3 firstObject];

  if ([firstObject connected])
  {
    v5 = AXAirPodsLocalizedStringForKey();
  }

  else
  {
    v5 = &stru_284E770C0;
  }

  return v5;
}

@end