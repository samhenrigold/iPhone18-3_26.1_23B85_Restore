@interface HMDCameraConfigurationsLogEvent
- (HMDCameraConfigurationsLogEvent)initWithHomes:(id)homes;
@end

@implementation HMDCameraConfigurationsLogEvent

- (HMDCameraConfigurationsLogEvent)initWithHomes:(id)homes
{
  v24 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v22.receiver = self;
  v22.super_class = HMDCameraConfigurationsLogEvent;
  v5 = [(HMMLogEvent *)&v22 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = homesCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [HMDCameraHomeSettingsConfiguration alloc];
          v14 = [(HMDCameraHomeSettingsConfiguration *)v13 initWithHome:v12, v18];
          [array addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    homeSettingsConfigurations = v5->_homeSettingsConfigurations;
    v5->_homeSettingsConfigurations = v15;
  }

  return v5;
}

@end