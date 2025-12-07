@interface BRCSyncOperationThrottle(SchedulingAdditions)
@end

@implementation BRCSyncOperationThrottle(SchedulingAdditions)

- (void)scheduleIfPossibleWithCurrentTimestamp:()SchedulingAdditions signalSourceIfFailed:description:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  brc_interval_from_nsec();
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Not ready to sync yet, sleeping for %.3fs%@", &v6, 0x16u);
}

- (void)scheduleIfPossibleWithCurrentTimestamp:()SchedulingAdditions signalSourceIfFailed:description:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] No sync required anymore at that time%@", &v2, 0xCu);
}

@end