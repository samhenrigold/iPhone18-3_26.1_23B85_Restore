@interface LNEntityValueType(CATSupport)
- (__CFString)cat_value:()CATSupport;
@end

@implementation LNEntityValueType(CATSupport)

- (__CFString)cat_value:()CATSupport
{
  v23 = *MEMORY[0x1E69E9840];
  value = [a3 value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = value;
    properties = [value properties];
    v6 = [properties countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(properties);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          value2 = [v10 value];
          valueType = [value2 valueType];
          value3 = [v10 value];
          v14 = [valueType cat_value:value3];
          identifier = [v10 identifier];
          [(__CFString *)dictionary setObject:v14 forKeyedSubscript:identifier];
        }

        v7 = [properties countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {

    dictionary = &stru_1F0BBC770;
  }

  return dictionary;
}

@end