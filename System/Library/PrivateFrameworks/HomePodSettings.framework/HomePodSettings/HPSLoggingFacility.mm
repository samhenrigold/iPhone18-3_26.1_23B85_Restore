@interface HPSLoggingFacility
@end

@implementation HPSLoggingFacility

uint64_t ___HPSLoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.HPSettings", "log");
  v1 = _HPSLoggingFacility_oslog;
  _HPSLoggingFacility_oslog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end