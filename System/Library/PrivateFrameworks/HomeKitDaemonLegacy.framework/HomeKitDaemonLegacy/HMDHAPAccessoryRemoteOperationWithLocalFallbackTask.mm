@interface HMDHAPAccessoryRemoteOperationWithLocalFallbackTask
- (BOOL)_shouldFallbackLocallyWithError:(id)error accessory:(id)accessory;
- (HMDHAPAccessoryRemoteOperationWithLocalFallbackTask)initWithContext:(id)context requests:(id)requests delegateDevice:(id)device completion:(id)completion;
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
- (id)_makeRemoteTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion;
- (id)_remoteTaskCompletionHandler;
- (id)completion;
- (void)_startScanningForSuspendedAccessoriesWithRequests:(id)requests;
- (void)execute;
@end

@implementation HMDHAPAccessoryRemoteOperationWithLocalFallbackTask

- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)_makeRemoteTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  requestsCopy = requests;
  deviceCopy = device;
  completionCopy = completion;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)_remoteTaskCompletionHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke;
  v4[3] = &unk_279735360;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained remoteTask];
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

    v38 = v8;
    v9 = [v8 logEvents];
    v10 = [v9 mutableCopy];

    [MEMORY[0x277D17DC0] currentTime];
    v12 = v11;
    v13 = [v5 remoteTask];
    v14 = [v13 requests];
    v15 = [v14 mutableCopy];

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke_377;
    v43[3] = &unk_279735338;
    v17 = v15;
    v44 = v17;
    v45 = v5;
    v18 = v16;
    v46 = v18;
    v19 = v10;
    v47 = v19;
    v48 = v12;
    v20 = [v3 na_map:v43];
    v21 = [v20 mutableCopy];

    [v5 addCharacteristicResponses:v18 isRemote:1];
    if ([v18 count])
    {
      v22 = objc_opt_class();
      v23 = [v5 requestIdentifier];
      v24 = [v23 UUIDString];
      [v22 updateLogEvents:v19 withResponses:v18 forTaskID:v24 shouldSubmit:1];

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke_379;
      v41[3] = &unk_279735100;
      v42 = v19;
      [v18 na_each:v41];
    }

    if ([v17 count] && (objc_msgSend(v5, "supportsMultiPartResponse") & 1) == 0)
    {
      context = objc_autoreleasePoolPush();
      v25 = v5;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138544130;
        v50 = v27;
        v51 = 2112;
        v52 = v25;
        v53 = 2112;
        v54 = v17;
        v55 = 2112;
        v56 = v3;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[%@] Missing remote responses. Falling back to locally processing requests: %@ -> %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      [v21 addObjectsFromArray:v17];
    }

    if ([v21 count])
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke_380;
      v39[3] = &unk_279735360;
      objc_copyWeak(&v40, (a1 + 32));
      v28 = [v5 _makeLocalTaskWithRequests:v21 completion:v39];
      [v5 setFallbackLocalTask:v28];

      v29 = [v5 fallbackLocalTask];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      if (v31)
      {
        [v31 setLogEvents:v19];
      }

      v32 = [v5 fallbackLocalTask];
      [v32 execute];

      objc_destroyWeak(&v40);
    }

    else
    {
      v36 = [v5 completion];
      (v36)[2](v36, v18);
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v35;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for HMDHAPAccessoryRemoteOperationWithLocalFallbackTask remote task completion handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
  }
}

id __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke_377(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];
  v5 = *(a1 + 32);
  v6 = [v3 request];
  [v5 removeObject:v6];

  v7 = [v3 request];
  v8 = [v7 accessory];

  if (!v8)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543874;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      v40 = 2112;
      v41 = v3;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Lost reference to accessory for response: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [*(a1 + 48) addObject:v3];
    goto LABEL_9;
  }

  if (![*(a1 + 40) _shouldFallbackLocallyWithError:v4 accessory:v8])
  {
    v20 = *(a1 + 48);
    v21 = [v8 _updatedResponseForRemoteResponse:v3];
    [v20 addObject:v21];

LABEL_9:
    v22 = 0;
    goto LABEL_21;
  }

  v9 = [v3 request];
  v10 = [v9 accessory];
  v11 = [v10 uuid];
  v12 = [v11 UUIDString];

  if (v12)
  {
    v13 = [*(a1 + 56) objectForKeyedSubscript:v12];
    v14 = [v3 error];
    [v13 setResidentFirstError:v14];

    [v13 setResidentFirstEndTime:*(a1 + 64)];
  }

  else
  {
    v13 = 0;
  }

  v23 = [*(a1 + 40) requestToResponseMap];
  v24 = [v3 request];
  v25 = [v23 objectForKey:v24];

  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 40);
  v28 = HMFGetOSLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (v25)
  {
    if (v29)
    {
      v30 = HMFGetLogIdentifier();
      v31 = *(a1 + 40);
      *buf = 138543874;
      v37 = v30;
      v38 = 2112;
      v39 = v31;
      v40 = 2112;
      v41 = v3;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[%@] Skip falling back to locally processing accessory for response: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v22 = 0;
  }

  else
  {
    if (v29)
    {
      v32 = HMFGetLogIdentifier();
      v35 = *(a1 + 40);
      v33 = [v3 request];
      *buf = 138544130;
      v37 = v32;
      v38 = 2112;
      v39 = v35;
      v40 = 2112;
      v41 = v33;
      v42 = 2112;
      v43 = v3;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[%@] Falling back to locally processing request: %@ -> %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v26);
    if (v13)
    {
      [v13 setIsLocalFallback:1];
    }

    v22 = [v3 request];
  }

LABEL_21:

  return v22;
}

void __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke_379(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 accessory];
  v5 = [v4 uuid];
  v7 = [v5 UUIDString];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v7];
    v6 = v7;
  }
}

void __83__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__remoteTaskCompletionHandler__block_invoke_380(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained completion];
    (v6)[2](v6, v3);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for fallback local task completion", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (id)completion
{
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HMDHAPAccessoryRemoteOperationWithLocalFallbackTask;
  completion = [(HMDHAPAccessoryTask *)&v10 completion];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask_completion__block_invoke;
  aBlock[3] = &unk_2797351F8;
  objc_copyWeak(&v9, &location);
  v8 = completion;
  v4 = completion;
  v5 = _Block_copy(aBlock);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __65__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask_completion__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addCharacteristicResponses:v3 isRemote:0];
    if ([v5 allResponsesReceived])
    {
      v6 = *(a1 + 32);
      v7 = [v5 characteristicResponses];
      (*(v6 + 16))(v6, v7);
    }

    else if ([v5 supportsMultiPartResponse])
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for HMDHAPAccessoryRemoteOperationWithLocalFallbackTask completion", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (BOOL)_shouldFallbackLocallyWithError:(id)error accessory:(id)accessory
{
  errorCopy = error;
  accessoryCopy = accessory;
  if (!errorCopy)
  {
    goto LABEL_34;
  }

  if ([errorCopy isHMError])
  {
    code = [errorCopy code];
  }

  else
  {
    if (![errorCopy isHAPError])
    {
      if (([accessoryCopy supportsCHIP] & 1) == 0)
      {
        domain = [errorCopy domain];
        v11 = [domain isEqual:*MEMORY[0x277CD5120]];

        v8 = v11 ^ 1;
        goto LABEL_35;
      }

LABEL_34:
      v8 = 0;
      goto LABEL_35;
    }

    code2 = [errorCopy code];
    if (code2 > 0x20)
    {
      code = 52;
    }

    else
    {
      code = qword_253D4C218[code2];
    }
  }

  if ([accessoryCopy supportsCHIP])
  {
    goto LABEL_34;
  }

  v8 = 1;
  if (code > 9)
  {
    if (code == 3201)
    {
      goto LABEL_35;
    }

    if (code == 54)
    {
      underlyingErrors = [errorCopy underlyingErrors];
      firstObject = [underlyingErrors firstObject];

      if ([firstObject isHMError] && objc_msgSend(firstObject, "code") == 3203)
      {
      }

      else
      {
        canWakeViaCustomWoBLE = [accessoryCopy canWakeViaCustomWoBLE];

        if ((canWakeViaCustomWoBLE & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v8 = 1;
      goto LABEL_35;
    }

    if (code == 10 && isWatch())
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((code - 2) < 2)
    {
      goto LABEL_35;
    }

    if (code == 4)
    {
      if ([accessoryCopy hasBTLELink] && ((objc_msgSend(accessoryCopy, "isReachable") & 1) != 0 || (objc_msgSend(accessoryCopy, "isBLELinkConnected") & 1) != 0))
      {
        goto LABEL_35;
      }
    }

    else if (code == 8)
    {
      goto LABEL_35;
    }
  }

LABEL_30:
  if (![accessoryCopy canWakeViaCustomWoBLE])
  {
    goto LABEL_34;
  }

  underlyingErrors2 = [errorCopy underlyingErrors];
  firstObject2 = [underlyingErrors2 firstObject];

  isHMError = [firstObject2 isHMError];
  if (isHMError)
  {
    [firstObject2 code];
  }

  v8 = isHMError ^ 1;

LABEL_35:
  return v8;
}

- (void)_startScanningForSuspendedAccessoriesWithRequests:(id)requests
{
  requestsCopy = requests;
  if (!isWatch())
  {
    context = [(HMDHAPAccessoryTask *)self context];
    home = [context home];
    homeLocation = [home homeLocation];

    if (homeLocation == 1)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke;
      v15[3] = &unk_279735298;
      v9 = strongToStrongObjectsMapTable;
      v16 = v9;
      [requestsCopy na_each:v15];
      keyEnumerator = [v9 keyEnumerator];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke_2;
      v12[3] = &unk_279735310;
      v13 = v9;
      selfCopy = self;
      v11 = v9;
      [keyEnumerator na_each:v12];
    }
  }
}

void __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 accessory];
  if ([v3 canWakeViaCustomWoBLE])
  {
    v4 = [*(a1 + 32) objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] array];
    }

    v7 = v6;

    [v7 addObject:v9];
    v8 = [*(a1 + 32) objectForKey:v3];

    if (!v8)
    {
      [*(a1 + 32) setObject:v7 forKey:v3];
    }
  }
}

void __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  objc_initWeak(&location, *(a1 + 40));
  v5 = [*(a1 + 40) context];
  v6 = [v5 sourceType];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke_3;
  v9[3] = &unk_2797352E8;
  objc_copyWeak(&v12, &location);
  v7 = v3;
  v10 = v7;
  v8 = v4;
  v11 = v8;
  [v7 wakeOrScanForSuspendedAccessoryForRequests:v8 source:v6 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke_4;
    block[3] = &unk_2797352C0;
    block[4] = v8;
    v11 = a1[4];
    v12 = a1[5];
    v13 = v5;
    v14 = v6;
    dispatch_async(v9, block);
  }
}

void __105__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask__startScanningForSuspendedAccessoriesWithRequests___block_invoke_4(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) identifier];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "count")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "count")}];
    v10 = *(a1 + 64);
    v22 = 138544642;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scanning locally for suspended accessory (%@/%@/%@) completed with error: %@.", &v22, 0x3Eu);
  }

  objc_autoreleasePoolPop(v2);
  if (!*(a1 + 64) && [*(a1 + 56) count])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) name];
      v17 = [*(a1 + 40) uuid];
      v18 = [v17 UUIDString];
      v19 = [*(a1 + 40) uniqueIdentifier];
      v20 = [*(a1 + 48) count];
      v22 = 138544642;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Adding responses for suspended accessory %@/%@/%@ with %ld requests", &v22, 0x3Eu);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 32) addCharacteristicResponses:*(a1 + 56) isRemote:0];
    if ([*(a1 + 32) supportsMultiPartResponse])
    {
      v21 = [*(a1 + 32) completion];
      v21[2](v21, *(a1 + 56));
    }
  }
}

- (void)execute
{
  v54 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:date];

  v4 = MEMORY[0x277CBEB58];
  requests = [(HMDHAPAccessoryTask *)self requests];
  v6 = [v4 setWithArray:requests];

  context = [(HMDHAPAccessoryTask *)self context];
  home = [context home];
  [home homeLocation];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v40 = v38 = v6;
    requests2 = [(HMDHAPAccessoryTask *)selfCopy requests];
    v33 = [requests2 count];
    v32 = HMFBooleanToString();
    context2 = [(HMDHAPAccessoryTask *)selfCopy context];
    home2 = [context2 home];
    [home2 remoteAccessIsEnabled];
    v12 = HMFBooleanToString();
    [(HMDHAPAccessoryTask *)selfCopy context];
    v34 = v39 = v9;
    home3 = [v34 home];
    primaryResident = [home3 primaryResident];
    [primaryResident isReachable];
    v15 = HMFBooleanToString();
    context3 = [(HMDHAPAccessoryTask *)selfCopy context];
    home4 = [context3 home];
    [home4 isCompanionReachable];
    v18 = HMFBooleanToString();
    *buf = 138544642;
    v43 = v40;
    v44 = 2048;
    v45 = v33;
    v46 = 2112;
    v47 = v32;
    v48 = 2112;
    v49 = v12;
    v50 = 2112;
    v51 = v15;
    v19 = v15;
    v52 = 2112;
    v53 = v18;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Executing %lu read/write tasks with isAwayFromHome: %@, isRemoteAccessEnabled: %@, isPrimaryResidentReachable: %@, isCompanionReachable: %@", buf, 0x3Eu);

    v9 = v39;
    v6 = v38;
  }

  objc_autoreleasePoolPop(v9);
  remoteTaskDelegateDevice = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy remoteTaskDelegateDevice];
  if (remoteTaskDelegateDevice)
  {
    v21 = 0;
  }

  else
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __62__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask_execute__block_invoke;
    v41[3] = &unk_279735270;
    v41[4] = selfCopy;
    v21 = [v6 na_map:v41];
  }

  if ([v21 count])
  {
    allObjects = [v21 allObjects];
    completion = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy completion];
    v24 = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy _makeLocalTaskWithRequests:allObjects completion:completion];
    [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy setLocalTask:v24];

    localTask = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy localTask];
    [localTask execute];

    [v6 minusSet:v21];
  }

  if ([v6 count])
  {
    allObjects2 = [v6 allObjects];
    [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy _startScanningForSuspendedAccessoriesWithRequests:allObjects2];

    allObjects3 = [v6 allObjects];
    remoteTaskDelegateDevice2 = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy remoteTaskDelegateDevice];
    _remoteTaskCompletionHandler = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy _remoteTaskCompletionHandler];
    v30 = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy _makeRemoteTaskWithRequests:allObjects3 delegateDevice:remoteTaskDelegateDevice2 completion:_remoteTaskCompletionHandler];
    [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy setRemoteTask:v30];

    remoteTask = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)selfCopy remoteTask];
    [remoteTask execute];
  }
}

id __62__HMDHAPAccessoryRemoteOperationWithLocalFallbackTask_execute__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  if ([v4 isRemoteAccessDeviceReachable])
  {
    v5 = [v3 accessory];
    if ([v5 isBLELinkConnected])
    {
      v6 = v3;
    }

    else
    {
      v7 = [v3 accessory];
      if ([v7 isMatterLocalLinkConnectedAndPreferred])
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (HMDHAPAccessoryRemoteOperationWithLocalFallbackTask)initWithContext:(id)context requests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = HMDHAPAccessoryRemoteOperationWithLocalFallbackTask;
  v12 = [(HMDHAPAccessoryTask *)&v15 initWithContext:context requests:requests completion:completion];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_remoteTaskDelegateDevice, device);
  }

  return v13;
}

@end