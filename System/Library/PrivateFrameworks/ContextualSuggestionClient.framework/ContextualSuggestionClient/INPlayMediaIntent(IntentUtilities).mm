@interface INPlayMediaIntent(IntentUtilities)
- (id)atx_nonNilParametersByName;
@end

@implementation INPlayMediaIntent(IntentUtilities)

- (id)atx_nonNilParametersByName
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = &off_28579B5E8;
  v1 = objc_msgSendSuper2(&v19, sel_atx_nonNilParametersByName);
  v2 = [v1 mutableCopy];

  v3 = [v2 objectForKeyedSubscript:@"buckets"];
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = 1;
      do
      {
        v9 = 0;
        v10 = v8;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v15 + 1) + 8 * v9);
          v8 = (v10 + 1);
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bucket_%i", v10];
          [v2 setObject:v11 forKeyedSubscript:v12];

          ++v9;
          v10 = v8;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v6);
    }

    v3 = v14;
  }

  return v2;
}

@end