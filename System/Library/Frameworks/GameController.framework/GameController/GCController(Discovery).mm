@interface GCController(Discovery)
@end

@implementation GCController(Discovery)

+ (void)_startWirelessControllerDiscoveryWithBTClassic:()Discovery btle:completionHandler:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }
}

@end