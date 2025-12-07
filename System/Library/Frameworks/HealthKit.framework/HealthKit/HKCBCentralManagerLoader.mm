@interface HKCBCentralManagerLoader
@end

@implementation HKCBCentralManagerLoader

void __61___HKCBCentralManagerLoader_getCentralManagerWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) state] == 5)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 24);
    v6 = [v3 copy];
    v5 = _Block_copy(v6);
    [v4 addObject:v5];
  }
}

@end