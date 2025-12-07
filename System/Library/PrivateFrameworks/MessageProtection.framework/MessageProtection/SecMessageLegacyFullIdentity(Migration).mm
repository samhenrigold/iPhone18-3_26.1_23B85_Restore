@interface SecMessageLegacyFullIdentity(Migration)
@end

@implementation SecMessageLegacyFullIdentity(Migration)

- (void)deleteItemWithPersistentRef:()Migration .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Error occured while deleting the migrated persistent reference: %i", v2, 8u);
}

@end