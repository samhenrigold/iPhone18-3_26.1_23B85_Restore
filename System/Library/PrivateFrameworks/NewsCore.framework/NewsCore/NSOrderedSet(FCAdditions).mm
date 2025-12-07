@interface NSOrderedSet(FCAdditions)
+ (id)fc_orderedSet:()FCAdditions;
- (BOOL)fc_containsObjectPassingTest:()FCAdditions;
- (BOOL)fc_isEqualToOrderedSet:()FCAdditions inRange:;
- (id)fc_diffAgainstOrderedSet:()FCAdditions;
- (id)fc_diffAgainstOrderedSet:()FCAdditions withEqualityTest:identityValueProvider:;
- (id)fc_firstObjectPassingTest:()FCAdditions;
- (id)fc_indexesOfObjectsInOrderedSet:()FCAdditions;
- (id)fc_orderedSetByAddingObject:()FCAdditions;
- (id)fc_orderedSetByCollectingObjectsWithBlock:()FCAdditions;
- (id)fc_orderedSetByMinusingOrderedSet:()FCAdditions;
- (id)fc_orderedSetByTransformingWithBlock:()FCAdditions;
- (id)fc_orderedSetOfObjectsPassingTest:()FCAdditions;
- (id)fc_orderedSetWithObjectsAtIndexes:()FCAdditions;
@end

@implementation NSOrderedSet(FCAdditions)

+ (id)fc_orderedSet:()FCAdditions
{
  v3 = a3;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if (v3)
  {
    v3[2](v3, orderedSet);
  }

  if (orderedSet)
  {
    orderedSet2 = [orderedSet copy];
  }

  else
  {
    orderedSet2 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v6 = orderedSet2;

  return v6;
}

- (id)fc_orderedSetByTransformingWithBlock:()FCAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__NSOrderedSet_FCAdditions__fc_orderedSetByTransformingWithBlock___block_invoke;
  v11[3] = &unk_1E7C43AC8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fc_diffAgainstOrderedSet:()FCAdditions withEqualityTest:identityValueProvider:
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
    *buf = 136315906;
    v37 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:withEqualityTest:identityValueProvider:]";
    v38 = 2080;
    v39 = "NSOrderedSet+FCAdditions.m";
    v40 = 1024;
    v41 = 65;
    v42 = 2114;
    v43 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "equalityTest"];
    *buf = 136315906;
    v37 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:withEqualityTest:identityValueProvider:]";
    v38 = 2080;
    v39 = "NSOrderedSet+FCAdditions.m";
    v40 = 1024;
    v41 = 66;
    v42 = 2114;
    v43 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identityValueProvider"];
    *buf = 136315906;
    v37 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:withEqualityTest:identityValueProvider:]";
    v38 = 2080;
    v39 = "NSOrderedSet+FCAdditions.m";
    v40 = 1024;
    v41 = 67;
    v42 = 2114;
    v43 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet_withEqualityTest_identityValueProvider___block_invoke;
  aBlock[3] = &unk_1E7C44378;
  v35 = v10;
  v27 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [v8 fc_orderedSetByTransformingWithBlock:v11];
  v13 = [self fc_orderedSetByTransformingWithBlock:v11];
  v14 = [v13 fc_diffAgainstOrderedSet:v12];
  v15 = [v14 mutableCopy];

  v16 = objc_opt_new();
  v17 = [v15 objectForKeyedSubscript:@"deletedIndices"];
  v18 = [v15 objectForKeyedSubscript:@"movedIndices"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __93__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet_withEqualityTest_identityValueProvider___block_invoke_2;
  v28[3] = &unk_1E7C443A0;
  v29 = v17;
  v30 = v18;
  v32 = v16;
  v33 = v9;
  selfCopy = self;
  v19 = v16;
  v20 = v9;
  v21 = v18;
  v22 = v17;
  [v8 enumerateObjectsUsingBlock:v28];
  [v15 setObject:v19 forKeyedSubscript:@"updatedIndices"];

  return v15;
}

- (id)fc_diffAgainstOrderedSet:()FCAdditions
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    selfCopy = self;
    v27 = [v4 set];
    v26 = [selfCopy set];
    v6 = [v26 fc_diffAgainstSet:v27];
    v7 = [v6 objectForKeyedSubscript:@"FCInsertedElementsKey"];
    v8 = [v6 objectForKeyedSubscript:@"FCDeletedElementsKey"];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke;
    aBlock[3] = &unk_1E7C3F858;
    v41 = v8;
    v25 = v8;
    v9 = _Block_copy(aBlock);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_2;
    v38[3] = &unk_1E7C3F858;
    v39 = v7;
    v24 = v7;
    v10 = _Block_copy(v38);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_3;
    v36[3] = &unk_1E7C43B40;
    v11 = v9;
    v37 = v11;
    v12 = [v4 indexesOfObjectsPassingTest:v36];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_4;
    v34[3] = &unk_1E7C43B40;
    v13 = v10;
    v35 = v13;
    v14 = [selfCopy indexesOfObjectsPassingTest:v34];
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_5;
    v28[3] = &unk_1E7C443C8;
    v32 = v13;
    v33 = v11;
    v29 = v4;
    v30 = v15;
    v31 = v16;
    v17 = v16;
    v18 = v15;
    v19 = v11;
    v20 = v13;
    [selfCopy enumerateObjectsUsingBlock:v28];

    v42[0] = @"insertedIndices";
    v42[1] = @"deletedIndices";
    v43[0] = v14;
    v43[1] = v12;
    v42[2] = @"movedIndices";
    v42[3] = @"unmovedIndices";
    v43[2] = v18;
    v43[3] = v17;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
      *buf = 136315906;
      v45 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:]";
      v46 = 2080;
      v47 = "NSOrderedSet+FCAdditions.m";
      v48 = 1024;
      v49 = 112;
      v50 = 2114;
      v51 = v23;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v21 = 0;
  }

  return v21;
}

- (id)fc_indexesOfObjectsInOrderedSet:()FCAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

        v11 = [self indexOfObject:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [indexSet addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return indexSet;
}

- (id)fc_firstObjectPassingTest:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v10 = "[NSOrderedSet(FCAdditions) fc_firstObjectPassingTest:]";
    v11 = 2080;
    v12 = "NSOrderedSet+FCAdditions.m";
    v13 = 1024;
    v14 = 192;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  objectEnumerator = [self objectEnumerator];
  v6 = [objectEnumerator fc_firstObjectPassingTest:v4];

  return v6;
}

- (BOOL)fc_containsObjectPassingTest:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v10 = "[NSOrderedSet(FCAdditions) fc_containsObjectPassingTest:]";
    v11 = 2080;
    v12 = "NSOrderedSet+FCAdditions.m";
    v13 = 1024;
    v14 = 199;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [self fc_firstObjectPassingTest:v4];
  v6 = v5 != 0;

  return v6;
}

- (id)fc_orderedSetOfObjectsPassingTest:()FCAdditions
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v20 = "[NSOrderedSet(FCAdditions) fc_orderedSetOfObjectsPassingTest:]";
    v21 = 2080;
    v22 = "NSOrderedSet+FCAdditions.m";
    v23 = 1024;
    v24 = 206;
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

- (id)fc_orderedSetWithObjectsAtIndexes:()FCAdditions
{
  v1 = MEMORY[0x1E695DFB8];
  v2 = [self objectsAtIndexes:?];
  v3 = [v1 orderedSetWithArray:v2];

  return v3;
}

- (id)fc_orderedSetByMinusingOrderedSet:()FCAdditions
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [v4 orderedSetWithOrderedSet:self];
  [v6 minusOrderedSet:v5];

  return v6;
}

- (id)fc_orderedSetByCollectingObjectsWithBlock:()FCAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        array = [v11 array];
        [v5 addObjectsFromArray:array];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)fc_orderedSetByAddingObject:()FCAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addObject:v4];

  return v5;
}

- (BOOL)fc_isEqualToOrderedSet:()FCAdditions inRange:
{
  v8 = a3;
  selfCopy = self;
  v9 = [self count];
  v10 = [v8 count];
  v11 = a4 + a5;
  if (a4 >= a4 + a5)
  {
    v13 = 1;
  }

  else
  {
    v12 = v10;
    v13 = 0;
    do
    {
      if (a4 >= v9)
      {
        v14 = 0;
      }

      else
      {
        v14 = [selfCopy objectAtIndexedSubscript:a4];
      }

      if (a4 >= v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = [v8 objectAtIndexedSubscript:a4];
      }

      v16 = [MEMORY[0x1E69E58C0] nf_object:v14 isEqualToObject:v15];

      if ((v16 & 1) == 0)
      {
        break;
      }

      v13 = ++a4 >= v11;
      --a5;
    }

    while (a5);
  }

  return v13;
}

@end