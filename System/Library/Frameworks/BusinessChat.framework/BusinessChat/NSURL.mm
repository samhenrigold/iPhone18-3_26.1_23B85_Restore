@interface NSURL
- (id)fragments;
@end

@implementation NSURL

- (id)fragments
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = objc_opt_new();
    fragment = [self fragment];
    v5 = [fragment componentsSeparatedByString:@"&"];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) componentsSeparatedByString:{@"=", v15}];
          if ([v11 count] >= 2)
          {
            v12 = [v11 objectAtIndexedSubscript:1];
            v13 = [v11 objectAtIndexedSubscript:0];
            [v3 setObject:v12 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end