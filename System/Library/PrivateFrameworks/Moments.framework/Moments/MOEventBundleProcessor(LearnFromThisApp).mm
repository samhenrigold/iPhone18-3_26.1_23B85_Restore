@interface MOEventBundleProcessor(LearnFromThisApp)
+ (void)readLearnedFromTheAppStatusTable;
@end

@implementation MOEventBundleProcessor(LearnFromThisApp)

+ (void)readLearnedFromTheAppStatusTable
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "Could not read to the LFTA plist file, error: %@", &v2, 0xCu);
}

+ (void)persistLearnedFromTheAppStatusTable:()LearnFromThisApp .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "couldn't write to the LFTA status plist file, %@", &v2, 0xCu);
}

@end