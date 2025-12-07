@interface HMDFetchedAccessorySettingsControllerMutableKeyPathMap
- (id)availableKeyPaths;
- (id)objectForKeyedSubscript:(void *)subscript;
@end

@implementation HMDFetchedAccessorySettingsControllerMutableKeyPathMap

- (id)availableKeyPaths
{
  if (self)
  {
    v2 = [objc_getProperty(self a2];
    v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)objectForKeyedSubscript:(void *)subscript
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (subscript)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = objc_getProperty(subscript, v3, 8, 1);
    driver = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (driver)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != driver; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          keyPaths = [v9 keyPaths];
          v11 = [keyPaths containsObject:v4];

          if (v11)
          {
            driver = [v9 driver];
            goto LABEL_12;
          }
        }

        driver = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (driver)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    driver = 0;
  }

  return driver;
}

@end