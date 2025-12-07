@interface LTTextSessionRequest
@end

@implementation LTTextSessionRequest

void __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:13 userInfo:0];
    v4 = _LTOSLogTextAPI(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke_cold_1(v2, v4);
    }

    [WeakRetained didReceiveError:v2 forInput:0];
  }
}

void __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
}

@end