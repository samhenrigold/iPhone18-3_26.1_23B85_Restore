@interface NSString(QRCode)
- (id)darkQRCode;
- (id)lightQRCode;
- (id)parseQueryParamsWithTitleDictionary:()QRCode;
@end

@implementation NSString(QRCode)

- (id)lightQRCode
{
  v1 = [self dataUsingEncoding:4];
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CIQRCodeGenerator"];
  [v2 setValue:v1 forKey:@"inputMessage"];
  outputImage = [v2 outputImage];
  [outputImage extent];
  Width = CGRectGetWidth(v9);
  CGAffineTransformMakeScale(&v7, 256.0 / Width, 256.0 / Width);
  v5 = [outputImage imageByApplyingTransform:&v7];

  return v5;
}

- (id)darkQRCode
{
  lightQRCode = [self lightQRCode];
  if (lightQRCode)
  {
    v2 = [MEMORY[0x277CBF750] filterWithName:@"CIColorInvert"];
    v3 = *MEMORY[0x277CBFAF0];
    [v2 setValue:lightQRCode forKey:*MEMORY[0x277CBFAF0]];
    if (objc_opt_respondsToSelector())
    {
      [v2 outputImage];
    }

    else
    {
      [0 valueForKey:*MEMORY[0x277CBFB50]];
    }
    v5 = ;
    if (v5)
    {
      v6 = [MEMORY[0x277CBF750] filterWithName:@"CIMaskToAlpha"];
      [v6 setValue:v5 forKey:v3];
      if (objc_opt_respondsToSelector())
      {
        [v6 outputImage];
      }

      else
      {
        [v6 valueForKey:*MEMORY[0x277CBFB50]];
      }
      v7 = ;
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = lightQRCode;
      }

      v4 = v9;
    }

    else
    {
      v4 = lightQRCode;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseQueryParamsWithTitleDictionary:()QRCode
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACE0] componentsWithString:self];
  array = [MEMORY[0x277CBEB18] array];
  v28 = v5;
  fragment = [v5 fragment];
  v8 = objc_opt_new();
  v27 = fragment;
  [v8 setQuery:fragment];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v8;
  obj = [v8 queryItems];
  v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        name = [v13 name];
        v15 = [v4 objectForKeyedSubscript:name];
        v16 = v15;
        v17 = @"Unknown";
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        v34[0] = @"key";
        name2 = [v13 name];
        v35[0] = name2;
        v34[1] = @"value";
        value = [v13 value];
        v21 = value;
        v22 = &stru_28753DF48;
        if (value)
        {
          v22 = value;
        }

        v34[2] = @"title";
        v35[1] = v22;
        v35[2] = v18;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

        [array addObject:v23];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v10);
  }

  v24 = [array sortedArrayUsingComparator:&__block_literal_global_24];

  return v24;
}

@end