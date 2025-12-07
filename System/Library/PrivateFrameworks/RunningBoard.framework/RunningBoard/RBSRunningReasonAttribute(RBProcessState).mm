@interface RBSRunningReasonAttribute(RBProcessState)
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSRunningReasonAttribute(RBProcessState)

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([v7 runningReason] && (v9 = objc_msgSend(v7, "runningReason"), v9 != objc_msgSend(self, "runningReason")))
  {
    v10 = rbs_assertion_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      runningReason = [v7 runningReason];
      runningReason2 = [self runningReason];
      assertion = [v8 assertion];
      v14 = 134218498;
      v15 = runningReason;
      v16 = 2048;
      v17 = runningReason2;
      v18 = 2114;
      v19 = assertion;
      _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Multiple RBSRunningReasonAttribute provided: %lu vs %lu. First one wins, but client should be fixed for assertion %{public}@", &v14, 0x20u);
    }
  }

  else
  {
    [v7 setRunningReason:{objc_msgSend(self, "runningReason")}];
  }
}

@end