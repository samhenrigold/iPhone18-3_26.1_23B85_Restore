@interface ICQBannerLogSystem
@end

@implementation ICQBannerLogSystem

uint64_t ___ICQBannerLogSystem_block_invoke()
{
  v0 = os_log_create("com.apple.iCloudQuota", "banner");
  v1 = _ICQBannerLogSystem_log;
  _ICQBannerLogSystem_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end