@interface NSArray
@end

@implementation NSArray

uint64_t __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke_2;
  v7[3] = &__block_descriptor_48_e12__24__0_8__16lu32l8;
  v7[4] = a2;
  v7[5] = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v7, a3, a4, a5, a6);
}

id __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke_2(uint64_t a1, objc_class *a2, void *a3)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
  }

  else
  {
    if (a3)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
      v9 = [v8 description];

      v10 = NSStringFromClass(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element at index '%@' has unexpected class '%@'.", v9, v12];
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A588];
      v17[0] = *MEMORY[0x1E696A578];
      v17[1] = v15;
      v18[0] = @"Invalid array.";
      v18[1] = v13;
      v17[2] = @"NSCollectionErrorIndexKey";
      v17[3] = @"NSCollectionErrorElementClassKey";
      v18[2] = v9;
      v18[3] = v12;
      v17[4] = @"NSCollectionErrorExpectedClassesKey";
      v18[4] = v10;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
      *a3 = [v14 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v16];
    }

    v6 = 0;
  }

  return v6;
}

@end