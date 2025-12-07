@interface NSURL(ICQ)
- (id)icq_URLByAppendingQueryItems:()ICQ;
- (id)icq_URLByAppendingQueryParamName:()ICQ value:;
- (id)icq_URLByAppendingQueryParamtersFromContext:()ICQ;
- (id)icq_queryItemForName:()ICQ;
- (uint64_t)icq_isICQLaunchURL;
@end

@implementation NSURL(ICQ)

- (uint64_t)icq_isICQLaunchURL
{
  v2 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
  scheme = [v2 scheme];
  if (([scheme isEqualToString:@"icq"] & 1) == 0)
  {

    goto LABEL_5;
  }

  host = [v2 host];
  v4 = [host isEqualToString:@"launch"];

  if ((v4 & 1) == 0)
  {
LABEL_5:
    host2 = [v2 host];
    v7 = [host2 isEqualToString:@"icq.icloud.com"];
    if ((v7 & 1) != 0 || ([v2 host], host = objc_claimAutoreleasedReturnValue(), objc_msgSend(host, "isEqualToString:", @"icq.apple.com")))
    {
      path = [v2 path];
      v5 = [path isEqualToString:@"/launch"];

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

- (id)icq_URLByAppendingQueryItems:()ICQ
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = [v4 componentsWithURL:self resolvingAgainstBaseURL:1];
  v7 = MEMORY[0x277CBEB18];
  queryItems = [v6 queryItems];
  v9 = [v7 arrayWithArray:queryItems];

  [v9 addObjectsFromArray:v5];
  [v6 setQueryItems:v9];
  v10 = [v6 URL];

  return v10;
}

- (id)icq_URLByAppendingQueryParamName:()ICQ value:
{
  v6 = MEMORY[0x277CCACE0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 componentsWithURL:self resolvingAgainstBaseURL:1];
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:v8 value:v7];

  v11 = MEMORY[0x277CBEB18];
  queryItems = [v9 queryItems];
  v13 = [v11 arrayWithArray:queryItems];

  [v13 addObject:v10];
  [v9 setQueryItems:v13];
  v14 = [v9 URL];

  return v14;
}

- (id)icq_queryItemForName:()ICQ
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  queryItems = [v5 queryItems];
  v7 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(queryItems);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)icq_URLByAppendingQueryParamtersFromContext:()ICQ
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:0];
    v6 = MEMORY[0x277CBEB18];
    v36 = v5;
    queryItems = [v5 queryItems];
    v8 = [v6 arrayWithArray:queryItems];

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          name = [*(*(&v42 + 1) + 8 * i) name];
          [v9 addObject:name];
        }

        v12 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v12);
    }

    v35 = v10;

    v16 = [MEMORY[0x277CCACE0] componentsWithString:v4];
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = v16;
    queryItems2 = [v16 queryItems];
    v18 = [queryItems2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(queryItems2);
          }

          v22 = *(*(&v38 + 1) + 8 * j);
          name2 = [v22 name];
          lowercaseString = [name2 lowercaseString];
          v25 = [lowercaseString isEqualToString:@"context"];

          if (v25)
          {
            v26 = MEMORY[0x277CCAD18];
            value = [v22 value];
            v28 = [v26 queryItemWithName:@"clientContext" value:value];

            v22 = v28;
          }

          name3 = [v22 name];
          v30 = [v9 containsObject:name3];

          if ((v30 & 1) == 0)
          {
            [v37 addObject:v22];
          }
        }

        v19 = [queryItems2 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v19);
    }

    [v35 addObjectsFromArray:v37];
    v31 = v36;
    if ([v35 count])
    {
      [v36 setQueryItems:v35];
    }

    v32 = [v36 URL];
  }

  else
  {
    v31 = _ICQGetLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "[NSURL(ICQ) icq_URLByAppendingQueryParamtersFromContext:]";
      _os_log_impl(&dword_275572000, v31, OS_LOG_TYPE_DEFAULT, "%s Context is unavailable bailing.", buf, 0xCu);
    }

    v32 = 0;
  }

  return v32;
}

@end