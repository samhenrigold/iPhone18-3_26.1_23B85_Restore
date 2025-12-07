@interface LoadCoreMaterialRecipeNames
@end

@implementation LoadCoreMaterialRecipeNames

void ___LoadCoreMaterialRecipeNames_block_invoke()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
  v1 = [v0 URLsForMaterialRecipes];
  v15 = [v0 URLsForMaterialRecipeDescendants];
  v16 = v1;
  v2 = [v1 arrayByAddingObjectsFromArray:?];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  [v2 count];
  v4 = [v3 initWithCapacity:?];
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * i);
        v11 = [v10 lastPathComponent];
        v12 = [v11 stringByDeletingPathExtension];

        v13 = MTLogConfiguration;
        if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          v18 = v12;
          v19 = 2114;
          v20 = v10;
          _os_log_debug_impl(&dword_1BF527000, v13, OS_LOG_TYPE_DEBUG, "Found recipe '%{public}@' at URL: %{public}@", buf, 0x16u);
        }

        [v4 addObject:?];
      }

      v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  v14 = __coreMaterialRecipeNames;
  __coreMaterialRecipeNames = v4;
}

@end