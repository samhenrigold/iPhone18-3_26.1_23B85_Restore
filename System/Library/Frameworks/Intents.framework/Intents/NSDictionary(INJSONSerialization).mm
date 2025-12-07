@interface NSDictionary(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSDictionary(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [self objectForKey:v10];
          v12 = [v4 encodeObject:v11];

          [dictionary if_setObjectIfNonNil:v12 forKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return dictionary;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9 || (objc_opt_class(), v10 = v9, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v10 = 0;
  }

  return v10;
}

@end