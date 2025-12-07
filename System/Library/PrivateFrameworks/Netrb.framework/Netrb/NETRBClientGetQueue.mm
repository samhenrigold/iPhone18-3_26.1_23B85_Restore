@interface NETRBClientGetQueue
@end

@implementation NETRBClientGetQueue

dispatch_queue_t ____NETRBClientGetQueue_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x2DuLL, "com.apple.framework.netrb.%p", &__netrbClientTypeID);
  __str[44] = 0;
  result = dispatch_queue_create(__str, 0);
  __NETRBClientGetQueue___netrbQueue = result;
  if (!result)
  {
    v1 = __error();
    v2 = strerror(*v1);
    return NETRBErrorLog("creating framework queue failed %s", v2);
  }

  return result;
}

@end