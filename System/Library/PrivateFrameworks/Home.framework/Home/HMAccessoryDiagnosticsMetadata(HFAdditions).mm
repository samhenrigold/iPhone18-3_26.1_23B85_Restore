@interface HMAccessoryDiagnosticsMetadata(HFAdditions)
+ (id)hf_serviceURL:()HFAdditions withParameters:;
- (id)hf_serviceURLWithParameters;
@end

@implementation HMAccessoryDiagnosticsMetadata(HFAdditions)

- (id)hf_serviceURLWithParameters
{
  v3 = objc_opt_class();
  uploadDestination = [self uploadDestination];
  urlParameters = [self urlParameters];
  v6 = [v3 hf_serviceURL:uploadDestination withParameters:urlParameters];

  return v6;
}

+ (id)hf_serviceURL:()HFAdditions withParameters:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v18}];
        v15 = [MEMORY[0x277CCAD18] queryItemWithName:v13 value:v14];
        [array addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    [v6 setQueryItems:array];
  }

  v16 = [v6 URL];

  return v16;
}

@end