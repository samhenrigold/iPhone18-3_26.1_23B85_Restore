@interface FigByteStreamServer
@end

@implementation FigByteStreamServer

uint64_t __FigByteStreamServer_CopyMemoryPool_block_invoke(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  qword_1ED4CA510 = result;
  return result;
}

@end