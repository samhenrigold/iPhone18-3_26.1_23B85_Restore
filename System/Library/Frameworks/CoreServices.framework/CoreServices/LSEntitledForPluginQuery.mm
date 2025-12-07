@interface LSEntitledForPluginQuery
@end

@implementation LSEntitledForPluginQuery

void ___LSEntitledForPluginQuery_block_invoke(uint64_t a1)
{
  v1 = _LSPluginFaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    ___LSEntitledForPluginQuery_block_invoke_cold_1(v1);
  }
}

@end