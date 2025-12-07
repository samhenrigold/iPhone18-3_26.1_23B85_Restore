@interface CNDInMemoryDonationPreferences
+ (id)observableWithPreferences:(id)preferences notificationCenter:(id)center schedulerProvider:(id)provider;
@end

@implementation CNDInMemoryDonationPreferences

+ (id)observableWithPreferences:(id)preferences notificationCenter:(id)center schedulerProvider:(id)provider
{
  v21[1] = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  v8 = MEMORY[0x277CFBE60];
  providerCopy = provider;
  v10 = [v8 observableOnNotificationCenter:center withName:@"CNDDonationsEnabledPreferencesKey" object:0];
  null = [MEMORY[0x277CBEB68] null];
  v21[0] = null;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  backgroundScheduler = [providerCopy backgroundScheduler];

  v14 = [v10 startWith:v12 scheduler:backgroundScheduler];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__CNDInMemoryDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke;
  v19[3] = &unk_278569FF8;
  v20 = preferencesCopy;
  v15 = preferencesCopy;
  v16 = [v14 map:v19];
  distinctUntilChanged = [v16 distinctUntilChanged];

  return distinctUntilChanged;
}

uint64_t __97__CNDInMemoryDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) isDonationsEnabled];

  return [v1 numberWithBool:v2];
}

@end