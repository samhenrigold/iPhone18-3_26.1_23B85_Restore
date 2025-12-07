@interface HMIFeedbackSubmitClipOperation
+ (id)logCategory;
- (BOOL)_attachEncryptedDataUsingKey:(id)key toPayload:(id)payload error:(id *)error;
- (HMIFeedbackSubmitClipOperation)initWithFeedbackSession:(id)session cameraProfileUUID:(id)d clipUUID:(id)iD;
- (id)_base64StringFromData:(id)data;
- (id)_createPayloadWithServiceResult:(id)result error:(id *)error;
- (id)_temporaryFileURLWithUUID:(id)d extension:(id)extension error:(id *)error;
- (id)feedbackRequestURLForClipWithUUID:(id)d;
- (id)feedbackServiceHost;
- (id)feedbackServiceURL;
- (void)_downloadClipWithCameraProfileUUID:(id)d clipUUID:(id)iD completionHandler:(id)handler;
- (void)_requestPreSignedURLWithClipUUID:(id)d completionHandler:(id)handler;
- (void)_stripAudioTrackAndFacesFromAsset:(id)asset completionHandler:(id)handler;
- (void)_submitClipWithCameraProfileUUID:(id)d clipUUID:(id)iD completionHandler:(id)handler;
- (void)_uploadPayloadData:(id)data uploadURL:(id)l completionHandler:(id)handler;
@end

@implementation HMIFeedbackSubmitClipOperation

- (HMIFeedbackSubmitClipOperation)initWithFeedbackSession:(id)session cameraProfileUUID:(id)d clipUUID:(id)iD
{
  sessionCopy = session;
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = HMIFeedbackSubmitClipOperation;
  v12 = [(HMFOperation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feedbackSession, session);
    objc_storeStrong(&v13->_cameraProfileUUID, d);
    objc_storeStrong(&v13->_clipUUID, iD);
    array = [MEMORY[0x277CBEB18] array];
    temporaryFileURLs = v13->_temporaryFileURLs;
    v13->_temporaryFileURLs = array;

    faceCrops = v13->_faceCrops;
    v13->_faceCrops = 0;

    assetData = v13->_assetData;
    v13->_assetData = 0;

    serviceResult = v13->_serviceResult;
    v13->_serviceResult = 0;
  }

  return v13;
}

- (void)_downloadClipWithCameraProfileUUID:(id)d clipUUID:(id)iD completionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v14;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Downloading Clip", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  feedbackSession = [(HMIFeedbackSubmitClipOperation *)selfCopy feedbackSession];
  homeKitClient = [feedbackSession homeKitClient];
  v17 = [homeKitClient cameraProfileWithUUID:?];

  if (v17)
  {
    feedbackSession2 = [(HMIFeedbackSubmitClipOperation *)selfCopy feedbackSession];
    homeKitClient2 = [feedbackSession2 homeKitClient];
    v20 = [homeKitClient2 homeWithCameraProfileUUID:?];

    if (v20)
    {
      v33 = iDCopy;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke;
      v39[3] = &unk_278753E00;
      v39[4] = selfCopy;
      v21 = handlerCopy;
      v41 = v21;
      v22 = v17;
      v40 = v22;
      v23 = MEMORY[0x2318CB8E0](v39);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_152;
      v34[3] = &unk_278753E50;
      v37 = v21;
      v20 = v20;
      v35 = v20;
      v36 = selfCopy;
      v24 = v23;
      v38 = v24;
      v25 = MEMORY[0x2318CB8E0](v34);
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v29 = v32 = v22;
        *buf = 138543362;
        v43 = v29;
        _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_INFO, "%{public}@Fetching Clip", buf, 0xCu);

        v22 = v32;
      }

      objc_autoreleasePoolPop(v26);
      clipManager = [v22 clipManager];
      iDCopy = v33;
      [clipManager fetchClipWithUUID:? completion:?];
    }

    else
    {
      v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      (*(handlerCopy + 2))(handlerCopy, 0, v31);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    (*(handlerCopy + 2))(handlerCopy, 0, v20);
  }
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v4 _temporaryFileURLWithUUID:? extension:? error:?];
  v7 = 0;

  if (v6)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v6 path];
    v10 = [v8 fileExistsAtPath:?];

    if (!v10)
    {
      v12 = objc_alloc(MEMORY[0x277CD18E8]);
      v13 = [*(a1 + 40) clipManager];
      v14 = [v12 initWithClipManager:? clip:?];

      [v14 setClipDestinationFileURL:?];
      v16 = *(a1 + 48);
      v15 = v6;
      [v14 setFetchVideoAssetContextCompletionBlock:?];
      [v14 setDownloadProgressHandler:?];
      [v14 start];

      goto LABEL_7;
    }

    v11 = *(*(a1 + 48) + 16);
  }

  else
  {
    v11 = *(*(a1 + 48) + 16);
  }

  v11();
LABEL_7:
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched Clip videoAssetContext: %@, error: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *(a1 + 48);
  if (v5)
  {
    (*(v11 + 16))(*(a1 + 48), *(a1 + 40), 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? suggestion:? underlyingError:?];
    (*(v11 + 16))(v11, 0, v12);
  }
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_149(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetching Clip, progress %lu%%", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v20 = *(a1 + 48);
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? suggestion:? underlyingError:?];
    (*(v20 + 16))(v20, 0, v14);
LABEL_9:

    goto LABEL_13;
  }

  v7 = [*(a1 + 32) personManager];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching Face Crops", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v5 significantEvents];
    v14 = [v13 na_map:?];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetched Person UUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [*(a1 + 32) personManager];
    v23 = *(a1 + 56);
    v22 = v5;
    [v19 fetchFaceCropsForPersonsWithUUIDs:? completion:?];

    goto LABEL_9;
  }

  if (v11)
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v21;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Face crops are not available.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 56) + 16))();
LABEL_13:
}

id __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_159(uint64_t a1, void *a2)
{
  v2 = [a2 faceClassification];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 person];
    v5 = [v4 UUID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_163(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched Face Crops: %@, error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) setFaceCrops:?];
  (*(*(a1 + 48) + 16))();
}

- (void)_stripAudioTrackAndFacesFromAsset:(id)asset completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  handlerCopy = handler;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v34 = 0;
  v9 = [HMIFeedbackSubmitClipOperation _temporaryFileURLWithUUID:"_temporaryFileURLWithUUID:extension:error:" extension:? error:?];
  v10 = 0;

  if (!v9)
  {
    handlerCopy[2](handlerCopy, 0, v10);
    goto LABEL_20;
  }

  memset(&v33, 0, sizeof(v33));
  v11 = +[HMIPreference isInternalInstall];
  v12 = 60.0;
  if (!v11)
  {
    v12 = 20.0;
  }

  CMTimeMakeWithSeconds(&v33, v12, 1000);
  if (+[HMIPreference isInternalInstall])
  {
    goto LABEL_5;
  }

  v32 = 0;
  v21 = objc_alloc_init(HMIFeedbackVisionProcessor);
  buf = v33;
  v22 = [HMIFeedbackVisionProcessor blurFacesFromAssetURL:v21 outputURL:"blurFacesFromAssetURL:outputURL:duration:analysisFPS:windowSize:faceDetected:" duration:? analysisFPS:? windowSize:? faceDetected:?];

  if ((v22 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    handlerCopy[2](handlerCopy, 0, v17);
LABEL_19:

    goto LABEL_20;
  }

  if (v32 != 1)
  {
LABEL_5:
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v16;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Use the original video without audio track for upload", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CE63D8] assetWithURL:?];
    if ([v17 isReadable])
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __86__HMIFeedbackSubmitClipOperation__stripAudioTrackAndFacesFromAsset_completionHandler___block_invoke;
      v27[3] = &unk_278753EA0;
      v18 = v17;
      v28 = v18;
      v30 = handlerCopy;
      v29 = v9;
      v31 = v33;
      v19 = MEMORY[0x2318CB8E0](v27);
      [v18 loadValuesAsynchronouslyForKeys:? completionHandler:?];

      v20 = v28;
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      handlerCopy[2](handlerCopy, 0, v20);
    }

    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = v26;
    _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_INFO, "%{public}@Use the face-blurred video for upload", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  (handlerCopy)[2](handlerCopy, v9, 0);
LABEL_20:
}

void __86__HMIFeedbackSubmitClipOperation__stripAudioTrackAndFacesFromAsset_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v24 = 0;
  v3 = [v2 statusOfValueForKey:? error:?];
  v4 = 0;
  if (v3 == 2)
  {
    v5 = [MEMORY[0x277CE6548] composition];
    v6 = [v5 addMutableTrackWithMediaType:? preferredTrackID:?];
    v7 = [*(a1 + 32) tracksWithMediaType:?];
    v8 = [v7 firstObject];

    if (v8)
    {
      if (*(a1 + 32))
      {
        [&duration duration];
      }

      else
      {
        memset(&duration, 0, sizeof(duration));
      }

      start = **&MEMORY[0x277CC08F0];
      v16 = *&start.value;
      epoch = start.epoch;
      CMTimeRangeMake(&v23, &start, &duration);
      v20 = v4;
      *&duration.value = v16;
      duration.epoch = epoch;
      v12 = [v6 insertTimeRange:? ofTrack:? atTime:? error:?];
      v13 = v4;

      if (v12)
      {
        v14 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:? presetName:?];
        [v14 setOutputFileType:?];
        [v14 setOutputURL:?];
        [v14 setShouldOptimizeForNetworkUse:?];
        CMTimeMake(&v23.start, 0, 1000);
        duration = *(a1 + 56);
        CMTimeRangeMake(&v19, &v23.start, &duration);
        v23 = v19;
        [v14 setTimeRange:?];
        v18 = *(a1 + 48);
        v17 = *(a1 + 40);
        v15 = v14;
        [v15 exportAsynchronouslyWithCompletionHandler:?];
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }

      v4 = v13;
    }

    else
    {
      v9 = *(a1 + 48);
      v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      (*(v9 + 16))(v9, 0, v10);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __86__HMIFeedbackSubmitClipOperation__stripAudioTrackAndFacesFromAsset_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  v3 = *(a1 + 48);
  if (v2 == 3)
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v6 = *(a1 + 48);

    v5(v6, v4, 0);
  }

  else
  {
    v7 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, 0, v7);
  }
}

- (id)feedbackRequestURLForClipWithUUID:(id)d
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  feedbackServiceURL = [(HMIFeedbackSubmitClipOperation *)self feedbackServiceURL];
  uUIDString = [dCopy UUIDString];

  v9 = [v5 stringWithFormat:feedbackServiceURL, uUIDString];
  v10 = [v4 URLWithString:?];

  return v10;
}

- (id)feedbackServiceHost
{
  feedbackSession = [(HMIFeedbackSubmitClipOperation *)self feedbackSession];
  feedbackServiceHost = [feedbackSession feedbackServiceHost];

  return feedbackServiceHost;
}

- (id)feedbackServiceURL
{
  v2 = MEMORY[0x277CCACA8];
  feedbackServiceHost = [(HMIFeedbackSubmitClipOperation *)self feedbackServiceHost];
  v4 = [v2 stringWithFormat:feedbackServiceHost];

  return v4;
}

- (id)_base64StringFromData:(id)data
{
  v3 = [data base64EncodedDataWithOptions:?];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];

  return v4;
}

- (id)_temporaryFileURLWithUUID:(id)d extension:(id)extension error:(id *)error
{
  dCopy = d;
  extensionCopy = extension;
  v10 = HMIURLForCacheDirectory(error);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 URLByAppendingPathComponent:?];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v12 path];
    v15 = [defaultManager fileExistsAtPath:?];

    if ((v15 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "path"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:"), v17, v16, v19 = 0, v18))
    {
      path2 = [v12 path];
      extensionCopy = [MEMORY[0x277CCACA8] stringWithFormat:dCopy, extensionCopy];
      v22 = [path2 stringByAppendingPathComponent:?];

      v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      [(NSMutableArray *)self->_temporaryFileURLs addObject:?];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_uploadPayloadData:(id)data uploadURL:(id)l completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v25 = v14;
    v26 = 2112;
    v27 = dataCopy;
    v28 = 2112;
    v29 = lCopy;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Uploading payload data: %@, to URL %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v16 = [HMIFeedbackSubmitClipOperation _temporaryFileURLWithUUID:selfCopy extension:"_temporaryFileURLWithUUID:extension:error:" error:?];
  v17 = 0;

  if (v16)
  {
    [dataCopy writeToURL:? atomically:?];
    v18 = [MEMORY[0x277CCAB70] requestWithURL:?];
    [v18 setHTTPMethod:?];
    [v18 setValue:? forHTTPHeaderField:?];
    feedbackSession = [(HMIFeedbackSubmitClipOperation *)selfCopy feedbackSession];
    session = [feedbackSession session];
    v22 = MEMORY[0x277D85DD0];
    v23 = handlerCopy;
    v21 = [session uploadTaskWithRequest:v22 fromFile:3221225472 completionHandler:{__81__HMIFeedbackSubmitClipOperation__uploadPayloadData_uploadURL_completionHandler___block_invoke, &unk_278753EC8}];

    [v21 resume];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (BOOL)_attachEncryptedDataUsingKey:(id)key toPayload:(id)payload error:(id *)error
{
  keyCopy = key;
  payloadCopy = payload;
  if ([keyCopy length] == 32)
  {
    v10 = MEMORY[0x277CBEB28];
    [(NSData *)self->_assetData length];
    v11 = [v10 dataWithLength:?];
    v12 = [MEMORY[0x277CBEB28] dataWithLength:?];
    v13 = NSRandomData();
    v14 = 0;
    v15 = v14;
    if (v13)
    {
      errorCopy = error;
      v49 = v14;
      v50 = payloadCopy;
      [keyCopy bytes];
      [keyCopy length];
      [v13 bytes];
      [v13 length];
      [(NSData *)self->_assetData bytes];
      v57 = v13;
      v16 = [(NSData *)self->_assetData length];
      mutableBytes = [v11 mutableBytes];
      mutableBytes2 = [v12 mutableBytes];
      v44 = [v12 length];
      selfCopy = self;
      if (CCCryptorGCMOneshotEncrypt())
      {
        v18 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:v16 description:{mutableBytes, mutableBytes2, v44}];
        array = v18;
        if (errorCopy)
        {
          v20 = v18;
          *errorCopy = array;
        }

        HMIErrorLog(self, array);
        v21 = 0;
        v15 = v49;
      }

      else
      {
        v27 = [(HMIFeedbackSubmitClipOperation *)self _base64StringFromData:v16, mutableBytes, mutableBytes2, v44];
        [payloadCopy setObject:? forKeyedSubscript:?];

        v28 = [(HMIFeedbackSubmitClipOperation *)self _base64StringFromData:?];
        [payloadCopy setObject:? forKeyedSubscript:?];

        v29 = [(HMIFeedbackSubmitClipOperation *)self _base64StringFromData:?];
        [payloadCopy setObject:? forKeyedSubscript:?];

        if (!+[HMIPreference isInternalInstall])
        {
          v21 = 1;
          v15 = v49;
LABEL_29:

          goto LABEL_30;
        }

        v46 = v12;
        v47 = v11;
        array = [MEMORY[0x277CBEB18] array];
        obj = [(HMIFeedbackSubmitClipOperation *)self faceCrops];
        v55 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v55)
        {
          v53 = keyCopy;
          v54 = MEMORY[0];
          v52 = array;
          while (2)
          {
            for (i = 0; i != v55; i = (i + 1))
            {
              if (MEMORY[0] != v54)
              {
                objc_enumerationMutation(obj);
              }

              dataRepresentation = [*(8 * i) dataRepresentation];
              v32 = MEMORY[0x277CBEB28];
              [dataRepresentation length];
              v33 = [v32 dataWithLength:?];
              v34 = [MEMORY[0x277CBEB28] dataWithLength:?];
              [keyCopy bytes];
              [keyCopy length];
              [v57 bytes];
              [v57 length];
              [dataRepresentation bytes];
              v35 = [dataRepresentation length];
              mutableBytes3 = [v33 mutableBytes];
              mutableBytes4 = [v34 mutableBytes];
              v45 = [v34 length];
              if (CCCryptorGCMOneshotEncrypt())
              {
                v38 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:v35 description:{mutableBytes3, mutableBytes4, v45}];
                v39 = v38;
                v11 = v47;
                array = v52;
                if (errorCopy)
                {
                  v40 = v38;
                  *errorCopy = v39;
                }

                HMIErrorLog(selfCopy, v39);

                v21 = 0;
                keyCopy = v53;
                payloadCopy = v50;
                goto LABEL_27;
              }

              v58 = [(HMIFeedbackSubmitClipOperation *)selfCopy _base64StringFromData:v35, mutableBytes3, mutableBytes4, v45];
              v59 = [(HMIFeedbackSubmitClipOperation *)selfCopy _base64StringFromData:?];
              v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
              array = v52;
              [v52 addObject:?];

              keyCopy = v53;
            }

            v55 = [obj countByEnumeratingWithState:? objects:? count:?];
            if (v55)
            {
              continue;
            }

            break;
          }
        }

        payloadCopy = v50;
        [v50 setObject:? forKeyedSubscript:?];
        v21 = 1;
        v11 = v47;
LABEL_27:
        v12 = v46;
        v15 = v49;
        v13 = v57;
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      array = v25;
      if (error)
      {
        v26 = v25;
        *error = array;
      }

      HMIErrorLog(self, array);
      v21 = 0;
    }

    goto LABEL_29;
  }

  v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
  v23 = v22;
  if (error)
  {
    v24 = v22;
    *error = v23;
  }

  HMIErrorLog(self, v23);

  v21 = 0;
LABEL_30:

  return v21;
}

- (id)_createPayloadWithServiceResult:(id)result error:(id *)error
{
  resultCopy = result;
  v6 = [resultCopy objectForKeyedSubscript:?];
  v7 = [v6 dataUsingEncoding:?];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([HMIFeedbackSubmitClipOperation _attachEncryptedDataUsingKey:"_attachEncryptedDataUsingKey:toPayload:error:" toPayload:? error:?])
  {
    v9 = [resultCopy objectForKeyedSubscript:?];
    [dictionary setObject:? forKeyedSubscript:?];

    if (+[HMIPreference isInternalInstall])
    {
      [dictionary setObject:? forKeyedSubscript:?];
    }

    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_submitClipWithCameraProfileUUID:(id)d clipUUID:(id)iD completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v34 = v14;
    v35 = 2112;
    v36 = iDCopy;
    v37 = 2112;
    v38 = dCopy;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitting clipUUID: %@, cameraProfileUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke;
  v31[3] = &unk_278753EF0;
  v31[4] = selfCopy;
  v15 = handlerCopy;
  v32 = v15;
  v16 = MEMORY[0x2318CB8E0](v31);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_231;
  v28[3] = &unk_278753F18;
  v28[4] = selfCopy;
  v17 = v15;
  v29 = v17;
  v30 = v16;
  v18 = v16;
  v19 = MEMORY[0x2318CB8E0](v28);
  v24 = MEMORY[0x277D85DD0];
  v25 = dCopy;
  v26 = iDCopy;
  v27 = v19;
  v20 = v19;
  v21 = iDCopy;
  v22 = dCopy;
  v23 = v17;
  [(HMIFeedbackSubmitClipOperation *)selfCopy _requestPreSignedURLWithClipUUID:v24 completionHandler:3221225472, __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_232, &unk_278753F40, selfCopy];
}

void __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v20 = v10;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Stripped Audio %@, error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
    [*(a1 + 32) setAssetData:?];

    v12 = *(a1 + 32);
    v13 = [v12 serviceResult];
    v14 = [v12 _createPayloadWithServiceResult:? error:?];
    v6 = 0;

    if (v14)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = [*(a1 + 32) serviceResult];
      v17 = [v16 objectForKeyedSubscript:?];
      v18 = [v15 URLWithString:?];

      [*(a1 + 32) _uploadPayloadData:? uploadURL:? completionHandler:?];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_231(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Downloaded %@, error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    [*(a1 + 32) _stripAudioTrackAndFacesFromAsset:? completionHandler:?];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_232(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setServiceResult:?];
    [*(a1 + 32) _downloadClipWithCameraProfileUUID:? clipUUID:? completionHandler:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch pre-signed URL, error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_requestPreSignedURLWithClipUUID:(id)d completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    feedbackServiceHost = [(HMIFeedbackSubmitClipOperation *)selfCopy feedbackServiceHost];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = feedbackServiceHost;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Requesting a pre-signed url from server endpoint:%@, for clipUUID:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  feedbackSession = [(HMIFeedbackSubmitClipOperation *)selfCopy feedbackSession];
  session = [feedbackSession session];
  v15 = [(HMIFeedbackSubmitClipOperation *)selfCopy feedbackRequestURLForClipWithUUID:?];
  v18 = MEMORY[0x277D85DD0];
  v19 = handlerCopy;
  v16 = handlerCopy;
  v17 = [session dataTaskWithURL:v18 completionHandler:{3221225472, __85__HMIFeedbackSubmitClipOperation__requestPreSignedURLWithClipUUID_completionHandler___block_invoke, &unk_278753F68, selfCopy}];

  [v17 resume];
}

void __85__HMIFeedbackSubmitClipOperation__requestPreSignedURLWithClipUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
    v15 = 0;
    if (!v14)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v25;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode server response, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      (*(*(a1 + 40) + 16))();
      goto LABEL_25;
    }

    v16 = v8;
    v17 = [v16 statusCode];
    context = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v17 == 500)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v27;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result due to internal server error, serverResponse: %@", buf, 0x16u);
      }
    }

    else if (v17 == 404)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v26;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result, resource is not found, serverResponse: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v17 == 200)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v21;
          v33 = 2112;
          v34 = v14;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Service result: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        (*(*(a1 + 40) + 16))();
        goto LABEL_24;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v28;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result due to server error, serverResponse: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(context);
    v29 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:context description:?];

    (*(*(a1 + 40) + 16))();
    v15 = v29;
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v13;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result from server, error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  (*(*(a1 + 40) + 16))();
LABEL_26:
}

void __55__HMIFeedbackSubmitClipOperation__removeTemporaryFiles__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Deleting Temporary File %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v3 path];
  v10 = [v8 fileExistsAtPath:?];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = 0;
    v12 = [v11 removeItemAtURL:? error:?];
    v13 = v18;

    if ((v12 & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v17;
        v21 = 2112;
        v22 = v3;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Deleted Temporary File %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

void __38__HMIFeedbackSubmitClipOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _removeTemporaryFiles];
  v3 = *(a1 + 32);
  if (v4)
  {
    [v3 cancelWithError:?];
  }

  else
  {
    [v3 finish];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37 != -1)
  {
    +[HMIFeedbackSubmitClipOperation logCategory];
  }

  v3 = logCategory__hmf_once_v38;

  return v3;
}

uint64_t __45__HMIFeedbackSubmitClipOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v38;
  logCategory__hmf_once_v38 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end