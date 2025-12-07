@interface _GCNintendoFusedJoyConDevice(Client)
@end

@implementation _GCNintendoFusedJoyConDevice(Client)

- (void)_addClient:()Client .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v2, v3, "Device %@ client added: %@", v4, v5, v6, v7);
  }
}

- (void)_removeClient:()Client .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v2, v3, "Device %@ client removed: %@", v4, v5, v6, v7);
  }
}

@end