@interface SOSNewtonManager
+ (void)checkEligibilityForAutoEnableWithHealthStore:(id)store completion:(id)completion;
+ (void)newtonEligibilityWithHealthStore:(id)store completion:(id)completion;
+ (void)newtonEligibilityWithHealthStore:(id)store deviceSupportsWorkoutsOnly:(BOOL)only completion:(id)completion;
@end

@implementation SOSNewtonManager

+ (void)newtonEligibilityWithHealthStore:(id)store completion:(id)completion
{
  completionCopy = completion;
  storeCopy = store;
  [self newtonEligibilityWithHealthStore:storeCopy deviceSupportsWorkoutsOnly:+[SOSUtilities activeDeviceSupportsNewtonWorkoutsOnly](SOSUtilities completion:{"activeDeviceSupportsNewtonWorkoutsOnly"), completionCopy}];
}

+ (void)newtonEligibilityWithHealthStore:(id)store deviceSupportsWorkoutsOnly:(BOOL)only completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  completionCopy = completion;
  v9 = storeCopy;
  v10 = v9;
  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    [v10 setDebugIdentifier:@"com.apple.sos"];
    [v10 resume];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__SOSNewtonManager_newtonEligibilityWithHealthStore_deviceSupportsWorkoutsOnly_completion___block_invoke;
  v23[3] = &unk_279B53F68;
  onlyCopy = only;
  v11 = completionCopy;
  v24 = v11;
  v12 = MEMORY[0x266735F90](v23);
  v22 = 0;
  v13 = [v10 dateOfBirthComponentsWithError:&v22];
  v14 = v22;
  v15 = v14;
  if (!v13 || v14)
  {
    v19 = sos_default_log(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_264323000, v19, OS_LOG_TYPE_DEFAULT, "Could not retrieve age from Health record; error: %@. Querying medical ID.", buf, 0xCu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__SOSNewtonManager_newtonEligibilityWithHealthStore_deviceSupportsWorkoutsOnly_completion___block_invoke_302;
    v20[3] = &unk_279B53F90;
    v21 = v12;
    [v10 fetchMedicalIDDataWithCompletion:v20];
    v17 = v21;
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CBEA80]);
    v17 = [v16 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v18 = [v17 dateFromComponents:v13];
    (v12)[2](v12, v18);
  }
}

void __91__SOSNewtonManager_newtonEligibilityWithHealthStore_deviceSupportsWorkoutsOnly_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = objc_alloc(MEMORY[0x277CBEA80]);
    v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v6 components:28 fromDate:v4 toDate:v7 options:0];

    if ([v8 year] >= 18)
    {
      if ([v8 year] <= 54)
      {
        if (*(a1 + 40) == 1)
        {
          if ([v8 year] <= 17)
          {
            v9 = 1;
          }

          else
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = sos_default_log(v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "Newton Eligibility based on age: %lu", &v11, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __91__SOSNewtonManager_newtonEligibilityWithHealthStore_deviceSupportsWorkoutsOnly_completion___block_invoke_302(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 gmtBirthdate];
  (*(v2 + 16))(v2, v3);
}

+ (void)checkEligibilityForAutoEnableWithHealthStore:(id)store completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SOSNewtonManager_checkEligibilityForAutoEnableWithHealthStore_completion___block_invoke;
  v8[3] = &unk_279B53FB8;
  v9 = completionCopy;
  v7 = completionCopy;
  [self newtonEligibilityWithHealthStore:store completion:v8];
}

@end