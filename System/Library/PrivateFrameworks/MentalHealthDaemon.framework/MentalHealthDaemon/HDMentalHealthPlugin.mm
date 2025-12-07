@interface HDMentalHealthPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)daemon;
- (HDMentalHealthPlugin)initWithTypicalDayProvider:(id)provider;
- (id)demoDataGeneratorClasses;
- (id)extensionForProfile:(id)profile;
- (id)taskServerClasses;
- (void)handleDatabaseObliteration;
@end

@implementation HDMentalHealthPlugin

- (HDMentalHealthPlugin)initWithTypicalDayProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = HDMentalHealthPlugin;
  v6 = [(HDMentalHealthPlugin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_typicalDayProvider, provider);
  }

  return v7;
}

+ (BOOL)shouldLoadPluginForDaemon:(id)daemon
{
  behavior = [daemon behavior];
  isRealityDevice = [behavior isRealityDevice];

  return isRealityDevice ^ 1;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[HDMHProfileExtension alloc] initWithProfile:profileCopy typicalDayProvider:self->_typicalDayProvider];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleDatabaseObliteration
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBD0];
  v4[0] = *MEMORY[0x277D28000];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 hk_deleteDomainsNamed:v3];
}

- (id)demoDataGeneratorClasses
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)taskServerClasses
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

@end