@interface NSURLRequest(WLKAdditions)
+ (id)wlk_requestWithURL:()WLKAdditions httpMethod:httpBody:httpHeaders:cachePolicy:timeout:;
@end

@implementation NSURLRequest(WLKAdditions)

+ (id)wlk_requestWithURL:()WLKAdditions httpMethod:httpBody:httpHeaders:cachePolicy:timeout:
{
  v42 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    v35 = v15;
    HIDWORD(v34) = [v14 isEqualToString:@"POST"];
    LODWORD(v34) = [v14 isEqualToString:@"PATCH"];
    v17 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v13 cachePolicy:a8 timeoutInterval:self];
    [v17 setHTTPMethod:v14];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allKeys = [v16 allKeys];
    v19 = [allKeys countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          v24 = [v16 objectForKey:{v23, v34}];
          [v17 setValue:v24 forHTTPHeaderField:v23];
        }

        v20 = [allKeys countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v20);
    }

    if ((HIDWORD(v34) | v34))
    {
      v15 = v35;
      if (v35)
      {
        v25 = [v17 valueForHTTPHeaderField:@"Content-Type"];
        v26 = [v25 length];

        if (!v26)
        {
          v27 = WLKNetworkingLogObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_272A0F000, v27, OS_LOG_TYPE_DEFAULT, "NSURLRequest-WLKAdditions: HTTP body specified without specifying Content-Type", buf, 2u);
          }
        }

        [v17 setHTTPBody:{v35, v34}];
      }

      else if (HIDWORD(v34))
      {
        v30 = [MEMORY[0x277CCACE0] componentsWithURL:v13 resolvingAgainstBaseURL:0];
        query = [v13 query];
        if ([query length])
        {
          v32 = [query dataUsingEncoding:4];
          [v17 setHTTPBody:v32];

          [v17 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        }

        [v30 setQueryItems:{0, v34}];
        v33 = [v30 URL];
        [v17 setURL:v33];
      }
    }

    else
    {
      v15 = v35;
    }
  }

  else
  {
    v28 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v28, OS_LOG_TYPE_DEFAULT, "NSURLRequest-WLKAdditions: URL parameter is nil", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

@end