@interface ICQGetLogSystem
@end

@implementation ICQGetLogSystem

uint64_t ___ICQGetLogSystem_block_invoke()
{
  v0 = os_log_create("com.apple.iCloudQuota", "core");
  v1 = _ICQGetLogSystem_log;
  _ICQGetLogSystem_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end