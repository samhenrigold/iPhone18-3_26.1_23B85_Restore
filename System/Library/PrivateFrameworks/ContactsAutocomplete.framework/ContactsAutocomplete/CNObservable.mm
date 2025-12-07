@interface CNObservable
@end

@implementation CNObservable

void __84__CNObservable_CNAutocomplete__autocompleteTimeoutAfterDelay_doOnTimeout_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CNALoggingContextDebug(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Error from search observable: %@", &v4, 0xCu);
  }
}

uint64_t __84__CNObservable_CNAutocomplete__autocompleteTimeoutAfterDelay_doOnTimeout_scheduler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CNALoggingContextDebug(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2155FE000, v2, OS_LOG_TYPE_DEFAULT, "Timing out observable: %@", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end