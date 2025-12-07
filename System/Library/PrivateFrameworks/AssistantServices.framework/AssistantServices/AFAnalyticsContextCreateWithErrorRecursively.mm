@interface AFAnalyticsContextCreateWithErrorRecursively
@end

@implementation AFAnalyticsContextCreateWithErrorRecursively

void ___AFAnalyticsContextCreateWithErrorRecursively_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((objc_msgSend_isEqualToString_(v6) & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

@end