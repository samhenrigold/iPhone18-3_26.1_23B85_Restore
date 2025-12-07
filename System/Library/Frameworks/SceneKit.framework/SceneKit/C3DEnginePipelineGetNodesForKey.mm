@interface C3DEnginePipelineGetNodesForKey
@end

@implementation C3DEnginePipelineGetNodesForKey

void ____C3DEnginePipelineGetNodesForKey_block_invoke(uint64_t a1, uint64_t a2)
{
  DeformerStack = C3DNodeGetDeformerStack(a2, a2);
  if (!DeformerStack)
  {
    v5 = scn_default_log(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_6_393_cold_3(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ____C3DEnginePipelineGetNodesForKey_block_invoke_28;
  v13[3] = &unk_2782FD950;
  v14 = *(a1 + 32);
  C3DDeformerStackEnumerateDependencyStacks(DeformerStack, v13);
}

void ____C3DEnginePipelineGetNodesForKey_block_invoke_28(uint64_t a1, int a2, void *value)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFSetCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a1 + 40));
    CFAutorelease(*(*(*(a1 + 32) + 8) + 24));
    v5 = *(*(*(a1 + 32) + 8) + 24);
  }

  CFSetAddValue(v5, value);
}

@end