@interface TUIKeyplaneViewLogger
@end

@implementation TUIKeyplaneViewLogger

uint64_t ___TUIKeyplaneViewLogger_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "DynamicKeyplaneView");
  v1 = _TUIKeyplaneViewLogger_log;
  _TUIKeyplaneViewLogger_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end