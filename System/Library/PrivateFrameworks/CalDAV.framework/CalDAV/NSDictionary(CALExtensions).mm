@interface NSDictionary(CALExtensions)
- (void)mutableCopyWithElementsCopy;
@end

@implementation NSDictionary(CALExtensions)

- (void)mutableCopyWithElementsCopy
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [self mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [self allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 copy];

          [v2 setObject:v10 forKey:v8];
          v9 = v10;
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

@end