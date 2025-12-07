@interface MorphunAssets(MorphunAssetsPrivate)
@end

@implementation MorphunAssets(MorphunAssetsPrivate)

+ (void)validateLocale:()MorphunAssetsPrivate .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[MorphunAssets(MorphunAssetsPrivate) validateLocale:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_25AACA000, a2, OS_LOG_TYPE_ERROR, "%s %{public}@", &v2, 0x16u);
}

+ (void)validateLocale:()MorphunAssetsPrivate .cold.2(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "+[MorphunAssets(MorphunAssetsPrivate) validateLocale:]";
  v3 = 2114;
  v4 = @"Locale passed in was nil!";
  _os_log_error_impl(&dword_25AACA000, log, OS_LOG_TYPE_ERROR, "%s %{public}@", &v1, 0x16u);
}

@end