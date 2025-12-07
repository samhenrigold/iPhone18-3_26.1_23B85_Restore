@interface NSMutableArray
@end

@implementation NSMutableArray

uint64_t __81__NSMutableArray_EmailFoundationAdditions__ef_insertObject_usingSortDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(*(&v15 + 1) + 8 * v10) compareObject:v5 toObject:{v6, v15}];
      v12 = v11;
      if (v11 == -1 || v11 == 1)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 0;
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end