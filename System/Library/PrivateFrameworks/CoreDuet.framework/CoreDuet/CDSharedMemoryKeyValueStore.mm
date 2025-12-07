@interface CDSharedMemoryKeyValueStore
@end

@implementation CDSharedMemoryKeyValueStore

void __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = a1[4];
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;

    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1[4] + 48), "count")}];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = *(a1[4] + 48);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(a1[6] + 8) + 40);
          v13 = [*(a1[4] + 48) objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v11), v15}];
          v14 = [v13 copy];
          [v12 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

void __46___CDSharedMemoryKeyValueStore_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 32));
  v5 = [*(a1 + 32) defaultName];
  v3 = -[_CDSharedMemoryKeyValueStore initWithName:size:](v2, v5, [*(a1 + 32) defaultSize]);
  v4 = sharedInstance_theStore;
  sharedInstance_theStore = v3;
}

uint64_t __35___CDSharedMemoryKeyValueStore_log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet", "SharedMemoryKeyValueStore");
  v1 = log_log;
  log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke_19(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if (v9)
        {
          v10 = [v9[1] length];
          v12 = v10 + [v9[4] length] + 18;
          if (v12 > v5)
          {
            v13 = objc_getProperty(v9, v11, 24, 1);

            v5 = v12;
            v6 = v13;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v43 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = +[_CDSharedMemoryKeyValueStore log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v16 = a1[4];
    if (v16)
    {
      Property = objc_getProperty(v16, v15, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v18 = MEMORY[0x1E696AD98];
    v19 = a1[7];
    v20 = *(*(a1[6] + 8) + 40);
    v21 = Property;
    v22 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
    v23 = a1[8];
    v24 = *(a1[5] + 64);

    *buf = 138544898;
    v30 = Property;
    v31 = 2048;
    v32 = v19;
    v33 = 2112;
    v34 = v22;
    v35 = 2114;
    v36 = v6;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    v40 = v23;
    v41 = 2048;
    v42 = v24;
    _os_log_fault_impl(&dword_191750000, v14, OS_LOG_TYPE_FAULT, "Shared memory exhausted trying to write %{public}@ (%zuB) - %@ entries (largest %{public}@ (%zuB), %zu/%zuB full", buf, 0x48u);
  }
}

void __50___CDSharedMemoryKeyValueStore_syncPersistToShMem__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [(_CDSharedMemoryKeyValueStore *)*(a1 + 32) _persistToShMem];

  objc_autoreleasePoolPop(v2);
}

void __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke(uint64_t *a1)
{
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v6 = v2;
    [(_CDSerializableKeyedData *)v2 setData:?];
    if (os_log_type_enabled(*(a1[4] + 40), OS_LOG_TYPE_DEBUG))
    {
      __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke_cold_1();
    }

    goto LABEL_6;
  }

  v3 = [_CDSerializableKeyedData alloc];
  v4 = a1[5];
  v5 = a1[6];
  v11 = 0;
  v6 = [(_CDSerializableKeyedData *)&v3->super.isa initWithKey:v4 data:v5 error:&v11];
  v7 = v11;
  if (!v7)
  {
    if (os_log_type_enabled(*(a1[4] + 40), OS_LOG_TYPE_DEBUG))
    {
      __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke_cold_2();
    }

    v9 = *(a1[4] + 48);
    if (v6)
    {
      Property = objc_getProperty(v6, v8, 24, 1);
    }

    else
    {
      Property = 0;
    }

    [v9 setObject:v6 forKeyedSubscript:Property];
LABEL_6:
    [(_CDSharedMemoryKeyValueStore *)a1[4] schedulePersistToShMem];
    goto LABEL_7;
  }

  *(*(a1[7] + 8) + 24) = 0;

LABEL_7:
}

uint64_t __39___CDSharedMemoryKeyValueStore_allKeys__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __50___CDSharedMemoryKeyValueStore_removeDataForKeys___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObjectsForKeys:*(a1 + 40)];
  v2 = *(a1 + 32);

  [(_CDSharedMemoryKeyValueStore *)v2 schedulePersistToShMem];
}

void __43___CDSharedMemoryKeyValueStore_dataForKey___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v4 = v2;
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), Property);

  v6 = *(a1[4] + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = a1[5];
    v9 = *(*(a1[6] + 8) + 40) != 0;
    v10 = v6;
    v11 = [v7 numberWithInt:v9];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "Attempt to retrieve data for key %{public}@ (was present = %@)", &v12, 0x16u);
  }
}

@end