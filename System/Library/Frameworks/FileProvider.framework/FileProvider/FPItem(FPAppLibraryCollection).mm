@interface FPItem(FPAppLibraryCollection)
@end

@implementation FPItem(FPAppLibraryCollection)

+ (void)appLibraryFromContainerItem:()FPAppLibraryCollection documentsItem:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] [AppLibrary] Item is not a public app library: %@", &v2, 0xCu);
}

@end