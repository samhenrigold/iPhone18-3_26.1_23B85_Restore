@interface DPBlacklistManager
@end

@implementation DPBlacklistManager

void __55___DPBlacklistManager_createRuntimeBlacklistDirectory___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32) isDirectory:1];
  createRuntimeBlacklistDirectory__created = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:0];
}

void __60___DPBlacklistManager_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = os_transaction_create();
  v3 = objc_autoreleasePoolPush();
  [objc_opt_class() processRuntimeBlacklist];
  objc_autoreleasePoolPop(v3);
}

@end