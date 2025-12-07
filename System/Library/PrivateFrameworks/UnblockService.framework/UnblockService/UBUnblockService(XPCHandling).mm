@interface UBUnblockService(XPCHandling)
- (void)openListenerConnection;
@end

@implementation UBUnblockService(XPCHandling)

- (void)openListenerConnection
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleReactiveRecoveryRequest:()XPCHandling .cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleIncomingMessage:()XPCHandling .cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end