@interface NSXPCSerializationDebugSizeForObject
@end

@implementation NSXPCSerializationDebugSizeForObject

uint64_t ___NSXPCSerializationDebugSizeForObject_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _NSXPCSerializationDebugSizeForObject(*(a1 + 40), a2);
  v6 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v5;
  *(*(*(a1 + 32) + 8) + 24) += _NSXPCSerializationDebugSizeForObject(v6, a3);
  return 1;
}

@end