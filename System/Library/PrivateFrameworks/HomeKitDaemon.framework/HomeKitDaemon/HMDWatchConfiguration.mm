@interface HMDWatchConfiguration
- (HMDWatchConfiguration)initWithUniqueID:(id)d;
- (id)description;
- (void)setConfigVersion:(id)version forHome:(id)home;
- (void)setHomeConfiguration:(id)configuration;
@end

@implementation HMDWatchConfiguration

- (void)setConfigVersion:(id)version forHome:(id)home
{
  homeCopy = home;
  versionCopy = version;
  homeConfig = [(HMDWatchConfiguration *)self homeConfig];
  v10 = [homeConfig mutableCopy];

  [v10 setObject:versionCopy forKeyedSubscript:homeCopy];
  v9 = objc_msgSend_copy(v10);
  [(HMDWatchConfiguration *)self setHomeConfig:v9];
}

- (void)setHomeConfiguration:(id)configuration
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = configurationCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x277CCAD78]);
          v13 = [v12 initWithUUIDString:{v11, v16}];
          v14 = [v6 objectForKeyedSubscript:v11];
          [dictionary setObject:v14 forKeyedSubscript:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v15 = objc_msgSend_copy(dictionary);
    [(HMDWatchConfiguration *)self setHomeConfig:v15];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    [(HMDWatchConfiguration *)self setHomeConfig:dictionary];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  uniqueId = [(HMDWatchConfiguration *)self uniqueId];
  metadataConfig = [(HMDWatchConfiguration *)self metadataConfig];
  homeConfig = [(HMDWatchConfiguration *)self homeConfig];
  v7 = [v3 initWithFormat:@"<HMDWatchConfiguration: Watch ID: %@, Metadata Config: %@, Homedata Config: %@>", uniqueId, metadataConfig, homeConfig];

  return v7;
}

- (HMDWatchConfiguration)initWithUniqueID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = HMDWatchConfiguration;
  v5 = [(HMDWatchConfiguration *)&v11 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(dCopy);
    uniqueId = v5->_uniqueId;
    v5->_uniqueId = v6;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    homeConfig = v5->_homeConfig;
    v5->_homeConfig = dictionary;
  }

  return v5;
}

@end