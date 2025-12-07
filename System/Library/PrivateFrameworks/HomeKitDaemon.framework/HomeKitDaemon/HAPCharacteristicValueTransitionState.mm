@interface HAPCharacteristicValueTransitionState
@end

@implementation HAPCharacteristicValueTransitionState

BOOL __114__HAPCharacteristicValueTransitionState_NaturalLighting__naturalLightingActiveTransitionContextForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 controllerContext];
  if (v4)
  {
    v18 = 0;
    v5 = [MEMORY[0x277CFEAC8] parsedFromData:v4 error:&v18];
    v6 = v18;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = [v3 HAPInstanceID];
      v10 = [v9 value];
      v11 = [*(a1 + 32) instanceID];
      if ([v10 isEqualToNumber:v11] && objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isNaturalLightingEnabled"))
      {
        v12 = [v3 timeElapsedSinceStart];
        v13 = v12 != 0;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v4;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode controller context %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL __100__HAPCharacteristicValueTransitionState_NaturalLighting__isNaturalLightingEnabledForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 controllerContext];
  if (v4)
  {
    v16 = 0;
    v5 = [MEMORY[0x277CFEAC8] parsedFromData:v4 error:&v16];
    v6 = v16;
    if (v5)
    {
      v7 = [v3 HAPInstanceID];
      v8 = [v7 value];
      v9 = [*(a1 + 32) instanceID];
      if ([v8 isEqualToNumber:v9] && objc_msgSend(v5, "isNaturalLightingEnabled"))
      {
        v10 = [v3 timeElapsedSinceStart];
        v11 = v10 != 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543874;
        v18 = v14;
        v19 = 2112;
        v20 = v4;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode controller context %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end