@interface NSDictionary(QueryParameterSupport)
- (__CFString)asQueryParameterString;
@end

@implementation NSDictionary(QueryParameterSupport)

- (__CFString)asQueryParameterString
{
  v22 = *MEMORY[0x1E69E9840];
  if ([self count])
  {
    string = [MEMORY[0x1E696AD60] string];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [self allKeys];
    v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v2)
    {
      v3 = v2;
      v15 = *v18;
      v4 = @"?%@=%@";
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v17 + 1) + 8 * i);
          uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
          v9 = [self objectForKey:v6];
          uRLQueryAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];
          [string appendFormat:v4, v8, v11];

          v4 = @"&%@=%@";
        }

        v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v3);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithString:string];
  }

  else
  {
    v12 = &stru_1F098C218;
  }

  return v12;
}

@end