@interface ATXInspectionClient
@end

@implementation ATXInspectionClient

void __28___ATXInspectionClient_init__block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __28___ATXInspectionClient_init__block_invoke_cold_1(v1);
  }
}

@end