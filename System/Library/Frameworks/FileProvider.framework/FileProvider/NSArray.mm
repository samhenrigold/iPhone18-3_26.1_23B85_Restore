@interface NSArray
@end

@implementation NSArray

void __63__NSArray_FPFrameworkAdditions__fp_sortDescriptorByDisplayName__block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEB0];
  v1 = NSStringFromSelector(sel_displayName);
  v2 = [v0 sortDescriptorWithKey:v1 ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v8[0] = v2;
  v3 = MEMORY[0x1E696AEB0];
  v4 = NSStringFromSelector(sel_itemIdentifier);
  v5 = [v3 sortDescriptorWithKey:v4 ascending:1];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v7 = fp_sortDescriptorByDisplayName_sortDescriptors;
  fp_sortDescriptorByDisplayName_sortDescriptors = v6;
}

void __64__NSArray_FPFrameworkAdditions__fp_sortDescriptorByLastUsedDate__block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEB0];
  v1 = NSStringFromSelector(sel_lastUsedDate);
  v2 = [v0 sortDescriptorWithKey:v1 ascending:0];
  v3 = MEMORY[0x1E696AEB0];
  v4 = NSStringFromSelector(sel_displayName);
  v5 = [v3 sortDescriptorWithKey:v4 ascending:1 selector:{sel_localizedCaseInsensitiveCompare_, v2}];
  v11[1] = v5;
  v6 = MEMORY[0x1E696AEB0];
  v7 = NSStringFromSelector(sel_itemIdentifier);
  v8 = [v6 sortDescriptorWithKey:v7 ascending:1];
  v11[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v10 = fp_sortDescriptorByLastUsedDate_sortDescriptors;
  fp_sortDescriptorByLastUsedDate_sortDescriptors = v9;
}

uint64_t __47__NSArray__FPComparatorAddition__fp_comparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) compareObject:v5 toObject:{v6, v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

void __74__NSArray_FPFrameworkAdditions__fp_sortDescriptorByModifiedDateDescending__block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEB0];
  v1 = NSStringFromSelector(sel_contentModificationDate);
  v2 = [v0 sortDescriptorWithKey:v1 ascending:0];
  v3 = MEMORY[0x1E696AEB0];
  v4 = NSStringFromSelector(sel_displayName);
  v5 = [v3 sortDescriptorWithKey:v4 ascending:1 selector:{sel_localizedCaseInsensitiveCompare_, v2}];
  v11[1] = v5;
  v6 = MEMORY[0x1E696AEB0];
  v7 = NSStringFromSelector(sel_itemIdentifier);
  v8 = [v6 sortDescriptorWithKey:v7 ascending:1];
  v11[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v10 = fp_sortDescriptorByModifiedDateDescending_sortDescriptors;
  fp_sortDescriptorByModifiedDateDescending_sortDescriptors = v9;
}

void __64__NSArray_FPFrameworkAdditions__fp_sortDescriptorByDocumentSize__block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEB0];
  v1 = NSStringFromSelector(sel_documentSize);
  v2 = [v0 sortDescriptorWithKey:v1 ascending:0];
  v3 = MEMORY[0x1E696AEB0];
  v4 = NSStringFromSelector(sel_displayName);
  v5 = [v3 sortDescriptorWithKey:v4 ascending:1 selector:{sel_localizedCaseInsensitiveCompare_, v2}];
  v11[1] = v5;
  v6 = MEMORY[0x1E696AEB0];
  v7 = NSStringFromSelector(sel_itemIdentifier);
  v8 = [v6 sortDescriptorWithKey:v7 ascending:1];
  v11[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v10 = fp_sortDescriptorByDocumentSize_sortDescriptors;
  fp_sortDescriptorByDocumentSize_sortDescriptors = v9;
}

void __49__NSArray_FPFrameworkAdditions__fp_mapWithIndex___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

void __47__NSArray_FPFrameworkAdditions__fp_categorize___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
    }

    [v5 addObject:v6];
  }

  objc_autoreleasePoolPop(v3);
}

void __68__NSArray_FPFrameworkAdditions__fp_removingObjectsNotKindOfClasses___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_opt_isKindOfClass())
        {
          v6 = v3;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [v6 fp_removingObjectsNotKindOfClasses:{*(a1 + 32), v10}];

    v6 = v9;
  }

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  objc_autoreleasePoolPop(v4);
}

void __45__NSArray__FPSpotlightQueryHelpers___fp_map___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:v2];
}

void __48__NSArray__FPSpotlightQueryHelpers___fp_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end