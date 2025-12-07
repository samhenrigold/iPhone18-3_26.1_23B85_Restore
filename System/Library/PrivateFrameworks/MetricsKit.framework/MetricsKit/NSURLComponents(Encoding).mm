@interface NSURLComponents(Encoding)
+ (id)mt_queryParameterStringForDictionary:()Encoding;
@end

@implementation NSURLComponents(Encoding)

+ (id)mt_queryParameterStringForDictionary:()Encoding
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = [[self alloc] initWithString:&stru_286A3A510];
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCAD18]);
        v13 = MEMORY[0x277CCACA8];
        v14 = [v6 objectForKeyedSubscript:v11];
        v15 = [v13 stringWithFormat:@"%@", v14];
        v16 = [v12 initWithName:v11 value:v15];

        [v5 addObject:v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [v19 setQueryItems:v5];
  percentEncodedQuery = [v19 percentEncodedQuery];

  return percentEncodedQuery;
}

@end