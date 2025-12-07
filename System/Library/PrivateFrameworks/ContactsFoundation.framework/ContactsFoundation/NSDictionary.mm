@interface NSDictionary
@end

@implementation NSDictionary

void __47__NSDictionary_ContactsFoundation___cn_filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void __44__NSDictionary_ContactsFoundation___cn_map___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v18 = a2;
  v5 = a3;
  v6 = (*(*(a1 + 40) + 16))();
  v7 = [v6 allKeys];
  v8 = [v7 firstObject];

  if (!v8)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v23 = @"originalKey";
    v24[0] = v18;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v15 = @"nil key during transform";
    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E695DFB0] null];

  if (v8 == v9)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v21 = @"originalKey";
    v22 = v18;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = @"null key during transform";
    goto LABEL_10;
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (v10)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v19[0] = @"originalKey";
    v19[1] = @"transformedKey";
    v20[0] = v18;
    v20[1] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v15 = @"duplicated key during transform";
LABEL_10:
    v16 = [v12 exceptionWithName:v13 reason:v15 userInfo:{v14, v18}];
    v17 = v16;

    objc_exception_throw(v16);
  }

  v11 = [v6 objectForKeyedSubscript:v8];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];
}

void __48__NSDictionary_ContactsFoundation___cn_mapKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = a3;
  v6 = (*(*(a1 + 40) + 16))();
  if (!v6)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v26 = @"originalKey";
    v27[0] = v21;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = @"nil key during transform";
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v8)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v24 = @"originalKey";
    v25 = v21;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = @"null key during transform";
LABEL_9:
    v14 = [v10 exceptionWithName:v11 reason:v13 userInfo:{v12, v21}];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (v9)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D930];
    v22[0] = @"originalKey";
    v22[1] = @"transformedKey";
    v23[0] = v21;
    v23[1] = v7;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v19 = [v16 exceptionWithName:v17 reason:@"duplicated key during transform" userInfo:v18];
    v20 = v19;

    objc_exception_throw(v19);
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
}

void __50__NSDictionary_ContactsFoundation___cn_mapValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v9 = v6(v5, a3);
  v8 = off_1EF4401A8(&__block_literal_global_2_2, v9);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

@end