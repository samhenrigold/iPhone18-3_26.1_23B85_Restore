@interface GKMatchmaker(Nearby)
@end

@implementation GKMatchmaker(Nearby)

- (void)setNearbyDevice:()Nearby reachable:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithInt:a2];
  v8 = [a3 player];
  v9 = 138412546;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  _os_log_debug_impl(&dword_227904000, v6, OS_LOG_TYPE_DEBUG, "Number of nearby devices: %@, for player: %@.", &v9, 0x16u);
}

@end