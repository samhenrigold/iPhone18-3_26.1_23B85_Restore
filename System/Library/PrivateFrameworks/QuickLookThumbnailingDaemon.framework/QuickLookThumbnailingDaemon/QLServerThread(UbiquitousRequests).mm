@interface QLServerThread(UbiquitousRequests)
@end

@implementation QLServerThread(UbiquitousRequests)

- (void)downloadThumbnails:()UbiquitousRequests forProvider:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 count];
  v6 = atomic_load((a2 + 28));
  v7 = 134218240;
  v8 = v5;
  v9 = 1024;
  v10 = v6;
  _os_log_debug_impl(&dword_2615D3000, a3, OS_LOG_TYPE_DEBUG, "Dequeueing batch of %lu thumbnail downloads (%d downloads are in flight)", &v7, 0x12u);
}

@end