@interface WPHeySiri(Test)
@end

@implementation WPHeySiri(Test)

- (void)startScanningAndAdvertisingWithOptions:()Test .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Non-test client calling test API.";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)startScanningAndAdvertisingWithOptions:()Test .cold.6(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 advertisingData];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_274327000, v3, OS_LOG_TYPE_DEBUG, "HeySiri advertising data=%@", v5, 0xCu);
}

@end