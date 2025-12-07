@interface NSSet(FCAdditions)
+ (id)fc_set:()FCAdditions;
+ (id)fc_unionOfSetsInArray:()FCAdditions;
- (BOOL)fc_containsObjectPassingTest:()FCAdditions;
- (id)fc_arrayByTransformingWithBlock:()FCAdditions;
- (id)fc_arrayOfObjectsPassingTest:()FCAdditions;
- (id)fc_dictionaryOfSortedSetsWithKeyBlock:()FCAdditions;
- (id)fc_diffAgainstSet:()FCAdditions;
- (id)fc_firstObjectPassingTest:()FCAdditions;
- (id)fc_mutableSetByTransformingWithBlock:()FCAdditions;
- (id)fc_onlyObject;
- (id)fc_setByIntersectingSet:()FCAdditions;
- (id)fc_setByMinusingSet:()FCAdditions;
- (id)fc_setByRemovingObject:()FCAdditions;
- (id)fc_setByTransformingWithBlock:()FCAdditions;
- (id)fc_setByUnioningSet:()FCAdditions;
- (id)fc_setOfObjectsPassingTest:()FCAdditions;
- (uint64_t)fc_containsAnyObjectInArray:()FCAdditions;
- (uint64_t)fc_countOfObjectsIntersectingSet:()FCAdditions;
- (uint64_t)fc_countOfObjectsPassingTest:()FCAdditions;
@end

@implementation NSSet(FCAdditions)

+ (id)fc_set:()FCAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  if (v3)
  {
    v3[2](v3, v4);
  }

  if (v4)
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (id)fc_diffAgainstSet:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    selfCopy = self;
    v6 = [v4 mutableCopy];
    [v6 minusSet:selfCopy];
    v7 = [selfCopy mutableCopy];

    [v7 minusSet:v4];
    v13[0] = @"FCInsertedElementsKey";
    v8 = [v7 copy];
    v13[1] = @"FCDeletedElementsKey";
    v14[0] = v8;
    v9 = [v6 copy];
    v14[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left != nil"];
      *buf = 136315906;
      v16 = "[NSSet(FCAdditions) fc_diffAgainstSet:]";
      v17 = 2080;
      v18 = "NSSet+FCAdditions.m";
      v19 = 1024;
      v20 = 30;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)fc_firstObjectPassingTest:()FCAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)fc_onlyObject
{
  v15 = *MEMORY[0x1E69E9840];
  if ([self count] != 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "count")}];
    v6 = [v4 initWithFormat:@"expected one element; got %@", v5];
    *buf = 136315906;
    v8 = "[NSSet(FCAdditions) fc_onlyObject]";
    v9 = 2080;
    v10 = "NSSet+FCAdditions.m";
    v11 = 1024;
    v12 = 66;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  anyObject = [self anyObject];

  return anyObject;
}

- (BOOL)fc_containsObjectPassingTest:()FCAdditions
{
  v1 = [self fc_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)fc_setOfObjectsPassingTest:()FCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NSSet_FCAdditions__fc_setOfObjectsPassingTest___block_invoke;
  v8[3] = &unk_1E7C45598;
  v9 = v4;
  v5 = v4;
  v6 = [self objectsPassingTest:v8];

  return v6;
}

- (id)fc_arrayOfObjectsPassingTest:()FCAdditions
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "predicate"];
    *buf = 136315906;
    v20 = "[NSSet(FCAdditions) fc_arrayOfObjectsPassingTest:]";
    v21 = 2080;
    v22 = "NSSet+FCAdditions.m";
    v23 = 1024;
    v24 = 84;
    v25 = 2114;
    v26 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (uint64_t)fc_countOfObjectsPassingTest:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 += v4[2](v4, *(*(&v12 + 1) + 8 * i));
      }

      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fc_setByTransformingWithBlock:()FCAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v9 = "[NSSet(FCAdditions) fc_setByTransformingWithBlock:]";
    v10 = 2080;
    v11 = "NSSet+FCAdditions.m";
    v12 = 1024;
    v13 = 115;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [self fc_mutableSetByTransformingWithBlock:v4];

  return v5;
}

- (id)fc_mutableSetByTransformingWithBlock:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v16 = "[NSSet(FCAdditions) fc_mutableSetByTransformingWithBlock:]";
    v17 = 2080;
    v18 = "NSSet+FCAdditions.m";
    v19 = 1024;
    v20 = 122;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__NSSet_FCAdditions__fc_mutableSetByTransformingWithBlock___block_invoke;
  v12[3] = &unk_1E7C455C0;
  v14 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v12];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)fc_arrayByTransformingWithBlock:()FCAdditions
{
  v4 = a3;
  allObjects = [self allObjects];
  v6 = [allObjects fc_arrayByTransformingWithBlock:v4];

  return v6;
}

- (uint64_t)fc_containsAnyObjectInArray:()FCAdditions
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__NSSet_FCAdditions__fc_containsAnyObjectInArray___block_invoke;
  v7[3] = &unk_1E7C455E8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)fc_dictionaryOfSortedSetsWithKeyBlock:()FCAdditions
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v22 = "[NSSet(FCAdditions) fc_dictionaryOfSortedSetsWithKeyBlock:]";
    v23 = 2080;
    v24 = "NSSet+FCAdditions.m";
    v25 = 1024;
    v26 = 154;
    v27 = 2114;
    v28 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        if (v12)
        {
          v13 = [v5 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_opt_new();
            [v5 setObject:v13 forKeyedSubscript:v12];
          }

          [v13 addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (uint64_t)fc_countOfObjectsIntersectingSet:()FCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSSet_FCAdditions__fc_countOfObjectsIntersectingSet___block_invoke;
  v8[3] = &unk_1E7C3F858;
  v9 = v4;
  v5 = v4;
  v6 = [self fc_countOfObjectsPassingTest:v8];

  return v6;
}

- (id)fc_setByIntersectingSet:()FCAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 fc_safelyIntersectSet:v4];

  return v5;
}

- (id)fc_setByMinusingSet:()FCAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 fc_safelyMinusSet:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)fc_setByUnioningSet:()FCAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 fc_safelyUnionSet:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)fc_setByRemovingObject:()FCAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 fc_safelyRemoveObject:v4];

  v6 = [v5 copy];

  return v6;
}

+ (id)fc_unionOfSetsInArray:()FCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 fc_reduceArrayWithInitial:v4 block:&__block_literal_global_154];

  return v5;
}

@end