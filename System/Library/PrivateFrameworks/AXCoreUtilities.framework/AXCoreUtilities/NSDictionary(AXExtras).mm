@interface NSDictionary(AXExtras)
- (id)ax_deepMutableCopy;
@end

@implementation NSDictionary(AXExtras)

- (id)ax_deepMutableCopy
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [self mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [v1 allKeys];
  v3 = [allKeys copy];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v1 objectForKeyedSubscript:v8];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 copyWithZone:0];
          [v1 setObject:v10 forKeyedSubscript:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v1;
}

@end