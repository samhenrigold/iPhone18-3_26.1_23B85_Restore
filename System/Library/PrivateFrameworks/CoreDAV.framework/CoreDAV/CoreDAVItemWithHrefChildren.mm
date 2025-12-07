@interface CoreDAVItemWithHrefChildren
+ (id)copyParseRules;
- (id)description;
- (id)hrefsAsFullURLs;
- (id)hrefsAsOriginalURLs;
- (id)hrefsAsStrings;
- (void)addHref:(id)href;
@end

@implementation CoreDAVItemWithHrefChildren

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVItemWithHrefChildren;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  hrefs = [(CoreDAVItemWithHrefChildren *)self hrefs];
  [v3 appendFormat:@"\n  Number of HREFs: [%lu]", objc_msgSend(hrefs, "count")];

  unauthenticated = [(CoreDAVItemWithHrefChildren *)self unauthenticated];
  [v3 appendFormat:@"\n  Unauthenticated: [%@]", unauthenticated];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"href" objectClass:objc_opt_class() setterMethod:sel_addHref_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"href"];
    v9 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"unauthenticated" objectClass:objc_opt_class() setterMethod:sel_setUnauthenticated_];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"unauthenticated"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)addHref:(id)href
{
  hrefCopy = href;
  hrefs = [(CoreDAVItemWithHrefChildren *)self hrefs];

  if (!hrefs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVItemWithHrefChildren *)self setHrefs:v6];
  }

  hrefs2 = [(CoreDAVItemWithHrefChildren *)self hrefs];
  [hrefs2 addObject:hrefCopy];
}

- (id)hrefsAsFullURLs
{
  v26 = *MEMORY[0x277D85DE8];
  hrefs = [(CoreDAVItemWithHrefChildren *)self hrefs];

  if (hrefs)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    hrefs2 = [(CoreDAVItemWithHrefChildren *)self hrefs];
    hrefs = [v4 initWithCapacity:{objc_msgSend(hrefs2, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    hrefs3 = [(CoreDAVItemWithHrefChildren *)self hrefs];
    v7 = [hrefs3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v20;
      *&v8 = 138412290;
      v18 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(hrefs3);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          payloadAsFullURL = [v12 payloadAsFullURL];
          if (payloadAsFullURL)
          {
            [hrefs addObject:payloadAsFullURL];
          }

          else
          {
            v14 = +[CoreDAVLogging sharedLogging];
            v15 = [v14 logHandleForAccountInfoProvider:0];
            v16 = v15;
            if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              v24 = v12;
              _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_DEFAULT, "omitting nil URL from href '%@'", buf, 0xCu);
            }
          }
        }

        v9 = [hrefs3 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }
  }

  return hrefs;
}

- (id)hrefsAsOriginalURLs
{
  v23 = *MEMORY[0x277D85DE8];
  hrefs = [(CoreDAVItemWithHrefChildren *)self hrefs];
  if (hrefs)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(hrefs, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = hrefs;
    v4 = hrefs;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          payloadAsOriginalURL = [v9 payloadAsOriginalURL];
          if (payloadAsOriginalURL)
          {
            [v3 addObject:payloadAsOriginalURL];
          }

          else
          {
            v11 = +[CoreDAVLogging sharedLogging];
            v12 = [v11 logHandleForAccountInfoProvider:0];
            v13 = v12;
            if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v21 = v9;
              _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_DEFAULT, "omitting nil URL from href '%@'", buf, 0xCu);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v6);
    }

    hrefs = v15;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hrefsAsStrings
{
  v23 = *MEMORY[0x277D85DE8];
  hrefs = [(CoreDAVItemWithHrefChildren *)self hrefs];
  if (hrefs)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(hrefs, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = hrefs;
    v4 = hrefs;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          payloadAsString = [v9 payloadAsString];
          if (payloadAsString)
          {
            [v3 addObject:payloadAsString];
          }

          else
          {
            v11 = +[CoreDAVLogging sharedLogging];
            v12 = [v11 logHandleForAccountInfoProvider:0];
            v13 = v12;
            if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v21 = v9;
              _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_DEFAULT, "omitting nil URL from href '%@'", buf, 0xCu);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v6);
    }

    hrefs = v15;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end