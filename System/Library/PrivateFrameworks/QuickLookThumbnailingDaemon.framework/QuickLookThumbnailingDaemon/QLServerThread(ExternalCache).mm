@interface QLServerThread(ExternalCache)
@end

@implementation QLServerThread(ExternalCache)

- (void)findUncachedThumbnailInExternalThumbnailCacheForRequest:()ExternalCache item:URL:completionHandler:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_2615D3000, v0, OS_LOG_TYPE_DEBUG, "Trying external cache for %@", v1, 0xCu);
}

@end