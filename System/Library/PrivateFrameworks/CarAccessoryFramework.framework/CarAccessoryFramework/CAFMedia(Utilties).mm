@interface CAFMedia(Utilties)
@end

@implementation CAFMedia(Utilties)

- (void)tuneToFrequency:()Utilties inSourceWithIdentifier:completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_1_1();
  v7 = a2;
  _os_log_debug_impl(&dword_231618000, a3, OS_LOG_TYPE_DEBUG, "Tuning to frequency %@ in source %@", v6, 0x16u);
}

@end