@interface IOHIDServiceHandleCancelTimerTimeout
@end

@implementation IOHIDServiceHandleCancelTimerTimeout

void ____IOHIDServiceHandleCancelTimerTimeout_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((IOHIDServiceFilterGetStateMask(a2) & 3) == 1)
  {
    v4 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      ____IOHIDServiceHandleCancelTimerTimeout_block_invoke_cold_1(a2, a1, v4);
    }
  }
}

void ____IOHIDServiceHandleCancelTimerTimeout_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_fault_impl(&dword_197195000, log, OS_LOG_TYPE_FAULT, "Service filter %@ never called cancel handler for service %@", &v4, 0x16u);
}

@end