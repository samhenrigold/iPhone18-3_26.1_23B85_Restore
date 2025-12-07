@interface HMDCameraClipImporter
+ (id)logCategory;
- (HMDCameraClipImporter)initWithLocalZone:(id)zone cameraProfileUUID:(id)d;
- (id)importClipsWithImportData:(id)data;
@end

@implementation HMDCameraClipImporter

- (id)importClipsWithImportData:(id)data
{
  v123 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v76 = dataCopy;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v116 = v8;
    v117 = 2112;
    v118 = v76;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Importing clips using import data: %@", buf, 0x16u);

    dataCopy = v76;
  }

  objc_autoreleasePoolPop(v5);
  v9 = [dataCopy na_map:&__block_literal_global_154547];
  v10 = MEMORY[0x277D2C938];
  v83 = selfCopy;
  workQueue = [(HMDCameraClipImporter *)selfCopy workQueue];
  v87 = [v10 schedulerWithDispatchQueue:workQueue];

  array = [MEMORY[0x277CBEB18] array];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v111 objects:v122 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v112;
    v77 = *v112;
    do
    {
      v15 = 0;
      v16 = v83;
      v78 = v13;
      do
      {
        if (*v112 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v82 = v15;
        v17 = *(*(&v111 + 1) + 8 * v15);
        videoSegments = [v17 videoSegments];
        firstObject = [videoSegments firstObject];
        isHeader = [firstObject isHeader];

        if (isHeader)
        {
          v21 = [HMDCameraClipUploader alloc];
          uUID = [MEMORY[0x277CCAD78] UUID];
          startDate = [v17 startDate];
          [v17 targetFragmentDuration];
          v25 = v24;
          localZone = [(HMDCameraClipImporter *)v16 localZone];
          workQueue2 = [(HMDCameraClipImporter *)v16 workQueue];
          logIdentifier = [(HMDCameraClipImporter *)v16 logIdentifier];
          v29 = [(HMDCameraClipUploader *)v21 initWithClipUUID:uUID startDate:startDate targetFragmentDuration:0 quality:localZone localZone:workQueue2 workQueue:logIdentifier logIdentifier:v25];

          v30 = v29;
          posterFrames = [v17 posterFrames];
          firstObject2 = [posterFrames firstObject];

          if (firstObject2)
          {
            v33 = MEMORY[0x277D2C900];
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v107[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_43;
            v107[3] = &unk_27972FD40;
            v108 = firstObject2;
            v109 = v16;
            v110 = v30;
            v34 = [v33 futureWithBlock:v107 scheduler:v87];
            [array addObject:v34];
          }

          posterFrames2 = [v17 posterFrames];
          lastObject = [posterFrames2 lastObject];

          v37 = 0x277CBE000uLL;
          if (lastObject)
          {
            v38 = MEMORY[0x277D2C900];
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_48;
            v103[3] = &unk_27972FD40;
            v104 = lastObject;
            v105 = v16;
            v106 = v30;
            v39 = [v38 futureWithBlock:v103 scheduler:v87];
            [array addObject:v39];
          }

          v80 = lastObject;
          v81 = firstObject2;
          v85 = v30;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          videoSegments2 = [v17 videoSegments];
          v40 = [videoSegments2 countByEnumeratingWithState:&v99 objects:v121 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v100;
            v43 = 0.0;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v100 != v42)
                {
                  objc_enumerationMutation(videoSegments2);
                }

                v45 = *(*(&v99 + 1) + 8 * i);
                v46 = *(v37 + 2704);
                resourcePath = [v45 resourcePath];
                v98 = 0;
                v48 = [v46 dataWithContentsOfFile:resourcePath options:0 error:&v98];
                v49 = v98;

                if (v48)
                {
                  isHeader2 = [v45 isHeader];
                  v51 = MEMORY[0x277D2C900];
                  if (isHeader2)
                  {
                    v95[0] = MEMORY[0x277D85DD0];
                    v95[1] = 3221225472;
                    v95[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_49;
                    v95[3] = &unk_279732048;
                    v96 = v85;
                    v97 = v48;
                    v52 = [v51 futureWithBlock:v95 scheduler:v87];
                    [array addObject:v52];

                    v53 = v96;
                  }

                  else
                  {
                    v90[0] = MEMORY[0x277D85DD0];
                    v90[1] = 3221225472;
                    v90[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_2;
                    v90[3] = &unk_27972FD68;
                    v91 = v85;
                    v59 = v48;
                    v94 = v43;
                    v92 = v59;
                    v93 = v45;
                    v60 = [v51 futureWithBlock:v90 scheduler:v87];
                    [array addObject:v60];

                    objc_msgSend_duration(v45);
                    v43 = v43 + v61;

                    v53 = v91;
                  }
                }

                else
                {
                  v54 = objc_autoreleasePoolPush();
                  v55 = v16;
                  v56 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v57 = HMFGetLogIdentifier();
                    resourcePath2 = [v45 resourcePath];
                    *buf = 138543874;
                    v116 = v57;
                    v117 = 2112;
                    v118 = resourcePath2;
                    v119 = 2112;
                    v120 = v49;
                    _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Could not load data from %@: %@", buf, 0x20u);

                    v16 = v83;
                  }

                  objc_autoreleasePoolPop(v54);
                  v37 = 0x277CBE000;
                }
              }

              v41 = [videoSegments2 countByEnumeratingWithState:&v99 objects:v121 count:16];
            }

            while (v41);
          }

          v62 = MEMORY[0x277D2C900];
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_3;
          v88[3] = &unk_279732020;
          v89 = v85;
          v63 = v85;
          v64 = [v62 futureWithBlock:v88 scheduler:v87];
          [array addObject:v64];

          v14 = v77;
          v13 = v78;
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          v66 = v16;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            videoSegments3 = [v17 videoSegments];
            firstObject3 = [videoSegments3 firstObject];
            resourcePath3 = [firstObject3 resourcePath];
            *buf = 138543618;
            v116 = v68;
            v117 = 2112;
            v118 = resourcePath3;
            _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@First fragment in clip %@ is not header, skipping", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v65);
        }

        v15 = v82 + 1;
      }

      while (v82 + 1 != v13);
      v13 = [obj countByEnumeratingWithState:&v111 objects:v122 count:16];
    }

    while (v13);
  }

  v72 = MEMORY[0x277D2C900];
  v73 = objc_msgSend_copy(array);
  v74 = [v72 chainFutures:v73];

  return v74;
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_43(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEA90];
  v5 = [*(a1 + 32) resourcePath];
  v6 = [v4 dataWithContentsOfFile:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 length];
      v13 = [*(a1 + 32) resourcePath];
      v21 = 138543874;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Loaded %lu bytes of hero frame data from %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [HMDMutableCameraRecordingSessionSignificantEvent alloc];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [(HMDCameraRecordingSessionSignificantEvent *)v14 initWithUUID:v15];

    [(HMDCameraRecordingSessionSignificantEvent *)v16 setReason:2];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setConfidenceLevel:100];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setHeroFrameData:v6];
    v17 = *(a1 + 48);
    v18 = [v3 errorOnlyCompletionHandlerAdapter];
    [v17 addSignificantEvent:v16 homePresenceByPairingIdentity:MEMORY[0x277CBEC10] completionHandler:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) resourcePath];
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not load data from %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    [v3 finishWithError:v16];
  }
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_48(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEA90];
  v5 = [*(a1 + 32) resourcePath];
  v6 = [v4 dataWithContentsOfFile:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 length];
      v13 = [*(a1 + 32) resourcePath];
      v21 = 138543874;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Loaded %lu bytes of hero frame data from %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [HMDMutableCameraRecordingSessionSignificantEvent alloc];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [(HMDCameraRecordingSessionSignificantEvent *)v14 initWithUUID:v15];

    [(HMDCameraRecordingSessionSignificantEvent *)v16 setReason:3];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setConfidenceLevel:100];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setHeroFrameData:v6];
    v17 = *(a1 + 48);
    v18 = [v3 errorOnlyCompletionHandlerAdapter];
    [v17 addSignificantEvent:v16 homePresenceByPairingIdentity:MEMORY[0x277CBEC10] completionHandler:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) resourcePath];
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not load data from %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    [v3 finishWithError:v16];
  }
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 errorOnlyCompletionHandlerAdapter];
  [v2 addVideoInitData:v3 completionHandler:v4];
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_2(double *a1, void *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[7];
  v5 = *(a1 + 6);
  v6 = a2;
  objc_msgSend_duration(v5);
  v8 = v7;
  v9 = [v6 errorOnlyCompletionHandlerAdapter];

  [v2 addVideoSegmentData:v3 timeOffsetWithinClip:0 duration:v9 clipFinalizedBecauseMaxDurationExceeded:v4 completionHandler:v8];
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 errorOnlyCompletionHandlerAdapter];
  [v2 finishWithCompletionHandler:v3];
}

id __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraClipImportMetadata alloc] initClipData:v2];

  return v3;
}

- (HMDCameraClipImporter)initWithLocalZone:(id)zone cameraProfileUUID:(id)d
{
  zoneCopy = zone;
  dCopy = d;
  if (!zoneCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = dCopy;
  if (!dCopy)
  {
LABEL_7:
    v20 = _HMFPreconditionFailure();
    return +[(HMDCameraClipImporter *)v20];
  }

  v22.receiver = self;
  v22.super_class = HMDCameraClipImporter;
  v10 = [(HMDCameraClipImporter *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_localZone, zone);
    objc_storeStrong(&v11->_cameraProfileUUID, d);
    v12 = HMFDispatchQueueName();
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    workQueue = v11->_workQueue;
    v11->_workQueue = v14;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    logIdentifier = v11->_logIdentifier;
    v11->_logIdentifier = uUIDString;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_154694 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_154694, &__block_literal_global_52_154695);
  }

  v3 = logCategory__hmf_once_v8_154696;

  return v3;
}

uint64_t __36__HMDCameraClipImporter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_154696;
  logCategory__hmf_once_v8_154696 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end