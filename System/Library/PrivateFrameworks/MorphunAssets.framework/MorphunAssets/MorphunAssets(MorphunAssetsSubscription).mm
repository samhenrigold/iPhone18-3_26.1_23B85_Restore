@interface MorphunAssets(MorphunAssetsSubscription)
- (void)readSubscriptionView;
@end

@implementation MorphunAssets(MorphunAssetsSubscription)

+ (void)initForSiriX:()MorphunAssetsSubscription .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "+[MorphunAssets(MorphunAssetsSubscription) initForSiriX:]";
  _os_log_error_impl(&dword_25AACA000, log, OS_LOG_TYPE_ERROR, "%s A user Siri locale was nil!", buf, 0xCu);
}

- (void)readSubscriptionView
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25AACA000, v0, v1, "%s A nil dictionary was returned from the NSUserDefaults database (key = %{public}@).", v2, v3, v4, v5, v6);
}

- (void)downloadLocaleIfNeeded:()MorphunAssetsSubscription withCompletion:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[MorphunAssets(MorphunAssetsSubscription) downloadLocaleIfNeeded:withCompletion:]";
  _os_log_error_impl(&dword_25AACA000, log, OS_LOG_TYPE_ERROR, "%s Could not get remote version from metadata. Defaulting to download needed.", &v1, 0xCu);
}

- (void)removeLanguageIfNeeded:()MorphunAssetsSubscription .cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25AACA000, v0, v1, "%s %{public}@", v2, v3, v4, v5, v6);
}

- (void)isSubscribedToLocale:()MorphunAssetsSubscription .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 subscriptionProcessKey];
  v6[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v7 = v5;
  _os_log_error_impl(&dword_25AACA000, v3, OS_LOG_TYPE_ERROR, "%s No subscription array found for process key %{public}@.", v6, 0x16u);
}

@end