id __outputDeviceConfigurationOptions()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB8660];
  v3[0] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

void ____updateConfiguration_block_invoke_223(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = objc_autoreleasePoolPush();
  v13 = WeakRetained;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v8)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully updated configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    __stopConfigurationRetryTimer(v13);
    v17 = 0;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v30 = v9;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to update configuration with error: %@, cancellationReason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
    __startConfigurationRetryTimer(v13);
  }

  v19 = *(a1 + 40);
  if (!v19)
  {
LABEL_11:
    if (v8)
    {
      v21 = v13;
      v22 = v8;
      if (v21)
      {
        v23 = v22;
        v24 = [v21 workQueue];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = ____updateWithCurrentConfiguration_block_invoke;
        v30 = &unk_2797359B0;
        v31 = v21;
        v32 = v23;
        dispatch_async(v24, buf);
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v13)
  {
    v20 = [v13 workQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ____updateConfiguration_block_invoke_224;
    v26[3] = &unk_279735738;
    v28 = *(a1 + 40);
    v27 = v17;
    dispatch_async(v20, v26);

    goto LABEL_11;
  }

  (*(v19 + 16))(v19, v17);
  if (v8)
  {
    v25 = v8;
LABEL_16:
  }

LABEL_17:
}

void ____updateWithCurrentConfiguration_block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v42 = 138543618;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating with configuration: %@", &v42, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) devicePassword];
  if (![v7 length])
  {

    v7 = 0;
  }

  v8 = [*(a1 + 32) password];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Caching updated password", &v42, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = v14;
      v16 = v7;
      v17 = [v15 transactionWithObjectChangeType:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      [v19 setPassword:v16];
      v20 = [v15 home];

      v21 = [v20 backingStore];
      v22 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v23 = [v21 transaction:@"Update Password" options:v22];

      [v23 add:v19 withMessage:0];
      [v23 run];
    }
  }

  v24 = [*(a1 + 40) onlyAllowsConnectionsFromPeersInHomeGroup];
  v25 = [*(a1 + 32) minimumUserPriviledge];
  if (v25 >= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  if (v26 != v24)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Caching updated user minimum privilege", &v42, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = *(a1 + 32);
    if (v31)
    {
      v32 = v24;
      v33 = v31;
      v34 = [v33 transactionWithObjectChangeType:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;

      v37 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
      [v36 setMinimumUserPriviledge:v37];

      v38 = [v33 home];

      v39 = [v38 backingStore];
      v40 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v41 = [v39 transaction:@"Update Minimum User Privilege" options:v40];

      [v41 add:v36 withMessage:0];
      [v41 run];
    }
  }
}

void ____startConfigurationRetryTimer_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configurationRetryTimer];
  if (!v2)
  {
    v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v4 = [v3 preferenceForKey:@"airPlayConfigurationRetryMinimum"];

    v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v6 = [v5 preferenceForKey:@"airPlayConfigurationRetryMaximum"];

    v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [v7 preferenceForKey:@"airPlayConfigurationRetryFactor"];

    v9 = objc_alloc(MEMORY[0x277D0F7B0]);
    v10 = [v4 numberValue];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v6 numberValue];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v8 numberValue];
    obja = [v9 initWithMinimumTimeInterval:objc_msgSend(v16 maximumTimeInterval:"integerValue") exponentialFactor:0 options:{v12, v15}];

    [obja setDelegate:*(a1 + 32)];
    objc_storeStrong((*(a1 + 32) + 520), obja);

    v2 = obja;
  }

  obj = v2;
  [v2 resume];
}

void sub_2537A35F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__90437(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537A39FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A4090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A4B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A5424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A6084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____updatePassword_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      v10 = "%{public}@Failed to update password with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    v10 = "%{public}@Successfully updated password";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
}

void sub_2537A64CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____updateMinimumUserPrivilege_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      v10 = "%{public}@Failed to minimum user privilege with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    v10 = "%{public}@Successfully updated minimum user privilege";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
}

void sub_2537A6A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____updateName_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      v10 = "%{public}@Failed to update name with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    v10 = "%{public}@Successfully updated name";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
}

void sub_2537A73A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDCameraRecordingMediaContainerTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingMediaContainerType %ld", a1];
  }

  else
  {
    v2 = @"HMDCameraRecordingMediaContainerTypeFragmentedMP4";
  }

  return v2;
}

id HMDCameraRecordingEventTriggerOptionsAsString(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"HMDCameraRecordingEventTriggerOptionsMotion"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"HMDCameraRecordingEventTriggerOptionsDoorbell"];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"[%@]", v5];

  return v6;
}

void sub_2537ABB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91032(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id mapButtonConfigurationForTVReceiver(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 type] - 1;
        if (v9 <= 0xB && ((0xCFFu >> v9) & 1) != 0)
        {
          v10 = -[THAButton initWithType:identifier:]([THAButton alloc], "initWithType:identifier:", qword_253D4BDC8[v9], [v8 identifier]);
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = objc_msgSend_copy(v2);

  return v11;
}

void sub_2537B4130(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537B41BC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537B42C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id __findUserWithUUID(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithUUIDString:v5];

  v7 = [v4 userWithUUID:v6];

  return v7;
}

void sub_2537BA564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537BB68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isNameValidWithVoiceShortcut(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  if (v3 == 6)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@siriactiond does not run on HomePod", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v7 = 1;
  }

  else
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2020000000;
    v18 = 1;
    v9 = [MEMORY[0x277D79D98] standardClient];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __isNameValidWithVoiceShortcut_block_invoke;
    v13[3] = &unk_279729E28;
    p_buf = &buf;
    v10 = v8;
    v14 = v10;
    [v9 getVoiceShortcutWithPhrase:v1 completion:v13];

    v11 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v10, v11);
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  return v7 & 1;
}

void sub_2537BD394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __isNameValidWithVoiceShortcut_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

HMDCUWiFiDeviceWrapper *__wrapCUWiFiDevice(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [HMDCUWiFiDeviceWrapper alloc];
  v6 = v4[1];

  v7 = [(HMDCUWiFiDeviceWrapper *)v5 initWithCUWiFiDevice:v3 dispatchQueue:v6];

  return v7;
}

void sub_2537BFAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92759(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537C0FCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 152));
  _Unwind_Resume(a1);
}

void ____start_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v8;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Found device %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 delegate];
    if (v9)
    {
      v10 = __wrapCUWiFiDevice(v6, v3);
      v11 = objc_autoreleasePoolPush();
      v12 = v6;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v14;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Device %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v12 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_145;
      block[3] = &unk_279734960;
      v18 = v9;
      v19 = v12;
      v20 = v10;
      v16 = v10;
      dispatch_async(v15, block);
    }
  }
}

void ____start_block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v3 ssid];
      v10 = [v3 identifier];
      *buf = 138543874;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Lost device %@: (%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [v6 delegate];
    if (v11)
    {
      v12 = __wrapCUWiFiDevice(v6, v3);
      v13 = [v6 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_147;
      block[3] = &unk_279734960;
      v16 = v11;
      v17 = v6;
      v18 = v12;
      v14 = v12;
      dispatch_async(v13, block);
    }
  }
}

void ____start_block_invoke_2_148(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained delegate];
    if (v6)
    {
      v7 = __wrapCUWiFiDevice(v5, v3);
      v8 = [v5 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_3;
      block[3] = &unk_279734960;
      v11 = v6;
      v12 = v5;
      v13 = v7;
      v9 = v7;
      dispatch_async(v8, block);
    }
  }
}

void ____start_block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 delegate];
    if (v9)
    {
      v10 = [v6 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_150;
      block[3] = &unk_279734960;
      v12 = v9;
      v13 = v6;
      v14 = v3;
      dispatch_async(v10, block);
    }

    [v6[2] invalidate];
  }
}

void ____start_block_invoke_2_152(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@CUWiFiScanner invalidated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = v3[2];
    v3[2] = 0;
  }

  v7 = [WeakRetained delegate];
  if (v7)
  {
    v8 = [WeakRetained delegateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ____start_block_invoke_153;
    v9[3] = &unk_2797359B0;
    v10 = v7;
    v11 = WeakRetained;
    dispatch_async(v8, v9);
  }
}

void sub_2537CAC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537CCB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537CCE70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2537CD9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __bootstrapSupportedStereoPairVersions(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 identifier];
  v3 = _mediaRouteIdentifier;
  if (([v2 isEqual:v3] & 1) == 0)
  {
    v4 = [v1 supportedStereoPairVersions];

    if (v4)
    {
      goto LABEL_5;
    }

    v5 = [v1 softwareVersion];
    v6 = v5;
    if (v5)
    {
      v2 = v5;
    }

    else
    {
      v7 = [v1 device];
      v8 = [v7 productInfo];
      v2 = [v8 softwareVersion];
    }

    if ([v1 isHomePod])
    {
      v9 = 0;
      if (v2)
      {
LABEL_11:
        objc_msgSend_operatingSystemVersion(v2);
        goto LABEL_14;
      }
    }

    else
    {
      v10 = [v1 device];
      v11 = [v10 productInfo];
      v9 = [v11 productClass] != 6;

      if (v2)
      {
        goto LABEL_11;
      }
    }

    buf = 0uLL;
    v24 = 0;
LABEL_14:
    v19 = *MEMORY[0x277D0F228];
    v21 = *(MEMORY[0x277D0F228] + 16);
    v12 = HMFOperatingSystemVersionCompare();
    if (v2)
    {
      objc_msgSend_operatingSystemVersion(v2, v19, v21);
    }

    else
    {
      buf = 0uLL;
      v24 = 0;
    }

    v20 = *MEMORY[0x277D0F390];
    v22 = *(MEMORY[0x277D0F390] + 16);
    v13 = HMFOperatingSystemVersionCompare();
    v14 = v12 != 1 || v9;
    if ((v14 & 1) == 0 && v13 != 1)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Bootstrapping stereo pair version to V1", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [v16 setSupportedStereoPairVersions:{1, v20, v22}];
    }

    goto LABEL_3;
  }

LABEL_3:
LABEL_5:
}

void __HMDAppleMediaAccessoryHandleUpdatedDevice(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Device updated to: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v6 notificationCenter];
  [v9 removeObserver:v6 name:@"HMDDeviceUpdatedNotification" object:0];

  if (v4)
  {
    [v6 startMonitoringReachability];
    v10 = [v6 symptomsHandler];
    [v10 handleAccessoryDeviceUpdated];

    v11 = [v6 identifier];
    v12 = [v6 deviceMediaRouteIdentifierFactory];
    v13 = v12[2]();
    v14 = [v11 isEqual:v13];

    if (v14)
    {
      v15 = [v6 notificationCenter];
      [v15 addObserver:v6 selector:sel_handleCurrentDeviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:v4];

      if ([v6 shouldUpdateWithDevice:v4 initialConfiguration:0])
      {
        [v6 updateWithDevice:v4];
      }
    }

    __bootstrapSupportedStereoPairVersions(v6);
    v16 = [v6 notificationCenter];
    [v16 postNotificationName:@"HMDAppleMediaAccessoryDeviceUpdatedNotification" object:v6];
  }

  [v6 registerForPublishingNotifications];
}

void sub_2537D53C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__94518(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __HMDAppleMediaAccessoryGetDeviceController(char *a1)
{
  v1 = a1;
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(v1 + 63);
  os_unfair_recursive_lock_unlock();

  return v2;
}

id *____transactionAccessoryUpdated_block_invoke_94534(id *result, int a2)
{
  if (a2)
  {
    return [result[4] markChanged];
  }

  return result;
}

void sub_2537D679C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v45 - 184));
  _Unwind_Resume(a1);
}

void sub_2537D6F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537D7E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537D8628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537D92E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2537D9C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537DA31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_2537DADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537DB3F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2537DD314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_279731AD0;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2537E0234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27972A208;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "MCProfileConnection");
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

id addressesFromWANRule(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 subject];
  v2 = [v1 hostnames];

  if (v2)
  {
    v3 = [v1 hostnames];
    goto LABEL_8;
  }

  v4 = [v1 addresses];

  if (v4)
  {
    v5 = [v1 addresses];
    v6 = [v5 na_map:&__block_literal_global_70];
LABEL_7:
    v3 = v6;

    goto LABEL_8;
  }

  v7 = [v1 addressRange];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v1 addressRange];
    v10 = [v9 addressStart];
    v11 = [v10 addressString];
    v12 = [v1 addressRange];
    v13 = [v12 addressEnd];
    v14 = [v13 addressString];
    v5 = [v8 stringWithFormat:@"%@ - %@", v11, v14];

    v16[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    goto LABEL_7;
  }

  v3 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v3;
}

id wanRuleFromJSONRule(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CCAAA0];
  v3 = [v1 dataUsingEncoding:4];
  v15 = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:&v15];
  v5 = v15;

  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [HMDNetworkRouterFirewallRuleWAN createWithJSONDictionary:v8 error:0];
    if (v9)
    {
      goto LABEL_12;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      v13 = "%{public}@Failed to convert dictionary %@ to HMDNetworkRouterFirewallRuleWAN";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v1;
      v13 = "%{public}@Failed to convert JSON string %@ to dictionary";
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v10);
  v9 = 0;
LABEL_12:

  return v9;
}

__CFString *HMDCameraRemoteStreamSessionStateAsString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v2))
  {
    v3 = off_27972A220[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRemoteStreamSessionState %tu", a1];
  }

  return v3;
}

void sub_2537ED118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__95496(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537F0950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2537F16B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 184), 8);
  _Unwind_Resume(a1);
}

void addFallbackLANRules(_BYTE *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v5 hasFullAccessToLAN])
  {
    *a1 = 1;
  }

  else
  {
    v6 = [v5 lanRules];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v5 lanRules];
      [v9 addObjectsFromArray:v8];
    }
  }
}

void sub_2537F809C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537F8894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537F908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537F9884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537FB8C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2537FE564(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FEAA4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FEE98(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FF1F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FF288(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FF3F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253802758(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538027E4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253802870(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538028FC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538055DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538057D0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25380585C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253808508(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253808DD8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25380E624(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25380E820(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __HMDDeviceControllerUpdateDevice(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating device: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    if (*(v6 + 3) == v4)
    {
      os_unfair_lock_unlock(v6 + 2);
    }

    else
    {
      objc_storeStrong(v6 + 3, a2);
      os_unfair_lock_unlock(v6 + 2);
      v9 = objc_autoreleasePoolPush();
      v10 = v6;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Updated device: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [v10 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v13 deviceController:v10 didUpdateDevice:v4];
      }
    }
  }
}

__CFString *HMDNetworkRouterControlOperationStatusTypeAsString(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterControlOperationStatusType %ld", a1];
  }

  else
  {
    v2 = off_27972A7C8[a1];
  }

  return v2;
}

void sub_25381C58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25381D41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25381E0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99799(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25381E6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25381F074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253820A0C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253820D5C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253823FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDStreamingTierTypeAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDStreamingTierType %tu", a1];
  }

  else
  {
    v2 = off_27972AA00[a1];
  }

  return v2;
}

__CFString *HMDVideoCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDVideoCodecType %tu", a1];
  }

  else
  {
    v2 = @"HMDVideoCodecTypeH264";
  }

  return v2;
}

__CFString *HMDH264ProfileTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDH264ProfileType %tu", a1];
  }

  else
  {
    v2 = off_27972AA28[a1];
  }

  return v2;
}

__CFString *HMDH264LevelTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDH264LevelType %tu", a1];
  }

  else
  {
    v2 = off_27972AA40[a1];
  }

  return v2;
}

__CFString *HMDPacketizationModeTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDPacketizationModeType %tu", a1];
  }

  else
  {
    v2 = @"HMDPacketizationModeTypeSingleNonInterleaved";
  }

  return v2;
}

__CFString *HMDVideoResolutionTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 0x1D)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDVideoResolutionType %tu", a1];
  }

  else
  {
    v2 = off_27972AA60[a1 - 1];
  }

  return v2;
}

__CFString *HMDAudioCodecGroupTypeAsString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDAudioCodecGroupType %tu", a1];
  }

  else
  {
    v2 = off_27972AB48[a1];
  }

  return v2;
}

__CFString *HMDBitRateSettingTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDBitRateSettingTypeConstant";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDBitRateSettingType %tu", a1];
    }
  }

  else
  {
    v2 = @"HMDBitRateSettingTypeVariable";
  }

  return v2;
}

__CFString *HMDAudioSampleRateTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDAudioSampleRateType %tu", a1];
  }

  else
  {
    v2 = off_27972AB80[a1];
  }

  return v2;
}

__CFString *HMDSRTPCryptoSuiteTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSRTPCryptoSuiteType %tu", a1];
  }

  else
  {
    v2 = off_27972AB98[a1];
  }

  return v2;
}

__CFString *HMDStreamControlPointResponseStatusAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSessionControlCommand %tu", a1];
  }

  else
  {
    v2 = off_27972ABD8[a1];
  }

  return v2;
}

__CFString *HMDStreamingStatusTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDStreamingStatusType %tu", a1];
  }

  else
  {
    v2 = off_27972ABF0[a1];
  }

  return v2;
}

void sub_25382B390(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25382C44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25382CAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25382D1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void notifyMatterMetricPairingStep(void *a1, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMDMatterAccessoryPairingStepAsString(a2);
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing step %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v9 setObject:v10 forKeyedSubscript:@"HMDMatterAccessoryPairingStepKey"];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = objc_msgSend_copy(v9);
  [v11 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v12];
}

void notifyMatterMetricPairingEnded(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB98];
  v4 = a2;
  v5 = a1;
  v17 = [v3 defaultCenter];
  v6 = v5;
  v7 = v4;
  v8 = objc_autoreleasePoolPush();
  v9 = v6;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing ended %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDMatterAccessoryPairingSubmitKey"];
  v13 = [v7 step];
  [v12 setObject:v13 forKeyedSubscript:@"HMDMatterAccessoryPairingStepKey"];

  v14 = [v7 error];
  [v12 setObject:v14 forKeyedSubscript:@"HMDMatterAccessoryPairingFailureErrorKey"];

  v15 = [v7 sourceErrorDomain];
  [v12 setObject:v15 forKeyedSubscript:@"HMDMatterAccessoryPairingSourceErrorDomain"];

  v16 = objc_msgSend_copy(v12);
  [v17 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v16];
}

void sub_2538310B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253831790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253835990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253839498(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDDefaultRoomName()
{
  v0 = HMDLocalizedStringForKey(@"DEFAULT_ROOM");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Default Room";
  }

  v3 = v2;

  return v2;
}

void sub_25383C970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25383DC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25383EA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v29 + 64));
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__103983(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25383ECA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_25383F308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_253840D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25384104C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _validateClientRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 headerFields];
  v5 = [v4 hmf_stringForKey:@"Protocol-Version"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v5];
    if (v6)
    {
      v7 = +[HMDHTTPServerMessageTransport maximumSupportedProtocolVersion];
      v8 = [v6 isAtLeastVersion:v7];

      if (v8)
      {
        if (a2)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"The client's protocol version, %@, is not supported", v6];
          *a2 = LABEL_22:;
          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }
  }

  v9 = [v3 headerFields];
  v10 = [v9 hmf_UUIDForKey:@"Client-Identifier"];

  if (v10)
  {
    v11 = [v3 body];
    v12 = [v11 length];

    if (v12)
    {
      v13 = MEMORY[0x277CCAC58];
      v14 = [v3 body];
      v22 = 0;
      v15 = [v13 propertyListWithData:v14 options:0 format:0 error:&v22];
      v6 = v22;

      if (!v15)
      {
        if (a2)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to deserialize message payload with error: %@", v6];
          goto LABEL_22;
        }

LABEL_23:

        goto LABEL_24;
      }

      v16 = v15;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (a2 && (isKindOfClass & 1) == 0)
      {
        *a2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid message class type: %@", objc_opt_class()];
      }

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v20 = 1;
  }

  else
  {
    if (!a2)
    {
LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }

    v20 = 0;
    *a2 = @"Missing the client identifier from the request";
  }

LABEL_25:

  return v20;
}

void sub_253841C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253842748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253843584(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __handleUpdatedDevice(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device updated to: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    __registerForDeviceNotifications(v6, v4);
    v9 = [v6 residentDeviceManager];
    [v9 notifyClientsOfUpdatedResidentDevice:v6];
  }

  else
  {
    __deregisterForDeviceNotifications(v6);
  }
}

void __registerForDeviceNotifications(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v5 shortDescription];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registering for device notifications for: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    __deregisterForDeviceNotifications(v7);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v7 selector:sel___deviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:v5];
  }
}

void __deregisterForDeviceNotifications(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Deregistering for device notifications", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:v3 name:@"HMDDeviceUpdatedNotification" object:0];
  }
}

uint64_t residentCapabilitiesForDevice(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 version];
  v6 = +[HMDHomeKitVersion version3];
  v7 = [v5 isAtLeastVersion:v6];

  if (v7)
  {
    v8 = 7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 version];
  v10 = +[HMDHomeKitVersion version4];
  v11 = [v9 isAtLeastVersion:v10];

  if (v11)
  {
    v12 = v8 | 8;
  }

  else
  {
    v12 = v8;
  }

  v13 = [v3 version];

  v14 = +[HMDHomeKitVersion version4];
  v15 = [v13 isAtLeastVersion:v14];

  if (v15)
  {
    v16 = v12 | 0x10;
  }

  else
  {
    v16 = v12;
  }

  if ([v4 supportsMediaActions])
  {
    v16 |= 0x220uLL;
  }

  if ([v4 supportsShortcutActions])
  {
    v16 |= 0x100uLL;
  }

  if ([v4 supportsCameraRecording])
  {
    v16 |= 0x40uLL;
  }

  if ([v4 supportsRouterManagement])
  {
    v16 |= 0x80uLL;
  }

  if ([v4 supportsFirmwareUpdate])
  {
    v16 |= 0x800uLL;
  }

  if ([v4 supportsResidentFirmwareUpdate])
  {
    v16 |= 0x800000uLL;
  }

  if ([v4 supportsCameraActivityZones])
  {
    v16 |= 0x1000uLL;
  }

  if ([v4 supportsFaceClassification])
  {
    v16 |= 0x2000uLL;
  }

  if ([v4 supportsNaturalLighting])
  {
    v16 |= 0x4000uLL;
  }

  if ([v4 supportsAnnounce])
  {
    v16 |= 0x8000uLL;
  }

  if ([v4 supportsThreadBorderRouter])
  {
    v16 |= 0x10000uLL;
  }

  if ([v4 supportsCameraRecordingReachabilityNotifications])
  {
    v16 |= 0x20000uLL;
  }

  if ([v4 supportsWalletKey])
  {
    v16 |= 0x40000uLL;
  }

  if ([v4 supportsAccessCodes])
  {
    v16 |= 0x200000uLL;
  }

  if ([v4 supportsLockNotificationContext])
  {
    v16 |= 0x80000uLL;
  }

  if ([v4 supportsCameraPackageDetection])
  {
    v16 |= 0x100000uLL;
  }

  if ([v4 supportsCHIP])
  {
    v16 |= 0x400000uLL;
  }

  if ([v4 supportsCustomMediaApplicationDestination])
  {
    v16 |= 0x1000000uLL;
  }

  if ([v4 supportsThreadNetworkCredentialSharing])
  {
    v16 |= 0x2000000uLL;
  }

  if ([v4 supportsMatterSharedAdminPairing])
  {
    v16 |= 0x4000000uLL;
  }

  if ([v4 supportsEventLog])
  {
    v16 |= 0x8000000uLL;
  }

  if ([v4 supportsUWB])
  {
    v16 |= 0x20000000uLL;
  }

  if ([v4 supportsMatterTTU])
  {
    v17 = v16 | 0x10000000;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v4 supportsMatterOwnerCertFetch];

  if (v18)
  {
    return v17 | 0x80000000;
  }

  else
  {
    return v17;
  }
}

void sub_25384A780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25384EDD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_2538509B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id uuidSetFromArrayOfStrings(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x277CCAD78]);
        v10 = [v9 initWithUUIDString:{v8, v12}];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_25385E080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__106960(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25385F3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25386009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253860A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_253868364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538687CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253868C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253870C14(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253875194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__108667(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538753AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __updateAccount(void *a1, int a2)
{
  v111 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accountChangeBackoffTimer];
    [v5 suspend];

    v6 = objc_autoreleasePoolPush();
    v7 = v4;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v107 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating account", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v89 = [v7 account];
    if (!v89)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v7;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v107 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to update account, there is no account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_60;
    }

    v10 = [MEMORY[0x277D0F910] systemInfo];
    v11 = [v7 maybeSkipUpdatesOfType:0 whileMigrating:{objc_msgSend(v10, "isMigrating")}];

    if (v11)
    {
      v12 = [v7 accountChangeBackoffTimer];
      [v12 resume];

LABEL_60:
      goto LABEL_61;
    }

    v17 = __createAccountHandles(v7);
    v88 = v7;
    if ([v17 hmf_isEmpty])
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v7;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v107 = v21;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to create handles", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      __updateCurrentDevice(v19, v89);
    }

    else
    {
      v83 = a2;
      v84 = v4;
      v22 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
      v23 = [v7 backingStore];
      v82 = v22;
      v81 = [v23 transaction:@"Update Handles" options:v22];

      v90 = [MEMORY[0x277CBEB18] array];
      v24 = MEMORY[0x277CBEB98];
      v25 = [v7 account];
      v26 = [v25 handles];
      v27 = [v24 setWithArray:v26];

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v87 = v17;
      v28 = [MEMORY[0x277CBEB98] setWithArray:v17];
      v85 = v27;
      v29 = [v27 hmf_addedObjectsFromSet:v28];

      v30 = [v29 countByEnumeratingWithState:&v100 objects:v110 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = v7;
        v33 = *v101;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v101 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v100 + 1) + 8 * i);
            v36 = objc_autoreleasePoolPush();
            v37 = v32;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v107 = v39;
              v108 = 2112;
              v109 = v35;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Adding handle: %@", buf, 0x16u);

              v32 = v7;
            }

            objc_autoreleasePoolPop(v36);
            v40 = [v89 modelIdentifier];
            [v35 setModelParentIdentifier:v40];

            v41 = [v35 modelObjectWithChangeType:1 version:4];
            if (v41)
            {
              [v90 addObject:v41];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v100 objects:v110 count:16];
        }

        while (v31);
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v42 = v87;
      v43 = [MEMORY[0x277CBEB98] setWithArray:v87];
      v44 = [v85 hmf_commonObjectsFromSet:v43];

      v45 = [v44 countByEnumeratingWithState:&v96 objects:v105 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v97;
        v86 = v44;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v97 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v96 + 1) + 8 * j);
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = ____updateAccount_block_invoke;
            v95[3] = &unk_27972B1A0;
            v95[4] = v49;
            v50 = [v42 hmf_objectPassingTest:v95];
            if (v50 && (objc_opt_respondsToSelector() & 1) != 0 && ([v49 isBackingStorageEqual:v50] & 1) == 0)
            {
              v51 = [HMDAccountHandleModel alloc];
              v52 = [v49 modelIdentifier];
              v53 = [v49 modelParentIdentifier];
              v54 = [(HMDBackingStoreModelObject *)v51 initWithObjectChangeType:2 uuid:v52 parentUUID:v53];

              v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v50, "isLocal")}];
              [(HMDAccountHandleModel *)v54 setLocal:v55];

              if (v54)
              {
                [v90 addObject:v54];
              }

              v44 = v86;
            }

            v42 = v87;
          }

          v46 = [v44 countByEnumeratingWithState:&v96 objects:v105 count:16];
        }

        while (v46);
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v56 = [MEMORY[0x277CBEB98] setWithArray:v42];
      v57 = [v85 hmf_removedObjectsFromSet:v56];

      v58 = [v57 countByEnumeratingWithState:&v91 objects:v104 count:16];
      v59 = v88;
      if (v58)
      {
        v60 = v58;
        v61 = *v92;
        do
        {
          for (k = 0; k != v60; ++k)
          {
            if (*v92 != v61)
            {
              objc_enumerationMutation(v57);
            }

            v63 = *(*(&v91 + 1) + 8 * k);
            v64 = objc_autoreleasePoolPush();
            v65 = v59;
            v66 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              v67 = HMFGetLogIdentifier();
              *buf = 138543618;
              v107 = v67;
              v108 = 2112;
              v109 = v63;
              _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Removing handle: %@", buf, 0x16u);

              v59 = v88;
            }

            objc_autoreleasePoolPop(v64);
            v68 = [v63 modelObjectWithChangeType:3 version:4];
            if (v68)
            {
              [v90 addObject:v68];
            }
          }

          v60 = [v57 countByEnumeratingWithState:&v91 objects:v104 count:16];
        }

        while (v60);
      }

      if (([v90 hmf_isEmpty] & 1) == 0)
      {
        [v81 addObjects:v90];
        [v81 run];
      }

      updated = __updateCurrentDevice(v59, v89);
      v4 = v84;
      v17 = v87;
      a2 = v83;
      if (updated)
      {
        v70 = objc_autoreleasePoolPush();
        v71 = v88;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543362;
          v107 = v73;
          _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully updated account", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v70);
        v74 = [v71 accountChangeBackoffTimer];
        [v74 reset];

        v75 = [v71 devicesChangeBackoffTimer];
        [v75 suspend];

        [v71 __updateMergeIDOnAccount];
        goto LABEL_59;
      }
    }

    if (a2)
    {
      v76 = objc_autoreleasePoolPush();
      v77 = v88;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = HMFGetLogIdentifier();
        *buf = 138543362;
        v107 = v79;
        _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Failed to update the account, will try again later", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v76);
      v80 = [v77 accountChangeBackoffTimer];
      [v80 resume];
    }

LABEL_59:

    goto LABEL_60;
  }

LABEL_61:
}

void __updateDevices(void *a1, char a2)
{
  v122 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 devicesChangeBackoffTimer];
    [v5 suspend];

    v94 = [v4 account];
    if (!v94)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v4;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v119 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to determine devices on our account, there is no account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_66;
    }

    v6 = [MEMORY[0x277D0F910] systemInfo];
    v7 = [v4 maybeSkipUpdatesOfType:1 whileMigrating:{objc_msgSend(v6, "isMigrating")}];

    if (v7)
    {
      v8 = [v4 devicesChangeBackoffTimer];
      [v8 resume];

LABEL_66:
      goto LABEL_67;
    }

    v86 = a2;
    v13 = MEMORY[0x277CBEB58];
    v14 = __createDevices(v4);
    v15 = [v13 setWithArray:v14];

    v16 = objc_autoreleasePoolPush();
    v87 = v4;
    v17 = v4;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v119 = v19;
      v120 = 2112;
      v121 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating account with peer devices: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x277CBEB18] array];
    v93 = [MEMORY[0x277CBEB18] array];
    v21 = MEMORY[0x277CBEB98];
    v22 = [v17 account];
    v23 = [v22 devices];
    v24 = [v23 hmf_objectsPassingTest:&__block_literal_global_590];
    v25 = [v21 setWithArray:v24];

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v88 = v25;
    v89 = v15;
    v26 = [v25 hmf_addedObjectsFromSet:v15];
    v27 = [v26 countByEnumeratingWithState:&v111 objects:v117 count:16];
    v95 = v20;
    if (v27)
    {
      v28 = v27;
      v29 = *v112;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v112 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v111 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          v33 = v17;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v119 = v35;
            v120 = 2112;
            v121 = v31;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Adding device: %@", buf, 0x16u);

            v20 = v95;
          }

          objc_autoreleasePoolPop(v32);
          [v31 setAccount:v94];
          v36 = [v31 backingStoreObjectsWithChangeType:1 version:4];
          [v20 addObjectsFromArray:v36];
        }

        v28 = [v26 countByEnumeratingWithState:&v111 objects:v117 count:16];
      }

      while (v28);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v37 = v89;
    obj = [v88 hmf_commonObjectsFromSet:v89];
    v92 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
    if (!v92)
    {
LABEL_49:

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v65 = [v88 hmf_removedObjectsFromSet:v37];
      v66 = [v65 countByEnumeratingWithState:&v103 objects:v115 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v104;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v104 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v103 + 1) + 8 * j);
            v71 = objc_autoreleasePoolPush();
            v72 = v17;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543618;
              v119 = v74;
              v120 = 2112;
              v121 = v70;
              _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Removing device: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v71);
            v75 = [v70 isCloudTracked];
            v76 = [v70 backingStoreObjectsWithChangeType:3 version:4];
            if (v75)
            {
              v77 = v93;
            }

            else
            {
              v77 = v95;
            }

            [v77 addObjectsFromArray:v76];
          }

          v67 = [v65 countByEnumeratingWithState:&v103 objects:v115 count:16];
        }

        while (v67);
      }

      v78 = dispatch_group_create();
      if (([v93 hmf_isEmpty] & 1) == 0)
      {
        dispatch_group_enter(v78);
        v79 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
        v80 = [v17 backingStore];
        v81 = [v80 transaction:@"Update Devices" options:v79];

        [v81 addObjects:v93];
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = ____updateDevices_block_invoke_591;
        v101[3] = &unk_2797359D8;
        v102 = v78;
        [v81 run:v101];
      }

      if (([v95 hmf_isEmpty] & 1) == 0)
      {
        dispatch_group_enter(v78);
        v82 = [v17 backingStore];
        v83 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
        v84 = [v82 transaction:@"Update Devices" options:v83];

        [v84 addObjects:v95];
        v99[0] = MEMORY[0x277D85DD0];
        v99[1] = 3221225472;
        v99[2] = ____updateDevices_block_invoke_2;
        v99[3] = &unk_2797359D8;
        v100 = v78;
        [v84 run:v99];
      }

      objc_initWeak(buf, v17);
      v85 = v17[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____updateDevices_block_invoke_3;
      block[3] = &unk_2797319D8;
      objc_copyWeak(&v97, buf);
      v98 = v86;
      dispatch_group_notify(v78, v85, block);
      objc_destroyWeak(&v97);
      objc_destroyWeak(buf);

      v4 = v87;
      goto LABEL_66;
    }

    v91 = *v108;
LABEL_21:
    v38 = 0;
    while (1)
    {
      if (*v108 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v107 + 1) + 8 * v38);
      v40 = [v37 member:v39];
      v41 = v40;
      if (v40)
      {
        v42 = [v40 version];
        [v39 setLocalOnlyVersionFromIDS:v42];
      }

      if (([v39 isLocallyTracked] & 1) == 0)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v17;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [v39 shortDescription];
          *buf = 138543618;
          v119 = v46;
          v120 = 2112;
          v121 = v47;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@Tracking device locally: %@", buf, 0x16u);

          v37 = v89;
        }

        objc_autoreleasePoolPop(v43);
        [v39 setLocallyTracked:1];
      }

      v48 = [v17 isDeviceLocallyPairedWatch:v39];
      if ([v39 isCloudTracked])
      {
        if (!isWatch())
        {
          if (!v48)
          {
            goto LABEL_47;
          }

          v60 = objc_autoreleasePoolPush();
          v61 = v17;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            v64 = [v39 identifier];
            *buf = 138543618;
            v119 = v63;
            v120 = 2112;
            v121 = v64;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Processing update for connected watch: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v60);
          v37 = v89;
          if (!v41)
          {
            goto LABEL_47;
          }

LABEL_34:
          v49 = [v39 version];
          v50 = [v41 version];
          v51 = [v49 isGreaterThanVersion:v50];

          if (v51)
          {
            [v41 setAccount:v94];
            v52 = [v39 version];
            [v41 updateVersion:v52];
          }

          if (([v39 isBackingStorageEqual:v41] & 1) == 0)
          {
            v53 = objc_autoreleasePoolPush();
            v54 = v17;
            v55 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = HMFGetLogIdentifier();
              *buf = 138543618;
              v119 = v56;
              v120 = 2112;
              v121 = v41;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Updating device: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v53);
            [v41 setAccount:v94];
            v57 = [v41 backingStoreObjectsWithChangeType:2 version:4];
            if (!v48 || (v58 = [v39 isCloudTracked], v59 = v93, (v58 & 1) == 0))
            {
              v59 = v95;
            }

            [v59 addObjectsFromArray:v57];
          }

          goto LABEL_47;
        }

        [v39 setCloudTracked:0];
      }

      if (v41)
      {
        goto LABEL_34;
      }

LABEL_47:

      if (v92 == ++v38)
      {
        v92 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
        if (!v92)
        {
          goto LABEL_49;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_67:
}

id __createDevices(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB58];
  v3 = [v1 service];
  v4 = [v3 devices];
  v19 = [v2 setWithCapacity:{objc_msgSend(v4, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v1 service];
  v6 = [v5 devices];

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v1 service];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = [[HMDDevice alloc] initWithService:v15 device:v12];
        if (v16)
        {
          [v19 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = [v19 allObjects];

  return v17;
}

void ____updateDevices_block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resolved", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    if (*(a1 + 40) == 1)
    {
      v7 = [v4 notificationCenter];
      [v7 postNotificationName:@"HMDAppleAccountManagerResolved" object:v4];
    }
  }
}

id __createAccountHandles(void *a1)
{
  v1 = a1;
  if ([v1 isServiceActive])
  {
    v2 = [v1 service];
    v3 = [v2 hmd_handles];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

uint64_t __updateCurrentDevice(void *a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v68 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = __createCurrentDevice(v6);
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      v51 = v6;
      v49 = v3;
      v12 = [v9 identifier];
      v13 = [v4 deviceForIdentifier:v12];

      v48 = v11;
      v47 = v13;
      if (v13)
      {
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = ____updateCurrentDevice_block_invoke;
        v61[3] = &unk_279730430;
        v14 = v13;
        v15 = &v62;
        v16 = v6;
        v17 = v6;
        v62 = v17;
        v18 = &v63;
        v19 = v10;
        v63 = v19;
        v20 = &v64;
        v64 = v14;
        v65 = v4;
        __HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice(v17, v19, v61);

        v21 = v10;
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v6;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v68 = v29;
          v69 = 2112;
          v70 = v10;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Adding current device: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = ____updateCurrentDevice_block_invoke_585;
        v57[3] = &unk_279734D88;
        v15 = &v58;
        v30 = v27;
        v58 = v30;
        v18 = &v59;
        v21 = v10;
        v31 = v10;
        v59 = v31;
        v20 = &v60;
        v60 = v4;
        __HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice(v30, v31, v57);
        v16 = v51;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v32 = [v16 account];
      v33 = [v32 devices];

      v34 = [v33 countByEnumeratingWithState:&v53 objects:v66 count:16];
      v35 = v16;
      if (v34)
      {
        v36 = v34;
        v37 = *v54;
        v50 = v21;
        v52 = v33;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v54 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v39 = *(*(&v53 + 1) + 8 * i);
            if (([v39 isEqual:v21] & 1) == 0 && objc_msgSend(v39, "isRelatedToDevice:", v21))
            {
              v40 = objc_autoreleasePoolPush();
              v41 = v35;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v44 = v43 = v4;
                v45 = [v39 shortDescription];
                *buf = 138543618;
                v68 = v44;
                v69 = 2112;
                v70 = v45;
                _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Removing stale device: %@", buf, 0x16u);

                v35 = v51;
                v4 = v43;
                v21 = v50;
              }

              objc_autoreleasePoolPop(v40);
              [v4 removeDevice:v39];
              v33 = v52;
            }
          }

          v36 = [v33 countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v36);
      }

      __handleUpdatedDevice_109515(v35, v21);
      v3 = v49;
      v10 = v21;
      v11 = v48;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v6;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v68 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to create current device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

HMDDevice *__createCurrentDevice(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isServiceActive])
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
    if (v3)
    {
      v4 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v3];
      v5 = [[HMDDeviceHandle alloc] initWithInternal:v4];
      [v2 addObject:v5];
    }

    v6 = [v1 pushConnection];
    v7 = [v6 publicToken];

    if (!v7)
    {
      v18 = [v1 service];
      v19 = [v18 iCloudAccount];

      v20 = [v19 pushToken];
      v7 = v20;
      if (!v20 || [v20 hmf_isZeroed])
      {

        goto LABEL_16;
      }
    }

    v8 = [v1 service];
    v9 = [v8 hmd_preferredHandle];

    v10 = [[_HMDGlobalDeviceHandle alloc] initWithPushToken:v7 accountHandle:v9];
    v11 = [[HMDDeviceHandle alloc] initWithInternal:v10];
    if (v11)
    {
      [v2 addObject:v11];
      v12 = [(HMDDeviceHandle *)v11 identifier];
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v21 = [HMDDevice alloc];
      v22 = [MEMORY[0x277D0F910] systemInfo];
      v23 = [v22 name];
      v24 = [MEMORY[0x277D0F8E8] productInfo];
      v25 = +[HMDHomeKitVersion currentVersion];
      v26 = +[HMDDeviceCapabilities deviceCapabilities];
      v17 = [(HMDDevice *)v21 initWithIdentifier:v12 handles:v2 name:v23 productInfo:v24 version:v25 capabilities:v26];

LABEL_19:
      goto LABEL_20;
    }

LABEL_16:
    v27 = objc_autoreleasePoolPush();
    v28 = v1;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v17 = 0;
    goto LABEL_19;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = v1;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v32 = 138543362;
    v33 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Cannot create current device; Service is not active", &v32, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = 0;
LABEL_20:

  return v17;
}

void ____updateCurrentDevice_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v18 = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine rapport identity for current device: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  if (([*(a1 + 48) isBackingStorageEqual:*(a1 + 40)] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Updating current device: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v15 = [*(a1 + 32) backingStore];
    v16 = [v15 transaction:@"Update Device" options:v14];

    [*(a1 + 40) setAccount:*(a1 + 56)];
    v17 = [*(a1 + 40) backingStoreObjectsWithChangeType:1 version:4];
    [v16 addObjects:v17];

    [v16 run];
  }
}

void __HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating device rapport identity on current device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(MEMORY[0x277D44150]);
  [v12 setDispatchQueue:v9[2]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ____HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice_block_invoke;
  v17[3] = &unk_279734180;
  v18 = v12;
  v19 = v9;
  v20 = v6;
  v21 = v7;
  v13 = v12;
  v14 = v9;
  v15 = v7;
  v16 = v6;
  [v13 getIdentitiesWithFlags:1 completion:v17];
}

void ____updateCurrentDevice_block_invoke_585(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine rapport identity for current device: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 48) addDevice:*(a1 + 40)];
}

void __handleUpdatedDevice_109515(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____handleUpdatedDevice_block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____handleUpdatedDevice_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  if (v7)
  {
    v10 = @"HMDDeviceNotificationKey";
    v11 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) notificationCenter];
  [v9 postNotificationName:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:*(a1 + 32) userInfo:v8];
}

void __setAccount(void *a1, void *a2, int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
      v7 = 0;
    }

    else
    {
      v8 = v5[7];
      objc_storeStrong(v5 + 7, a2);
      [v6 setManager:v5];
      v9 = v5;
      v7 = v8;
      v10 = v6;
      if (v7)
      {
        v11 = [v9 notificationCenter];
        [v11 removeObserver:v9 name:@"HMDAccountAddedDeviceNotification" object:v7];

        v12 = [v9 notificationCenter];
        [v12 removeObserver:v9 name:@"HMDAccountRemovedDeviceNotification" object:v7];
      }

      if (v10)
      {
        v13 = [v9 notificationCenter];
        [v13 addObserver:v9 selector:sel___deviceAddedToCurrentAccount_ name:@"HMDAccountAddedDeviceNotification" object:v10];

        v14 = [v9 notificationCenter];
        [v14 addObserver:v9 selector:sel___deviceRemovedFromCurrentAccount_ name:@"HMDAccountRemovedDeviceNotification" object:v10];
      }

      v15 = [v7 manager];

      if (v15 == v9)
      {
        [v7 setManager:0];
      }

      os_unfair_recursive_lock_unlock();
      v16 = objc_autoreleasePoolPush();
      v17 = v9;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v10 shortDescription];
        v28 = 138543618;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Updated account: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (a3)
      {
        v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        v22 = v21;
        if (v10)
        {
          [v21 setObject:v10 forKeyedSubscript:@"HMDAccountNotificationKey"];
        }

        if (v7)
        {
          [v22 setObject:v7 forKeyedSubscript:@"HMDPreviousAccountNotificationKey"];
        }

        v23 = v10 == 0;
        v24 = [v17 notificationCenter];
        v25 = objc_msgSend_copy(v22);
        [v24 postNotificationName:@"HMDAppleAccountManagerAccountUpdatedNotification" object:v17 userInfo:v25];

        v26 = [v17 device];
        if (v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = v23;
        }

        if (v27 == 1)
        {
          __handleUpdatedDevice_109515(v17, v26);
        }
      }
    }
  }
}

void __removeAccount(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing account: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 backingStore];
    v10 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
    v11 = [v9 transaction:@"Remove Account" options:v10];

    v12 = [v4 modelObjectWithChangeType:3 version:4];
    [v11 add:v12];

    [v11 run];
  }
}

void __updateAccountContext(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = MEMORY[0x277D0F770];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ____updateAccountContext_block_invoke;
    v4[3] = &unk_279735D00;
    v5 = v1;
    [v3 activityWithName:@"Accounts.Context" parent:0 options:1 block:v4];

    objc_autoreleasePoolPop(v2);
  }
}

HMDAccount *__createAccount(void *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 accountContext];
    if (v3)
    {
      v4 = [HMDAccountIdentifier accountIdentifierForAppleAccountContext:v3];
      if ([v2 isServiceActive])
      {
        v5 = __createAccountHandles(v2);
        if ([v5 hmf_isEmpty])
        {
          v6 = objc_autoreleasePoolPush();
          v7 = v2;
          v8 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = HMFGetLogIdentifier();
            *buf = 138543362;
            v40 = v9;
            _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create handles", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v6);
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v16 = v5;
          v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v35;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v35 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v34 + 1) + 8 * i) setLocallyTracked:1];
              }

              v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
            }

            while (v18);
          }
        }

        v21 = [v2 service];
        v22 = [v21 iCloudAccount];

        v23 = MEMORY[0x277CBEB58];
        v24 = [v22 devices];
        v25 = [v23 setWithCapacity:{objc_msgSend(v24, "count") + 1}];

        v26 = __createCurrentDevice(v2);
        if (v26)
        {
          [v25 addObject:v26];
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          v28 = v2;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v30 = v33 = v27;
            *buf = 138543362;
            v40 = v30;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create current device", buf, 0xCu);

            v27 = v33;
          }

          objc_autoreleasePoolPop(v27);
        }

        v31 = __createDevices(v2);
        [v25 addObjectsFromArray:v31];

        v15 = [v25 allObjects];
      }

      else
      {
        v15 = MEMORY[0x277CBEBF8];
        v5 = MEMORY[0x277CBEBF8];
      }

      v10 = [[HMDAccount alloc] initWithIdentifier:v4 handles:v5 devices:v15];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v2;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Context is required to create account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __addAccount(void *a1, void *a2, int a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v43 = v5;
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v10;
      v63 = 2112;
      v64 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [v6 modelObjectWithChangeType:1 version:4];
    [v11 addObject:v12];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = [v6 handles];
    v14 = [v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v56;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          if (!a3 || [*(*(&v55 + 1) + 8 * i) isLocallyTracked])
          {
            v19 = [v18 modelObjectWithChangeType:1 version:{4, v43}];
            [v11 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v15);
    }

    if ([v11 count])
    {
      v20 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
      v21 = [v8 backingStore];
      v22 = [v21 transaction:@"Add Account" options:v20];

      [v22 addObjects:v11];
      [v22 run];
    }

    v23 = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = [v6 devices];
    v25 = [v24 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v52;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v51 + 1) + 8 * j);
          if (([v29 isCurrentDevice] & 1) == 0 && (!a3 || objc_msgSend(v29, "isLocallyTracked")))
          {
            v30 = [v29 backingStoreObjectsWithChangeType:1 version:4];
            [v23 addObjectsFromArray:v30];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v26);
    }

    if ([v23 count])
    {
      v31 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
      v32 = [v8 backingStore];
      v33 = [v32 transaction:@"Add Account" options:v31];

      [v33 addObjects:v23];
      [v33 run];
    }

    v34 = dispatch_group_create();
    dispatch_group_enter(v34);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ____addAccount_block_invoke;
    aBlock[3] = &unk_2797359B0;
    v35 = v6;
    v49 = v35;
    v36 = v8;
    v50 = v36;
    v37 = _Block_copy(aBlock);
    v38 = [v36 cloudCache];
    v39 = [v38 homeManagerZone];

    v40 = [v35 modelIdentifier];
    v41 = v40;
    v5 = v43;
    if (v39 && v40)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = ____addAccount_block_invoke_2;
      v44[3] = &unk_2797349D8;
      v45 = v36;
      v47 = v37;
      v46 = v34;
      [v39 allDescendentsCloudRecordsForParentID:v41 completionHandler:v44];
    }

    else
    {
      v37[2](v37);
      dispatch_group_leave(v34);
    }

    v42 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(v34, v42))
    {
      v37[2](v37);
    }
  }
}

void ____addAccount_block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentDeviceModelsWithChangeType:1 version:4];
  if ([v5 count])
  {
    v2 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v3 = [*(a1 + 40) backingStore];
    v4 = [v3 transaction:@"Add Account" options:v2];

    [v4 addObjects:v5];
    [v4 run];
  }
}

void ____addAccount_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) extractObjectChange];
          v14 = v13;
          if (v13)
          {
            [v13 setObjectChangeType:1];
            [v7 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v15 = [HMDBackingStoreTransactionOptions optionsWithSource:2 destination:2 mustReplay:0 mustPush:0];
      v16 = [*(a1 + 32) backingStore];
      v17 = [v16 transaction:@"Add Account Reprocess Cloud Cache" options:v15];

      [v17 addObjects:v7];
      [v17 run];
    }
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));
}

void ____updateAccountContext_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v2 = [*(*(a1 + 32) + 32) aa_primaryAppleAccount];
  v3 = *(a1 + 32);
  if (v2)
  {
    *(v3 + 48) = 1;
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Primary apple account is logged in", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(*(a1 + 32) + 40);
    if (os_signpost_enabled(v8))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PrimaryAppleAccountLoggedIn", "", &v19, 2u);
    }

    v9 = [[HMDAppleAccountContext alloc] initWithAccount:v2];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v13;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated account context: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      objc_storeStrong((*(a1 + 32) + 64), v9);
    }
  }

  else
  {
    *(v3 + 48) = 0;
  }

  os_unfair_recursive_lock_unlock();
  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = HMFBooleanToString();
    v19 = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Primary iCloud (Apple) account login status: Logged In : %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
}

void sub_2538813E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25389175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__110988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25389577C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538997A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253899E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25389A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25389D214(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25389D5D0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25389FB28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 144));
  _Unwind_Resume(a1);
}

void sub_25389FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak(&a33);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112425(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538A29A8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __removeAllAccessories(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [v1[3] allKeys];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        __removeUnassociatedAccessory(v1, *(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [v1[3] removeAllObjects];
}

void __removeUnassociatedAccessory(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3[3] objectForKey:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing unassociated accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v3[3] removeObjectForKey:v4];
    v10 = [v7 delegate];
    if (v10)
    {
      v11 = [v7 delegateQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = ____removeUnassociatedAccessory_block_invoke;
      v12[3] = &unk_2797359B0;
      v13 = v10;
      v14 = v5;
      dispatch_async(v11, v12);
    }
  }
}

void __addDevice(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 isConfigured])
  {
    v5 = [v4 identifier];
    __removeUnassociatedAccessory(v3, v5);
LABEL_3:

    goto LABEL_11;
  }

  v6 = v3[3];
  v7 = [v4 identifier];
  v8 = [v6 objectForKey:v7];

  if (!v8 && [v4 supportsAirPlay2])
  {
    v9 = MEMORY[0x277CD1680];
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = [v10 initWithUUIDString:*MEMORY[0x277CCE900]];
    v5 = [v9 categoryWithIdentifier:v11];

    v12 = [HMDUnassociatedWACAccessory alloc];
    v13 = [v4 identifier];
    v14 = [v13 UUIDString];
    v15 = [v4 name];
    v16 = [(HMDUnassociatedWACAccessory *)v12 initWithIdentifier:v14 name:v15 category:v5 messageDispatcher:v3[4] wacDevice:v4];

    v17 = objc_autoreleasePoolPush();
    v18 = v3;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *v26 = 138543874;
      *&v26[4] = v20;
      *&v26[12] = 2048;
      *&v26[14] = v16;
      *&v26[22] = 2112;
      v27 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@New WAC Accessory discovered: %p %@", v26, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [v4 identifier];
    v22 = v18;
    v23 = v16;
    [v3[3] setObject:v23 forKey:v21];
    v24 = [v22 delegate];
    if (v24)
    {
      v25 = [v22 delegateQueue];
      *v26 = MEMORY[0x277D85DD0];
      *&v26[8] = 3221225472;
      *&v26[16] = ____addUnassociatedAccessory_block_invoke;
      v27 = &unk_2797359B0;
      v28 = v24;
      v29 = v23;
      dispatch_async(v25, v26);
    }

    goto LABEL_3;
  }

LABEL_11:
}

void sub_2538ABA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C027C0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C027D0](v20);
  return a1;
}

void sub_2538ABE48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C027D0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2538ABE1CLL);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_279720638, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_2538ACE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538AD608(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_2538ADA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538ADC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538AE0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538AE324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_2538AE8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__113704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMDUserPresenceRegionStatusAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserPresenceRegionStatus %tu", a1];
  }

  else
  {
    v2 = off_27972B708[a1];
  }

  return v2;
}

void sub_2538B5BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538BC228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HMDApplicationInfo *__HMDApplicationRegistryApplicationInfoForApplicationProxy(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  if (v5)
  {
    v6 = [v4 bundleURL];
    if (v6)
    {
      __HMDApplicationRegistryApplicationForBundleURL(v3, v6);
    }

    else
    {
      __HMDApplicationRegistryApplicationWithBundleIdentifier(v3, v5);
    }
    v7 = ;
    if (!v7)
    {
      v7 = [[HMDApplicationInfo alloc] initWithBundleIdentifier:v5 bundleURL:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id *__HMDApplicationRegistryApplicationWithBundleIdentifier(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[2] allObjects];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____HMDApplicationRegistryApplicationWithBundleIdentifier_block_invoke;
    v6[3] = &unk_27972B8A0;
    v7 = v3;
    a1 = [v4 hmf_objectPassingTest:v6];
  }

  return a1;
}

id *__HMDApplicationRegistryApplicationForBundleURL(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[2] allObjects];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____HMDApplicationRegistryApplicationForBundleURL_block_invoke;
    v6[3] = &unk_27972B8A0;
    v7 = v3;
    a1 = [v4 hmf_objectPassingTest:v6];
  }

  return a1;
}

void __HMDApplicationRegistryHandleAddedApplicationInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v8 = v3;
    v4 = [v3 isEntitledForSPIAccess];
    v5 = [v8 vendorIdentifier];
    if (v5)
    {
      v6 = +[HMDApplicationVendorIDStore sharedStore];
      v7 = [v8 bundleIdentifier];
      [v6 addVendorID:v5 applicationBundleID:v7 isSPIClient:v4];
    }

    v3 = v8;
  }
}

void sub_2538C4F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538C6208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538C6A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __transactionDeviceUpdated(void *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 transactionResult];
  v9 = [v5 modelObjectWithChangeType:0 version:4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v38 = v6;
  if (v11)
  {
    v44 = 0;
    v12 = [v11 diff:v6 differingFields:&v44];
    v13 = v44;
    v14 = v13;
    if (!v12)
    {
      goto LABEL_38;
    }

    v36 = v11;
    v37 = v7;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v15;
    v17 = *v41;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = v5;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v46 = v23;
          v47 = 2112;
          v48 = v19;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating device information for %@", buf, 0x16u);

          v6 = v38;
        }

        objc_autoreleasePoolPop(v20);
        if ([v19 isEqualToString:@"handles"])
        {
          v24 = [v6 deviceHandles];
          if (v24)
          {
            [v21 setHandles:v24];
          }

          goto LABEL_25;
        }

        if ([v19 isEqualToString:@"name"])
        {
          v24 = [v6 name];
          v25 = objc_msgSend_copy(v24);
          [v21 setName:v25];
LABEL_24:

LABEL_25:
          [v8 markChanged];
          goto LABEL_26;
        }

        if ([v19 isEqualToString:@"version"])
        {
          v24 = [v6 version];
          v25 = objc_msgSend_copy(v24);
          [v21 setVersion:v25];
          goto LABEL_24;
        }

        if ([v19 isEqualToString:@"productInfo"])
        {
          v24 = [v6 productInfo];
          v25 = objc_msgSend_copy(v24);
          [v21 setProductInfo:v25];
          goto LABEL_24;
        }

        if ([v19 isEqualToString:@"rpIdentity"])
        {
          v24 = [v6 rpIdentity];
          v25 = objc_msgSend_copy(v24);
          [v21 setRpIdentity:v25];
          goto LABEL_24;
        }

        v26 = objc_autoreleasePoolPush();
        v27 = v21;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v46 = v29;
          v47 = 2112;
          v48 = v19;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unexpected field! -- changedField: %@", buf, 0x16u);

          v6 = v38;
        }

        objc_autoreleasePoolPop(v26);
LABEL_26:
        ++v18;
      }

      while (v16 != v18);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      v16 = v30;
      if (!v30)
      {
LABEL_32:
        v14 = obj;

        if ([v8 changed])
        {
          [v5 setDirty:1];
          v31 = [v8 backingStore];
          __HMDDeviceMarkDirty(v5, v31);
        }

        v11 = v36;
        v7 = v37;
        goto LABEL_38;
      }
    }
  }

  v32 = objc_autoreleasePoolPush();
  v33 = v5;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v35;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve device model for updated device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v32);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [v7 respondWithError:v14];
  v6 = v38;
LABEL_38:
}

void __HMDDeviceMarkDirty(void *a1, void *a2)
{
  v3 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ____HMDDeviceMarkDirty_block_invoke;
  v5[3] = &unk_2797359D8;
  v6 = v3;
  v4 = v3;
  [a2 submitBlock:v5];
}

void sub_2538D1874(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t ____idsIdentifierHashFromIDSIdentifier_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A08F6CA5-EC1E-4DD6-A068-377BA45247B6"];
  v1 = __idsIdentifierHashFromIDSIdentifier_namespace;
  __idsIdentifierHashFromIDSIdentifier_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2538D249C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538D259C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id __modelIdentifierFromParentIdentifier(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = MEMORY[0x277CCAD78];
    v6 = [v3 identifier];
    v7 = [v6 UUIDString];
    v15 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v9 = [v5 hm_deriveUUIDFromBaseUUID:v4 withSalts:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v3;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing parent identifier while updating model identifier.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

void __deregisterForAccountHandleUpdates(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCAB98];
    v2 = a1;
    v3 = [v1 defaultCenter];
    [v3 removeObserver:v2 name:@"HMDAccountHandlesUpdatedNotification" object:0];
  }
}

id __deviceHandlesForAccount(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v27 = a3;
  v7 = 0;
  if (v5 && v6)
  {
    v8 = [v6 hmf_isEmpty];
    if (!v27 || v8)
    {
      v7 = v5;
    }

    else
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = ____deviceHandlesForAccount_block_invoke;
      v32[3] = &unk_27972BB58;
      v33 = v6;
      v9 = [v5 hmf_objectsPassingTest:v32];
      if ([v9 hmf_isEmpty])
      {
        v7 = v5;
      }

      else
      {
        v24 = v6;
        v25 = v5;
        v10 = [v5 mutableCopy];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = v9;
        v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              v16 = [v15 internal];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = v16;
              }

              else
              {
                v17 = 0;
              }

              v18 = v17;

              if (v18)
              {
                v19 = [_HMDGlobalDeviceHandle alloc];
                v20 = [v18 pushToken];
                v21 = [(_HMDGlobalDeviceHandle *)v19 initWithPushToken:v20 accountHandle:v27];

                v22 = [[HMDDeviceHandle alloc] initWithInternal:v21];
                if (v22)
                {
                  [v10 removeObject:v15];
                  [v10 addObject:v22];
                }
              }
            }

            v12 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
          }

          while (v12);
        }

        v7 = objc_msgSend_copy(v10);
        v6 = v24;
        v5 = v25;
      }
    }
  }

  return v7;
}

uint64_t ____deviceHandlesForAccount_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isGlobal])
  {
    v4 = [v3 accountHandle];
    if (v4)
    {
      v5 = [*(a1 + 32) containsObject:v4] ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2538D2E3C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538D6180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__118213(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538D797C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538D8F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538DCB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t bindStringSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v11 = v7;
    if (v7)
    {
      v9 = v7;
      v7 = sqlite3_bind_text(a1, a2, [v11 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(a1, a2);
    }

    v8 = v11;
    if (v7)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      v8 = v11;
      *a4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

id execSQLite3(sqlite3_stmt *a1)
{
  if (sqlite3_step(a1) == 101)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  }

  if (sqlite3_reset(a1) && !v2)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  }

  return v2;
}

uint64_t bindDataSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v11 = v7;
    if (v7)
    {
      if ([v7 length])
      {
        v9 = v11;
        v7 = sqlite3_bind_blob64(a1, a2, [v11 bytes], objc_msgSend(v11, "length"), 0);
      }

      else
      {
        v7 = sqlite3_bind_zeroblob(a1, a2, 0);
      }
    }

    else
    {
      v7 = sqlite3_bind_null(a1, a2);
    }

    v8 = v11;
    if (v7)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      v8 = v11;
      *a4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

sqlite3_int64 steplastrowresetSQLite3(sqlite3_stmt *a1, void *a2)
{
  if (sqlite3_step(a1) != 101)
  {
    if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      if (sqlite3_reset(a1))
      {
        v6 = MEMORY[0x277CCA9B8];
        goto LABEL_8;
      }
    }

    else
    {
      sqlite3_reset(a1);
    }

    return 0;
  }

  v4 = sqlite3_db_handle(a1);
  insert_rowid = sqlite3_last_insert_rowid(v4);
  if (sqlite3_reset(a1))
  {
    if (a2)
    {
      v6 = MEMORY[0x277CCA9B8];
LABEL_8:
      [v6 errorWithSQLite3Statement:a1];
      *a2 = insert_rowid = 0;
      return insert_rowid;
    }

    return 0;
  }

  return insert_rowid;
}

sqlite3_stmt *bindIntSQLite3(sqlite3_stmt *result, int a2, sqlite3_int64 a3, void *a4)
{
  if (!*a4)
  {
    v5 = result;
    result = sqlite3_bind_int64(result, a2, a3);
    if (result)
    {
      result = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:v5];
      *a4 = result;
    }
  }

  return result;
}

id _handleFetchWithRawCallback(sqlite3_stmt *a1, void *a2)
{
  v3 = a2;
  sqlite3_reset(a1);
  while (1)
  {
    v4 = sqlite3_step(a1);
    if (v4 != 100)
    {
      break;
    }

    v5 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:a1 column:0];
    v6 = sqlite3_column_int64(a1, 2);
    v7 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:a1 column:1];
    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:a1 column:3];
    LOBYTE(v6) = v3[2](v3, v5, v6, v7, v8, 0);

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v4 == 101)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  (v3)[2](v3, 0, 0, 0, 0, v9);
LABEL_8:
  sqlite3_reset(a1);

  return v9;
}

id selectSQLite3(sqlite3 *a1, const char *a2, void *a3, void *a4)
{
  v63[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  ppStmt = 0;
  if (*a4)
  {
    goto LABEL_2;
  }

  if (sqlite3_prepare_v2(a1, a2, -1, &ppStmt, 0))
  {
    [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
    v9 = 0;
    *a4 = v10 = 0;
    goto LABEL_6;
  }

  v55 = a2;
  v12 = sqlite3_bind_parameter_count(ppStmt);
  if (v12 >= 2)
  {
    v13 = v12;
    v14 = 1;
    v15 = 0x277CCA000uLL;
    v54 = *MEMORY[0x277D0F1A0];
    while (1)
    {
      if (*a4)
      {
        goto LABEL_2;
      }

      v16 = sqlite3_bind_parameter_name(ppStmt, v14);
      if (!v16)
      {
        v44 = MEMORY[0x277CCA9B8];
        v63[0] = &unk_286628DC8;
        v62[0] = @"extcode";
        v62[1] = @"text";
        v45 = [*(v15 + 3240) stringWithFormat:@"statement cannot contain nameless parameters (%d is nameless)", v14];
        v63[1] = v45;
        v62[2] = @"statement";
        v46 = [*(v15 + 3240) stringWithUTF8String:v55];
        v63[2] = v46;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
        *a4 = [v44 errorWithDomain:v54 code:3 userInfo:v47];

        goto LABEL_2;
      }

      v17 = v16;
      v18 = [*(v15 + 3240) stringWithUTF8String:v16];
      v19 = [v7 objectForKey:v18];

      if (v19)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }

      sqlite3_bind_null(ppStmt, v14);
LABEL_34:

      v14 = (v14 + 1);
      if (v13 == v14)
      {
        goto LABEL_37;
      }
    }

    v20 = v19;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v56 = v22;

    if (isKindOfClass)
    {
      bindDataSQLite3(ppStmt, v14, v20, a4);
LABEL_21:
      v23 = 0;
      v24 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v24 = v20;
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v25)
    {
      bindStringSQLite3(ppStmt, v14, v24, a4);
      v23 = 0;
    }

    else
    {
      v23 = v24;
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();
      if (v28)
      {
        v29 = v23;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      if ((v28 & 1) == 0)
      {
        v53 = MEMORY[0x277CCA9B8];
        v61[0] = &unk_286628DC8;
        v60[0] = @"extcode";
        v60[1] = @"text";
        v31 = MEMORY[0x277CCACA8];
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = [v31 stringWithFormat:@"bind parameter %s is not of a recognized type %@ is not a (NSNull, NSData, NSString, or NSNumber)", v17, v33];
        v61[1] = v34;
        v60[2] = @"statement";
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v55];
        v61[2] = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];
        *a4 = [v53 errorWithDomain:v54 code:3 userInfo:v36];

        v15 = 0x277CCA000;
        goto LABEL_21;
      }

      bindIntSQLite3(ppStmt, v14, [v23 longLongValue], a4);
      v24 = 0;
    }

    v15 = 0x277CCA000;
    goto LABEL_33;
  }

LABEL_37:
  if (*a4)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  v37 = 0;
  v38 = sqlite3_column_count(ppStmt);
  while (1)
  {
    v39 = sqlite3_step(ppStmt);
    if (v39 != 100)
    {
      if (v39 != 101)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:ppStmt];
      }

      sqlite3_finalize(ppStmt);
      if (*a4)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }

      v9 = v37;
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v38];

    if (v38 >= 1)
    {
      break;
    }

LABEL_54:
    [v8 addObject:v9];
    v37 = v9;
  }

  v40 = 0;
  while (1)
  {
    v41 = sqlite3_column_type(ppStmt, v40);
    if (v41 <= 2)
    {
      break;
    }

    switch(v41)
    {
      case 3:
        v42 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:ppStmt column:v40];
        break;
      case 5:
        v42 = [MEMORY[0x277CBEB68] null];
        break;
      case 4:
        v42 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:ppStmt column:v40];
        break;
      default:
        goto LABEL_56;
    }

LABEL_53:
    v43 = v42;
    [v9 addObject:v42];

    v40 = (v40 + 1);
    if (v38 == v40)
    {
      goto LABEL_54;
    }
  }

  if (v41 == 1)
  {
    v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(ppStmt, v40)}];
    goto LABEL_53;
  }

  if (v41 == 2)
  {
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(ppStmt, v40)}];
    goto LABEL_53;
  }

LABEL_56:
  v48 = MEMORY[0x277CCA9B8];
  v49 = *MEMORY[0x277D0F1A0];
  v59[0] = &unk_286628DC8;
  v58[0] = @"extcode";
  v58[1] = @"text";
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"column %d is of SQLite3 type %d (not recognized)", v40, v41];
  v59[1] = v50;
  v58[2] = @"statement";
  v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:v55];
  v59[2] = v51;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:3];
  *a4 = [v48 errorWithDomain:v49 code:3 userInfo:v52];

LABEL_3:
  v10 = 0;
LABEL_6:

  return v10;
}

id runSQLite3(sqlite3 *a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (sqlite3_exec(a1, a2, 0, 0, 0))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1];
      v10 = 138543874;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Got Error %@ on %s", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

sqlite3_stmt *prepareSQLite3(sqlite3 *a1, const char *a2, void *a3)
{
  ppStmt = 0;
  if (!sqlite3_prepare_v2(a1, a2, -1, &ppStmt, 0))
  {
    return ppStmt;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
  v7 = v6;
  result = 0;
  *a3 = v6;
  return result;
}

void sub_2538E4458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119149(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538E6FD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_2538E86F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_2538EA594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538EC1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2538EC5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119970(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538ED41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2538F20C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_2538F6AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleFinishedUnarchive_block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2 == 3)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v70 = v7;
      v71 = 2112;
      v72 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finished unarchive with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v9 setState:2];
LABEL_40:
      [*(a1 + 32) setExtractor:0];
      return;
    }

    v11 = v9;
    v12 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMDSoftwareUpdateDocumentationAsset.validation"];
    v13 = objc_autoreleasePoolPush();
    v14 = [v11 fileManager];
    v15 = [v11 bundleURL];
    v16 = [v14 bundleWithURL:v15];

    if (v16)
    {
      v68 = v13;
      v17 = MEMORY[0x277CD1E58];
      v18 = [v11 fileManager];
      v19 = [v17 localizationsForBundle:v16 fileManager:v18];

      v20 = [v19 count];
      v21 = objc_autoreleasePoolPush();
      v22 = v11;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v70 = v25;
          v71 = 2112;
          v72 = v19;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Available localizations: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = objc_alloc(MEMORY[0x277CD1E58]);
        v27 = [v22 fileManager];
        v28 = [v26 initWithBundle:v16 fileManager:v27];

        v29 = v28 != 0;
        v30 = objc_autoreleasePoolPush();
        v31 = v22;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (v28)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v34 = v67 = v12;
            *buf = 138543618;
            v70 = v34;
            v71 = 2112;
            v72 = v28;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Cached documentation: %@", buf, 0x16u);

            v12 = v67;
          }

          objc_autoreleasePoolPop(v30);
          v35 = 0;
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v43 = v67 = v12;
            *buf = 138543618;
            v70 = v43;
            v71 = 2112;
            v72 = v16;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse documentation for asset bundle: %@", buf, 0x16u);

            v12 = v67;
          }

          objc_autoreleasePoolPop(v30);
          v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        }
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v70 = v42;
          v71 = 2112;
          v72 = v16;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@No available localization for asset bundle: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v29 = 0;
      }

      v13 = v68;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v11;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v40 = v39 = v13;
        v41 = [v37 bundleURL];
        *buf = 138543618;
        v70 = v40;
        v71 = 2112;
        v72 = v41;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to create bundle from: %@", buf, 0x16u);

        v13 = v39;
      }

      objc_autoreleasePoolPop(v36);
      v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v29 = 0;
    }

    objc_autoreleasePoolPop(v13);
    v44 = v35;

    v45 = v35;
    v46 = v45;
    if (v29)
    {
      v47 = v45;
    }

    else
    {
      v48 = *(a1 + 32);
      v49 = [objc_alloc(MEMORY[0x277CD1E58]) initWithAsset:v48];
      v50 = objc_autoreleasePoolPush();
      v51 = v48;
      v52 = HMFGetOSLogHandle();
      v53 = v52;
      if (v49)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543618;
          v70 = v54;
          v71 = 2112;
          v72 = v49;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Cached documentation: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        v55 = v46;
      }

      else
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v56 = HMFGetLogIdentifier();
          v57 = [v51 URL];
          *buf = 138543618;
          v70 = v56;
          v71 = 2112;
          v72 = v57;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse documentation from asset url: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        v55 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        v58 = v55;
      }

      v47 = v55;
      if (!v49)
      {
        v61 = objc_autoreleasePoolPush();
        v62 = *(a1 + 32);
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = HMFGetLogIdentifier();
          *buf = 138543618;
          v70 = v64;
          v71 = 2112;
          v72 = v47;
          _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to validate asset with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v61);
        [*(a1 + 32) setState:0];
        [*(a1 + 32) increaseDownloadRetryCount];
        v65 = [*(a1 + 32) fileManager];
        v66 = [*(a1 + 32) bundleURL];
        [v65 removeItemAtURL:v66 error:0];

        goto LABEL_39;
      }
    }

    [*(a1 + 32) setState:{4, v67}];
    [*(a1 + 32) resetDownloadRetryCount];
LABEL_39:
    v59 = [*(a1 + 32) fileManager];
    v60 = [*(a1 + 32) archiveURL];
    [v59 removeItemAtURL:v60 error:0];

    goto LABEL_40;
  }

  if (v6)
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v70 = v10;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to finish unarchive, not currently unarchiving", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2538F7C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleStartedUnarchive_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start unarchive with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) cancelUnarchive];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Started unarchive", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v10 = [*(a1 + 40) extractor];
    [v10 setExtractorDelegate:*(a1 + 40)];

    v11 = [*(a1 + 40) archivedFileStream];
    [v11 open];

    __processNextArchivedData(*(a1 + 40));
  }
}

void __processNextArchivedData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____processNextArchivedData_block_invoke;
    block[3] = &unk_279735D00;
    v5 = v1;
    dispatch_async(v3, block);
  }
}

void ____processNextArchivedData_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) archivedFileStream];
  v4 = [v3 hasBytesAvailable];

  v5 = objc_autoreleasePoolPush();
  v6 = *v2;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Reading next chunk from the archive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    v12 = [v11 archivedFileStream];
    v13 = [v12 read:buf maxLength:4096];

    v14 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:v13];
    objc_initWeak(&location, *v10);
    v15 = [*v10 extractor];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ____processNextArchivedData_block_invoke_414;
    v17[3] = &unk_27972BFD8;
    objc_copyWeak(&v18, &location);
    [v15 supplyBytes:v14 withCompletionBlock:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reached end of input stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) finishUnarchive];
  }
}

void sub_2538F8200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____processNextArchivedData_block_invoke_414(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v7;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to append data with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 cancelUnarchive];
  }

  else if (a3)
  {
    [WeakRetained finishUnarchive];
  }

  else
  {
    __processNextArchivedData(WeakRetained);
  }
}

id __resourceBundleForBundle(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 URLForResource:@"AssetData" withExtension:0];
  if (v5)
  {
    v6 = [v4 bundleWithURL:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find resource bundle", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

id __htmlDocumentForResource(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 URLForResource:v7 withExtension:@"html" subdirectory:0 localization:*(*(&v23 + 1) + 8 * i)];
        if (v13)
        {
          v15 = v13;
          v22 = 0;
          v14 = [objc_alloc(MEMORY[0x277CD1A58]) initWithURL:v13 error:&v22];
          v16 = v22;
          if (!v14)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v20 = [v15 path];
              *buf = 138543874;
              v28 = v19;
              v29 = 2112;
              v30 = v20;
              v31 = 2112;
              v32 = v16;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to load document, %@, with error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v17);
          }

          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

void sub_253903B28(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253903BB4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__123908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25391206C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v33 + 80));
  objc_destroyWeak((v32 + 72));
  objc_destroyWeak((v32 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v34 - 176));
  objc_destroyWeak((v34 - 160));
  _Unwind_Resume(a1);
}

void sub_253912DB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t hasAssistantHashingKeyChanged()
{
  v0 = objc_alloc(MEMORY[0x277D0F918]);
  v1 = [v0 initWithKey:@"HMDAssistantLastHashingKey" options:0 domain:*MEMORY[0x277CD0030] defaultValue:0];
  v2 = [v1 stringValue];
  v3 = +[HMDHelper sharedHelper];
  v4 = [v3 hashedRouteIDForIdentifier:@"A77C551E-C3FA-414E-ACD8-A7DF3D64E9D6"];

  LODWORD(v3) = HMFEqualObjects();
  return v3 ^ 1;
}

void sub_253913958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void __HMDLostModeManagerExitLostModeWithAuthCompleteNotification(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D08F78] sharedInstance];
  v4 = [v3 needsLostModeExitAuth];

  v5 = objc_autoreleasePoolPush();
  v6 = v2;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received lost mode exit auth notification, but findmy indicates device hasn't exited lost mode with auth", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Sending lost mode exit with auth complete notification", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"HMDLostModeManagerDidExitLostModeWithAuthCompleteNotification" object:v6];
  }
}

void __HMDLostModeManagerLostModeChangeNotification(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [MEMORY[0x277D08F78] sharedInstance];
    v6 = [v5 lostModeIsActive];

    if (LOBYTE(v4[3]._os_unfair_lock_opaque) == v6)
    {
      os_unfair_lock_unlock(v4 + 2);
    }

    else
    {
      LOBYTE(v4[3]._os_unfair_lock_opaque) = v6;
      os_unfair_lock_unlock(v4 + 2);
      v7 = objc_autoreleasePoolPush();
      v8 = v4;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = HMFBooleanToString();
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification lost mode is active: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 postNotificationName:@"HMDLostModeManagerUpdatedNotification" object:v8];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2539190E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 112));
  _Unwind_Resume(a1);
}

void __deleteAccountModel(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3[1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ____deleteAccountModel_block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __notifyDelegateAccountRemoved_124710(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Account removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = @"HMDAccountNotificationKey";
    v13 = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v10 postNotificationName:@"HMDRemoteAccountManagerRemovedAccountNotification" object:v7 userInfo:v11];
  }
}

void ____deleteAccountModel_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldSyncAccount:*(a1 + 40)])
  {
    v3 = [*(a1 + 32) backingStore];
    v2 = [*(a1 + 40) modelBackedObjects];
    [v3 deleteModelObjects:v2 destination:2];
  }
}

void ____addAccountModel_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldSyncAccount:*(a1 + 40)])
  {
    v3 = [*(a1 + 32) backingStore];
    v2 = [*(a1 + 40) modelBackedObjects];
    [v3 updateModelObjects:v2 destination:2];
  }
}

void sub_25391CC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleUnregisteredDestination_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) shortDescription];
        v13 = [*(a1 + 32) shortDescription];
        v21 = 138543874;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v14 = "%{public}@Account handle, %@, failed to resolve, removing from account: %@";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, v14, &v21, 0x20u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (([*(a1 + 32) isEqual:v5] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) shortDescription];
        v13 = [*(a1 + 32) shortDescription];
        v21 = 138543874;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v14 = "%{public}@Account handle, %@, now registered to account: %@";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) removeHandle:*(a1 + 40)];
      goto LABEL_14;
    }

    if (*(a1 + 48))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = WeakRetained;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 48);
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Removing unregistered device: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) removeDevice:*(a1 + 48)];
    }
  }

LABEL_14:
}

uint64_t __Block_byref_object_copy__125051(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25391E434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18 + 7);
  objc_destroyWeak(v18 + 6);
  objc_destroyWeak(v18 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_25391F2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25391F4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539204BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253921D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 88));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_2539257A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253929688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __documentationMaxSize_block_invoke()
{
  v0 = MEMORY[0x277D0F8D0];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0x200000];
  [v0 setDefaultValue:v1 forPreferenceKey:@"firmwareUpdateDocumentationMaxSize"];
}

uint64_t minimumApplyDurationAllowance()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"firmwareUpdateMinimumApplyDurationAllowance"];
  v2 = [v1 numberValue];
  v3 = [v2 unsignedIntValue];

  return v3;
}

void sub_25392E844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25392E958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __maxSocketIdleDuration_block_invoke()
{
  v0 = MEMORY[0x277D0F8D0];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:60];
  [v0 setDefaultValue:v1 forPreferenceKey:@"firmwareUpdateMaxSocketIdleDuration"];
}

void sub_253936BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253936E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25393A230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25393B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25393C2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__126709(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25393C8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDMinimumHomeKitVersionSupportingHH2(uint64_t a1, uint64_t a2)
{
  isInternalBuild();
  v2 = +[HMDHomeKitVersion version10];

  return v2;
}

void sub_253946A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539476F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539477F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253947EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253948BB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25394A270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394ABC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394B02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394B7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394BBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394DA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394DD8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_25394F268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__127909(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253950FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253954AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253955340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25395584C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *HMDNetworkRouterSupportAsString(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v3 = v2;
  v4 = a1;
  if (a1)
  {
    [v2 addObject:@"Home Protection Mode Update"];
    v4 = a1 & 0xFFFFFFFFFFFFFFFELL;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Accessory Protection Mode Update"];
  v4 &= ~2uLL;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v3 addObject:@"Add Network Router"];
  v4 &= ~4uLL;
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"WiFi Unique PreShared Key"];
    v4 &= ~8uLL;
  }

LABEL_6:
  if ([v3 count])
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"Unknown";
    if (!v4)
    {
      v6 = @"Disabled";
    }

    v5 = v6;
  }

  v7 = v5;

  return v7;
}

void sub_25395A69C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25395BF28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

HMDNetworkRouterAccessViolationControl *accessViolationControlWithType(uint64_t a1)
{
  v1 = [[HMDNetworkRouterAccessViolationControlOperation alloc] initWithOperation:a1];
  v2 = [[HMDNetworkRouterAccessViolationControl alloc] initWithOperation:v1 clientIdentifierList:0];

  return v2;
}

HMDNetworkRouterClientControl *clientControlWithOperationType(uint64_t a1)
{
  v1 = [[HMDNetworkRouterControlOperation alloc] initWithOperation:a1];
  v2 = objc_alloc_init(HMDNetworkRouterClientConfiguration);
  v3 = [[HMDNetworkRouterClientControlOperation alloc] initWithOperation:v1 configuration:v2];

  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v5 = [[HMDNetworkRouterClientControl alloc] initWithOperations:v4];

  return v5;
}

uint64_t __Block_byref_object_copy__130259(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDRemoteEventRouterProtoFetchEventsMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
        [a1 addTopics:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_253979184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__131128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isRecordingAllowedForSettings(void *a1)
{
  v1 = a1;
  [v1 accessModeAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v2 = 1;
  }

  else
  {
    [v1 accessModeNotAtHome];
    v2 = HMIsRecordingAllowedForCameraAccessMode();
  }

  return v2;
}

void sub_253981AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253982724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __destinationForAccountHandle(uint64_t a1, void *a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    v4 = [a2 remoteDestinationString];
    v2 = vars8;
  }

  return v4;
}

__CFString *HMDUserConfirmationResponseAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserConfirmationResponse %tu", a1];
  }

  else
  {
    v2 = off_27972D098[a1 - 1];
  }

  return v2;
}

void sub_25398871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25398915C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id actionSetFromObject(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"objectReference"];
  v3 = [v1 hmf_stringForKey:@"objectType"];

  if ([v3 isEqualToString:@"SCENE"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id valueWithAssistantUnits(void *a1, void *a2, void *a3, void *a4, unsigned int a5, int a6)
{
  v49 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v51 = +[HMDHAPMetadata getSharedInstance];
  v13 = v12;
  v14 = v10;
  v15 = v11;
  v16 = +[HMDHAPMetadata getSharedInstance];
  v17 = [v16 characteristicValueUnit:v15];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18;
  v20 = [v16 supportsLocalization:v14];

  if (v20)
  {
    v21 = a6;
    v22 = v17;
    v23 = *MEMORY[0x277CCF6F8];
    v24 = [v22 isEqualToString:*MEMORY[0x277CCF6F8]];
    v25 = *MEMORY[0x277CCF700];
    if ((v24 & 1) != 0 || (v26 = [v22 isEqualToString:*MEMORY[0x277CCF700]], v27 = v22, v26))
    {
      if (v21)
      {
        v27 = v23;
      }

      else
      {
        v27 = v25;
      }
    }

    v28 = v27;

    if (!v13 || (v29 = [v13 isEqualToString:v28], v30 = v13, v29))
    {
      v30 = v28;
    }

    v31 = v30;

    v19 = v31;
  }

  else
  {
    v23 = *MEMORY[0x277CCF6F8];
    v25 = *MEMORY[0x277CCF700];
  }

  v32 = [v51 characteristicValueUnit:v15];

  v33 = v49;
  v34 = v32;
  v35 = v19;
  v36 = v33;
  if ([v34 isEqualToString:v23])
  {
    v37 = v36;
    if (![v35 isEqualToString:v25])
    {
      goto LABEL_22;
    }

    [v36 floatValue];
    v38 = MEMORY[0x277CCABB0];
    *&v39 = (*&v39 * 1.8) + 32.0;
    goto LABEL_21;
  }

  v37 = v36;
  if ([v34 isEqualToString:v25])
  {
    v37 = v36;
    if ([v35 isEqualToString:v23])
    {
      [v36 floatValue];
      v38 = MEMORY[0x277CCABB0];
      *&v39 = ((*&v39 + -32.0) * 5.0) / 9.0;
LABEL_21:
      v37 = [v38 numberWithFloat:v39];
    }
  }

LABEL_22:

  v40 = [v51 mapToAssistantCharacteristicValue:v37 name:v14 getActionType:a5];

  v41 = [v51 mapToAssistantUnitName:v35];
  v42 = [v51 mapCharacteristicValueType:v14];

  v43 = v40;
  v44 = v42;
  v45 = v41;
  if ([v44 isEqualToString:*MEMORY[0x277CCF6B0]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47340]);
    [v46 setValue:{objc_msgSend(v43, "BOOLValue")}];
  }

  else if (([v44 isEqualToString:*MEMORY[0x277CCF6C0]] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6E8]) & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6D0]) & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6D8]) & 1) != 0 || objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6E0]))
  {
    v46 = objc_alloc_init(MEMORY[0x277D47370]);
    [v46 setValue:{objc_msgSend(v43, "integerValue")}];
  }

  else if ([v44 isEqualToString:*MEMORY[0x277CCF6B8]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47360]);
    [v43 floatValue];
    [v46 setValue:?];
  }

  else if ([v44 isEqualToString:*MEMORY[0x277CCF6C8]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47388]);
    v48 = objc_msgSend_copy(v43);
    [v46 setValue:v48];
  }

  else
  {
    v46 = 0;
  }

  [v46 setUnits:v45];

  return v46;
}

HMDAssistantCharacteristicTuple *getTupleForCharacteristic(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = +[HMDHAPMetadata getSharedInstance];
  v8 = [v6 characteristicType];

  v9 = [v7 mapToAssistantCharacteristicName:v8];
  v10 = [v7 mapCharacteristicValueType:v9];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = valueWithAssistantUnits(0, v8, v9, v5, 1u, a3);
    v14 = [[HMDAssistantCharacteristicTuple alloc] initWithAttribute:v9 value:v13];
  }

  return v14;
}

void __isMetricLocale_block_invoke()
{
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v0 = [v1 objectForKey:*MEMORY[0x277CBE718]];
  isMetricLocale_isMetricLocale = [v0 BOOLValue];
}

uint64_t applyGuardTime()
{
  if (applyGuardTime_onceToken != -1)
  {
    dispatch_once(&applyGuardTime_onceToken, &__block_literal_global_77_133136);
  }

  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"firmwareUpdateApplyGuardTime"];
  v2 = [v1 numberValue];

  v3 = [v2 unsignedIntValue];
  return v3;
}

void sub_25398E558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25398EBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__133678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25398F1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25398FBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253990ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18, id a19)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void logAndPostNotification(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 defaultCenter];
  logAndPostNotificationWithNotificationCenter(v9, v8, v7, v6);
}

void logAndPostNotificationWithNotificationCenter(void *a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending notification %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v16;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Sending notification %@ with object %@ and userInfo %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  [v7 postNotificationName:v8 object:v9 userInfo:v10];
}

void sub_25399845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__134914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253998814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_253998AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

id __descriptionsForRecordIDArray(void *a1)
{
  v1 = [a1 na_map:&__block_literal_global_436];
  v2 = objc_msgSend_copy(v1);

  return v2;
}

void sub_253998F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2539992F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id __descriptionsForRecordIDSet(void *a1)
{
  v1 = [a1 na_map:&__block_literal_global_434];
  v2 = objc_msgSend_copy(v1);

  return v2;
}

void sub_25399976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_253999C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25399A118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25399C1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25399C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25399CD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539A42D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539A4FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539A55A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539A67DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2539A7F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__135889(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2539A826C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539A8570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2539A8758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539A8F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539AA18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539AA850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539AB4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539B22F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoConnectMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v25) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v25 & 0x7F) << v16;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 16) = v22;
          goto LABEL_49;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(MEMORY[0x277D174E0]);
          v15 = 8;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(MEMORY[0x277D174E0]);
            v15 = 40;
LABEL_28:
            objc_storeStrong((a1 + v15), v14);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
            {
LABEL_51:

              return 0;
            }

LABEL_30:
            PBReaderRecallMark();
LABEL_31:

            goto LABEL_49;
          case 5:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addTopicFilterAdditions:v14];
            }

            goto LABEL_31;
          case 6:
            v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
            [a1 addTopicAdditions:v14];
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMDCameraRecordingVideoCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDCameraRecordingVideoCodecTypeH265";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingVideoCodecType %ld", a1];
    }
  }

  else
  {
    v2 = @"HMDCameraRecordingVideoCodecTypeH264";
  }

  return v2;
}

__CFString *HMDCameraRecordingH264ProfileTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingH264ProfileType %ld", a1];
  }

  else
  {
    v2 = off_27972D870[a1];
  }

  return v2;
}

__CFString *HMDCameraRecordingH264LevelTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingH264LevelType %ld", a1];
  }

  else
  {
    v2 = off_27972D888[a1];
  }

  return v2;
}

void translateResolutionWidthHeight(void *a1, void *a2, uint64_t *a3)
{
  v7 = a1;
  v5 = a2;
  if ([v7 isEqualToNumber:&unk_2866292F0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629308) & 1) != 0)
  {
    v6 = 1;
  }

  else if ([v7 isEqualToNumber:&unk_286629320] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629338) & 1) != 0)
  {
    v6 = 2;
  }

  else if ([v7 isEqualToNumber:&unk_286629350] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629368) & 1) != 0)
  {
    v6 = 3;
  }

  else if ([v7 isEqualToNumber:&unk_286629380] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629398) & 1) != 0)
  {
    v6 = 4;
  }

  else if ([v7 isEqualToNumber:&unk_2866292F0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293B0) & 1) != 0)
  {
    v6 = 5;
  }

  else if ([v7 isEqualToNumber:&unk_286629350] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293C8) & 1) != 0)
  {
    v6 = 6;
  }

  else if ([v7 isEqualToNumber:&unk_2866293E0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293F8) & 1) != 0)
  {
    v6 = 7;
  }

  else if ([v7 isEqualToNumber:&unk_286629410] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629428) & 1) != 0)
  {
    v6 = 8;
  }

  else if ([v7 isEqualToNumber:&unk_2866293C8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629350) & 1) != 0)
  {
    v6 = 9;
  }

  else if ([v7 isEqualToNumber:&unk_2866293F8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293E0) & 1) != 0)
  {
    v6 = 10;
  }

  else if ([v7 isEqualToNumber:&unk_286629440] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629458) & 1) != 0)
  {
    v6 = 11;
  }

  else if ([v7 isEqualToNumber:&unk_286629470] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293F8) & 1) != 0)
  {
    v6 = 12;
  }

  else if ([v7 isEqualToNumber:&unk_286629458] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629440) & 1) != 0)
  {
    v6 = 13;
  }

  else if ([v7 isEqualToNumber:&unk_2866293F8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629470) & 1) != 0)
  {
    v6 = 14;
  }

  else if ([v7 isEqualToNumber:&unk_286629368] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629350) & 1) != 0)
  {
    v6 = 15;
  }

  else if ([v7 isEqualToNumber:&unk_286629338] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629320) & 1) != 0)
  {
    v6 = 16;
  }

  else if ([v7 isEqualToNumber:&unk_286629428] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629410) & 1) != 0)
  {
    v6 = 17;
  }

  else if ([v7 isEqualToNumber:&unk_286629488] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629488) & 1) != 0)
  {
    v6 = 18;
  }

  else if ([v7 isEqualToNumber:&unk_2866293C8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293C8) & 1) != 0)
  {
    v6 = 19;
  }

  else if ([v7 isEqualToNumber:&unk_2866293F8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293F8) & 1) != 0)
  {
    v6 = 20;
  }

  else if ([v7 isEqualToNumber:&unk_286629398] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629398) & 1) != 0)
  {
    v6 = 21;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void sub_2539BA5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id logDescriptionForAccessory(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if (isKindOfClass)
    {
      [v1 needsAirplayAccess];
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = [v1 name];
    v8 = [v1 uuid];
    v9 = [v1 identifier];
    v10 = HMFBooleanToString();
    v11 = HMFBooleanToString();
    v5 = [v6 stringWithFormat:@"'%@' (%@ / %@, HAP=%@, Airplay=%@)", v7, v8, v9, v10, v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2539BD6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v10 - 152));
  _Unwind_Resume(a1);
}

void ContinueRouterOperationOnWorkQueue(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = [v7 workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __ContinueRouterOperationOnWorkQueue_block_invoke;
    v13[3] = &unk_27972DE98;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    dispatch_async(v11, v13);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    (*(v9 + 2))(v9, v12);
  }
}

void __ContinueRouterOperationOnWorkQueue_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_2539BEA74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

uint64_t credentialTypeForCredential(void *a1)
{
  v1 = a1;
  v2 = [v1 psk];

  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v4 = [v1 macAddress];
    v5 = v4 != 0;

    v3 = 2 * v5;
  }

  return v3;
}

uint64_t getProtectionModeForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 home];
  v3 = [v2 protectionMode];

  if (v3 && [v1 supportsNetworkProtection])
  {
    v4 = [v1 targetNetworkProtectionMode];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

BOOL shouldManageAccessory(void *a1)
{
  v1 = a1;
  if ([v1 supportsNetworkProtection])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v1 wiFiUniquePreSharedKey];
    if (v3)
    {
      v2 = 1;
    }

    else
    {
      v4 = [v1 networkClientIdentifier];
      v2 = v4 != 0;
    }
  }

  return v2;
}

void sub_2539BF7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539BFF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539C032C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HMDNetworkRouterCredential *networkRouterCredentialForAccessory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(HMDNetworkRouterCredential);
  v6 = [v3 wiFiUniquePreSharedKey];

  if (v6)
  {
    v7 = [v3 wiFiUniquePreSharedKey];
    [(HMDNetworkRouterCredential *)v5 setPsk:v7];
  }

  else
  {
    [(HMDNetworkRouterCredential *)v5 setMacAddress:v4];
  }

  return v5;
}

void sub_2539C0F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539C30B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539C3FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDCreateUniquePSKClientConfiguration_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __HMDCreateUniquePSKClientConfiguration_block_invoke_2;
    v6[3] = &unk_27972DAD8;
    v9 = *(a1 + 64);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v4 addClientConfiguration:v5 completion:v6];
  }
}

void __HMDCreateUniquePSKClientConfiguration_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [HMDAccessoryNetworkCredential alloc];
    v6 = [*(a1 + 32) uuid];
    v7 = [(HMDAccessoryNetworkCredential *)v5 initWithNetworkRouterUUID:v6 clientIdentifier:v8 wiFiPSK:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2539C73F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__138204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id keyFromSelector(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  if ([v1 hasPrefix:@"set"] && objc_msgSend(v1, "length") != 3)
  {
    v2 = [v1 substringWithRange:{3, 1}];
    v3 = [v2 lowercaseString];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      v5 = v1;

      goto LABEL_7;
    }

    v6 = [v2 lowercaseString];
    v7 = [v1 substringWithRange:{4, objc_msgSend(v1, "length") - 5}];
    v8 = [v6 stringByAppendingString:v7];

    v1 = v8;
  }

  v5 = v1;
LABEL_7:

  return v5;
}

void setPropertyIMP(void *a1, const char *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = keyFromSelector(a2);
  if (![v5 propertyIsReadOnly:v8])
  {
    v14 = [objc_opt_class() properties];
    v15 = [v14 objectForKey:v8];
    v16 = [v15 classObj];

    if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = MEMORY[0x277CBEAD8];
      v22 = *MEMORY[0x277CBE658];
      v23 = MEMORY[0x277CCACA8];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromClass(v16);
      v27 = [v23 stringWithFormat:@"Property for parameter %@ was supplied as %@, but was expected to be %@.", v8, v25, v26];
      v28 = [v21 exceptionWithName:v22 reason:v27 userInfo:0];
      v29 = v28;

      objc_exception_throw(v28);
    }

    if (v5[1])
    {
      if (v6)
      {
LABEL_9:
        v17 = v5[1];
        v18 = [v8 hmf_stringWithSmallestEncoding];
        [v17 setValue:v6 forKey:v18];

        goto LABEL_10;
      }
    }

    else
    {
      v19 = [MEMORY[0x277CBEB38] dictionary];
      v20 = v5[1];
      v5[1] = v19;

      if (v6)
      {
        goto LABEL_9;
      }
    }

    v6 = [MEMORY[0x277CBEB68] null];
    goto LABEL_9;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v5;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = +[HMDBackingStoreSingleton dataVersion];
    *buf = 138544130;
    v31 = v12;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempting to write property %@ from %@, unwritable in homed data version %@.", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:

  objc_autoreleasePoolPop(v7);
}

id propertyIMP(void *a1, const char *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = NSStringFromSelector(a2);
  if ([v3 propertyIsAvailable:v5])
  {
    v6 = [objc_opt_class() properties];
    v7 = [v6 objectForKey:v5];

    if (v7)
    {
      v8 = [v3[1] objectForKey:v5];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v8)
        {

          objc_autoreleasePoolPop(v4);
          goto LABEL_14;
        }

        v18 = [v7 defaultValue];
        goto LABEL_13;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v3;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ from %@, does not appear defined.", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v8 = 0;
    }

    v18 = 0;
LABEL_13:

    objc_autoreleasePoolPop(v4);
    v8 = v18;
    goto LABEL_14;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v3;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = +[HMDBackingStoreSingleton dataVersion];
    v20 = 138544130;
    v21 = v12;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ from %@, unavailable in homed data version %@ (returning nil).", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  objc_autoreleasePoolPop(v4);
  v8 = 0;
LABEL_14:

  return v8;
}