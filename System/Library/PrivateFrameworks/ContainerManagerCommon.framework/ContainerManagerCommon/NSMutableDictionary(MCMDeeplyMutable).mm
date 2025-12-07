@interface NSMutableDictionary(MCMDeeplyMutable)
- (id)MCM_deepCopy;
- (id)_createOrConvertToMutableDictionaryFromDictionary:()MCMDeeplyMutable;
- (id)_dictionaryAtKeyPath:()MCMDeeplyMutable;
- (id)_findKeyPathsSortedByDepthFirstOfKindOfClass:()MCMDeeplyMutable;
- (id)_mutableDictionaryAtKeyPath:()MCMDeeplyMutable;
- (void)MCM_overlayDictionary:()MCMDeeplyMutable existingValuesTakePrecedent:;
- (void)MCM_replaceDeepDictionariesWithReplaceHandler:()MCMDeeplyMutable;
- (void)_overlayValueAtKey:()MCMDeeplyMutable intoTargetDictionary:fromSourceDictionary:targetTakePrecedent:nestedDictionaryHandler:;
@end

@implementation NSMutableDictionary(MCMDeeplyMutable)

- (id)_createOrConvertToMutableDictionaryFromDictionary:()MCMDeeplyMutable
{
  v3 = a3;
  v4 = v3;
  if (!v3 || (dictionary = [v3 mutableCopy]) == 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  return dictionary;
}

- (id)_mutableDictionaryAtKeyPath:()MCMDeeplyMutable
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = selfCopy;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        v13 = [v11 objectForKeyedSubscript:v12];
        v9 = [selfCopy _createOrConvertToMutableDictionaryFromDictionary:v13];
        [v11 setObject:v9 forKeyedSubscript:v12];

        ++v10;
        v11 = v9;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = selfCopy;
  }

  return v9;
}

- (id)_dictionaryAtKeyPath:()MCMDeeplyMutable
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        selfCopy = [v10 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  return selfCopy;
}

- (id)_findKeyPathsSortedByDepthFirstOfKindOfClass:()MCMDeeplyMutable
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = [v4 initWithObjects:{MEMORY[0x1E695E0F0], 0}];
  v6 = v5;
  while ([v5 count])
  {
    anyObject = [v6 anyObject];
    [v6 removeObject:anyObject];
    v8 = [self _dictionaryAtKeyPath:anyObject];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:v13];
          if (objc_opt_isKindOfClass())
          {
            v15 = [anyObject arrayByAddingObject:v13];
            [v3 addObject:v15];
            [v6 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v10);
    }

    v5 = v6;
  }

  [v3 sortUsingComparator:&__block_literal_global_1271];
  v16 = [v3 copy];

  return v16;
}

- (void)_overlayValueAtKey:()MCMDeeplyMutable intoTargetDictionary:fromSourceDictionary:targetTakePrecedent:nestedDictionaryHandler:
{
  v15 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [a5 objectForKeyedSubscript:v15];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12[2](v12, v13);
  }

  else if (!a6 || ([v11 objectForKeyedSubscript:v15], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    [v11 setObject:v13 forKeyedSubscript:{v15, v15}];
  }
}

- (id)MCM_deepCopy
{
  v22 = *MEMORY[0x1E69E9840];
  [self _findKeyPathsSortedByDepthFirstOfKindOfClass:objc_opt_class()];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [self _dictionaryAtKeyPath:v7];
        lastObject = [v7 lastObject];
        v10 = [v7 mutableCopy];
        [v10 removeLastObject];
        v11 = [v10 copy];
        v12 = [self _mutableDictionaryAtKeyPath:v11];
        v13 = [v8 copy];
        [v12 setObject:v13 forKeyedSubscript:lastObject];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v4);
  }

  v14 = [self copy];

  return v14;
}

- (void)MCM_overlayDictionary:()MCMDeeplyMutable existingValuesTakePrecedent:
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = v4;
  [dictionary setObject:v4 forKeyedSubscript:MEMORY[0x1E695E0F0]];
  while ([dictionary count])
  {
    context = objc_autoreleasePoolPush();
    allKeys = [dictionary allKeys];
    firstObject = [allKeys firstObject];

    v8 = [dictionary objectForKeyedSubscript:firstObject];
    [dictionary removeObjectForKey:firstObject];
    v9 = [self _mutableDictionaryAtKeyPath:firstObject];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v8 allKeys];
    v10 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [firstObject arrayByAddingObject:v14];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __91__NSMutableDictionary_MCMDeeplyMutable__MCM_overlayDictionary_existingValuesTakePrecedent___block_invoke;
          v22[3] = &unk_1E86AFDC8;
          v23 = dictionary;
          v24 = v15;
          v16 = v15;
          [self _overlayValueAtKey:v14 intoTargetDictionary:v9 fromSourceDictionary:v8 targetTakePrecedent:a4 nestedDictionaryHandler:v22];
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(context);
  }
}

- (void)MCM_replaceDeepDictionariesWithReplaceHandler:()MCMDeeplyMutable
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self _findKeyPathsSortedByDepthFirstOfKindOfClass:objc_opt_class()];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [self _dictionaryAtKeyPath:v8];
        v10 = v4[2](v4, v8, v9);
        if (v10 != v9)
        {
          lastObject = [v8 lastObject];
          v12 = [v8 mutableCopy];
          [v12 removeLastObject];
          v13 = [v12 copy];
          v14 = [self _mutableDictionaryAtKeyPath:v13];
          v15 = v14;
          if (v10)
          {
            [v14 setObject:v10 forKeyedSubscript:lastObject];
          }

          else
          {
            [v14 removeObjectForKey:lastObject];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v6);
  }
}

@end