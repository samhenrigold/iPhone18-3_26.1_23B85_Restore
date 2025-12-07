@interface GCHIDEventSubject
@end

@implementation GCHIDEventSubject

void __38___GCHIDEventSubject_publishHIDEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v9 = [v5 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v6 = _Block_copy(*(*(*(a1 + 40) + 8) + 40));
  [v9 addObject:v6];

  v7 = *(a1 + 32);
  v8 = [v9 copy];
  [v7 setObject:v8 forKey:v4];
}

void __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 16) mutableCopy];
  v3 = *(*(a1 + 32) + 16);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke_3;
  v12 = &unk_1E8419030;
  v4 = *(a1 + 40);
  v13 = v2;
  v14 = v4;
  v5 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:&v9];
  v6 = [v5 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = _Block_copy(*(*(*(a1 + 40) + 8) + 40));
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v5 mutableCopy];
    v9 = _Block_copy(*(*(*(a1 + 40) + 8) + 40));
    [v8 removeObject:v9];

    v10 = *(a1 + 32);
    v11 = [v8 copy];
    [v10 setObject:v11 forKey:v12];
  }
}

@end