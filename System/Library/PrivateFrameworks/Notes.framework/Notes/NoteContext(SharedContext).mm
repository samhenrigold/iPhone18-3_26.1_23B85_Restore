@interface NoteContext(SharedContext)
@end

@implementation NoteContext(SharedContext)

+ (void)mainContextObjectFromObject:()SharedContext .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 ic_loggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_25C69C000, a2, OS_LOG_TYPE_ERROR, "Error getting main context object from object: %@", &v4, 0xCu);
}

@end