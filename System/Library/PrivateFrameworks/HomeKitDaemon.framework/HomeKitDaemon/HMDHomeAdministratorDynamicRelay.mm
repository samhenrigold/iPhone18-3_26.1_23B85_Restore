@interface HMDHomeAdministratorDynamicRelay
@end

@implementation HMDHomeAdministratorDynamicRelay

void __57____HMDHomeAdministratorDynamicRelay___handleXPCMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && HMDIsAllowedFallbackRemoteError(v5))
  {
    v7 = [a1[4] home];
    v8 = [v7 deviceHomeKitSetupSession];
    [v8 markHasFailedRelayAttempt];

    v9 = objc_autoreleasePoolPush();
    v10 = a1[5];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[6] shortDescription];
      *buf = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Allowing local fallback processing of message %{public}@ due to error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = a1[6];
    v15.receiver = a1[5];
    v15.super_class = __HMDHomeAdministratorDynamicRelay;
    objc_msgSendSuper2(&v15, sel___handleXPCMessage_, v14);
  }

  else
  {
    [a1[6] respondWithPayload:v6 error:v5];
  }
}

uint64_t __66____HMDHomeAdministratorDynamicRelay_registerForMessage_policies___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

void __49____HMDHomeAdministratorDynamicRelay_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v16_251879;
  logCategory__hmf_once_v16_251879 = v0;
}

@end