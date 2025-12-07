@interface NSURL(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSURL(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v4 = a3;
  if ([self isFileURL] && (v5 = MEMORY[0x193AD70C0](self)) != 0)
  {
    v6 = v5;
    absoluteString = [self absoluteString];
    v8 = [v4 encodeObject:v6];
    absoluteString2 = [absoluteString stringByAppendingFormat:@"?%@=%@", @"scope", v8];
  }

  else
  {
    absoluteString2 = [self absoluteString];
  }

  return absoluteString2;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v9];
    v11 = [v10 URL];
    isFileURL = [v11 isFileURL];

    v13 = MEMORY[0x1E695DFF8];
    if (isFileURL)
    {
      v28 = v8;
      v14 = [v9 componentsSeparatedByString:@"?"];
      v15 = [v14 objectAtIndexedSubscript:0];
      v29 = [v13 URLWithString:v15];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = v10;
      queryItems = [v10 queryItems];
      v17 = [queryItems countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(queryItems);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            name = [v21 name];
            v23 = [name isEqualToString:@"scope"];

            if (v23)
            {
              value = [v21 value];
              v25 = [v7 decodeObjectOfClass:objc_opt_class() from:value];
              if (v25)
              {
                MEMORY[0x193AD70B0](v29, v25);
              }
            }
          }

          v18 = [queryItems countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v18);
      }

      v8 = v28;
      v10 = v27;
    }

    else
    {
      v29 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    }
  }

  else
  {

    v29 = 0;
  }

  return v29;
}

@end