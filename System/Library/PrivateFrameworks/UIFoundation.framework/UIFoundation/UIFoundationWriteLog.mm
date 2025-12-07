@interface UIFoundationWriteLog
@end

@implementation UIFoundationWriteLog

uint64_t ____UIFoundationWriteLog_block_invoke(uint64_t a1)
{
  v1 = os_log_create("com.apple.UIFoundation", *(a1 + 32));
  v2 = __UIFoundationWriteLog_uifoundationLog;
  __UIFoundationWriteLog_uifoundationLog = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end