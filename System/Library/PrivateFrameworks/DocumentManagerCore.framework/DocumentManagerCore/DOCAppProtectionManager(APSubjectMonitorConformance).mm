@interface DOCAppProtectionManager(APSubjectMonitorConformance)
@end

@implementation DOCAppProtectionManager(APSubjectMonitorConformance)

- (void)appProtectionSubjectsChanged:()APSubjectMonitorConformance forSubscription:.cold.1()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  [OUTLINED_FUNCTION_11() count];
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
}

@end