@interface _GCGenericDeviceDB(XPC)
@end

@implementation _GCGenericDeviceDB(XPC)

- (void)preparedModelForDevice:()XPC reply:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1D2C3B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

@end