@interface BRAutoShareAcceptOperation
- (void)main;
@end

@implementation BRAutoShareAcceptOperation

- (void)main
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __34__BRAutoShareAcceptOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  [v4 completedWithResult:v6 error:v5];
}

@end