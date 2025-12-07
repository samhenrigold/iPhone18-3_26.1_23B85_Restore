@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __43__NSDictionary_MTAdditions__mt_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end