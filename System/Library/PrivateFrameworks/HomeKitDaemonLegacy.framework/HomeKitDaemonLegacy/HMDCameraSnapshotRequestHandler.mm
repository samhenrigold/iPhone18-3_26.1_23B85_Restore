@interface HMDCameraSnapshotRequestHandler
+ (id)_snapshotRequestOptions:(unint64_t)options resolution:(id)resolution accessory:(id)accessory;
+ (id)logCategory;
- (HMDCameraSnapshotFile)_saveSnapshot:(uint64_t)snapshot;
- (HMDCameraSnapshotRequestHandler)initWithAccessory:(id)accessory workQueue:(id)queue streamSnapshotHandler:(id)handler imageCacheDirectory:(id)directory logID:(id)d;
- (void)_handleSnapshot:(void *)snapshot error:;
- (void)_sendSnapshotRequest:(unint64_t)request streamingTierType:;
- (void)requestSnapshot:(id)snapshot streamingTierType:(unint64_t)type completionHandler:(id)handler;
- (void)streamSnapshotHandler:(id)handler didGetLastSnapshot:(id)snapshot;
- (void)streamSnapshotHandler:(id)handler didGetNewSnapshot:(id)snapshot;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraSnapshotRequestHandler

- (void)timerDidFire:(id)fire
{
  v12 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    mostRecentSnapshotInvalidationTimer = self->_mostRecentSnapshotInvalidationTimer;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    mostRecentSnapshotInvalidationTimer = 0;
  }

  if (mostRecentSnapshotInvalidationTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Snapshot invalidation timer has fired, resetting the most recent snapshot", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    if (self)
    {
      objc_storeStrong(&selfCopy->_mostRecentSnapshot, 0);
      objc_storeStrong(&selfCopy->_mostRecentSnapshotInvalidationTimer, 0);
    }
  }
}

- (void)streamSnapshotHandler:(id)handler didGetLastSnapshot:(id)snapshot
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  snapshotCopy = snapshot;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received last snapshot", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraSnapshotRequestHandler *)selfCopy _saveSnapshot:snapshotCopy];
}

- (HMDCameraSnapshotFile)_saveSnapshot:(uint64_t)snapshot
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (snapshot)
  {
    dispatch_assert_queue_V2(*(snapshot + 16));
    v4 = [HMDCameraSnapshotFile alloc];
    imageCacheDirectory = [snapshot imageCacheDirectory];
    v18 = 0;
    v6 = [(HMDCameraSnapshotFile *)v4 initWithDirectory:imageCacheDirectory snapshot:v3 error:&v18];
    v7 = v18;

    if (v6)
    {
      objc_storeStrong((snapshot + 56), v6);
      v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:2.0];
      v9 = *(snapshot + 48);
      *(snapshot + 48) = v8;

      [*(snapshot + 48) setDelegate:snapshot];
      v10 = *(snapshot + 48);
      v11 = *(snapshot + 16);
      [v10 setDelegateQueue:v11];

      [*(snapshot + 48) resume];
      v12 = v6;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      snapshotCopy = snapshot;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v3;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to save snapshot %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)streamSnapshotHandler:(id)handler didGetNewSnapshot:(id)snapshot
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  snapshotCopy = snapshot;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (snapshotCopy)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received new snapshot", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [(HMDCameraSnapshotRequestHandler *)selfCopy _saveSnapshot:snapshotCopy];
  }

  else
  {
    if (v12)
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received new snapshot but it was nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)requestSnapshot:(id)snapshot streamingTierType:(unint64_t)type completionHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  aBlock = handler;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v55 = snapshotCopy;
  snapshotCharacteristicEventUUID = [snapshotCopy snapshotCharacteristicEventUUID];

  if (snapshotCharacteristicEventUUID)
  {
    if (self)
    {
LABEL_5:
      v10 = self->_pendingCompletionHandlers;
      v11 = _Block_copy(aBlock);
      [(NSMutableArray *)v10 addObject:v11];

      pendingCompletionHandlers = self->_pendingCompletionHandlers;
      goto LABEL_6;
    }

LABEL_44:
    v50 = _Block_copy(aBlock);
    [0 addObject:v50];

    pendingCompletionHandlers = 0;
LABEL_6:
    if ([(NSMutableArray *)pendingCompletionHandlers count]< 2)
    {
      supportedResolutions = [(HMDCameraSnapshotRequestHandler *)self supportedResolutions];

      if (supportedResolutions)
      {
        [(HMDCameraSnapshotRequestHandler *)self _sendSnapshotRequest:snapshotCopy streamingTierType:type];
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        selfCopy = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v67 = v30;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Need to gather supported video resolutions by the camera", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        v51 = snapshotCopy;
        if (self)
        {
          dispatch_assert_queue_V2(selfCopy->_workQueue);
          v31 = objc_autoreleasePoolPush();
          val = selfCopy;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543362;
            v67 = v33;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Getting Supported Configuration", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
          WeakRetained = objc_loadWeakRetained(val + 3);
          if (WeakRetained)
          {
            array = [MEMORY[0x277CBEB18] array];
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            services = [WeakRetained services];
            v35 = [services countByEnumeratingWithState:&v62 objects:buf count:16];
            if (v35)
            {
              v36 = *v63;
              v37 = *MEMORY[0x277CFE830];
              v38 = *MEMORY[0x277CFE708];
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v63 != v36)
                  {
                    objc_enumerationMutation(services);
                  }

                  v40 = *(*(&v62 + 1) + 8 * i);
                  v41 = objc_msgSend_serviceType(v40);
                  v42 = [v41 isEqualToString:v37];

                  if (v42)
                  {
                    v43 = [v40 findCharacteristicWithType:v38];
                    if (v43)
                    {
                      v44 = [HMDCharacteristicRequest requestWithCharacteristic:v43];
                      [array addObject:v44];
                    }
                  }
                }

                v35 = [services countByEnumeratingWithState:&v62 objects:buf count:16];
              }

              while (v35);
            }

            objc_initWeak(&location, val);
            v45 = val[2];
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __83__HMDCameraSnapshotRequestHandler__getSupportedVideoResolutions_streamingTierType___block_invoke;
            v58[3] = &unk_279735AA8;
            objc_copyWeak(v60, &location);
            v59 = v51;
            v60[1] = type;
            [WeakRetained readCharacteristicValues:array source:1070 queue:v45 completionHandler:v58];

            objc_destroyWeak(v60);
            objc_destroyWeak(&location);
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = val;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543362;
              v67 = v49;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Cannot get supported video resolutions: Accessory is no longer available", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v46);
            array = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
            [(HMDCameraSnapshotRequestHandler *)v47 _handleSnapshot:array error:?];
          }
        }
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = self == 0;
        v17 = HMFGetLogIdentifier();
        if (v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = selfCopy2->_pendingCompletionHandlers;
        }

        v19 = v18;
        firstObject = [(NSMutableArray *)v19 firstObject];
        v21 = _Block_copy(firstObject);
        *buf = 138543618;
        v67 = v17;
        v68 = 2112;
        v69 = v21;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@There is already a request in progress so piggy backing on that: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    goto LABEL_42;
  }

  if (!self)
  {
    goto LABEL_44;
  }

  if (!self->_mostRecentSnapshot)
  {
    goto LABEL_5;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v67 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Most recent snapshot is still valid", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  (*(aBlock + 2))(aBlock, selfCopy3->_mostRecentSnapshot, 0);
LABEL_42:
}

- (void)_sendSnapshotRequest:(unint64_t)request streamingTierType:
{
  v75 = *MEMORY[0x277D85DE8];
  v58 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    WeakRetained = objc_loadWeakRetained((self + 24));
    if (!WeakRetained)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle snapshot request: accessory is no longer available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
      [(HMDCameraSnapshotRequestHandler *)selfCopy _handleSnapshot:v18 error:?];
      goto LABEL_41;
    }

    dispatch_assert_queue_V2(*(self + 16));
    v5 = snapshotResolution;
    requestCopy = request;
    selfCopy2 = self;
    v54 = v5;
    if (v5)
    {
      unsignedIntegerValue = [v5 unsignedIntegerValue];
      v7 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v9 = HMFGetOSLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if ((unsignedIntegerValue - 1) < 0xA)
      {
        if (v10)
        {
          v11 = HMFGetLogIdentifier();
          v12 = HMDVideoResolutionTypeAsString(unsignedIntegerValue);
          *buf = 138543618;
          *&buf[4] = v11;
          *&buf[12] = 2112;
          *&buf[14] = v12;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Overriding the resolution requested to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v13 = [[HMDVideoResolution alloc] initWithResolution:unsignedIntegerValue];
LABEL_38:

        v48 = [objc_opt_class() _snapshotRequestOptions:objc_msgSend(v58 resolution:"snapshotReason") accessory:{v13, WeakRetained}];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v69 = __Block_byref_object_copy__194406;
        v70 = __Block_byref_object_dispose__194407;
        v71 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-request"];
        [v58 markMilestoneFor:@"SentSnapshotRequestToAccessory"];
        v49 = objc_autoreleasePoolPush();
        v50 = selfCopy2;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          *v72 = 138543618;
          *&v72[4] = v52;
          *&v72[12] = 2112;
          *&v72[14] = v48;
          _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Sending snapshot request to accessory with options: %@", v72, 0x16u);
        }

        objc_autoreleasePoolPop(v49);
        v53 = v50[2];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __74__HMDCameraSnapshotRequestHandler__sendSnapshotRequest_streamingTierType___block_invoke;
        v60[3] = &unk_279735A40;
        v60[4] = v50;
        v61 = v58;
        v62 = WeakRetained;
        v18 = v13;
        v63 = v18;
        v64 = buf;
        [v62 requestResource:v48 queue:v53 completionHandler:v60];

        _Block_object_dispose(buf, 8);
LABEL_41:

        goto LABEL_42;
      }

      if (v10)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = unsignedIntegerValue;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Not overriding the resolution requested to %tu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    v20 = [HMDCameraVideoParameterSelection videoResolutionPreferenceForStreamingTierType:request];
    v21 = v20;
    if (request - 1 < 2)
    {
      v22 = [v20 na_filter:&__block_literal_global_15_194421];
    }

    else if (request - 3 >= 2)
    {
      if (request)
      {
        v23 = v20;
        goto LABEL_21;
      }

      v22 = [HMDVideoResolution arrayWithResolutions:&unk_286627418];
    }

    else
    {
      v22 = [v20 na_filter:&__block_literal_global_18_194422];
    }

    v23 = v22;

LABEL_21:
    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMDStreamingTierTypeAsString(requestCopy);
      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      *&buf[22] = 2112;
      v69 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Resolutions in order of preference: %@ for tier: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    obj = v23;
    v29 = [obj countByEnumeratingWithState:v72 objects:buf count:16];
    if (v29)
    {
      v30 = **&v72[16];
      v31 = MEMORY[0x277D85DD0];
LABEL_25:
      v32 = 0;
      while (1)
      {
        if (**&v72[16] != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*&v72[8] + 8 * v32);
        resolutionType = [v33 resolutionType];
        dispatch_assert_queue_V2(selfCopy4[2]);
        supportedResolutions = [(dispatch_queue_t *)selfCopy4 supportedResolutions];
        *v65 = v31;
        *&v65[8] = 3221225472;
        *&v65[16] = __64__HMDCameraSnapshotRequestHandler__supportedResolutionWithType___block_invoke;
        v66 = &__block_descriptor_40_e28_B16__0__HMDVideoResolution_8l;
        v67[0] = resolutionType;
        v36 = [supportedResolutions na_firstObjectPassingTest:v65];

        if (v36)
        {
          break;
        }

        if (v29 == ++v32)
        {
          v29 = [obj countByEnumeratingWithState:v72 objects:buf count:16];
          if (v29)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

      v13 = v33;

      if (!v13)
      {
        goto LABEL_35;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy4;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v41 = HMDVideoResolutionTypeAsString([(HMDVideoResolution *)v13 resolutionType]);
        v42 = HMDStreamingTierTypeAsString(requestCopy);
        *v65 = 138543874;
        *&v65[4] = v40;
        *&v65[12] = 2112;
        *&v65[14] = v41;
        *&v65[22] = 2112;
        v66 = v42;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Found preferred resolution: %@ in supported resolutions for tier: %@", v65, 0x20u);
      }
    }

    else
    {
LABEL_31:

LABEL_35:
      v13 = [[HMDVideoResolution alloc] initWithResolution:1];
      v37 = objc_autoreleasePoolPush();
      v43 = selfCopy4;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        supportedResolutions2 = [(dispatch_queue_t *)v43 supportedResolutions];
        v46 = HMDStreamingTierTypeAsString(requestCopy);
        v47 = HMDVideoResolutionTypeAsString([(HMDVideoResolution *)v13 resolutionType]);
        *v65 = 138544130;
        *&v65[4] = v44;
        *&v65[12] = 2112;
        *&v65[14] = supportedResolutions2;
        *&v65[22] = 2112;
        v66 = v46;
        LOWORD(v67[0]) = 2112;
        *(v67 + 2) = v47;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Didn't find preferred resolution in supported resolutions: %@ for tier: %@. Defaulting to resolution: %@", v65, 0x2Au);
      }
    }

    objc_autoreleasePoolPop(v37);
    goto LABEL_38;
  }

LABEL_42:
}

- (void)_handleSnapshot:(void *)snapshot error:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  snapshotCopy = snapshot;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    if (v5)
    {
      v7 = [(HMDCameraSnapshotRequestHandler *)self _saveSnapshot:v5];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v25 = v12;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to save snapshot file", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1038];

        v8 = 0;
        snapshotCopy = v13;
      }
    }

    else
    {
      v8 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = *(self + 32);
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v19 + 1) + 8 * v18) + 16))(*(*(&v19 + 1) + 8 * v18));
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    [*(self + 32) removeAllObjects];
  }
}

void __74__HMDCameraSnapshotRequestHandler__sendSnapshotRequest_streamingTierType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 length])
    {
      [*(a1 + 40) markMilestoneFor:@"ReceivedSnapshotFromAccessory"];
      [*(a1 + 48) updateActiveDisconnectOnIdleTimeout:20.0];
      v7 = [[HMDCameraSnapshot alloc] initWithImageData:v5 videoResolution:*(a1 + 56) transaction:*(*(*(a1 + 64) + 8) + 40)];
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = 0;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Accessory sent 0-length data for snapshot request", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = *(a1 + 32);
      v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1037];
      v8 = v19;
      v9 = 0;
      v10 = v7;
    }

    [(HMDCameraSnapshotRequestHandler *)v8 _handleSnapshot:v9 error:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to request resource from accessory: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraSnapshotRequestHandler *)*(a1 + 32) _handleSnapshot:v6 error:?];
  }
}

void __83__HMDCameraSnapshotRequestHandler__getSupportedVideoResolutions_streamingTierType___block_invoke(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v77 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received response for supported configurations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  v51 = *(a1 + 48);
  v10 = v3;
  v11 = v9;
  v12 = v11;
  if (v6)
  {
    v49 = v11;
    v57 = v6;
    dispatch_assert_queue_V2(v6[2]);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v50 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v63;
      v17 = *MEMORY[0x277CFE708];
      v53 = *v63;
      v54 = v13;
      v52 = *MEMORY[0x277CFE708];
      do
      {
        v18 = 0;
        v55 = v15;
        do
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v62 + 1) + 8 * v18);
          v20 = [v19 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v58 = v18;
            v22 = [v19 value];
            v23 = [v19 request];
            v24 = [v23 characteristic];
            v25 = [v24 type];
            v26 = [v25 isEqualToString:v17];

            if (v26)
            {
              v56 = v22;
              v27 = [(HAPTLVBase *)[HMDSupportedVideoStreamConfiguration alloc] initWithTLVData:v22];
              dispatch_assert_queue_V2(v57[2]);
              v28 = [MEMORY[0x277CBEB58] set];
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v61 = v27;
              obj = [(HMDSupportedVideoStreamConfiguration *)v27 codecConfigurations];
              v29 = [obj countByEnumeratingWithState:&v70 objects:buf count:16];
              if (v29)
              {
                v30 = v29;
                v60 = *v71;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v71 != v60)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v32 = *(*(&v70 + 1) + 8 * i);
                    v33 = [(HMDSupportedVideoStreamConfiguration *)v61 codecConfigurations];
                    v34 = [v33 objectForKeyedSubscript:v32];

                    v68 = 0u;
                    v69 = 0u;
                    v66 = 0u;
                    v67 = 0u;
                    v35 = [v34 videoAttributes];
                    v36 = [v35 countByEnumeratingWithState:&v66 objects:v75 count:16];
                    if (v36)
                    {
                      v37 = v36;
                      v38 = *v67;
                      do
                      {
                        for (j = 0; j != v37; ++j)
                        {
                          if (*v67 != v38)
                          {
                            objc_enumerationMutation(v35);
                          }

                          v40 = *(*(&v66 + 1) + 8 * j);
                          v41 = [v40 videoResolution];

                          if (v41)
                          {
                            v42 = [v40 videoResolution];
                            [v28 addObject:v42];
                          }
                        }

                        v37 = [v35 countByEnumeratingWithState:&v66 objects:v75 count:16];
                      }

                      while (v37);
                    }
                  }

                  v30 = [obj countByEnumeratingWithState:&v70 objects:buf count:16];
                }

                while (v30);
              }

              [(dispatch_queue_t *)v57 setSupportedResolutions:v28];
              v16 = v53;
              v13 = v54;
              v17 = v52;
              v15 = v55;
              v22 = v56;
            }

            v18 = v58;
          }

          ++v18;
        }

        while (v18 != v15);
        v15 = [v13 countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v15);
    }

    v43 = objc_autoreleasePoolPush();
    v6 = v57;
    v44 = v57;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      v47 = [(dispatch_queue_t *)v44 supportedResolutions];
      *buf = 138543618;
      v77 = v46;
      v78 = 2112;
      v79 = v47;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Supported resolutions are: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v48 = v44;
    v12 = v49;
    [(HMDCameraSnapshotRequestHandler *)v48 _sendSnapshotRequest:v49 streamingTierType:v51];
    v10 = v50;
  }
}

- (HMDCameraSnapshotRequestHandler)initWithAccessory:(id)accessory workQueue:(id)queue streamSnapshotHandler:(id)handler imageCacheDirectory:(id)directory logID:(id)d
{
  accessoryCopy = accessory;
  queueCopy = queue;
  handlerCopy = handler;
  directoryCopy = directory;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = HMDCameraSnapshotRequestHandler;
  v17 = [(HMDCameraSnapshotRequestHandler *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_accessory, accessoryCopy);
    objc_storeStrong(&v18->_workQueue, queue);
    array = [MEMORY[0x277CBEB18] array];
    pendingCompletionHandlers = v18->_pendingCompletionHandlers;
    v18->_pendingCompletionHandlers = array;

    objc_storeStrong(&v18->_logIdentifier, d);
    objc_storeStrong(&v18->_streamSnapshotHandler, handler);
    objc_storeStrong(&v18->_imageCacheDirectory, directory);
    [(HMDCameraStreamSnapshotHandler *)v18->_streamSnapshotHandler addDelegate:v18];
  }

  return v18;
}

+ (id)_snapshotRequestOptions:(unint64_t)options resolution:(id)resolution accessory:(id)accessory
{
  v54 = *MEMORY[0x277D85DE8];
  resolutionCopy = resolution;
  accessoryCopy = accessory;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:*MEMORY[0x277CFE960] forKeyedSubscript:*MEMORY[0x277CFE980]];
  imageWidth = [resolutionCopy imageWidth];
  [dictionary setObject:imageWidth forKeyedSubscript:*MEMORY[0x277CFE970]];

  imageHeight = [resolutionCopy imageHeight];
  [dictionary setObject:imageHeight forKeyedSubscript:*MEMORY[0x277CFE968]];

  bridge = [accessoryCopy bridge];

  if (bridge)
  {
    hapInstanceId = [accessoryCopy hapInstanceId];
    if (hapInstanceId)
    {
      [dictionary setObject:hapInstanceId forKeyedSubscript:*MEMORY[0x277CFE598]];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the HAP instance id (aid) for bridged accessory.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  selfCopy2 = self;
  v42 = accessoryCopy;
  v18 = resolutionCopy;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  services = [accessoryCopy services];
  v20 = [services countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    v23 = *MEMORY[0x277CD0DF8];
LABEL_10:
    v24 = 0;
    while (1)
    {
      if (*v44 != v22)
      {
        objc_enumerationMutation(services);
      }

      v25 = *(*(&v43 + 1) + 8 * v24);
      type = [v25 type];
      v27 = [type isEqualToString:v23];

      if (v27)
      {
        break;
      }

      if (v21 == ++v24)
      {
        v21 = [services countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v30 = [v25 findCharacteristicWithType:*MEMORY[0x277CCF898]];
    v29 = v30 == 0;

    v31 = [v25 findCharacteristicWithType:@"00000225-0000-1000-8000-0026BB765291"];
    v28 = v31 == 0;

    if (v30)
    {
      v32 = v31 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
      [dictionary setObject:v37 forKeyedSubscript:*MEMORY[0x277CFE978]];

      goto LABEL_25;
    }
  }

  else
  {
LABEL_16:

    v28 = 1;
    v29 = 1;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = selfCopy2;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543874;
    v48 = v36;
    v49 = 1024;
    v50 = v29;
    v51 = 1024;
    v52 = v28;
    _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Either event snapshot active characteristic (%d) or periodic snapshot active characteristic (%d) is not present", buf, 0x18u);
  }

  objc_autoreleasePoolPop(v33);
LABEL_25:
  v38 = objc_msgSend_copy(dictionary);

  return v38;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_194460 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_194460, &__block_literal_global_194461);
  }

  v3 = logCategory__hmf_once_v1_194462;

  return v3;
}

uint64_t __46__HMDCameraSnapshotRequestHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_194462;
  logCategory__hmf_once_v1_194462 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end