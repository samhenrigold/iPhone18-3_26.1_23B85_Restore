@interface NSURLUtil
+ (id)dictionaryToQueryString:(id)string;
+ (id)queryStringToQueryDictionary:(id)dictionary;
@end

@implementation NSURLUtil

+ (id)queryStringToQueryDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [dictionary componentsSeparatedByString:@"&"];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) componentsSeparatedByString:@"="];
        v10 = [v9 objectAtIndex:0];
        null = [MEMORY[0x1E695DFB0] null];
        if ([v9 count] >= 2)
        {
          v12 = [v9 objectAtIndex:1];

          null = v12;
        }

        [v4 setObject:null forKey:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)dictionaryToQueryString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [stringCopy keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (v7)
        {
          v11 = [v7 stringByAppendingString:@"&"];
        }

        else
        {
          v11 = &stru_1F548B930;
        }

        v7 = [(__CFString *)v11 stringByAppendingString:v10];

        v12 = [stringCopy objectForKey:v10];
        null = [MEMORY[0x1E695DFB0] null];

        if (v12 != null)
        {
          v14 = [v7 stringByAppendingString:@"="];

          v7 = [v14 stringByAppendingString:v12];
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end