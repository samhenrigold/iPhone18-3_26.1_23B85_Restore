@interface CNAutocompleteResult(Sorting)
@end

@implementation CNAutocompleteResult(Sorting)

- (void)compare:()Sorting .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_2155FE000, a2, OS_LOG_TYPE_DEBUG, "Comparison result: %ld", &v2, 0xCu);
}

@end