@interface _GCAppClientProxy(SettingsXPCProxyService)
@end

@implementation _GCAppClientProxy(SettingsXPCProxyService)

- (void)readBooleanValueWithName:()SettingsXPCProxyService .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)readBooleanValueWithName:()SettingsXPCProxyService .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }
}

@end