@interface HandleIncomingMessage
@end

@implementation HandleIncomingMessage

void ___HandleIncomingMessage_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 32) + 16))();
  xpc_release(*(a1 + 40));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

@end