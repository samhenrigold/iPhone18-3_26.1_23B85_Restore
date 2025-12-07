@interface WPObjectDiscovery(Test)
- (void)startTest;
- (void)stopTest;
@end

@implementation WPObjectDiscovery(Test)

- (void)receivedTestResponse:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)startTest
{
  v3 = a2;
  [OUTLINED_FUNCTION_6_0() isTestClient];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)stopTest
{
  v3 = a2;
  [OUTLINED_FUNCTION_6_0() isTestClient];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)updateBeaconingState:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  [v0 BOOLValue];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

- (void)updateBeaconingKeys:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)updateBeaconingStatus:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  [v0 unsignedCharValue];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);
}

- (void)updateBeaconingExtended:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)updateNearOwnerTokens:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)updateBeaconingInterval:()Test .cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  [v0 intValue];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);
}

@end