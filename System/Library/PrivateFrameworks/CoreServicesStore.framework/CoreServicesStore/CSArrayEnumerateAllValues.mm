@interface CSArrayEnumerateAllValues
@end

@implementation CSArrayEnumerateAllValues

void ___CSArrayEnumerateAllValues_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  *a4 = 0;
  objc_autoreleasePoolPop(v6);
}

@end