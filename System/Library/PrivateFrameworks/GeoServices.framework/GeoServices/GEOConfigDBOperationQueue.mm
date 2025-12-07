@interface GEOConfigDBOperationQueue
@end

@implementation GEOConfigDBOperationQueue

void __44___GEOConfigDBOperationQueue_flushOnDBQueue__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }
}

uint64_t __44___GEOConfigDBOperationQueue_flushOnDBQueue__block_invoke_340(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v8 + 1) + 8 * v5) performOperation])
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

@end