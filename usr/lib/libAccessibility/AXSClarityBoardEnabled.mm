@interface AXSClarityBoardEnabled
@end

@implementation AXSClarityBoardEnabled

void ___AXSClarityBoardEnabled_block_invoke()
{
  v0 = _AXSClarityBoardEnabledDirectory();
  v1 = [v0 path];
  v2 = [v1 stringByAppendingPathComponent:@"ClarityBoardEnabled"];

  if (!v2)
  {
    v5 = CLFLogCommon(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      ___AXSClarityBoardEnabled_block_invoke_cold_2();
    }

    goto LABEL_9;
  }

  v4 = access([v2 cStringUsingEncoding:4], 0);
  _AXSClarityBoardEnabled_isEnabled = v4 == 0;
  if (v4)
  {
    if (v4 != -1 || (v4 = __error(), *v4 != 2))
    {
      v5 = CLFLogCommon(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        ___AXSClarityBoardEnabled_block_invoke_cold_1(v2, v5);
      }

LABEL_9:
    }
  }
}

void ___AXSClarityBoardEnabled_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 138412546;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_fault_impl(&dword_186307000, a2, OS_LOG_TYPE_FAULT, "Unable to check whether file existed at %@. Error: %s", &v6, 0x16u);
}

@end