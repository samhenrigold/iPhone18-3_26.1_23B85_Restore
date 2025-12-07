@interface NSString(NSString_StringWithPositionalSpecifiersFormat)
+ (id)stringWithPositionalSpecifiersFormat:()NSString_StringWithPositionalSpecifiersFormat arguments:;
@end

@implementation NSString(NSString_StringWithPositionalSpecifiersFormat)

+ (id)stringWithPositionalSpecifiersFormat:()NSString_StringWithPositionalSpecifiersFormat arguments:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v27 = 0;
  v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"%\\d\\$@" options:1 error:&v27];
  v8 = v27;
  v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v5];
  v21 = v7;
  obj = [v7 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v20 = v8;
  if (!v8)
  {
    if (obj)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(obj);
            }

            range = [*(*(&v23 + 1) + 8 * i) range];
            v16 = [v5 substringWithRange:{range, v15}];
            v17 = [v16 mutableCopy];
            [v17 replaceOccurrencesOfString:@"%" withString:&stru_2875C9CD8 options:1 range:{0, objc_msgSend(v17, "length")}];
            [v17 replaceOccurrencesOfString:@"$@" withString:&stru_2875C9CD8 options:1 range:{0, objc_msgSend(v17, "length")}];
            v18 = [v6 objectAtIndexedSubscript:{(objc_msgSend(v17, "intValue") - 1)}];
            [v9 replaceOccurrencesOfString:v16 withString:v18 options:1 range:{0, objc_msgSend(v9, "length")}];
          }

          v11 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v11);
      }
    }
  }

  return v9;
}

@end