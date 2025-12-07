@interface NSManagedObject(Accounts)
- (id)_obsoleteAttributes;
- (id)_removeObsoleteKeysFromDictionary:()Accounts;
- (uint64_t)validateRequiredAttributesForObject:()Accounts error:;
- (void)encodeWithCoder:()Accounts;
- (void)setValuesWithObject:()Accounts;
@end

@implementation NSManagedObject(Accounts)

- (void)encodeWithCoder:()Accounts
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  entity = [self entity];
  attributesByName = [entity attributesByName];
  allKeys = [attributesByName allKeys];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = allKeys;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [self valueForKey:{v13, v15}];
        [v4 encodeObject:v14 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)_obsoleteAttributes
{
  if (_obsoleteAttributes_onceToken != -1)
  {
    [NSManagedObject(Accounts) _obsoleteAttributes];
  }

  v2 = __sACDObsoleteAttributes;

  return v2;
}

- (id)_removeObsoleteKeysFromDictionary:()Accounts
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  allKeys = [v4 allKeys];
  v7 = [v5 setWithArray:allKeys];

  _obsoleteAttributes = [self _obsoleteAttributes];
  if ([_obsoleteAttributes intersectsSet:v7])
  {
    v9 = [v4 mutableCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = _obsoleteAttributes;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 removeObjectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (void)setValuesWithObject:()Accounts
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  entity = [self entity];
  attributesByName = [entity attributesByName];
  allKeys = [attributesByName allKeys];

  entity2 = [self entity];
  relationshipsByName = [entity2 relationshipsByName];
  allKeys2 = [relationshipsByName allKeys];

  if (objc_opt_respondsToSelector())
  {
    dirtyProperties = [v4 dirtyProperties];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [dirtyProperties countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(dirtyProperties);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([allKeys containsObject:v16])
          {
            v17 = [v4 valueForKey:v16];
            [self setValue:v17 forKey:v16];
          }

          else if (([allKeys2 containsObject:v16] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"credential") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"accountProperties") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"parent") & 1) == 0)
          {
            NSLog(@"Dirty property name '%@' not part of managed object.", v16);
          }
        }

        v13 = [dirtyProperties countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  else
  {
    dirtyProperties = [v4 dictionaryWithValuesForKeys:allKeys];
    v18 = [self _removeObsoleteKeysFromDictionary:dirtyProperties];
    [self setValuesForKeysWithDictionary:v18];
  }
}

- (uint64_t)validateRequiredAttributesForObject:()Accounts error:
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  entity = [self entity];
  attributesByName = [entity attributesByName];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [attributesByName allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [attributesByName objectForKey:v14];
        isOptional = [v15 isOptional];

        if ((isOptional & 1) == 0)
        {
          v17 = [v6 valueForKey:v14];

          if (!v17)
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"object is missing required property '%@'", v14];
            if (a4)
            {
              v20 = MEMORY[0x1E696ABC0];
              v21 = [MEMORY[0x1E695DF20] dictionaryWithObject:v19 forKey:*MEMORY[0x1E696A578]];
              *a4 = [v20 errorWithDomain:@"com.apple.accounts" code:2 userInfo:v21];
            }

            v18 = 0;
            goto LABEL_14;
          }
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_14:

  return v18;
}

@end