@interface NSURLComponents(FamilyCircle)
- (id)fa_queryItemsDictionary;
- (id)fa_valueForQueryItem:()FamilyCircle;
@end

@implementation NSURLComponents(FamilyCircle)

- (id)fa_valueForQueryItem:()FamilyCircle
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self queryItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  value = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (value)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:v4];

        if (v11)
        {
          value = [v9 value];
          goto LABEL_11;
        }
      }

      value = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return value;
}

- (id)fa_queryItemsDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  queryItems = [self queryItems];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(queryItems, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = queryItems;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        name = [v8 name];
        if (name)
        {
          v10 = name;
          value = [v8 value];

          if (value)
          {
            value2 = [v8 value];
            name2 = [v8 name];
            [v2 setObject:value2 forKeyedSubscript:name2];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];

  return v14;
}

@end