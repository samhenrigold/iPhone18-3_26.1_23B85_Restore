@interface NSDictionary(AFCollectionUtilities)
- (id)_af_lenient:()AFCollectionUtilities map:;
@end

@implementation NSDictionary(AFCollectionUtilities)

- (id)_af_lenient:()AFCollectionUtilities map:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [selfCopy objectForKeyedSubscript:{v12, v17}];
        v14 = v5[2](v5, v12, v13);

        if (v14)
        {
          [v6 setObject:v14 forKey:v12];
        }
      }

      v9 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];

  return v15;
}

@end