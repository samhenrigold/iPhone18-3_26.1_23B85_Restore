@interface NSString(WLSQLController)
- (id)wl_sqlIDComponentsSeparatedByString:()WLSQLController;
@end

@implementation NSString(WLSQLController)

- (id)wl_sqlIDComponentsSeparatedByString:()WLSQLController
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [self componentsSeparatedByString:?];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "longLongValue", v10)}];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

@end