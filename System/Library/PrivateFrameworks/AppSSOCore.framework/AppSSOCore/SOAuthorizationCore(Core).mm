@interface SOAuthorizationCore(Core)
@end

@implementation SOAuthorizationCore(Core)

- (void)beginAuthorizationWithRequestParameters:()Core completion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_2_0();
  v7 = a2;
  _os_log_debug_impl(&dword_1CA238000, a3, OS_LOG_TYPE_DEBUG, "%s requestIdentifier = %{public}@ on %@", v6, 0x20u);
}

- (void)createSecKeysFromSecKeyProxyEndpoints:()Core error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end