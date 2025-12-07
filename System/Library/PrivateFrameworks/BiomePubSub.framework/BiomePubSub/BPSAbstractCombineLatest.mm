@interface BPSAbstractCombineLatest
@end

@implementation BPSAbstractCombineLatest

void *__55___BPSAbstractCombineLatest_receiveCompletion_atIndex___block_invoke(void *result, void *a2, uint64_t a3)
{
  if (result[4] != a3)
  {
    return [a2 cancel];
  }

  return result;
}

@end