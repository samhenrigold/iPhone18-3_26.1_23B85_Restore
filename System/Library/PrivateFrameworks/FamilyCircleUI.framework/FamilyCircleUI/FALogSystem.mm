@interface FALogSystem
@end

@implementation FALogSystem

uint64_t ___FALogSystem_block_invoke()
{
  v0 = os_log_create("com.apple.family", "familycircle");
  v1 = _FALogSystem_log;
  _FALogSystem_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end