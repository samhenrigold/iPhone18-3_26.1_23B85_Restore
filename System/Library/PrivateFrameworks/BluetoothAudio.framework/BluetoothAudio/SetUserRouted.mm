@interface SetUserRouted
@end

@implementation SetUserRouted

void __endpoint_SetUserRouted_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      __endpoint_SetUserRouted_block_invoke_cold_1(a1, v3, v4);
    }
  }

  [*(a1 + 32) invalidate];
}

void __endpoint_SetUserRouted_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 40) + 40);
  v4 = *(a1 + 48);
  v5 = 138412802;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_241BB7000, log, OS_LOG_TYPE_ERROR, "Set UserRouted failed: device %@, value %d, error %@", &v5, 0x1Cu);
}

@end