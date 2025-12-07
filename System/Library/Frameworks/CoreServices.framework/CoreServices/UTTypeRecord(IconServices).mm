@interface UTTypeRecord(IconServices)
@end

@implementation UTTypeRecord(IconServices)

- (void)iconResourceBundleURLWithContext:()IconServices tableID:unitID:unitBytes:.cold.1(uint64_t a1, unsigned int *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Cannot generate libraryURL for app %@ because it has no libraryPath path stored (%llx)", &v4, 0x16u);
}

@end