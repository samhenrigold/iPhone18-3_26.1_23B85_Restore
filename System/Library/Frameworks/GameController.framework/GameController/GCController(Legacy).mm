@interface GCController(Legacy)
- (void)deviceHash;
@end

@implementation GCController(Legacy)

- (void)initWithProfile:()Legacy .cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v3))
  {
    [a1 deviceHash];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v4, v5, "DeviceHash: 0x%lx", v6, v7, v8, v9);
  }
}

- (void)initWithProfile:()Legacy .cold.2(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = [a1 vendorName];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v5, v6, "VendorName: %@", v7, v8, v9, v10);
  }
}

- (void)initWithProfile:()Legacy .cold.3(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = [a1 debugName];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v5, v6, "DebugName: %@", v7, v8, v9, v10);
  }
}

- (void)initWithProfileClass:()Legacy service:.cold.1(void *a1, void *a2)
{
  v5 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v5))
  {
    [a1 service];
    [a2 physicalDeviceUsesCompass];
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x26u);
  }
}

- (void)initWithProfileClass:()Legacy service:.cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }
}

- (void)initWithProfileClass:()Legacy service:.cold.3(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v3))
  {
    [a1 deviceHash];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v4, v5, "DeviceHash: %lu", v6, v7, v8, v9);
  }
}

- (void)deviceHash
{
  v2 = getGCLogger(self);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0xCu);
  }
}

@end