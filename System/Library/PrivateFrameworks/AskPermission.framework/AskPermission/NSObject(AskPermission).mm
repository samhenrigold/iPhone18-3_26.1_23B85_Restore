@interface NSObject(AskPermission)
- (id)ap_generateDescriptionWithSubObjects:()AskPermission;
@end

@implementation NSObject(AskPermission)

- (id)ap_generateDescriptionWithSubObjects:()AskPermission
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p>", objc_opt_class(), self];
  if ([v4 count])
  {
    [v5 appendString:@" {\n"];
    allKeys = [v4 allKeys];
    v7 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v4 objectForKeyedSubscript:v13];
          [v5 appendFormat:@"  %@ = %@, \n", v13, v14, v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v5 appendString:@"}"];
  }

  return v5;
}

@end