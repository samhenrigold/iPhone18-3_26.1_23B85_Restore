@interface HMMediaProfile
@end

@implementation HMMediaProfile

uint64_t __66__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_isReachable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isReachable];
  v4 = [v2 hf_fakeUnreachableError];

  return (v4 ^ 1) & v3;
}

uint64_t __76__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_isAppleMusicReachable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteLoginHandler];
  v3 = [v2 isControllable];

  return v3;
}

uint64_t __83__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_isAccessorySettingsReachable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 settings];
  v3 = [v2 isControllable];

  return v3;
}

void __87__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke_2;
  v6[3] = &unk_277DFEA30;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 fetchSupportedMultiUserLanguageCodes:v6];
}

void __87__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(*(a1 + 48));
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages [%@]", &v17, 0x16u);
    }

    v9 = *(a1 + 32);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 40);
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "%@:%@ Supported voice recognition languages %@", &v17, 0x20u);
    }

    v10 = [*(a1 + 40) hf_backingAccessory];
    v11 = [v10 hf_supportsMultiUserLanguage:v5];

    v12 = *(a1 + 32);
    if ((v11 & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:45];
      [v12 finishWithError:v13];

      goto LABEL_10;
    }

    v9 = v12;
  }

  [v9 finishWithNoResult];
LABEL_10:
}

void __106__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[HFAppleMusicHomeAccountManager sharedInstance];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = objc_msgSend_home(v5);
  v7 = [v6 uniqueIdentifier];
  v8 = [v7 UUIDString];
  v9 = [v4 mediaAccountForHomeIdentifier:v8];

  if (v9)
  {
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [*(a1 + 32) hf_appleMusicCurrentLoggedInAccount];
    v14 = [v13 ams_altDSID];
    v15 = [v12 ams_altDSID];
    v16 = [v14 isEqualToString:v15];

    v17 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = NSStringFromSelector(*(a1 + 40));
      v20 = [*(a1 + 32) hf_appleMusicCurrentLoggedInAccount];
      *buf = 138413314;
      v33 = v18;
      v34 = 2112;
      v35 = v19;
      v36 = 1024;
      v37 = v16 ^ 1;
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = v20;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Accounts are split/mismatched = [%d], homeMediaAccount = [%@], HomePod Media Account = [%@] ", buf, 0x30u);
    }

    if (v16)
    {
      [v3 finishWithNoResult];
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] hf_errorWithCode:56];
      [v3 finishWithError:v27];
    }
  }

  else
  {
    v21 = +[HFAppleMusicHomeAccountManager sharedInstance];
    v22 = +[HFHomeKitDispatcher sharedDispatcher];
    v23 = objc_msgSend_home(v22);
    v12 = [v21 executeHomeMediaAccountFetchForHome:v23];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __106__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount__block_invoke_2;
    v28[3] = &unk_277DFEA80;
    v31 = *(a1 + 40);
    v24 = v3;
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    v26 = [v12 addCompletionBlock:v28];
  }
}

void __106__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(5uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(*(a1 + 48));
      v30 = 138412546;
      v31 = v29;
      v32 = 2112;
      v33 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@ Error fetching mediaAccount for HomePod [%@]", &v30, 0x16u);
    }

    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = NSStringFromSelector(*(a1 + 48));
      v30 = 138412802;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      *v35 = v5;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Fetched Media Account [%@]", &v30, 0x20u);
    }

    objc_opt_class();
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v12 = objc_msgSend_home(v11);
    v13 = [v12 uniqueIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v5 objectForKeyedSubscript:v14];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [*(a1 + 40) hf_appleMusicCurrentLoggedInAccount];
    v19 = v18;
    v20 = 0;
    if (v18 && v17)
    {
      v21 = [v18 ams_altDSID];
      v22 = [v17 ams_altDSID];
      v20 = [v21 isEqualToString:v22] ^ 1;
    }

    v23 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 40);
      v25 = NSStringFromSelector(*(a1 + 48));
      v26 = [*(a1 + 40) hf_appleMusicCurrentLoggedInAccount];
      v30 = 138413314;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 1024;
      *v35 = v20;
      *&v35[4] = 2112;
      *&v35[6] = v17;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@ Accounts are split/mismatched = [%d], homeMediaAccount = [%@], HomePod Media Account = [%@] ", &v30, 0x30u);
    }

    v27 = *(a1 + 32);
    if (v20)
    {
      v28 = [MEMORY[0x277CCA9B8] hf_errorWithCode:56];
      [v27 finishWithError:v28];
    }

    else
    {
      [v27 finishWithNoResult];
    }
  }
}

void __107__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[HFAppleMusicHomeAccountManager sharedInstance];
  v5 = [*(a1 + 32) hf_home];
  v6 = [v5 uniqueIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v4 mediaAccountForHomeIdentifier:v7];

  if (v8)
  {
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [*(a1 + 32) hf_appleMusicCurrentLoggedInAccount];
    v13 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = NSStringFromSelector(*(a1 + 40));
      *buf = 138413314;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      v30 = 1024;
      v31 = (v11 | v12) == 0;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ Accounts are not present = [%d], homeMediaAccount = [%@], HomePod Media Account = [%@] ", buf, 0x30u);
    }

    if (v11 | v12)
    {
      [v3 finishWithNoResult];
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:56];
      [v3 finishWithError:v16];

      v12 = 0;
      v11 = 0;
    }
  }

  else
  {
    v17 = +[HFAppleMusicHomeAccountManager sharedInstance];
    v18 = [*(a1 + 32) hf_home];
    v11 = [v17 executeHomeMediaAccountFetchForHome:v18];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __107__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent__block_invoke_2;
    v22[3] = &unk_277DFEA80;
    v25 = *(a1 + 40);
    v19 = v3;
    v20 = *(a1 + 32);
    v23 = v19;
    v24 = v20;
    v21 = [v11 addCompletionBlock:v22];
    v12 = v23;
  }
}

void __107__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(5uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(*(a1 + 48));
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      v28 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@ Error fetching mediaAccount for HomePod [%@]", &v25, 0x16u);
    }

    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = NSStringFromSelector(*(a1 + 48));
      v25 = 138412802;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      *v30 = v5;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Fetched Media Account [%@]", &v25, 0x20u);
    }

    objc_opt_class();
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v12 = objc_msgSend_home(v11);
    v13 = [v12 uniqueIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v5 objectForKeyedSubscript:v14];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [*(a1 + 40) hf_appleMusicCurrentLoggedInAccount];
    v19 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v21 = NSStringFromSelector(*(a1 + 48));
      v25 = 138413314;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 1024;
      *v30 = (v17 | v18) == 0;
      *&v30[4] = 2112;
      *&v30[6] = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@ Accounts are not present = [%d], homeMediaAccount = [%@], HomePod Media Account = [%@] ", &v25, 0x30u);
    }

    v22 = *(a1 + 32);
    if (v17 | v18)
    {
      [v22 finishWithNoResult];
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] hf_errorWithCode:56];
      [v22 finishWithError:v23];
    }
  }
}

void __70__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_analyticsClient__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "OSASyncProxyClient error: %@", &v5, 0xCu);
  }
}

void __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_2;
  block[3] = &unk_277DF32A8;
  v4 = a1[4];
  v5 = a1[6];
  block[4] = a1[5];
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_analyticsClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_3;
  v4[3] = &unk_277DF70B0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 request:v3 logListWithOptions:MEMORY[0x277CBEC10] onComplete:v4];
}

void __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_5;
  block[3] = &unk_277DF4460;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 isFinished];

    if ((v4 & 1) == 0)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v5 = [MEMORY[0x277CCA9B8] na_errorWithCode:1];
      [v6 finishWithError:v5];
    }
  }
}

void __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_2;
  v7[3] = &unk_277DF3398;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v5;
  v9 = *(a1 + 56);
  v10 = v3;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_analyticsClient];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_3;
  v5[3] = &unk_277DF70B0;
  v6 = *(a1 + 56);
  [v2 request:v3 transferLog:v4 withOptions:MEMORY[0x277CBEC10] onComplete:v5];
}

void __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_5;
  v3[3] = &unk_277DF5690;
  objc_copyWeak(&v4, (a1 + 40));
  objc_copyWeak(&v5, (a1 + 48));
  dispatch_async(v2, v3);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = HFLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 accessory];
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Timed out fetching logs for accessory: %@", &v10, 0xCu);
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 isFinished];

    if ((v5 & 1) == 0)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [MEMORY[0x277CCA9B8] na_errorWithCode:1];
      [v6 finishWithError:v7];
    }
  }
}

@end