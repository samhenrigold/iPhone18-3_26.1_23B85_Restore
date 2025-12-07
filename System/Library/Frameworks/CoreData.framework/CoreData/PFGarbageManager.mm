@interface PFGarbageManager
@end

@implementation PFGarbageManager

uint64_t __49___PFGarbageManager__doCleanupForDir_exceptURLs___block_invoke(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v14 = 0;
  v3 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [a1[4] stringByAppendingPathComponent:*(*(&v10 + 1) + 8 * v6)];
        if (([a1[5] containsObject:v7] & 1) == 0)
        {
          v8 = a1[6];
          if (v8)
          {
            objc_sync_enter(a1[6]);
            [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
            objc_sync_exit(v8);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  return [v2 drain];
}

@end