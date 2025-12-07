@interface LSApplicationProxy(Localization)
@end

@implementation LSApplicationProxy(Localization)

- (void)localizedNameForContext:()Localization preferredLocalizations:useShortNameOnly:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "cannot ask for short name with context (%@)", &v2, 0xCu);
}

@end