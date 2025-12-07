@interface StringFromPreferencesStackSignals
@end

@implementation StringFromPreferencesStackSignals

void *___StringFromPreferencesStackSignals_block_invoke(uint64_t a1)
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