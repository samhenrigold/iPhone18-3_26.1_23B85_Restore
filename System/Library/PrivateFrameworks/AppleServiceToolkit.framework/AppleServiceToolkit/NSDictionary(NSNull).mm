@interface NSDictionary(NSNull)
- (id)dictionaryDroppingNSNullValues;
@end

@implementation NSDictionary(NSNull)

- (id)dictionaryDroppingNSNullValues
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [self mutableCopy];
  allKeys = [v2 allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [self objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 setObject:0 forKeyedSubscript:v8];
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          arrayDroppingNSNullValues = [v9 arrayDroppingNSNullValues];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            arrayDroppingNSNullValues = [v9 setDroppingNSNullValues];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_15;
            }

            arrayDroppingNSNullValues = [v9 dictionaryDroppingNSNullValues];
          }
        }

        v11 = arrayDroppingNSNullValues;
        [v2 setObject:arrayDroppingNSNullValues forKeyedSubscript:v8];

LABEL_15:
      }

      v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

@end