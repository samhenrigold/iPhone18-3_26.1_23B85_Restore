@interface FPSearchableItemValue(Helpers)
@end

@implementation FPSearchableItemValue(Helpers)

+ (void)stringArrayFromObject:()Helpers .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Tried parsing array of strings for FPItem userInfo, but one entry was not a string, but %@", &v2, 0xCu);
}

@end