@interface EKCalendarItem(Shared)
@end

@implementation EKCalendarItem(Shared)

- (void)_structuredDataDictionaryFromData:()Shared local:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize structured data. Error: %@", &v2, 0xCu);
}

- (void)_dataFromStructuredDataDictionary:()Shared local:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Failed to serialize structured data dictionary: %@. Error: %@", &v3, 0x16u);
}

@end