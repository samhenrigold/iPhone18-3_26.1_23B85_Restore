@interface ICQDaemonPlanRecommendation
+ (BOOL)isBackupEnabledForAccount:(id)account;
+ (id)accountForID:(id)d;
+ (int64_t)calculateExtraQuotaNeededToSyncWithBackupSize:(int64_t)size;
+ (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)d isAccountFull:(BOOL)full completion:(id)completion;
+ (void)getLocalPhotoLibrarySizeWithCompletion:(id)completion;
@end

@implementation ICQDaemonPlanRecommendation

+ (void)calculateExtraQuotaNeededToSyncForAccountWithID:(id)d isAccountFull:(BOOL)full completion:(id)completion
{
  completionCopy = completion;
  v8 = [self accountForID:d];
  fullBackupSize = [self fullBackupSize];
  integerValue = [fullBackupSize integerValue];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__ICQDaemonPlanRecommendation_calculateExtraQuotaNeededToSyncForAccountWithID_isAccountFull_completion___block_invoke;
  v12[3] = &unk_27A652968;
  v14 = integerValue;
  selfCopy = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [_ICQHelperFunctions remoteBackupSizeForAccount:v8 timeoutInSeconds:v12 completion:2.0];
}

void __104__ICQDaemonPlanRecommendation_calculateExtraQuotaNeededToSyncForAccountWithID_isAccountFull_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v4 - [v3 integerValue];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v3 integerValue];
    v11 = *(a1 + 40);
    v12 = 134218496;
    v13 = v10;
    v14 = 2048;
    v15 = v11;
    v16 = 2048;
    v17 = v5;
    _os_log_debug_impl(&dword_275572000, v6, OS_LOG_TYPE_DEBUG, "Found remote backup size %ld, local storage size: %ld, difference: %ld", &v12, 0x20u);
  }

  v7 = [*(a1 + 48) calculateExtraQuotaNeededToSyncWithBackupSize:v5];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  (*(v8 + 16))(v8, v9, 0);
}

+ (int64_t)calculateExtraQuotaNeededToSyncWithBackupSize:(int64_t)size
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = size & ~(size >> 63);
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Returning new total usage value: %ld", &v6, 0xCu);
  }

  return v3;
}

+ (id)accountForID:(id)d
{
  v3 = MEMORY[0x277CB8F48];
  dCopy = d;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore aa_appleAccountWithAltDSID:dCopy];

  return v6;
}

+ (BOOL)isBackupEnabledForAccount:(id)account
{
  v3 = MEMORY[0x277CB8F48];
  accountCopy = account;
  defaultStore = [v3 defaultStore];
  v6 = [_ICQHelperFunctions isBackupEnabledForAccount:accountCopy accountStore:defaultStore];

  return v6;
}

+ (void)getLocalPhotoLibrarySizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__ICQDaemonPlanRecommendation_getLocalPhotoLibrarySizeWithCompletion___block_invoke;
  v5[3] = &unk_27A652990;
  v6 = completionCopy;
  v4 = completionCopy;
  [_ICQHelperFunctions getOriginalPhotosSizeWithCompletion:v5];
}

@end