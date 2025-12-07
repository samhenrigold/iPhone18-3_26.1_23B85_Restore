@interface HKSleepHealthStore
@end

@implementation HKSleepHealthStore

void __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke(id *a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v58 = objc_opt_class();
    v3 = v58;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] saving sessions", buf, 0xCu);
  }

  v4 = [a1[4] healthStore];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    *buf = 138543362;
    v58 = v6;
    v7 = v6;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] checking auth status", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v9 = [v4 authorizationStatusForType:v8];

  if (v9 == 1)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      *buf = 138543362;
      v58 = v38;
      v39 = v38;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] doesn't have write access for HKCategoryTypeIdentifierSleepAnalysis", buf, 0xCu);
    }

    v11 = a1[5];
    v12 = [MEMORY[0x277CCA9B8] na_genericError];
    [v11 finishWithError:v12];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = a1[6];
    v14 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v53;
      v40 = *v53;
      v41 = a1;
      do
      {
        v17 = 0;
        v42 = v15;
        do
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v44 = v17;
          v18 = *(*(&v52 + 1) + 8 * v17);
          v19 = HKSPLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = objc_opt_class();
            *buf = 138543618;
            v58 = v20;
            v59 = 2112;
            v60 = v18;
            v21 = v20;
            _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing session: %@", buf, 0x16u);
          }

          v22 = [v18 interval];

          v23 = HKSPLogForCategory();
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v25 = objc_opt_class();
              *buf = 138543362;
              v58 = v25;
              v26 = v25;
              _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating HealthKit samples", buf, 0xCu);
            }

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v24 = [v18 sleepIntervals];
            v27 = [v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v49;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v49 != v29)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v31 = *(*(&v48 + 1) + 8 * i);
                  v32 = MEMORY[0x277CCD0B0];
                  v33 = [v18 metadata];
                  v34 = [v32 hdsp_categorySampleForSleepSessionInterval:v31 metadata:v33];

                  [v13 na_safeAddObject:v34];
                }

                v28 = [v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
              }

              while (v28);
              v16 = v40;
              a1 = v41;
              v15 = v42;
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            *buf = 138543618;
            v58 = v35;
            v59 = 2112;
            v60 = v18;
            v36 = v35;
            _os_log_error_impl(&dword_269B11000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] skipping session due to missing bedtime or wake time: %@", buf, 0x16u);
          }

          v17 = v44 + 1;
        }

        while (v44 + 1 != v15);
        v15 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v15);
    }

    v37 = a1[4];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke_296;
    v45[3] = &unk_279C7C850;
    v45[4] = v37;
    v46 = v13;
    v47 = a1[5];
    v12 = v13;
    [v37 saveSleepTrackingSamples:v12 completion:v45];
  }
}

void __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke_296(void *a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPLogForCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = a1[5];
      v10 = v8;
      v14 = 138543618;
      v15 = v8;
      v16 = 2048;
      v17 = [v9 count];
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] finished saving %lu samples", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v5;
    v13 = v15;
    _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] saving samples to HealthKit failed with error: %{public}@", &v14, 0x16u);
  }

  v11 = a1[6];
  v12 = NAEmptyResult();
  [v11 finishWithResult:v12 error:v5];
}

@end