@interface IDSService(AnnounceAdditions)
- (id)devicesExcludingHomePods;
- (id)uniqueIdentifiersForDevicesExcludingAppleAccessories;
@end

@implementation IDSService(AnnounceAdditions)

- (id)devicesExcludingHomePods
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [self devices];
  v5 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isHomePod] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)uniqueIdentifiersForDevicesExcludingAppleAccessories
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [self devices];
  v5 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isHomePod] & 1) == 0)
        {
          uniqueIDOverride = [v9 uniqueIDOverride];
          [v3 addObject:uniqueIDOverride];
        }
      }

      v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = IDSCopyLocalDeviceUniqueID();
  [v3 addObject:v11];

  return v3;
}

@end