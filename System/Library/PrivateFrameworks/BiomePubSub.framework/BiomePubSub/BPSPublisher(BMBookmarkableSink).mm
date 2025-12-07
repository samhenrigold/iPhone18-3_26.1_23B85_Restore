@interface BPSPublisher(BMBookmarkableSink)
@end

@implementation BPSPublisher(BMBookmarkableSink)

- (void)sinkWithBookmark:()BMBookmarkableSink completion:receiveInput:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "Creating publisher with bookmark:\n%@", &v2, 0xCu);
}

@end