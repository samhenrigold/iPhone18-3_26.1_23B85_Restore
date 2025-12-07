@interface NSDictionary(GC)
- (id)gc_dictionaryByRemovingObjectsForKeys:()GC;
- (id)gc_dictionaryByReplacingValueForKey:()GC withValue:;
- (id)gc_objectForKey:()GC ofClass:;
- (id)gc_objectForKey:()GC ofClass:error:;
- (id)gc_requiredObjectForKey:()GC ofClass:;
- (id)gc_requiredObjectForKey:()GC ofClass:error:;
- (uint64_t)gc_enumerateKeysAndObjectsUsingBlock:()GC;
- (void)gc_makeValuesPerformSelector:()GC withObject:;
@end

@implementation NSDictionary(GC)

- (id)gc_objectForKey:()GC ofClass:
{
  v18[6] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_objectForKey:ofClass:];
  }

  v6 = [self objectForKey:?];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [a3 description];
    v9 = NSStringFromClass(a4);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v8, v11];
    v13 = MEMORY[0x1E695DF30];
    v17[0] = @"GC_NSExceptionErrorDomain";
    v17[1] = @"GC_NSExceptionErrorCode";
    v18[0] = @"NSCollectionErrorDomain";
    v18[1] = &unk_1F4E36820;
    v17[2] = *MEMORY[0x1E696A578];
    v17[3] = @"NSCollectionErrorIndexKey";
    v18[2] = @"Invalid dictionary.";
    v18[3] = v8;
    v17[4] = @"NSCollectionErrorElementClassKey";
    v17[5] = @"NSCollectionErrorExpectedClassKey";
    v18[4] = v11;
    v18[5] = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];
    v15 = [v13 exceptionWithName:@"NSInvalidCollectionException" reason:v12 userInfo:v14];
    v16 = v15;

    objc_exception_throw(v15);
  }

  return v6;
}

- (id)gc_objectForKey:()GC ofClass:error:
{
  v20[5] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_objectForKey:ofClass:error:];
  }

  v8 = [self objectForKey:?];
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      v11 = [a3 description];
      v12 = NSStringFromClass(a4);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v11, v14];
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A588];
      v19[0] = *MEMORY[0x1E696A578];
      v19[1] = v17;
      v20[0] = @"Invalid dictionary.";
      v20[1] = v15;
      v19[2] = @"NSCollectionErrorIndexKey";
      v19[3] = @"NSCollectionErrorElementClassKey";
      v20[2] = v11;
      v20[3] = v14;
      v19[4] = @"NSCollectionErrorExpectedClassKey";
      v20[4] = v12;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];
      *a5 = [v16 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v18];
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)gc_requiredObjectForKey:()GC ofClass:
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_requiredObjectForKey:ofClass:];
  }

  v6 = [self objectForKey:?];
  if (!v6)
  {
    [(NSDictionary(GC) *)a3 gc_requiredObjectForKey:v20 ofClass:v21];
  }

  v7 = v6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [a3 description];
    v10 = NSStringFromClass(a4);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v9, v12];
    v14 = MEMORY[0x1E695DF30];
    v18[0] = @"GC_NSExceptionErrorDomain";
    v18[1] = @"GC_NSExceptionErrorCode";
    v19[0] = @"NSCollectionErrorDomain";
    v19[1] = &unk_1F4E36820;
    v18[2] = *MEMORY[0x1E696A578];
    v18[3] = @"NSCollectionErrorIndexKey";
    v19[2] = @"Invalid dictionary.";
    v19[3] = v9;
    v18[4] = @"NSCollectionErrorElementClassKey";
    v18[5] = @"NSCollectionErrorExpectedClassKey";
    v19[4] = v12;
    v19[5] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
    v16 = [v14 exceptionWithName:@"NSInvalidCollectionException" reason:v13 userInfo:v15];
    v17 = v16;

    objc_exception_throw(v16);
  }

  return v7;
}

- (id)gc_requiredObjectForKey:()GC ofClass:error:
{
  v26[3] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_requiredObjectForKey:ofClass:error:];
  }

  v8 = [self objectForKey:?];
  if (v8)
  {
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_5;
    }

    if (a5)
    {
      v12 = [a3 description];
      v13 = NSStringFromClass(a4);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v12, v18];
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A588];
      v23[0] = *MEMORY[0x1E696A578];
      v23[1] = v21;
      v24[0] = @"Invalid dictionary.";
      v24[1] = v19;
      v23[2] = @"NSCollectionErrorIndexKey";
      v23[3] = @"NSCollectionErrorElementClassKey";
      v24[2] = v12;
      v24[3] = v18;
      v23[4] = @"NSCollectionErrorExpectedClassKey";
      v24[4] = v13;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];
      *a5 = [v20 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v22];

      goto LABEL_13;
    }
  }

  else if (a5)
  {
    v12 = [a3 description];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key '%@'.", v12];
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v25[0] = *MEMORY[0x1E696A578];
    v25[1] = v15;
    v26[0] = @"Invalid dictionary.";
    v26[1] = v13;
    v25[2] = @"NSCollectionErrorIndexKey";
    v26[2] = v12;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    *a5 = [v14 errorWithDomain:@"NSCollectionErrorDomain" code:1 userInfo:v16];

LABEL_13:
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (void)gc_makeValuesPerformSelector:()GC withObject:
{
  allValues = [self allValues];
  [allValues makeObjectsPerformSelector:a3 withObject:a4];
}

- (uint64_t)gc_enumerateKeysAndObjectsUsingBlock:()GC
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v4[3] = &__block_descriptor_40_e15_v32__0_8_16_B24lu32l8;
  v4[4] = a3;
  return [self enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)gc_dictionaryByReplacingValueForKey:()GC withValue:
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [NSDictionary(GC) gc_dictionaryByReplacingValueForKey:withValue:];
  }

  v8 = v7;
  v9 = [self mutableCopy];
  [v9 setValue:v8 forKey:v6];
  v10 = [v9 copy];

  return v10;
}

- (id)gc_dictionaryByRemovingObjectsForKeys:()GC
{
  if (!a3)
  {
    [NSDictionary(GC) gc_dictionaryByRemovingObjectsForKeys:];
  }

  v4 = [self mutableCopy];
  [v4 removeObjectsForKeys:a3];
  v5 = [v4 copy];

  return v5;
}

- (void)gc_objectForKey:()GC ofClass:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_objectForKey:ofClass:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_objectForKey:()GC ofClass:error:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_objectForKey:ofClass:error:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_requiredObjectForKey:()GC ofClass:.cold.1(void *a1, void *a2, void *a3)
{
  v5 = [a1 description];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key '%@'.", v5];
  v7 = MEMORY[0x1E695DF30];
  *a2 = @"GC_NSExceptionErrorDomain";
  *a3 = @"NSCollectionErrorDomain";
  a2[1] = @"GC_NSExceptionErrorCode";
  a3[1] = &unk_1F4E36838;
  a2[2] = *MEMORY[0x1E696A578];
  a3[2] = @"Invalid dictionary.";
  a2[3] = @"NSCollectionErrorIndexKey";
  a3[3] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:4];
  v9 = [v7 exceptionWithName:@"NSInvalidCollectionException" reason:v6 userInfo:v8];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)gc_requiredObjectForKey:()GC ofClass:.cold.2()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_requiredObjectForKey:ofClass:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_requiredObjectForKey:()GC ofClass:error:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_requiredObjectForKey:ofClass:error:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_dictionaryByReplacingValueForKey:()GC withValue:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: key cannot be nil", "-[NSDictionary(GC) gc_dictionaryByReplacingValueForKey:withValue:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_dictionaryByRemovingObjectsForKeys:()GC .cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: keys cannot be nil", "-[NSDictionary(GC) gc_dictionaryByRemovingObjectsForKeys:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

@end