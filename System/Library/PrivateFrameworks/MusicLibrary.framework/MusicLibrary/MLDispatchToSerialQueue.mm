@interface MLDispatchToSerialQueue
@end

@implementation MLDispatchToSerialQueue

uint64_t ___MLDispatchToSerialQueue_block_invoke()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = __ML3LogSerialQueue;
  __ML3LogSerialQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end