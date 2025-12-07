@interface ManagedAssetsClient(Profile)
@end

@implementation ManagedAssetsClient(Profile)

- (void)exportAssets:()Profile option:error:.cold.1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v0, v1, "fail to export assets for profile: %@, error: %@");
}

- (void)constructV2Blob:()Profile expectedSize:sizeLimit:profileType:error:.cold.3()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to construct v2 blob, error: %@", v2, v3, v4, v5);
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to perform checkIfKVStoreGroupExistUsing: %@", v2, v3, v4, v5);
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v0, v1, "Error while trying to query data in store %@, error:=%@");
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.4()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "Error while serializing kvRecords to plist, error:=%@", v2, v3, v4, v5);
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.5(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_2();
  v5 = a2;
  _os_log_debug_impl(&dword_258089000, v3, OS_LOG_TYPE_DEBUG, "Serialized CorePrescription data length: %lu with data %@", v4, 0x16u);
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.6()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v0, v1, "No CorePrescription data after serializing all records from %@, error:=%@");
}

- (void)importCorePrescription:()Profile profile:error:.cold.2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v0, v1, "Failed to put data in store %@, error=%@");
}

- (void)importCorePrescription:()Profile profile:error:.cold.3()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "Failed to unarchive the data, error=%@", v2, v3, v4, v5);
}

@end