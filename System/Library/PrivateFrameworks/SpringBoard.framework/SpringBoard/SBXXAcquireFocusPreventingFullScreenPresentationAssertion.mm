@interface SBXXAcquireFocusPreventingFullScreenPresentationAssertion
@end

@implementation SBXXAcquireFocusPreventingFullScreenPresentationAssertion

void ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Disabling certain system gestures for assertion with reason=%@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336DE00];
  v6 = +[SBSystemGestureManager mainDisplayManager];
  v7 = [v6 acquireSystemGestureDisableAssertionForReason:*(a1 + 32) forSystemGestureTypes:v5];

  v8 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:*(a1 + 40)];
  v9 = MEMORY[0x277CF0CB8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_186;
  v11[3] = &unk_2783A92D8;
  v12 = *(a1 + 32);
  v13 = v7;
  v10 = v7;
  [v9 monitorSendRight:v8 withHandler:v11];
}

void ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_186(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_2;
  v2[3] = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Re-enabling certain system gestures for assertion with reason=%@", &v6, 0xCu);
  }

  return [*(a1 + 40) invalidate];
}

@end