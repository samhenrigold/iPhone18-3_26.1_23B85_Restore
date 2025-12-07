@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_2;
  v13 = &__block_descriptor_40_e12__24__0_8__16lu32l8;
  v14 = a2;
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_3;
  v7 = &__block_descriptor_48_e12__24__0_8__16lu32l8u40l8;
  v8 = a3;
  v9 = a2;
  return (*(*(a1 + 32) + 16))();
}

id __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_2(uint64_t a1, objc_class *a2, void *a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
  }

  else
  {
    if (a3)
    {
      v8 = [*(a1 + 32) description];
      v9 = NSStringFromClass(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Key '%@' has unexpected class '%@'.", v8, v11];
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v16[0] = *MEMORY[0x1E696A578];
      v16[1] = v14;
      v17[0] = @"Invalid dictionary.";
      v17[1] = v12;
      v16[2] = @"NSCollectionErrorIndexKey";
      v16[3] = @"NSCollectionErrorIndexClassKey";
      v17[2] = v8;
      v17[3] = v11;
      v16[4] = @"NSCollectionErrorExpectedClassKey";
      v17[4] = v9;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
      *a3 = [v13 errorWithDomain:@"NSCollectionErrorDomain" code:2 userInfo:v15];
    }

    v6 = 0;
  }

  return v6;
}

id __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_3(uint64_t a1, objc_class *a2, void *a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
  }

  else
  {
    if (a3)
    {
      v8 = [*(a1 + 40) description];
      v9 = NSStringFromClass(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v8, v11];
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v16[0] = *MEMORY[0x1E696A578];
      v16[1] = v14;
      v17[0] = @"Invalid dictionary.";
      v17[1] = v12;
      v16[2] = @"NSCollectionErrorIndexKey";
      v16[3] = @"NSCollectionErrorElementClassKey";
      v17[2] = v8;
      v17[3] = v11;
      v16[4] = @"NSCollectionErrorExpectedClassKey";
      v17[4] = v9;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
      *a3 = [v13 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v15];
    }

    v6 = 0;
  }

  return v6;
}

@end