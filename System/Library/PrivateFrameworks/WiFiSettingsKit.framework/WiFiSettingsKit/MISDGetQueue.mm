@interface MISDGetQueue
@end

@implementation MISDGetQueue

dispatch_queue_t ____MISDGetQueue_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x22uLL, "com.apple.misd.%p", &__MISDGetQueue___misdQueue);
  __str[33] = 0;
  result = dispatch_queue_create(__str, 0);
  __MISDGetQueue___misdQueue = result;
  return result;
}

@end