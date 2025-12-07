@interface NGMFullDeviceIdentity(MigrationToModernizedKeyStorage)
@end

@implementation NGMFullDeviceIdentity(MigrationToModernizedKeyStorage)

- (void)deleteKeyWithTag:()MigrationToModernizedKeyStorage .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_22B404000, a2, OS_LOG_TYPE_FAULT, "Deletion of a keychain item failed for after migration with error: %i", v2, 8u);
}

@end