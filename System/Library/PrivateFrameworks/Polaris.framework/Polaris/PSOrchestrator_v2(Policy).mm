@interface PSOrchestrator_v2(Policy)
@end

@implementation PSOrchestrator_v2(Policy)

- (void)updateGraphTargetState:()Policy fromPolicy:.cold.1(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Two policies are trying to set target strides. This is an invalid configuration! Aborting!");
  v4 = _polarisdLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v12 = 136315650;
    v13 = "[PSOrchestrator_v2(Policy) updateGraphTargetState:fromPolicy:]";
    v14 = 1024;
    v15 = 85;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s", &v12, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = _polarisdLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[PSOrchestrator_v2(Policy) updateGraphTargetState:fromPolicy:]";
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v12, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v10 = abort_with_reason();
  cvdataBufferAllocator_cold_1(v10, v11);
}

@end