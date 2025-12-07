@interface CreateEmptyWrapper
@end

@implementation CreateEmptyWrapper

uint64_t __frr_CreateEmptyWrapper_block_invoke(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  qword_1ED4CAE60 = result;
  return result;
}

@end