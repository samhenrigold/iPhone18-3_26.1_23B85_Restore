@interface DNDSModeConfigurationRecord(CKRecord)
@end

@implementation DNDSModeConfigurationRecord(CKRecord)

+ (void)dictionaryRepresentationWithCKRecord:()CKRecord partitionType:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 recordID];
  v7 = [v6 recordName];
  v8 = 138412546;
  v9 = a1;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "%@ partition data is nil in record data %{public}@", &v8, 0x16u);
}

- (void)populateCKRecord:()CKRecord lastChanceRecord:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 recordName];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v3, OS_LOG_TYPE_ERROR, "Record %{public}@ is not valid JSON", v6, 0xCu);
}

@end