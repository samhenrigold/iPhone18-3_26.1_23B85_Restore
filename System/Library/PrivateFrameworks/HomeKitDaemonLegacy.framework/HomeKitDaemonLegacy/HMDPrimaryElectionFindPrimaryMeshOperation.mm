@interface HMDPrimaryElectionFindPrimaryMeshOperation
+ (id)logCategory;
- (HMDPrimaryElectionFindPrimaryMeshOperation)initWithContext:(id)context otherResidents:(id)residents;
- (id)context;
- (id)logIdentifier;
- (void)main;
@end

@implementation HMDPrimaryElectionFindPrimaryMeshOperation

- (id)logIdentifier
{
  context = [(HMDPrimaryElectionFindPrimaryMeshOperation *)&self->super.super.super.isa context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v6 = uUIDString;
  if (uUIDString)
  {
    v7 = uUIDString;
  }

  else
  {
    v7 = &stru_286509E58;
  }

  v8 = v7;

  return v7;
}

- (id)context
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 40);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)main
{
  v37 = *MEMORY[0x277D85DE8];
  context = [(HMDPrimaryElectionFindPrimaryMeshOperation *)&self->super.super.super.isa context];
  if (([(HMDPrimaryElectionFindPrimaryMeshOperation *)self isCancelled]& 1) == 0 && context)
  {
    v4 = objc_alloc(MEMORY[0x277D0F7A8]);
    underlyingQueue = [(HMFOperation *)self underlyingQueue];
    v6 = [v4 initWithQueue:underlyingQueue];

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Querying residents to see if we're in the primary mesh", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    if (selfCopy)
    {
      otherResidents = selfCopy->_otherResidents;
    }

    else
    {
      otherResidents = 0;
    }

    v12 = MEMORY[0x277CBEB18];
    v13 = otherResidents;
    v14 = [v12 arrayWithCapacity:{-[NSSet count](v13, "count")}];

    if (selfCopy)
    {
      v15 = selfCopy->_otherResidents;
    }

    else
    {
      v15 = 0;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke;
    v30[3] = &unk_279724000;
    v16 = context;
    v31 = v16;
    v17 = v6;
    v32 = v17;
    v33 = selfCopy;
    v18 = v14;
    v34 = v18;
    [(NSSet *)v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
    v19 = MEMORY[0x277D0F7C0];
    v20 = objc_msgSend_copy(v18);
    v21 = [v19 allSettled:v20];
    v22 = v21;
    if (selfCopy)
    {
      objc_storeStrong(&selfCopy->_messagesFuture, v21);

      objc_initWeak(buf, selfCopy);
      objc_initWeak(&location, v16);
      messagesFuture = selfCopy->_messagesFuture;
    }

    else
    {

      objc_initWeak(buf, 0);
      objc_initWeak(&location, v16);
      messagesFuture = 0;
    }

    v24 = messagesFuture;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke_56;
    v26[3] = &unk_2797334C0;
    objc_copyWeak(&v27, buf);
    objc_copyWeak(&v28, &location);
    v25 = [(HMFFuture *)v24 inContext:v17 then:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDRemoteDeviceMessageDestination alloc];
  v5 = [*(a1 + 32) home];
  v6 = [v5 uuid];
  v7 = [v3 device];
  v8 = [(HMDRemoteDeviceMessageDestination *)v4 initWithTarget:v6 device:v7];

  v9 = [objc_alloc(MEMORY[0x277D0F848]) initWithName:@"mesh.meshInformationRequest" destination:v8 payload:0];
  [v9 setTimeout:15.0];
  [v9 setSecureRemote:1];
  [v9 setRemoteRestriction:9];
  v10 = [*(a1 + 32) messageDispatcher];
  v11 = objc_msgSend_copy(v9);
  v12 = [v10 sendMessageExpectingResponse:v11];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke_2;
  v26[3] = &unk_279723FD8;
  v13 = *(a1 + 40);
  v26[4] = *(a1 + 48);
  v27 = v3;
  v28 = *(a1 + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke_52;
  v24[3] = &unk_279733F08;
  v24[4] = *(a1 + 48);
  v14 = v27;
  v25 = v14;
  v15 = [v12 inContext:v13 then:v26 orRecover:v24];

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 48);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v14 shortDescription];
    [v9 identifier];
    v23 = v16;
    v22 = v21 = v8;
    *buf = 138543874;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = v22;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Querying resident %{public}@ with message %{public}@", buf, 0x20u);

    v8 = v21;
    v16 = v23;
  }

  objc_autoreleasePoolPop(v16);
  [*(a1 + 56) addObject:v15];
}

uint64_t __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke_56(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v7 = [v3 na_map:&__block_literal_global_60_23990];
    v8 = WeakRetained[39];
    WeakRetained[39] = v7;

    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v10 results];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Got results: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [v10 finish];
  }

  else
  {
    [WeakRetained cancel];
  }

  return 1;
}

id __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke_2_57(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke_2(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [a1[6] home];
    v5 = [HMDPrimaryElectionMeshInformation meshInformationFromMessagePayload:v3 home:v4];

    if (v5)
    {
      v5;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = a1[4];
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [a1[5] shortDescription];
        v17 = 138543874;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v21 = 2112;
        v22 = v3;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to parse message payload for resident %{public}@: %@", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[5] shortDescription];
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@nil result for resident: %{public}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  return 1;
}

uint64_t __50__HMDPrimaryElectionFindPrimaryMeshOperation_main__block_invoke_52(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Got error result for resident %{public}@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

- (HMDPrimaryElectionFindPrimaryMeshOperation)initWithContext:(id)context otherResidents:(id)residents
{
  residentsCopy = residents;
  v11.receiver = self;
  v11.super_class = HMDPrimaryElectionFindPrimaryMeshOperation;
  contextCopy = context;
  v8 = [(HMFOperation *)&v11 initWithTimeout:0.0];
  objc_storeWeak(&v8->_context, contextCopy);

  otherResidents = v8->_otherResidents;
  v8->_otherResidents = residentsCopy;

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_24063 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_24063, &__block_literal_global_64);
  }

  v3 = logCategory__hmf_once_v15_24064;

  return v3;
}

uint64_t __57__HMDPrimaryElectionFindPrimaryMeshOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15_24064;
  logCategory__hmf_once_v15_24064 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end