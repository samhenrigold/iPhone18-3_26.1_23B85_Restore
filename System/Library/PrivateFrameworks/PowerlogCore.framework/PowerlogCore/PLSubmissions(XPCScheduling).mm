@interface PLSubmissions(XPCScheduling)
@end

@implementation PLSubmissions(XPCScheduling)

- (void)submitRecord:()XPCScheduling withActivity:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to create CloudKit asset for %@", &v2, 0xCu);
}

@end