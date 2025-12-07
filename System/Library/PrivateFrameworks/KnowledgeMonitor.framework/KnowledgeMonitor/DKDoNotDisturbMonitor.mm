@interface DKDoNotDisturbMonitor
@end

@implementation DKDoNotDisturbMonitor

void __31___DKDoNotDisturbMonitor_start__block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_22595A000, v5, OS_LOG_TYPE_DEFAULT, "Success registering for DND: %u, Error=%@", v6, 0x12u);
  }
}

@end