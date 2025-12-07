@interface EXItemProviderCopyingLoadOperator
@end

@implementation EXItemProviderCopyingLoadOperator

void __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v17 = *MEMORY[0x1E696A4E0];
  v18[0] = *MEMORY[0x1E696A4D8];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke_2;
  v11[3] = &unk_1E6E4E738;
  v6 = *(a1 + 72);
  v15 = *(a1 + 56);
  v16 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v14 = v8;
  v9 = v4;
  v10 = v3;
  [v7 loadItemForTypeIdentifier:v10 options:v5 completionHandler:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

void __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = *(a1 + 32);
    v15 = 0;
    v9 = *(a1 + 80);
    v14[0] = *(a1 + 64);
    v14[1] = v9;
    v10 = [v8 _sandboxedResourceForItemIfNeeded:v5 auditToken:v14 error:&v15];
    v11 = v15;
    v7 = v11;
    if (v10 && !v11)
    {
      v12 = v10;

      v5 = v12;
    }
  }

  if (v7)
  {
    v18 = @"error";
    v19[0] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
    v16 = @"item";
    v17 = v5;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

LABEL_13:
  if (v13)
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:*(a1 + 40)];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

@end