@interface DTGPUCounterProfile
- (DTGPUCounterProfile)initWithProfile:(unint64_t)profile device:(id)device;
- (id)counterProfileForHost;
@end

@implementation DTGPUCounterProfile

- (DTGPUCounterProfile)initWithProfile:(unint64_t)profile device:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = DTGPUCounterProfile;
  v8 = [(DTGPUCounterProfile *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_profile = profile;
    v10 = objc_opt_new();
    counters = v9->_counters;
    v9->_counters = v10;

    objc_storeStrong(&v9->_device, device);
  }

  return v9;
}

- (id)counterProfileForHost
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_counters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        infoArray = [*(*(&v12 + 1) + 8 * i) infoArray];
        [v3 addObject:infoArray];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v5);
  }

  v16 = &unk_285A36DB0;
  v17 = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];

  return v10;
}

@end