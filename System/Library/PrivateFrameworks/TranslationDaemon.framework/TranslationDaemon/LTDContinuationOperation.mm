@interface LTDContinuationOperation
@end

@implementation LTDContinuationOperation

void __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke_2;
    v5[3] = &unk_2789B5B70;
    v6 = WeakRetained;
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogTranslationEngine(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Continuation operation finish: %p", &v6, 0xCu);
  }

  return [*(a1 + 32) setFinished:1];
}

void __34___LTDContinuationOperation_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 isFinished];

    if ((v5 & 1) == 0)
    {
      if (*(a1 + 40) == 1)
      {
        v8 = objc_loadWeakRetained((a1 + 32));
        [v8 cancel];

        v11 = _LTOSLogTranslationEngine(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          __34___LTDContinuationOperation_start__block_invoke_cold_2(v11);
        }
      }

      else
      {
        v12 = _LTOSLogTranslationEngine(v6, v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          __34___LTDContinuationOperation_start__block_invoke_cold_1(v12);
        }
      }
    }
  }
}

void __34___LTDContinuationOperation_start__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 isFinished];

    if ((v4 & 1) == 0)
    {
      v7 = _LTOSLogTranslationEngine(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __34___LTDContinuationOperation_start__block_invoke_14_cold_1(v7);
      }
    }
  }
}

@end