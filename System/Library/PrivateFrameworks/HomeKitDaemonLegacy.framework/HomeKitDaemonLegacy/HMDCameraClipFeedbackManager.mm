@interface HMDCameraClipFeedbackManager
+ (id)logCategory;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)zone cloudZone:(id)cloudZone home:(id)home messageDispatcher:(id)dispatcher cameraProfileUUID:(id)d messageTargetUUID:(id)iD workQueue:(id)queue;
- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)zone cloudZone:(id)cloudZone home:(id)home messageDispatcher:(id)dispatcher cameraProfileUUID:(id)d messageTargetUUID:(id)iD workQueue:(id)queue feedbackUploader:(id)self0;
- (HMDHome)home;
- (id)_performCloudPull;
- (id)logIdentifier;
- (void)_findAndUploadSubmittedClips;
- (void)_handleFindAndUploadSubmittedClipsMessage:(id)message;
- (void)_handleSubmitClipsMessage:(id)message;
- (void)_notifyPrimaryResidentThatClipsWereSubmitted;
- (void)_uploadNextClipFromQueryResult:(id)result;
- (void)configureWithIsCurrentDeviceResidentCapable:(BOOL)capable;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
@end

@implementation HMDCameraClipFeedbackManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  cameraProfileUUID = [(HMDCameraClipFeedbackManager *)self cameraProfileUUID];
  uUIDString = [cameraProfileUUID UUIDString];

  return uUIDString;
}

- (void)_handleSubmitClipsMessage:(id)message
{
  v78 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v72 = v9;
    v73 = 2112;
    v74 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling submit clips message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy setForKey:*MEMORY[0x277CCF430]];
  if (!v11)
  {
    v51 = objc_autoreleasePoolPush();
    v52 = selfCopy;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v72 = v54;
      v73 = 2112;
      v74 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v51);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v12];
    goto LABEL_41;
  }

  v57 = messageCopy;
  v12 = [MEMORY[0x277CBEB58] set];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v56 = v11;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = *v67;
LABEL_6:
  v16 = 0;
  while (1)
  {
    if (*v67 != v15)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v66 + 1) + 8 * v16);
    localZone = [(HMDCameraClipFeedbackManager *)selfCopy localZone];
    v19 = objc_opt_class();
    v65 = 0;
    v20 = [localZone fetchModelWithModelID:v17 ofType:v19 error:&v65];
    v21 = v65;

    if (!v20)
    {
      break;
    }

    [v12 addObject:v20];

    if (v14 == ++v16)
    {
      v14 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
      if (!v14)
      {
LABEL_12:

        v58 = [MEMORY[0x277CBEB58] set];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v12 = v12;
        v22 = [v12 countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (!v22)
        {
          goto LABEL_31;
        }

        v23 = v22;
        v24 = *v62;
        while (1)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v62 != v24)
            {
              objc_enumerationMutation(v12);
            }

            v26 = *(*(&v61 + 1) + 8 * i);
            feedbackStatus = [v26 feedbackStatus];
            switch(feedbackStatus)
            {
              case 2:
                v36 = objc_autoreleasePoolPush();
                v37 = selfCopy;
                v38 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v72 = v39;
                  v73 = 2112;
                  v74 = v26;
                  v40 = v38;
                  v41 = "%{public}@Clip is already uploaded: %@";
LABEL_27:
                  _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, v41, buf, 0x16u);
                }

LABEL_28:

                objc_autoreleasePoolPop(v36);
                continue;
              case 1:
                v36 = objc_autoreleasePoolPush();
                v37 = selfCopy;
                v38 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v72 = v39;
                  v73 = 2112;
                  v74 = v26;
                  v40 = v38;
                  v41 = "%{public}@Clip is already marked for upload: %@";
                  goto LABEL_27;
                }

                goto LABEL_28;
              case 0:
                v28 = objc_autoreleasePoolPush();
                v29 = selfCopy;
                v30 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  v31 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v72 = v31;
                  v73 = 2112;
                  v74 = v26;
                  _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Marking clip for upload: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v28);
                v32 = [HMDCameraClipModel alloc];
                hmbModelID = [v26 hmbModelID];
                hmbParentModelID = [v26 hmbParentModelID];
                v35 = [(HMBModel *)v32 initWithModelID:hmbModelID parentModelID:hmbParentModelID];

                [(HMDCameraClipModel *)v35 setFeedbackStatus:1];
                [v58 addObject:v35];

                break;
            }
          }

          v23 = [v12 countByEnumeratingWithState:&v61 objects:v70 count:16];
          if (!v23)
          {
LABEL_31:

            if ([v58 count])
            {
              localZone2 = [(HMDCameraClipFeedbackManager *)selfCopy localZone];
              v43 = [MEMORY[0x277D17108] optionsWithLabel:@"Marking clips for upload"];
              v44 = [localZone2 updateModels:v58 options:v43];

              v60[0] = MEMORY[0x277D85DD0];
              v60[1] = 3221225472;
              v60[2] = __58__HMDCameraClipFeedbackManager__handleSubmitClipsMessage___block_invoke;
              v60[3] = &unk_2797330C8;
              v60[4] = selfCopy;
              v45 = [v44 addSuccessBlock:v60];
            }

            messageCopy = v57;
            [v57 respondWithSuccess];

            goto LABEL_37;
          }
        }
      }

      goto LABEL_6;
    }
  }

  v46 = objc_autoreleasePoolPush();
  v47 = selfCopy;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543874;
    v72 = v49;
    v73 = 2112;
    v74 = v17;
    v75 = 2112;
    v76 = v21;
    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failing request to submit because no clip model could be found for UUID %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v46);
  v50 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  messageCopy = v57;
  [v57 respondWithError:v50];

LABEL_37:
  v11 = v56;
LABEL_41:
}

void __58__HMDCameraClipFeedbackManager__handleSubmitClipsMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mirrorOutputResult];
  v4 = MEMORY[0x277D2C938];
  v5 = [*(a1 + 32) workQueue];
  v6 = [v4 schedulerWithDispatchQueue:v5];
  v7 = [v3 reschedule:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HMDCameraClipFeedbackManager__handleSubmitClipsMessage___block_invoke_2;
  v9[3] = &unk_279733BE8;
  v9[4] = *(a1 + 32);
  v8 = [v7 addSuccessBlock:v9];
}

- (void)_handleFindAndUploadSubmittedClipsMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling find and upload submitted clips message: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraClipFeedbackManager *)selfCopy _findAndUploadSubmittedClips];
  [messageCopy respondWithSuccess];
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDCameraClipFeedbackManager_handlePrimaryResidentUpdateNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __72__HMDCameraClipFeedbackManager_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@The current device is the confirmed primary resident", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _findAndUploadSubmittedClips];
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@The current device is not the confirmed primary resident", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_notifyPrimaryResidentThatClipsWereSubmitted
{
  v27 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraClipFeedbackManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {

    [(HMDCameraClipFeedbackManager *)self _findAndUploadSubmittedClips];
  }

  else
  {
    home = [(HMDCameraClipFeedbackManager *)self home];
    primaryResident = [home primaryResident];

    if (primaryResident)
    {
      v6 = [HMDRemoteDeviceMessageDestination alloc];
      messageTargetUUID = [(HMDCameraClipFeedbackManager *)self messageTargetUUID];
      device = [primaryResident device];
      v9 = [(HMDRemoteDeviceMessageDestination *)v6 initWithTarget:messageTargetUUID device:device];

      v10 = [[HMDRemoteMessage alloc] initWithName:@"HMDCameraClipFeedbackFindAndUploadSubmittedClipsMessage" destination:v9 payload:0 type:3 timeout:1 secure:0.0];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        shortDescription = [(HMFObject *)v10 shortDescription];
        v21 = 138543874;
        v22 = v14;
        v23 = 2112;
        v24 = shortDescription;
        v25 = 2112;
        v26 = primaryResident;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ that clips were submitted to %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      messageDispatcher = [(HMDCameraClipFeedbackManager *)selfCopy messageDispatcher];
      [messageDispatcher sendMessage:v10];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find primary resident to send notifications to", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }
}

- (void)_uploadNextClipFromQueryResult:(id)result
{
  v35 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  nextObject = [resultCopy nextObject];
  if (!nextObject)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v18;
      v19 = "%{public}@No more clips left to upload";
      v20 = v17;
      v21 = OS_LOG_TYPE_INFO;
      v22 = 12;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v20, v21, v19, buf, v22);
    }

LABEL_12:

    objc_autoreleasePoolPop(v15);
    goto LABEL_17;
  }

  if (![(HMDCameraClipFeedbackManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v18;
      v33 = 2112;
      v34 = nextObject;
      v19 = "%{public}@Current device is not a confirmed primary resident, will not upload clip %@";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  feedbackStatus = [nextObject feedbackStatus];
  v8 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (feedbackStatus == 2)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v12;
      v33 = 2112;
      v34 = nextObject;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Clip %@ was already uploaded", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    workQueue2 = [(HMDCameraClipFeedbackManager *)selfCopy3 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = selfCopy3;
    v30 = resultCopy;
    dispatch_async(workQueue2, block);

    v14 = v30;
  }

  else
  {
    if (v11)
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2112;
      v34 = nextObject;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Uploading clip %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    feedbackUploader = [(HMDCameraClipFeedbackManager *)selfCopy3 feedbackUploader];
    cameraProfileUUID = [(HMDCameraClipFeedbackManager *)selfCopy3 cameraProfileUUID];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke_90;
    v26[3] = &unk_279734D88;
    v26[4] = selfCopy3;
    v27 = nextObject;
    v28 = resultCopy;
    [feedbackUploader uploadFeedbackWithCameraProfileUUID:cameraProfileUUID clipModel:v27 completionHandler:v26];

    v14 = v27;
  }

LABEL_17:
}

void __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke_90(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = a1[5];
      *buf = 138543874;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to upload clip %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = a1[5];
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Marking clip as uploaded: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v12 = [HMDCameraClipModel alloc];
    v13 = [a1[5] hmbModelID];
    v14 = [a1[5] hmbParentModelID];
    v15 = [(HMBModel *)v12 initWithModelID:v13 parentModelID:v14];

    [(HMDCameraClipModel *)v15 setFeedbackStatus:2];
    v16 = [a1[4] localZone];
    v17 = [MEMORY[0x277CBEB98] setWithObject:v15];
    v18 = [MEMORY[0x277D17108] optionsWithLabel:@"Marking clip as uploaded"];
    v19 = [v16 updateModels:v17 options:v18];
  }

  v20 = [a1[4] workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke_95;
  v21[3] = &unk_2797359B0;
  v21[4] = a1[4];
  v22 = a1[6];
  dispatch_async(v20, v21);
}

- (void)_findAndUploadSubmittedClips
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraClipFeedbackManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    _performCloudPull = [(HMDCameraClipFeedbackManager *)self _performCloudPull];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HMDCameraClipFeedbackManager__findAndUploadSubmittedClips__block_invoke;
    v10[3] = &unk_279733BC0;
    v10[4] = self;
    v5 = [_performCloudPull addCompletionBlock:v10];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device is not a confirmed primary resident, will not upload clips", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __60__HMDCameraClipFeedbackManager__findAndUploadSubmittedClips__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localZone];
  v3 = +[HMDCameraClipModel clipsWithNeedsUploadFeedbackStatusQuery];
  v4 = [v2 queryModelsUsingQuery:v3];

  [*(a1 + 32) _uploadNextClipFromQueryResult:v4];
}

- (id)_performCloudPull
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Performing cloud pull", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D17108] optionsWithLabel:@"Explicit fetch"];
  cloudZone = [(HMDCameraClipFeedbackManager *)selfCopy cloudZone];
  v10 = [cloudZone performCloudPullWithOptions:v8];
  v11 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDCameraClipFeedbackManager *)selfCopy workQueue];
  v13 = [v11 schedulerWithDispatchQueue:workQueue2];
  v14 = [v10 reschedule:v13];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__HMDCameraClipFeedbackManager__performCloudPull__block_invoke;
  v17[3] = &unk_2797359D8;
  v17[4] = selfCopy;
  v15 = [v14 addFailureBlock:v17];

  return v15;
}

void __49__HMDCameraClipFeedbackManager__performCloudPull__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform cloud pull: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCameraClipFeedbackManager *)self home];
  LOBYTE(workQueue) = [home isCurrentDeviceConfirmedPrimaryResident];

  return workQueue;
}

- (void)configureWithIsCurrentDeviceResidentCapable:(BOOL)capable
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring clip feedback manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDCameraClipFeedbackManager *)selfCopy home];
  if (home)
  {
    v11 = [HMDXPCMessagePolicy policyWithEntitlements:133];
    v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    messageDispatcher = [(HMDCameraClipFeedbackManager *)selfCopy messageDispatcher];
    v14 = *MEMORY[0x277CCF4B8];
    v30[0] = v11;
    v30[1] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    [messageDispatcher registerForMessage:v14 receiver:selfCopy policies:v15 selector:sel__handleSubmitClipsMessage_];

    if (capable)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      residentDeviceManager = [home residentDeviceManager];
      [defaultCenter addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

      v18 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
      messageDispatcher2 = [(HMDCameraClipFeedbackManager *)selfCopy messageDispatcher];
      v29 = v18;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [messageDispatcher2 registerForMessage:@"HMDCameraClipFeedbackFindAndUploadSubmittedClipsMessage" receiver:selfCopy policies:v20 selector:sel__handleFindAndUploadSubmittedClipsMessage_];

      [(HMDCameraClipFeedbackManager *)selfCopy _findAndUploadSubmittedClips];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Current device is not resident capable, clip uploading is not available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot configure clip feedback manager because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)zone cloudZone:(id)cloudZone home:(id)home messageDispatcher:(id)dispatcher cameraProfileUUID:(id)d messageTargetUUID:(id)iD workQueue:(id)queue feedbackUploader:(id)self0
{
  zoneCopy = zone;
  cloudZoneCopy = cloudZone;
  cloudZoneCopy2 = cloudZone;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  dispatcherCopy2 = dispatcher;
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  queueCopy = queue;
  uploaderCopy = uploader;
  if (!zoneCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!cloudZoneCopy2)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!homeCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!dispatcherCopy2)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!dCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!iDCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!queueCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v23 = uploaderCopy;
  if (!uploaderCopy)
  {
LABEL_19:
    v29 = _HMFPreconditionFailure();
    return [(HMDCameraClipFeedbackManager *)v29 initWithLocalZone:v30 cloudZone:v31 home:v32 messageDispatcher:v33 cameraProfileUUID:v34 messageTargetUUID:v35 workQueue:v36, queue];
  }

  v42.receiver = self;
  v42.super_class = HMDCameraClipFeedbackManager;
  v24 = [(HMDCameraClipFeedbackManager *)&v42 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_home, homeCopy);
    v26 = objc_msgSend_copy(dCopy);
    cameraProfileUUID = v25->_cameraProfileUUID;
    v25->_cameraProfileUUID = v26;

    objc_storeStrong(&v25->_messageTargetUUID, obj);
    objc_storeStrong(&v25->_feedbackUploader, uploader);
    objc_storeStrong(&v25->_workQueue, queue);
    objc_storeStrong(&v25->_localZone, zone);
    objc_storeStrong(&v25->_cloudZone, cloudZoneCopy);
    objc_storeStrong(&v25->_messageDispatcher, dispatcherCopy);
  }

  return v25;
}

- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)zone cloudZone:(id)cloudZone home:(id)home messageDispatcher:(id)dispatcher cameraProfileUUID:(id)d messageTargetUUID:(id)iD workQueue:(id)queue
{
  zoneCopy = zone;
  cloudZoneCopy = cloudZone;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  if (!zoneCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!cloudZoneCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!homeCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!dispatcherCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!dCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!iDCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v22 = queueCopy;
  if (queueCopy)
  {
    v23 = objc_alloc_init(HMDCameraClipFeedbackUploader);
    v24 = [(HMDCameraClipFeedbackManager *)self initWithLocalZone:zoneCopy cloudZone:cloudZoneCopy home:homeCopy messageDispatcher:dispatcherCopy cameraProfileUUID:dCopy messageTargetUUID:iDCopy workQueue:v22 feedbackUploader:v23];

    return v24;
  }

LABEL_15:
  v26 = _HMFPreconditionFailure();
  return +[(HMDCameraClipFeedbackManager *)v26];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23_177234 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23_177234, &__block_literal_global_177235);
  }

  v3 = logCategory__hmf_once_v24_177236;

  return v3;
}

uint64_t __43__HMDCameraClipFeedbackManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v24_177236;
  logCategory__hmf_once_v24_177236 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end