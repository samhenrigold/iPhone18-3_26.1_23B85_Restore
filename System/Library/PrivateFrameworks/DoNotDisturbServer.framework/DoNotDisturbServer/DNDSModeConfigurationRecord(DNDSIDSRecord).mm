@interface DNDSModeConfigurationRecord(DNDSIDSRecord)
@end

@implementation DNDSModeConfigurationRecord(DNDSIDSRecord)

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v6, v7, "Failed to decode record data %{public}@: %{public}@", v8, v9, v10, v11);
}

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v6, v7, "Failed to decode partitioned record data %{public}@: %{public}@", v8, v9, v10, v11);
}

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v6, v7, "Partioned record data is nil in record data %{public}@", v8, v9, v10, v11);
}

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v6, v7, "Record data is nil in record data %{public}@", v8, v9, v10, v11);
}

- (void)populateDNDSIDSRecord:()DNDSIDSRecord .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v6, v7, "Record %{public}@ is not valid JSON", v8, v9, v10, v11);
}

@end