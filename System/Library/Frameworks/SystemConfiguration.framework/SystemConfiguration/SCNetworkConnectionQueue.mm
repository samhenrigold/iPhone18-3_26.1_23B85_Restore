@interface SCNetworkConnectionQueue
@end

@implementation SCNetworkConnectionQueue

dispatch_queue_t ____SCNetworkConnectionQueue_block_invoke()
{
  result = dispatch_queue_create("SCNetworkConnectionQueue", 0);
  __SCNetworkConnectionQueue_q = result;
  return result;
}

@end