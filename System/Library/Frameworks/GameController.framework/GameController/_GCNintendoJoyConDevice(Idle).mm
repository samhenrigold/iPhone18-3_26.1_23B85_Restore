@interface _GCNintendoJoyConDevice(Idle)
@end

@implementation _GCNintendoJoyConDevice(Idle)

- (void)requestIdleDisconnect:()Idle .cold.1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xCu);
  }
}

@end