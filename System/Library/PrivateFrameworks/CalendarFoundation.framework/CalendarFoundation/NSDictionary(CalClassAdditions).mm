@interface NSDictionary(CalClassAdditions)
- (id)CalDictionaryWithEmptyObjectsRemoved;
- (id)filteredDictionaryPassingTest:()CalClassAdditions;
- (uint64_t)CalHasKeyIn:()CalClassAdditions;
- (void)CalMutableRecursiveCopy;
- (void)mutableCopyWithElementsCopy;
@end

@implementation NSDictionary(CalClassAdditions)

- (void)mutableCopyWithElementsCopy
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [self mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [self allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 copy];

          [v2 setObject:v10 forKey:v8];
          v9 = v10;
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (void)CalMutableRecursiveCopy
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [self allKeys];
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [self objectForKey:v7];
        if (objc_opt_respondsToSelector())
        {
          calMutableRecursiveCopy = [v8 CalMutableRecursiveCopy];
        }

        else if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 conformsToProtocol:&unk_1F37B6050])
        {
          calMutableRecursiveCopy = [v8 mutableCopy];
        }

        else
        {
          calMutableRecursiveCopy = [v8 copy];
        }

        v10 = calMutableRecursiveCopy;
        [v2 setValue:calMutableRecursiveCopy forKey:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v2;
}

- (uint64_t)CalHasKeyIn:()CalClassAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [self objectForKey:{*(*(&v12 + 1) + 8 * v8), v12}];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)filteredDictionaryPassingTest:()CalClassAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [self keysOfEntriesPassingTest:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [self objectForKey:v11];
        if (v12)
        {
          [dictionary setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v13;
}

- (id)CalDictionaryWithEmptyObjectsRemoved
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [self keysOfEntriesPassingTest:&__block_literal_global_7];
  if ([v2 count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 removeObjectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    selfCopy = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end