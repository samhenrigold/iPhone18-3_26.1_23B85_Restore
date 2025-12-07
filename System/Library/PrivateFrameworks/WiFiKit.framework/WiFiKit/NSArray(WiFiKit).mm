@interface NSArray(WiFiKit)
- (__CFString)numberArrayToJsonString;
- (id)_matchingItem:()WiFiKit;
- (id)awdlDiagnosticsResults;
- (id)btDiagnosticsResults;
- (id)congestionDiagnosticsResults;
- (id)displayableHealthRecommendations;
- (id)noInternetDiagnosticsResults;
- (uint64_t)dnsSettings;
- (uint64_t)ipv4Settings;
- (uint64_t)ipv6Settings;
- (uint64_t)proxySettings;
@end

@implementation NSArray(WiFiKit)

- (id)_matchingItem:()WiFiKit
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)ipv4Settings
{
  v3 = objc_opt_class();

  return [self _matchingItem:v3];
}

- (uint64_t)ipv6Settings
{
  v3 = objc_opt_class();

  return [self _matchingItem:v3];
}

- (uint64_t)dnsSettings
{
  v3 = objc_opt_class();

  return [self _matchingItem:v3];
}

- (uint64_t)proxySettings
{
  v3 = objc_opt_class();

  return [self _matchingItem:v3];
}

- (id)btDiagnosticsResults
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 testID] == 19 || objc_msgSend(v8, "testID") == 18 || objc_msgSend(v8, "testID") == 20)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)awdlDiagnosticsResults
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 testID] == 21 || objc_msgSend(v8, "testID") == 22)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)congestionDiagnosticsResults
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 testID] == 23 || objc_msgSend(v8, "testID") == 24 || objc_msgSend(v8, "testID") == 25 || objc_msgSend(v8, "testID") == 26)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)noInternetDiagnosticsResults
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 testID] == 9 || objc_msgSend(v8, "testID") == 11)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)displayableHealthRecommendations
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subtitleOnlyIssue == NO"];
  v3 = [self filteredArrayUsingPredicate:v2];

  return v3;
}

- (__CFString)numberArrayToJsonString
{
  v19 = *MEMORY[0x277D85DE8];
  if ([self count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v4 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          stringValue = [*(*(&v14 + 1) + 8 * i) stringValue];
          if (stringValue)
          {
            [array addObject:stringValue];
          }
        }

        v5 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    v13 = 0;
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:array options:0 error:&v13];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    }

    else
    {
      v10 = &stru_2882E4AD8;
    }

    v11 = v10;
  }

  else
  {
    v11 = &stru_2882E4AD8;
  }

  return v11;
}

@end