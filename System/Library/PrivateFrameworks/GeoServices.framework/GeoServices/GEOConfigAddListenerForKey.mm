@interface GEOConfigAddListenerForKey
@end

@implementation GEOConfigAddListenerForKey

void ___GEOConfigAddListenerForKey_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKeyedSubscript:{*(a1 + 32), a4}];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void ___GEOConfigAddListenerForKey_block_invoke_2(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a1[4];
  v12 = a3;
  v13 = a2;
  v14 = [v10 objectForKeyedSubscript:v11];
  v15 = *(a1[6] + 8);
  if (v14)
  {
    objc_storeStrong((v15 + 40), v14);
  }

  else
  {
    [v10 setObject:*(v15 + 40) forKeyedSubscript:a1[4]];
  }

  v16 = (*(a1[5] + 16))();

  v17 = *(a1[7] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
}

@end