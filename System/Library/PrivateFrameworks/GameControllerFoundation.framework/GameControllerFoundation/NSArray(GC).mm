@interface NSArray(GC)
- (id)gc_arrayByRemovingObject:()GC;
- (id)gc_arrayByTransformingElementsWithOptions:()GC usingBlock:;
- (id)gc_requiredObjectAtIndex:()GC ofClass:;
- (id)gc_reversedArray;
- (uint64_t)gc_enumerateObjectsWithOptions:()GC usingBlock:;
- (void)gc_requiredObjectAtIndex:()GC ofClass:error:;
@end

@implementation NSArray(GC)

- (id)gc_requiredObjectAtIndex:()GC ofClass:
{
  v18[6] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSArray(GC) gc_requiredObjectAtIndex:ofClass:];
  }

  v6 = [self objectAtIndex:?];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = NSStringFromClass(a4);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object at index '%llu' has unexpected class '%@'.", a3, v10];
    v12 = MEMORY[0x1E695DF30];
    v17[0] = @"GC_NSExceptionErrorDomain";
    v17[1] = @"GC_NSExceptionErrorCode";
    v18[0] = @"NSCollectionErrorDomain";
    v18[1] = &unk_1F4E368B0;
    v18[2] = @"Invalid array.";
    v17[2] = *MEMORY[0x1E696A578];
    v17[3] = @"NSCollectionErrorIndexKey";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v18[3] = v13;
    v18[4] = v10;
    v17[4] = @"NSCollectionErrorElementClassKey";
    v17[5] = @"NSCollectionErrorExpectedClassKey";
    v18[5] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];
    v15 = [v12 exceptionWithName:@"NSInvalidCollectionException" reason:v11 userInfo:v14];
    v16 = v15;

    objc_exception_throw(v15);
  }

  return v6;
}

- (void)gc_requiredObjectAtIndex:()GC ofClass:error:
{
  v28[3] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSArray(GC) gc_requiredObjectAtIndex:ofClass:error:];
  }

  if ([self count] > a3 && (objc_msgSend(self, "objectAtIndex:", a3), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v10 = v10;
      a5 = v10;
      goto LABEL_10;
    }

    if (a5)
    {
      v17 = NSStringFromClass(a4);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element at index '%llu' has unexpected class '%@'.", a3, v19];
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A588];
      v25[0] = *MEMORY[0x1E696A578];
      v25[1] = v22;
      v26[0] = @"Invalid array.";
      v26[1] = v20;
      v25[2] = @"NSCollectionErrorIndexKey";
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v26[2] = v23;
      v26[3] = v19;
      v25[3] = @"NSCollectionErrorElementClassKey";
      v25[4] = @"NSCollectionErrorExpectedClassKey";
      v26[4] = v17;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:5];
      *a5 = [v21 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v24];

      goto LABEL_8;
    }
  }

  else
  {
    if (a5)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required element at index '%llu'.", a3];
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A588];
      v27[0] = *MEMORY[0x1E696A578];
      v27[1] = v13;
      v28[0] = @"Invalid array.";
      v28[1] = v11;
      v27[2] = @"NSCollectionErrorIndexKey";
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v28[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
      *a5 = [v12 errorWithDomain:@"NSCollectionErrorDomain" code:1 userInfo:v15];

      v10 = 0;
LABEL_8:
      a5 = 0;
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_10:

  return a5;
}

- (id)gc_reversedArray
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [self reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [v2 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [v2 copy];

  return v8;
}

- (id)gc_arrayByTransformingElementsWithOptions:()GC usingBlock:
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v9 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        v14 = (*(a4 + 16))(a4, *(*(&v18 + 1) + 8 * v13), v11);
        if (v14 || (a3 & 1) == 0)
        {
          [v7 addObject:{v14, v18}];
        }

        ++v13;
        ++v11;
      }

      while (v10 != v13);
      v15 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      v10 = v15;
    }

    while (v15);
  }

  v16 = [v7 copy];

  return v16;
}

- (id)gc_arrayByRemovingObject:()GC
{
  v4 = [self mutableCopy];
  [v4 removeObject:a3];
  v5 = [v4 copy];

  return v5;
}

- (uint64_t)gc_enumerateObjectsWithOptions:()GC usingBlock:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v5[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24lu32l8;
  v5[4] = a4;
  return [self enumerateObjectsUsingBlock:v5];
}

- (void)gc_requiredObjectAtIndex:()GC ofClass:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSArray(GC) gc_requiredObjectAtIndex:ofClass:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_requiredObjectAtIndex:()GC ofClass:error:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSArray(GC) gc_requiredObjectAtIndex:ofClass:error:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

@end