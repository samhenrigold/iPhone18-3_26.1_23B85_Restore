@interface NSMutableDictionary(FCAdditions)
- (void)fc_mergeWithDictionary:()FCAdditions withValueCombiner:;
- (void)fc_removeObjectsForKeysNotInArray:()FCAdditions;
- (void)fc_removeObjectsForKeysNotInSet:()FCAdditions;
- (void)fc_removeObjectsForKeysPassingTest:()FCAdditions;
- (void)fc_safelySetObject:()FCAdditions forKey:;
- (void)fc_safelySetObjectAllowingNil:()FCAdditions forKey:;
- (void)fc_safelySetObjectAllowingNil:()FCAdditions forKeyAllowingNil:;
- (void)fc_transformValuesWithKeyAndValueBlock:()FCAdditions;
@end

@implementation NSMutableDictionary(FCAdditions)

- (void)fc_safelySetObject:()FCAdditions forKey:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [self setObject:v6 forKey:v7];
      goto LABEL_10;
    }

LABEL_7:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil value trying to be assigned to %@", v7];
      *buf = 136315906;
      v11 = "[NSMutableDictionary(FCAdditions) fc_safelySetObject:forKey:]";
      v12 = 2080;
      v13 = "NSDictionary+FCAdditions.m";
      v14 = 1024;
      v15 = 389;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else if (!v7)
    {
      goto LABEL_10;
    }

    [self removeObjectForKey:v7];
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil key trying to be associated with %@", v6];
    *buf = 136315906;
    v11 = "[NSMutableDictionary(FCAdditions) fc_safelySetObject:forKey:]";
    v12 = 2080;
    v13 = "NSDictionary+FCAdditions.m";
    v14 = 1024;
    v15 = 388;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_10:
}

- (void)fc_transformValuesWithKeyAndValueBlock:()FCAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys copy];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:v11];
        v13 = v4[2](v4, v11, v12);
        if (v13)
        {
          [self setObject:v13 forKeyedSubscript:v11];
        }

        else
        {
          [self removeObjectForKey:0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)fc_safelySetObjectAllowingNil:()FCAdditions forKeyAllowingNil:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    if (v7)
    {
      [self setObject:v7 forKey:v6];
    }

    else
    {
      [self removeObjectForKey:v6];
    }
  }
}

- (void)fc_safelySetObjectAllowingNil:()FCAdditions forKey:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [self setObject:v6 forKey:v7];
    }

    else
    {
      [self removeObjectForKey:v7];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "key"];
    *buf = 136315906;
    v10 = "[NSMutableDictionary(FCAdditions) fc_safelySetObjectAllowingNil:forKey:]";
    v11 = 2080;
    v12 = "NSDictionary+FCAdditions.m";
    v13 = 1024;
    v14 = 438;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (void)fc_removeObjectsForKeysNotInArray:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys copy];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v4 containsObject:v11] & 1) == 0)
        {
          [self removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)fc_removeObjectsForKeysNotInSet:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys copy];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v4 containsObject:v11] & 1) == 0)
        {
          [self removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)fc_removeObjectsForKeysPassingTest:()FCAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys copy];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [self objectForKey:v11];
        if (v4[2](v4, v11, v12))
        {
          [self removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)fc_mergeWithDictionary:()FCAdditions withValueCombiner:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__NSMutableDictionary_FCAdditions__fc_mergeWithDictionary_withValueCombiner___block_invoke;
  v8[3] = &unk_1E7C44740;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

@end