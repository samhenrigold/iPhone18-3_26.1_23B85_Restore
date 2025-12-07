@interface AVLog
@end

@implementation AVLog

uint64_t ___AVLog_block_invoke()
{
  v0 = os_log_create("com.apple.avkit", "AVKit");
  v1 = _log;
  _log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end