@interface PSOrchestrator(Policy)
@end

@implementation PSOrchestrator(Policy)

- (void)updateGraphTargetState:()Policy fromPolicy:.cold.1(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Two policies are trying to set target strides. This is an invalid configuration! Aborting!");
  v4 = _polarisdLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v10 = 136315650;
    v11 = "[PSOrchestrator(Policy) updateGraphTargetState:fromPolicy:]";
    v12 = 1024;
    v13 = 87;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s", &v10, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = _polarisdLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[PSOrchestrator(Policy) updateGraphTargetState:fromPolicy:]";
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  __67__PSOrchestrator_v2_Listener__setupSupportedStridesForLocalReplay___block_invoke_cold_1();
}

@end