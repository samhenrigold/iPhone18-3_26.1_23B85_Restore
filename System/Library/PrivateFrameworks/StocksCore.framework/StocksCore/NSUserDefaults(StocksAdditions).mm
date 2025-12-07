@interface NSUserDefaults(StocksAdditions)
+ (id)sc_userDefaultsWithSuiteName:()StocksAdditions backupDisabled:;
@end

@implementation NSUserDefaults(StocksAdditions)

+ (id)sc_userDefaultsWithSuiteName:()StocksAdditions backupDisabled:
{
  v4 = MEMORY[0x1E695E000];
  v5 = a3;
  v6 = [[v4 alloc] initWithSuiteName:v5];
  _CFPreferencesSetBackupDisabled();

  return v6;
}

@end