@interface MTRBaseDevice
@end

@implementation MTRBaseDevice

void __110__MTRBaseDevice_HMMTRPairing___fetchPairingsWithCallbackQueue_filtered_vendorMetadataStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v25 = v6;
    v8 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v5;
    v9 = v5;
    v28 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v28)
    {
      v10 = *v30;
      v27 = *v30;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [HMMTRPairing alloc];
          v14 = *(a1 + 32);
          v15 = [v12 vendorId];
          v16 = [v14 _vendorNameForVendorID:v15 vendorMetadataStore:*(a1 + 40)];
          v17 = [(HMMTRPairing *)v13 initWithFabricDescriptor:v12 vendorName:v16];

          if (v17)
          {
            [v8 addObject:v17];
          }

          else
          {
            v18 = objc_autoreleasePoolPush();
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v21 = v9;
              v23 = v22 = v8;
              *buf = 138543618;
              v34 = v23;
              v35 = 2112;
              v36 = v12;
              _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not construct HMMTRPairing from fetched fabricDescriptor: %@", buf, 0x16u);

              v8 = v22;
              v9 = v21;
              v10 = v27;
            }

            objc_autoreleasePoolPop(v18);
          }
        }

        v28 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v28);
    }

    (*(*(a1 + 48) + 16))();
    v7 = v25;
    v5 = v26;
  }

  else
  {
    v24 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:10 error:v6];
    (*(*(a1 + 48) + 16))();
  }
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to find current fabric Index, unpairing might not complete deterministically. Error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = a1[4];
  v12 = a1[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_10;
  v14[3] = &unk_2786F0ED0;
  v14[4] = v11;
  v18 = a1[7];
  v15 = v5;
  v16 = a1[6];
  v17 = a1[5];
  v13 = v5;
  [v11 fetchFabricDescriptorsWithCallbackQueue:v12 filtered:0 completionHandler:v14];
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v29 = v5;
  v30 = a3;
  if (v30)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Remove all pairings error: Could not retrieve Fabrics List. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 64) + 16))(*(a1 + 64));
  }

  else
  {
    v10 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = __Block_byref_object_copy__12513;
    v48 = __Block_byref_object_dispose__12514;
    v49 = 0;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:{16, v5}];
    v12 = 0;
    if (v11)
    {
      v13 = *v42;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v41 + 1) + 8 * i);
          v16 = *(a1 + 40);
          v17 = [v15 fabricIndex];
          LODWORD(v16) = [v16 isEqualToNumber:v17];

          if (v16)
          {
            v18 = [HMMTRPairing alloc];
            v19 = *(a1 + 32);
            v20 = [v15 vendorId];
            v21 = [v19 _vendorNameForVendorID:v20 vendorMetadataStore:*(a1 + 48)];
            v22 = [(HMMTRPairing *)v18 initWithFabricDescriptor:v15 vendorName:v21];

            v12 = v22;
          }

          else
          {
            dispatch_group_enter(v10);
            v23 = *(a1 + 32);
            v24 = [v15 fabricIndex];
            v25 = *(a1 + 56);
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_11;
            v38[3] = &unk_2786F0F98;
            v38[4] = *(a1 + 32);
            v38[5] = v15;
            v40 = buf;
            v39 = v10;
            [v23 _removeFabricWithIndex:v24 callbackQueue:v25 completionHandler:v38];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v11);
    }

    v26 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_13;
    block[3] = &unk_2786F0FE8;
    v27 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v33 = v12;
    v34 = v27;
    v35 = *(a1 + 56);
    v37 = buf;
    v36 = *(a1 + 64);
    v28 = v12;
    dispatch_group_notify(v10, v26, block);

    _Block_object_dispose(buf, 8);
  }
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) fabricID];
      v10 = 138543874;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove fabric ID %@ with Error %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_13(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing current pairing %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_14;
  v12[3] = &unk_2786F0FC0;
  v12[4] = v7;
  v13 = *(a1 + 40);
  v11 = *(a1 + 64);
  v10 = v11;
  v14 = v11;
  [v7 _removeFabricWithIndex:v8 callbackQueue:v9 completionHandler:v12];
}

void __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = 138543874;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove our own pairing %@ with Error %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  (*(*(a1 + 48) + 16))();
}

void __90__MTRBaseDevice_HMMTRPairing__fetchCurrentFabricIndexWithCallbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Current Fabric Index: %@ Error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

void __62__MTRBaseDevice_HMMTRPairing__unpairDevice_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) _retrieveFabricClusterWithQueue:*(a1 + 40)];
    v7 = objc_alloc_init(MEMORY[0x277CD5470]);
    [v7 setFabricIndex:v5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__MTRBaseDevice_HMMTRPairing__unpairDevice_completionHandler___block_invoke_2;
    v8[3] = &unk_2786F0EF8;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    [v6 removeFabricWithParams:v7 completionHandler:v8];
  }
}

void __62__MTRBaseDevice_HMMTRPairing__unpairDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Unpair Status: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

void __86__MTRBaseDevice_HMMTRPairing___removeFabricWithIndex_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Remove pairing Status: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

void __97__MTRBaseDevice_HMMTRPairing__removePairing_callbackQueue_vendorMetadataStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v10;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Remove pairing error: Could not retrieve Fabrics List. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v25 = v5;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [HMMTRPairing alloc];
          v18 = *(a1 + 32);
          v19 = [v16 vendorId];
          v20 = [v18 _vendorNameForVendorID:v19 vendorMetadataStore:*(a1 + 40)];
          v21 = [(HMMTRPairing *)v17 initWithFabricDescriptor:v16 vendorName:v20];

          if ([*(a1 + 48) isEqual:v21])
          {
            v23 = *(a1 + 32);
            v24 = [v16 fabricIndex];
            [v23 _removeFabricWithIndex:v24 callbackQueue:*(a1 + 56) completionHandler:*(a1 + 64)];

            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__MTRBaseDevice_HMMTRPairing__removePairing_callbackQueue_vendorMetadataStore_completionHandler___block_invoke_2;
    block[3] = &unk_2786F0EA8;
    block[4] = *(a1 + 32);
    v22 = *(a1 + 56);
    v27 = *(a1 + 48);
    v28 = *(a1 + 64);
    dispatch_async(v22, block);

LABEL_15:
    v6 = 0;
    v5 = v25;
  }
}

void __97__MTRBaseDevice_HMMTRPairing__removePairing_callbackQueue_vendorMetadataStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Remove pairing error: Could not find pairing matching %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  (*(v7 + 16))(v7, v8);
}

@end