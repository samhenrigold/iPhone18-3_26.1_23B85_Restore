@interface ATXVIPsDataSource
- (ATXVIPsDataSource)initWithDevice:(id)device;
- (void)vipsWithCallback:(id)callback;
@end

@implementation ATXVIPsDataSource

- (ATXVIPsDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXVIPsDataSource;
  v6 = [(ATXVIPsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)vipsWithCallback:(id)callback
{
  v28 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA3E0))
  {
    v20 = callbackCopy;
    v4 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = objc_opt_new();
    allVIPs = [v5 allVIPs];

    obj = allVIPs;
    v7 = [allVIPs countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v12 = objc_opt_new();
          identifier = [v11 identifier];
          [v12 setObject:identifier forKeyedSubscript:@"identifier"];

          name = [v11 name];
          [v12 setObject:name forKeyedSubscript:@"name"];

          displayName = [v11 displayName];
          [v12 setObject:displayName forKeyedSubscript:@"displayName"];

          emailAddresses = [v11 emailAddresses];
          v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
          v26 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
          v19 = [emailAddresses sortedArrayUsingDescriptors:v18];
          [v12 setObject:v19 forKeyedSubscript:@"emailAddresses"];

          [v4 addObject:v12];
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    callbackCopy = v20;
    (*(v20 + 2))(v20, v4, 0);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, MEMORY[0x277CBEBF8], 0);
  }
}

@end