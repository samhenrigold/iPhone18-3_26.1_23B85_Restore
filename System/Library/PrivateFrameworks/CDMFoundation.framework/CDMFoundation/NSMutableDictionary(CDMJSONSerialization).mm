@interface NSMutableDictionary(CDMJSONSerialization)
- (void)_cdm_safeJSONTraverse;
@end

@implementation NSMutableDictionary(CDMJSONSerialization)

- (void)_cdm_safeJSONTraverse
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [self allKeys];
  v3 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [self objectForKeyedSubscript:v7];
        if (objc_opt_respondsToSelector())
        {
          _cdm_safeJSONString = [v8 _cdm_safeJSONString];
          [self setObject:_cdm_safeJSONString forKeyedSubscript:v7];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v8 _cdm_safeJSONTraverse];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

@end