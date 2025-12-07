@interface FPDExtensionRequestRecord
@end

@implementation FPDExtensionRequestRecord

void __46___FPDExtensionRequestRecord_monitorProgress___block_invoke(uint64_t a1)
{
  v14 = fpfs_adopt_log();
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  [*(*(a1 + 32) + 80) finishObserving];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  if (*(a1 + 40))
  {
    objc_initWeak(&location, *(a1 + 32));
    v4 = [MEMORY[0x1E695DF00] now];
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    v7 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:*(a1 + 40) path:"fractionCompleted"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46___FPDExtensionRequestRecord_monitorProgress___block_invoke_2;
    v11[3] = &unk_1E83C09A0;
    objc_copyWeak(&v12, &location);
    v8 = [v7 addObserverBlock:v11];
    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    *(v9 + 80) = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  __fp_pop_log();
}

void __46___FPDExtensionRequestRecord_monitorProgress___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E695DF00] now];
    [v2 timeIntervalSinceDate:v4[9]];
    if (v3 >= 5.0)
    {
      objc_storeStrong(v4 + 9, v2);
      [v4 _setupProgressTimer];
    }

    WeakRetained = v4;
  }
}

void __42___FPDExtensionRequestRecord__setupTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = fpfs_adopt_log();
    [WeakRetained cancelTimeout];
    [WeakRetained _handleTimeout];
    __fp_pop_log();
  }
}

void __49___FPDExtensionRequestRecord__setupProgressTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = fpfs_adopt_log();
    [WeakRetained cancelTimeout];
    [WeakRetained _handleTimeout];
    __fp_pop_log();
  }
}

@end