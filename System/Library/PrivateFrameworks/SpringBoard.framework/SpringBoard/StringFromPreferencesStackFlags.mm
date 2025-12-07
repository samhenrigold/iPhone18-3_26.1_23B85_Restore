@interface StringFromPreferencesStackFlags
@end

@implementation StringFromPreferencesStackFlags

void *___StringFromPreferencesStackFlags_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) length];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 appendString:@"|"];
  }

  return result;
}

@end