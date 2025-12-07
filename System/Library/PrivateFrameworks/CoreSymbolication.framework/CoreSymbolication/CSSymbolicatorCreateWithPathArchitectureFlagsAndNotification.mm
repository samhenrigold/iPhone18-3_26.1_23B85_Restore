@interface CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification
@end

@implementation CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification

const __CFData *__CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification_block_invoke(uint64_t a1, const __CFData *a2)
{
  result = CSSymbolicatorCreateWithSignature(a2);
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 40) = result;
  *(v4 + 48) = v5;
  return result;
}

@end