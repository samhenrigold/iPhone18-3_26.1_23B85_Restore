@interface MDMInstalledApplicationListCommand
+ (id)allItems;
+ (id)expensiveItems;
+ (id)itemsThatMustAlwaysBeReturned;
- (id)responseForRequest:(id)request;
- (void)_processArguments;
- (void)_processIdentifiersArgument;
- (void)_processItemsArgument;
- (void)_processManagedAppsOnlyArgument;
- (void)_reset;
- (void)_validateRequestDictionaryIsPresentAndADictionary;
- (void)fetchAppProperties;
@end

@implementation MDMInstalledApplicationListCommand

- (id)responseForRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [(MDMInstalledApplicationListCommand *)self _reset];
  [(MDMInstalledApplicationListCommand *)self setRequest:requestCopy];
  [(MDMInstalledApplicationListCommand *)self _processArguments];
  [(MDMInstalledApplicationListCommand *)self fetchAppProperties];
  v5 = objc_opt_new();
  appItems = [(MDMInstalledApplicationListCommand *)self appItems];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [appItems countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(appItems);
        }

        v10 = [appItems objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [appItems countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v19 = @"InstalledApplicationList";
  v20 = v5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v11 addEntriesFromDictionary:v12];

  v13 = [v11 copy];

  return v13;
}

- (void)_reset
{
  [(MDMInstalledApplicationListCommand *)self setRequest:0];
  [(MDMInstalledApplicationListCommand *)self setAppsRequested:0];
  [(MDMInstalledApplicationListCommand *)self setShouldReturnManagedAppsOnly:0];

  [(MDMInstalledApplicationListCommand *)self setItemsRequested:0];
}

- (void)_processArguments
{
  [(MDMInstalledApplicationListCommand *)self _processIdentifiersArgument];
  [(MDMInstalledApplicationListCommand *)self _processManagedAppsOnlyArgument];

  [(MDMInstalledApplicationListCommand *)self _processItemsArgument];
}

- (void)_processIdentifiersArgument
{
  v20 = *MEMORY[0x277D85DE8];
  [(MDMInstalledApplicationListCommand *)self _validateRequestDictionaryIsPresentAndADictionary];
  request = [(MDMInstalledApplicationListCommand *)self request];
  v4 = [request objectForKeyedSubscript:@"Identifiers"];

  if (v4)
  {
    selfCopy = self;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"argument Identifiers is not an array"];
    }

    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"identifier is not a string"];
          }

          [v5 addObject:{v11, selfCopy}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    [(MDMInstalledApplicationListCommand *)selfCopy setAppsRequested:v12];

    v4 = v14;
  }

  else
  {
    [(MDMInstalledApplicationListCommand *)self setAppsRequested:0];
  }
}

- (void)_processManagedAppsOnlyArgument
{
  [(MDMInstalledApplicationListCommand *)self _validateRequestDictionaryIsPresentAndADictionary];
  request = [(MDMInstalledApplicationListCommand *)self request];
  v6 = [request objectForKeyedSubscript:@"ManagedAppsOnly"];

  v4 = v6;
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"argument ManagedAppsOnly is not a number (BOOLean)"];
      v4 = v6;
    }
  }

  -[MDMInstalledApplicationListCommand setShouldReturnManagedAppsOnly:](self, "setShouldReturnManagedAppsOnly:", (-[MDMInstalledApplicationListCommand isUserEnrollment](self, "isUserEnrollment") | [v4 BOOLValue]) & 1);
}

- (void)_processItemsArgument
{
  selfCopy = self;
  v27 = *MEMORY[0x277D85DE8];
  [(MDMInstalledApplicationListCommand *)self _validateRequestDictionaryIsPresentAndADictionary];
  request = [(MDMInstalledApplicationListCommand *)selfCopy request];
  v4 = [request objectForKeyedSubscript:@"Items"];

  v5 = objc_opt_new();
  allItems = [objc_opt_class() allItems];
  v7 = allItems;
  if (v4)
  {
    v19 = selfCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"argument Items is not an array"];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"item is not a string"];
          }

          if ([v7 containsObject:{v13, v18}])
          {
            [v5 addObject:v13];
          }

          else
          {
            v14 = *DMCLogObjects();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v25 = v13;
              _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "InstalledApplicationList command requested invalid Item %{public}@. Ignored.", buf, 0xCu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v10);
    }

    v4 = v18;
    selfCopy = v19;
  }

  else
  {
    allObjects = [allItems allObjects];
    [v5 addObjectsFromArray:allObjects];

    expensiveItems = [objc_opt_class() expensiveItems];
    [v5 minusSet:expensiveItems];
  }

  itemsThatMustAlwaysBeReturned = [objc_opt_class() itemsThatMustAlwaysBeReturned];
  [v5 unionSet:itemsThatMustAlwaysBeReturned];

  [(MDMInstalledApplicationListCommand *)selfCopy setItemsRequested:v5];
}

+ (id)itemsThatMustAlwaysBeReturned
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"Identifier";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_validateRequestDictionaryIsPresentAndADictionary
{
  request = [(MDMInstalledApplicationListCommand *)self request];

  if (!request)
  {
    [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"request does not exist"];
  }

  request2 = [(MDMInstalledApplicationListCommand *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = MEMORY[0x277CBEAD8];

    [v6 raise:@"InvalidArgument" format:@"request is not a dictionary"];
  }
}

- (void)fetchAppProperties
{
  dataSource = [(MDMInstalledApplicationListCommand *)self dataSource];
  appsRequested = [(MDMInstalledApplicationListCommand *)self appsRequested];
  [dataSource setAppsRequested:appsRequested];

  [dataSource setShouldReturnManagedAppsOnly:{-[MDMInstalledApplicationListCommand shouldReturnManagedAppsOnly](self, "shouldReturnManagedAppsOnly")}];
  itemsRequested = [(MDMInstalledApplicationListCommand *)self itemsRequested];
  [dataSource setItemsRequested:itemsRequested];

  [dataSource fetchAppItems];
  appItems = [dataSource appItems];
  [(MDMInstalledApplicationListCommand *)self setAppItems:appItems];
}

+ (id)allItems
{
  v6[16] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"Identifier";
  v6[1] = @"ExternalVersionIdentifier";
  v6[2] = @"DistributorIdentifier";
  v6[3] = @"Version";
  v6[4] = @"ShortVersion";
  v6[5] = @"Name";
  v6[6] = @"BundleSize";
  v6[7] = @"DynamicSize";
  v6[8] = @"IsValidated";
  v6[9] = @"Installing";
  v6[10] = @"AppStoreVendable";
  v6[11] = @"DeviceBasedVPP";
  v6[12] = @"BetaApp";
  v6[13] = @"AdHocCodeSigned";
  v6[14] = @"HasUpdateAvailable";
  v6[15] = @"IsAppClip";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:16];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)expensiveItems
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"BundleSize";
  v6[1] = @"DynamicSize";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end