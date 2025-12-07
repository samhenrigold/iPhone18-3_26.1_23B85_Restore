@interface PFRequestExecutor
@end

@implementation PFRequestExecutor

void __53___PFRequestExecutor_executeRequest_inContext_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [objc_msgSend(*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v14 + 1) + 8 * v7) isCloudKitEnabled])
        {
          v8 = *(a1 + 40);
          if (v8)
          {
            v9 = *(v8 + 8);
          }

          else
          {
            v9 = 0;
          }

          dispatch_group_enter(v9);
          ++v5;
        }

        ++v7;
      }

      while (v4 != v7);
      v10 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v10;
    }

    while (v10);
    if (v5 && ![*(a1 + 32) executeRequest:*(a1 + 48) error:*(*(a1 + 56) + 8) + 40])
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v11 = *(*(*(a1 + 56) + 8) + 40);
      do
      {
        v12 = *(a1 + 40);
        if (v12)
        {
          v13 = *(v12 + 8);
        }

        else
        {
          v13 = 0;
        }

        dispatch_group_leave(v13);
        --v5;
      }

      while (v5);
    }
  }
}

@end