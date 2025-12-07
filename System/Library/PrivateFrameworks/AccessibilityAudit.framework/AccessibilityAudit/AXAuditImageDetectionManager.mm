@interface AXAuditImageDetectionManager
+ (id)sharedManager;
- (id)detectedTextResultsForImageData:(id)data;
@end

@implementation AXAuditImageDetectionManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__AXAuditImageDetectionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_instance;

  return v2;
}

uint64_t __45__AXAuditImageDetectionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)detectedTextResultsForImageData:(id)data
{
  v25[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277CBF6F8];
  v24[0] = *MEMORY[0x277CBF6D8];
  v24[1] = v5;
  v25[0] = *MEMORY[0x277CBF6E0];
  v25[1] = MEMORY[0x277CBEC38];
  v24[2] = *MEMORY[0x277CBF708];
  v25[2] = MEMORY[0x277CBEC28];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v6 = [MEMORY[0x277CBF748] detectorOfType:*MEMORY[0x277CBF720] context:0 options:?];
  v18 = dataCopy;
  v7 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:dataCopy];
  v8 = [objc_alloc(MEMORY[0x277CBF758]) initWithImage:v7];
  v9 = [v6 featuresInImage:v8 options:MEMORY[0x277CBEC10]];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = objc_opt_new();
        [v15 setDetectionType:0];
        [v14 bounds];
        [v15 setDetectionRegion:?];
        [v4 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  return v4;
}

@end