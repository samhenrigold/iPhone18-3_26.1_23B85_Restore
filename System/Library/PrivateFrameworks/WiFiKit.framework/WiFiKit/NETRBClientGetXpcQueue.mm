@interface NETRBClientGetXpcQueue
@end

@implementation NETRBClientGetXpcQueue

dispatch_queue_t ____NETRBClientGetXpcQueue_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x31uLL, "com.apple.framework.netrb.xpc.%p", &__netrbClientTypeID);
  __str[48] = 0;
  result = dispatch_queue_create(__str, 0);
  __NETRBClientGetXpcQueue___netrbXpcQueue = result;
  if (!result)
  {
    v1 = __error();
    v2 = strerror(*v1);
    return NETRBErrorLog("creating client XPC queue failed %s", v2);
  }

  return result;
}

@end