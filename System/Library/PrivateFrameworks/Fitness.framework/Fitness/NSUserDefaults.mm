@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __48__NSUserDefaults_FIBackupSupport__fi_npsManager__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v1 = fi_npsManager_npsManager;
  fi_npsManager_npsManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end