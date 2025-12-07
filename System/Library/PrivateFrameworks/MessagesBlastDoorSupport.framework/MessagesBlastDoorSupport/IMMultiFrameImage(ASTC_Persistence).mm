@interface IMMultiFrameImage(ASTC_Persistence)
@end

@implementation IMMultiFrameImage(ASTC_Persistence)

- (void)writeASTCImage:()ASTC_Persistence duration:error:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_258CD3000, a2, OS_LOG_TYPE_ERROR, "No image (%@) or duration (%f)", &v3, 0x16u);
}

- (void)writeASTCImage:()ASTC_Persistence duration:error:.cold.2(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  *v1 = 0;
  _os_log_error_impl(&dword_258CD3000, log, OS_LOG_TYPE_ERROR, "Image destination failed to finalize.", v1, 2u);
}

- (void)writeASTCImage:()ASTC_Persistence duration:error:.cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  OUTLINED_FUNCTION_0(&dword_258CD3000, a2, a3, "Failed to write image data length to stream with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end