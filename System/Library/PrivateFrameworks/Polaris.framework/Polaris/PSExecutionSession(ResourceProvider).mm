@interface PSExecutionSession(ResourceProvider)
@end

@implementation PSExecutionSession(ResourceProvider)

- (void)willStopProducingRequestedResources:()ResourceProvider reason:.cold.1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Invalid reason %llu PSESResourcesStoppedReason", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid reason %llu PSESResourcesStoppedReason", v7, v8, v9, v10, v20, v21);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  ps_graph_compute_policy_apply_cold_1(v19);
}

@end