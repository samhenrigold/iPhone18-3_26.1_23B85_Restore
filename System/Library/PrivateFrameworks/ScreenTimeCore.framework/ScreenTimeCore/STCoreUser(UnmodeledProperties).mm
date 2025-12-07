@interface STCoreUser(UnmodeledProperties)
- (void)contactsEditable;
- (void)screenTimeEnabled;
@end

@implementation STCoreUser(UnmodeledProperties)

- (void)screenTimeEnabled
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)contactsEditable
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end