@interface UARPiCloudManager(CHIP)
- (void)performRemoteFetchForCHIPVerificationCertificateSync;
@end

@implementation UARPiCloudManager(CHIP)

- (void)handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:()CHIP productGroup:batchRequest:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  v2 = @"chipAccessories";
  _os_log_error_impl(&dword_2701F5000, v0, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for fetchRecordZoneChangesCompletionBlock callback for zone=%@", v1, 0x16u);
}

- (void)handleRemoteFetchRequestSyncForCHIPAttestationCertificates:()CHIP subjectKeyIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  v2 = @"chipAttestationCertificates";
  _os_log_error_impl(&dword_2701F5000, v0, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for fetchRecordZoneChangesCompletionBlock callback for zone=%@", v1, 0x16u);
}

- (void)performRemoteFetchForCHIPVerificationCertificateSync
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_2_0();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_2701F5000, v3, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for CHIPVerificationCertificate callback for zone=%@, record=%@", v4, 0x20u);
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.1(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.2(void *a1)
{
  v1 = [a1 recordID];
  v7 = [v1 recordName];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.3(void *a1)
{
  v1 = [a1 recordID];
  v7 = [v1 recordName];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.4(void *a1)
{
  v1 = [a1 recordID];
  v7 = [v1 recordName];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)processCHIPAttestationCertificateRecord:()CHIP subjectKeyIdentifier:.cold.1(void *a1)
{
  v1 = [a1 ckRecord];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)validateCHIPFirmwareRecord:()CHIP inContainer:forAccessory:.cold.1(void *a1)
{
  v1 = [a1 ckRecord];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end