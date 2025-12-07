@interface ISCompositor(Convenience)
@end

@implementation ISCompositor(Convenience)

- (void)setResource:()Convenience named:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to set resource named '%@' on custom element", &v2, 0xCu);
}

- (void)addResourcesFromDictionary:()Convenience .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 allKeys];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to set resource names '%@' on custom element", &v4, 0xCu);
}

@end