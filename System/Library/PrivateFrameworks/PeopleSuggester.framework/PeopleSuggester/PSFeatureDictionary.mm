@interface PSFeatureDictionary
@end

@implementation PSFeatureDictionary

void __44___PSFeatureDictionary__removeObjectForKey___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:a1[4]];

  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 1;
    [v8 setObject:0 forKeyedSubscript:a1[4]];
    if (![v8 count])
    {
      objc_storeStrong((*(a1[7] + 8) + 40), a2);
    }

    --*(a1[5] + 24);
    *a4 = 1;
  }
}

void __59___PSFeatureDictionary_addEntriesFromDictionary_overwrite___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v5];
  if (v8)
  {
    v17 = v6;
    v18 = v5;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ((*(a1 + 40) & 1) == 0)
          {
            v15 = [*v7 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];

            if (v15)
            {
              continue;
            }
          }

          ++*(*v7 + 3);
          v16 = [v9 objectForKeyedSubscript:{v14, v17, v18, v19}];
          [v8 setObject:v16 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v6 = v17;
    v5 = v18;
  }

  else
  {
    __59___PSFeatureDictionary_addEntriesFromDictionary_overwrite___block_invoke_cold_1(v6, (a1 + 32), v5);
  }
}

void __44___PSFeatureDictionary_mutableCopyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 mutableCopy];
  v6 = [(_PSFeatureDictionary *)*(a1 + 32) _timeBucketsCreateIfNeeded];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

uint64_t __59___PSFeatureDictionary_addEntriesFromDictionary_overwrite___block_invoke_cold_1(void *a1, void **a2, uint64_t a3)
{
  v6 = [a1 mutableCopy];
  v7 = [(_PSFeatureDictionary *)*a2 _timeBucketsCreateIfNeeded];
  [v7 setObject:v6 forKeyedSubscript:a3];

  result = [a1 count];
  (*a2)[3] += result;
  return result;
}

@end