@interface CPS
@end

@implementation CPS

uint64_t __CPS_LOG_CHANNEL_PREFIXClipUIServices_block_invoke()
{
  v0 = os_log_create("com.apple.ClipUIServices", "ClipUIServices");
  v1 = CPS_LOG_CHANNEL_PREFIXClipUIServices_log;
  CPS_LOG_CHANNEL_PREFIXClipUIServices_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end