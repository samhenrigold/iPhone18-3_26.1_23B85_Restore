@interface NSURLRequest(GKAdditions)
- (id)loggableHeaders;
@end

@implementation NSURLRequest(GKAdditions)

- (id)loggableHeaders
{
  v17 = *MEMORY[0x277D85DE8];
  allHTTPHeaderFields = [self allHTTPHeaderFields];
  v3 = [allHTTPHeaderFields mutableCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allHTTPHeaderFields2 = [self allHTTPHeaderFields];
  v5 = [allHTTPHeaderFields2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allHTTPHeaderFields2);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 caseInsensitiveCompare:@"X-Apple-I-MD"] || !objc_msgSend(v9, "caseInsensitiveCompare:", @"X-Apple-I-MD-M") || !objc_msgSend(v9, "caseInsensitiveCompare:", @"x-gk-auth-token"))
        {
          [v3 removeObjectForKey:v9];
        }
      }

      v6 = [allHTTPHeaderFields2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

@end