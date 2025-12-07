@interface MDMManagedMediaReader
+ (id)_metadataByBundleIDExcludeDDMApps:(BOOL)apps;
+ (id)attributesByAppIDExcludeDDMApps:(BOOL)apps;
+ (id)managedAppIDsExcludeDDMApps:(BOOL)apps;
+ (id)managedAppIDsWithFlags:(unint64_t)flags excludeDDMApps:(BOOL)apps;
+ (id)managedBooks;
@end

@implementation MDMManagedMediaReader

+ (id)managedBooks
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CBEAC0];
  v4 = MDMManagedStoreBooksManifestPath();
  v5 = [v3 dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"Books"];
    v7 = v6;
    if (v6)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v28 + 1) + 8 * i)];
            [v2 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v9);
      }
    }
  }

  v13 = MEMORY[0x277CBEAC0];
  v14 = MDMManagedNonStoreBooksManifestPath();
  v15 = [v13 dictionaryWithContentsOfFile:v14];

  if (v15)
  {
    v16 = [v15 objectForKeyedSubscript:@"Books"];
    v17 = v16;
    if (v16)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v24 + 1) + 8 * j)];
            [v2 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }
    }
  }

  return v2;
}

+ (id)managedAppIDsExcludeDDMApps:(BOOL)apps
{
  v3 = [MDMManagedMediaReader attributesByAppIDExcludeDDMApps:apps];
  allKeys = [v3 allKeys];

  return allKeys;
}

+ (id)managedAppIDsWithFlags:(unint64_t)flags excludeDDMApps:(BOOL)apps
{
  appsCopy = apps;
  v25 = *MEMORY[0x277D85DE8];
  v18 = objc_opt_new();
  v6 = [MDMManagedMediaReader _metadataByBundleIDExcludeDDMApps:appsCopy];
  v7 = v6;
  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if ([v12 length])
          {
            v13 = [v7 objectForKey:v12];
            v14 = [v13 objectForKey:@"flags"];
            v15 = [v14 intValue] & flags;

            if (v15)
            {
              [v18 addObject:v12];
            }
          }

          else
          {
            v16 = *DMCLogObjects();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22E997000, v16, OS_LOG_TYPE_ERROR, "MDMManagedMediaReader skipping app with blank appID", buf, 2u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  return v18;
}

+ (id)attributesByAppIDExcludeDDMApps:(BOOL)apps
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [self _metadataByBundleIDExcludeDDMApps:apps];
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 length])
        {
          v10 = [v4 objectForKey:v9];
          v11 = [v10 objectForKey:@"Attributes"];
          v12 = [v10 objectForKey:@"state"];
          intValue = [v12 intValue];

          if ((intValue > 0x12 || ((1 << intValue) & 0x60C00) == 0) && v11 != 0)
          {
            [v18 setObject:v11 forKey:v9];
          }
        }

        else
        {
          v16 = *DMCLogObjects();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22E997000, v16, OS_LOG_TYPE_ERROR, "MDMManagedMediaReader skipping app with blank bundleID", buf, 2u);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v18;
}

+ (id)_metadataByBundleIDExcludeDDMApps:(BOOL)apps
{
  appsCopy = apps;
  v34 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MDMAppManagementFilePath();
  v6 = [defaultManager fileExistsAtPath:v5];

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = MEMORY[0x277CCAC58];
  v8 = MEMORY[0x277CBEA90];
  v9 = MDMAppManagementFilePath();
  v10 = [v8 dataWithContentsOfFile:v9];
  v30 = 0;
  v11 = [v7 DMCSafePropertyListWithData:v10 options:1 format:0 error:&v30];
  v12 = v30;

  if (v12)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v12;
      _os_log_impl(&dword_22E997000, v13, OS_LOG_TYPE_ERROR, "MDMManagedMediaReader cannot read manifest with error: %{public}@", buf, 0xCu);
    }
  }

  if (v11)
  {
    v14 = [v11 objectForKey:@"metadataByBundleID"];
    v15 = [v14 mutableCopy];

    if (appsCopy)
    {
      allKeys = [v15 allKeys];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = [allKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(allKeys);
            }

            v21 = *(*(&v26 + 1) + 8 * i);
            v22 = [v15 objectForKeyedSubscript:v21];
            v23 = [v22 objectForKey:@"source"];

            if (v23)
            {
              [v15 setObject:0 forKeyedSubscript:v21];
            }
          }

          v18 = [allKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v18);
      }
    }

    v24 = [v15 copy];
  }

  else
  {
LABEL_18:
    v24 = MEMORY[0x277CBEC10];
  }

  return v24;
}

@end