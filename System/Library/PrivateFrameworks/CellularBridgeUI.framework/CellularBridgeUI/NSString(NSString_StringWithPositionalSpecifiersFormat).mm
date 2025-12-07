@interface NSString(NSString_StringWithPositionalSpecifiersFormat)
+ (id)stringWithPositionalSpecifiersFormat:()NSString_StringWithPositionalSpecifiersFormat arguments:;
@end

@implementation NSString(NSString_StringWithPositionalSpecifiersFormat)

+ (id)stringWithPositionalSpecifiersFormat:()NSString_StringWithPositionalSpecifiersFormat arguments:
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29 = a4;
  v6 = [v5 mutableCopy];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  v9 = [languageCode isEqualToString:@"th"];

  if (v9)
  {
    [v6 replaceOccurrencesOfString:@"[tt]" withString:&stru_285611AE0 options:2 range:{0, objc_msgSend(v5, "length")}];
    v10 = [v6 copy];

    v5 = v10;
  }

  v34 = 0;
  v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"%\\d\\$@" options:1 error:&v34];
  v12 = v34;
  v27 = v11;
  v13 = v5;
  obj = [v11 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v25 = v12;
  if (!v12)
  {
    if (obj)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = [obj countByEnumeratingWithState:&v30 objects:v35 count:{16, 0}];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(obj);
            }

            range = [*(*(&v30 + 1) + 8 * i) range];
            v20 = [v13 substringWithRange:{range, v19}];
            v21 = [v20 mutableCopy];
            [v21 replaceOccurrencesOfString:@"%" withString:&stru_285611AE0 options:1 range:{0, objc_msgSend(v21, "length")}];
            [v21 replaceOccurrencesOfString:@"$@" withString:&stru_285611AE0 options:1 range:{0, objc_msgSend(v21, "length")}];
            v22 = [v29 objectAtIndexedSubscript:{(objc_msgSend(v21, "intValue") - 1)}];
            [v6 replaceOccurrencesOfString:v20 withString:v22 options:1 range:{0, objc_msgSend(v6, "length")}];
          }

          v15 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v15);
      }
    }
  }

  v23 = [v6 copy];

  return v23;
}

@end