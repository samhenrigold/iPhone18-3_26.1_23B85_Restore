@interface NSString(RadioRequestAdditions)
+ (id)queryStringForRadioRequestParameters:()RadioRequestAdditions protocolVersion:error:;
@end

@implementation NSString(RadioRequestAdditions)

+ (id)queryStringForRadioRequestParameters:()RadioRequestAdditions protocolVersion:error:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = [MEMORY[0x277CCAB68] stringWithFormat:@"?version=%i", a4];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [v5 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [v5 objectForKey:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = v12;
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v14 = [v12 objCType], *v14 != 66) || v14[1])
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_17;
          }

          stringValue = [v12 stringValue];
LABEL_13:
          v15 = stringValue;
          if (!stringValue)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }

        if ([v12 BOOLValue])
        {
          v15 = @"true";
        }

        else
        {
          v15 = @"false";
        }

LABEL_14:
        if (queryStringForRadioRequestParameters_protocolVersion_error__sOnceToken != -1)
        {
          dispatch_once(&queryStringForRadioRequestParameters_protocolVersion_error__sOnceToken, &__block_literal_global_114);
        }

        v16 = [(__CFString *)v15 stringByAddingPercentEncodingWithAllowedCharacters:queryStringForRadioRequestParameters_protocolVersion_error__sQueryStringAllowedCharacterSet];
        [v20 appendFormat:@"&%@=%@", v11, v16];

LABEL_17:
        ++v10;
      }

      while (v8 != v10);
      v17 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      v8 = v17;
    }

    while (v17);
  }

  v18 = [v20 copy];

  return v18;
}

@end