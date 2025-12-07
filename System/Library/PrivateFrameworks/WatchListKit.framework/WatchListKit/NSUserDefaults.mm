@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __48__NSUserDefaults_WLKAdditions__wlk_userDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v1 = wlk_userDefaults___wlkDefaults;
  wlk_userDefaults___wlkDefaults = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end