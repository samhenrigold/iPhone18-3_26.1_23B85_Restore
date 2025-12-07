@interface _GCDefaultPhysicalDevice(Idle)
@end

@implementation _GCDefaultPhysicalDevice(Idle)

- (void)requestIdleDisconnect:()Idle .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

@end