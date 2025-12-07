@interface ICQStoragePlanRecommendation
+ (id)_requestQueue;
- (ICQStoragePlanRecommendation)initWithAccount:(id)account;
- (void)calculateExtraQuotaNeededToSyncIsAccountFull:(BOOL)full completion:(id)completion;
@end

@implementation ICQStoragePlanRecommendation

- (ICQStoragePlanRecommendation)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = ICQStoragePlanRecommendation;
  v6 = [(ICQStoragePlanRecommendation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

+ (id)_requestQueue
{
  if (_requestQueue_onceToken != -1)
  {
    +[ICQStoragePlanRecommendation _requestQueue];
  }

  v3 = _requestQueue_requestQueue;

  return v3;
}

void __45__ICQStoragePlanRecommendation__requestQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("quota.plan.recommendation.request", v2);
  v1 = _requestQueue_requestQueue;
  _requestQueue_requestQueue = v0;
}

- (void)calculateExtraQuotaNeededToSyncIsAccountFull:(BOOL)full completion:(id)completion
{
  completionCopy = completion;
  _requestQueue = [objc_opt_class() _requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke;
  block[3] = &unk_27A6519E8;
  block[4] = self;
  v10 = completionCopy;
  fullCopy = full;
  v8 = completionCopy;
  dispatch_async(_requestQueue, block);
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke(uint64_t a1)
{
  v2 = +[ICQStoragePlanRecommendationCache sharedInstance];
  v3 = [v2 extraQuotaNeeded];

  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Returning cached storage recommendation data.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Cache does not exist or expired. Reaching out to daemon to calculate and return estimated total quota usage after turning on all apps.", buf, 2u);
    }

    v7 = _ICQSignpostLogSystem(v6);
    v8 = objc_opt_new();
    v9 = _ICQSignpostCreateWithObject(v7, v8);
    v11 = v10;

    v13 = _ICQSignpostLogSystem(v12);
    v14 = v13;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "TotalQuotaUsageAfterTurnOnSync", " enableTelemetry=YES ", buf, 2u);
    }

    v16 = _ICQSignpostLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_cold_1(v9, v16);
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v17 = getINDaemonConnectionClass_softClass;
    v40 = getINDaemonConnectionClass_softClass;
    if (!getINDaemonConnectionClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __getINDaemonConnectionClass_block_invoke;
      v35 = &unk_27A6517A8;
      v36 = &v37;
      __getINDaemonConnectionClass_block_invoke(buf);
      v17 = v38[3];
    }

    v18 = v17;
    _Block_object_dispose(&v37, 8);
    v19 = objc_alloc_init(v17);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3;
    v28[3] = &unk_27A651998;
    v30 = v9;
    v31 = v11;
    v29 = *(a1 + 40);
    v20 = [v19 synchronousDaemonWithErrorHandler:v28];
    v21 = [*(a1 + 32) account];
    v22 = [v21 aa_altDSID];
    v23 = *(a1 + 48);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5;
    v24[3] = &unk_27A6519C0;
    v26 = v9;
    v27 = v11;
    v25 = *(a1 + 40);
    [v20 calculateExtraQuotaNeededToSyncForAccountWithID:v22 isAccountFull:v23 completion:v24];
  }
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_1(v4);
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "TotalQuotaUsageAfterTurnOnSync", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_2();
  }

  (*(a1[4] + 16))();
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[ICQStoragePlanRecommendation calculateExtraQuotaNeededToSyncIsAccountFull:completion:]_block_invoke";
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "%s request completed.", &v17, 0xCu);
  }

  if (v6)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5_cold_1(v6, v8);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v5)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Caching storage recommendation result with expiry: %@", &v17, 0xCu);
    }

    v10 = +[ICQStoragePlanRecommendationCache sharedInstance];
    [v10 setExtraQuotaNeeded:v5 expiry:v8];

    goto LABEL_10;
  }

LABEL_11:
  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v12 = _ICQSignpostLogSystem(Nanoseconds);
  v13 = v12;
  v14 = a1[5];
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v13, OS_SIGNPOST_INTERVAL_END, v14, "TotalQuotaUsageAfterTurnOnSync", "", &v17, 2u);
  }

  v16 = _ICQSignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_2();
  }

  (*(a1[4] + 16))();
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_cold_1(unsigned __int16 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "SIGNPOST BEGIN [id: %hu]: TotalQuotaUsageAfterTurnOnSync  enableTelemetry=YES ", v2, 8u);
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_275572000, v0, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) TotalQuotaUsageAfterTurnOnSync ", v1, 0x12u);
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch total quota usage with error: %@", &v2, 0xCu);
}

@end