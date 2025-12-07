@interface ASDPlugin(ASDTDeviceManager)
- (id)objectIDsForDeviceUIDs:()ASDTDeviceManager;
@end

@implementation ASDPlugin(ASDTDeviceManager)

- (id)objectIDsForDeviceUIDs:()ASDTDeviceManager
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    audioDevices = [self audioDevices];
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(audioDevices, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = audioDevices;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          deviceUID = [v12 deviceUID];
          v14 = [v4 containsObject:deviceUID];

          if (v14)
          {
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "objectID")}];
            [v6 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16 = [v6 copy];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
  }

  return v16;
}

@end