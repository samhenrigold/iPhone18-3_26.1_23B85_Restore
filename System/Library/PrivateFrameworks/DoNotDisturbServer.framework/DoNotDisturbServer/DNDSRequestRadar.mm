@interface DNDSRequestRadar
@end

@implementation DNDSRequestRadar

void ___DNDSRequestRadar_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

void ___DNDSRequestRadar_block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDSLogSysdiagnose;
  if (os_log_type_enabled(DNDSLogSysdiagnose, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Requested notification for TTR. %@", &v4, 0xCu);
  }
}

@end