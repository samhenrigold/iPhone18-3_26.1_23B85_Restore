@interface FASignpostLogSystem
@end

@implementation FASignpostLogSystem

uint64_t ___FASignpostLogSystem_block_invoke()
{
  v0 = os_log_create("com.apple.family", "signpost");
  v1 = _FASignpostLogSystem_log;
  _FASignpostLogSystem_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end