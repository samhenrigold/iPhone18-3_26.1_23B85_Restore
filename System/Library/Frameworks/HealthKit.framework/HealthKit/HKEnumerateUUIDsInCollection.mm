@interface HKEnumerateUUIDsInCollection
@end

@implementation HKEnumerateUUIDsInCollection

uint64_t ___HKEnumerateUUIDsInCollection_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hk_UUID];
  if (v2)
  {
    v3 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end