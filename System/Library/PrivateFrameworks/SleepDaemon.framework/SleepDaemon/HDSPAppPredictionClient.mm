@interface HDSPAppPredictionClient
- (HDSPAppPredictionClient)initWithSleepFocusModeBridge:(id)bridge;
- (void)createSuggestedHomeScreenPageWithCompletion:(id)completion;
@end

@implementation HDSPAppPredictionClient

- (HDSPAppPredictionClient)initWithSleepFocusModeBridge:(id)bridge
{
  bridgeCopy = bridge;
  v10.receiver = self;
  v10.super_class = HDSPAppPredictionClient;
  v6 = [(HDSPAppPredictionClient *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sleepFocusModeBridge, bridge);
    v8 = v7;
  }

  return v7;
}

- (void)createSuggestedHomeScreenPageWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating suggested home screen page", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CEB8B8]);
  [v7 setPageType:4];
  v8 = objc_alloc_init(MEMORY[0x277CEB8C8]);
  v9 = objc_alloc_init(MEMORY[0x277CEB8B0]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HDSPAppPredictionClient_createSuggestedHomeScreenPageWithCompletion___block_invoke;
  v11[3] = &unk_279C7CEA0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 suggestedPagesWithFilter:v7 layoutOptions:v8 completionHandler:v11];
}

void __71__HDSPAppPredictionClient_createSuggestedHomeScreenPageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (![v5 count])
    {
      v7 = HKSPLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = objc_opt_class();
        v12 = v34;
        _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] no suggested pages found", buf, 0xCu);
      }

      goto LABEL_4;
    }

    v8 = *(*(a1 + 32) + 8);
    v31 = 0;
    v9 = [v8 sleepFocusConfiguration:&v31];
    v10 = v31;
    if (v10)
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        *buf = 138543618;
        v34 = v29;
        v35 = 2114;
        v36 = v10;
        v30 = v29;
        _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] failed to get sleep focus mode: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v11 = HKSPLogForCategory();
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v13)
        {
          v14 = objc_opt_class();
          v15 = v14;
          v16 = [v5 count];
          *buf = 138543618;
          v34 = v14;
          v35 = 2048;
          v36 = v16;
          _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] found %ld pages, creating home screen request", buf, 0x16u);
        }

        v17 = objc_alloc(MEMORY[0x277D66A70]);
        v18 = [v9 uuid];
        v19 = [v18 UUIDString];
        v20 = [v17 initWithFocusModeIdentifier:v19];

        v21 = [v5 firstObject];
        v32 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
        [v20 setProactivePages:v22];

        [v20 setAppendExistingPages:1];
        [MEMORY[0x277D66A80] addSuggestedHomeScreenPageWithRequest:v20];
        v23 = HKSPLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = objc_opt_class();
          *buf = 138543362;
          v34 = v24;
          v25 = v24;
          _os_log_impl(&dword_269B11000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] submitted home screen request", buf, 0xCu);
        }

        (*(*(a1 + 40) + 16))();
        goto LABEL_19;
      }

      if (v13)
      {
        v27 = objc_opt_class();
        *buf = 138543362;
        v34 = v27;
        v28 = v27;
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] no sleep focus mode found", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = v6;
    v26 = v34;
    _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to get suggested pages: %{public}@", buf, 0x16u);
  }

LABEL_4:

  (*(*(a1 + 40) + 16))();
LABEL_20:
}

@end