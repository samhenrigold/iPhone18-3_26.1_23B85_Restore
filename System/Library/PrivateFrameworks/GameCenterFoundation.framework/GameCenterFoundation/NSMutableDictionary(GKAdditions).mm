@interface NSMutableDictionary(GKAdditions)
- (void)_gkAddEntriesFromFormEncodedString:()GKAdditions;
- (void)_gkSetIfNonNilObject:()GKAdditions forKey:;
@end

@implementation NSMutableDictionary(GKAdditions)

- (void)_gkAddEntriesFromFormEncodedString:()GKAdditions
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:@"&"];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          if ([v8 length])
          {
            v9 = [v8 rangeOfString:@"="];
            if (v9 == 0x7FFFFFFFFFFFFFFFLL)
            {
              _gkStringByUnescapingFromURLQuery = [v8 _gkStringByUnescapingFromURLQuery];
              _gkStringByUnescapingFromURLQuery2 = &stru_283AFD1E0;
            }

            else
            {
              v13 = v9;
              v14 = v10;
              v15 = [v8 substringToIndex:v9];
              _gkStringByUnescapingFromURLQuery = [v15 _gkStringByUnescapingFromURLQuery];

              v16 = [v8 substringFromIndex:v13 + v14];
              _gkStringByUnescapingFromURLQuery2 = [v16 _gkStringByUnescapingFromURLQuery];
            }

            if (_gkStringByUnescapingFromURLQuery)
            {
              v17 = _gkStringByUnescapingFromURLQuery2 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              [self setObject:_gkStringByUnescapingFromURLQuery2 forKey:_gkStringByUnescapingFromURLQuery];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }
  }
}

- (void)_gkSetIfNonNilObject:()GKAdditions forKey:
{
  if (a3)
  {
    return [result setObject:? forKeyedSubscript:?];
  }

  return result;
}

@end