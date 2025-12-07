@interface HMDCameraClipAppendStreamingAssetOperation
+ (BOOL)shouldRetry;
+ (NSString)metadataPropertyName;
+ (NSString)streamingAssetPropertyName;
+ (id)logCategory;
- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)d localZone:(id)zone data:(id)data metadata:(id)metadata encryptionManager:(id)manager;
- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)d localZone:(id)zone data:(id)data metadata:(id)metadata encryptionManager:(id)manager dataSource:(id)source;
- (id)_retryDelayForError:(id)error;
- (id)_updateClipModel:(id)model usingStreamingAsset:(id)asset;
- (id)attributeDescriptions;
- (void)cancelWithError:(id)error;
- (void)finish;
- (void)main;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraClipAppendStreamingAssetOperation

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDCameraClipAppendStreamingAssetOperation;
  attributeDescriptions = [(HMDCameraClipOperation *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  data = [(HMDCameraClipAppendStreamingAssetOperation *)self data];
  shortDescription = [data shortDescription];
  v7 = [v4 initWithName:@"Data" value:shortDescription];
  v15[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  metadata = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
  v10 = [v8 initWithName:@"Metadata" value:metadata];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [attributeDescriptions arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  retryTimer = [(HMDCameraClipAppendStreamingAssetOperation *)self retryTimer];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (retryTimer == fireCopy)
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Retry timer fired for append", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDCameraClipAppendStreamingAssetOperation *)selfCopy setRetryTimer:0];
    [(HMDCameraClipAppendStreamingAssetOperation *)selfCopy main];
  }

  else
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Operation timed out, cancelling", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
    [(HMDCameraClipAppendStreamingAssetOperation *)selfCopy cancelWithError:v11];
  }
}

- (id)_retryDelayForError:(id)error
{
  errorCopy = error;
  if ([objc_opt_class() shouldRetry] && (objc_msgSend(errorCopy, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CBBF50]), v4, v5))
  {
    code = [errorCopy code];
    v7 = &unk_28662BE68;
    if (code != 34 && code != 121)
    {
      userInfo = [errorCopy userInfo];
      v7 = [userInfo hmf_numberForKey:*MEMORY[0x277CBBF68]];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_updateClipModel:(id)model usingStreamingAsset:(id)asset
{
  v42 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  assetCopy = asset;
  v8 = [objc_alloc(MEMORY[0x277D17130]) initWithUploadStreamingAsset:assetCopy];
  streamingAssetPropertyName = [objc_opt_class() streamingAssetPropertyName];
  [modelCopy hmbSetProperty:v8 named:streamingAssetPropertyName];

  metadata = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
  LODWORD(streamingAssetPropertyName) = [metadata hasDuration];

  if (streamingAssetPropertyName)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = objc_msgSend_duration(modelCopy);
    [v12 doubleValue];
    v14 = v13;
    metadata2 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
    objc_msgSend_duration(metadata2);
    v17 = [v11 numberWithDouble:v14 + v16];
    [modelCopy setDuration:v17];

    v18 = MEMORY[0x277CCABB0];
    v19 = [modelCopy size];
    unsignedIntegerValue = [v19 unsignedIntegerValue];
    metadata3 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
    v22 = [v18 numberWithUnsignedLongLong:{objc_msgSend(metadata3, "byteLength") + unsignedIntegerValue}];
    [modelCopy setSize:v22];
  }

  metadataPropertyName = [objc_opt_class() metadataPropertyName];
  v24 = [modelCopy hmbPropertyNamed:metadataPropertyName];
  v25 = v24;
  v26 = MEMORY[0x277CBEBF8];
  if (v24)
  {
    v26 = v24;
  }

  v27 = v26;

  metadata4 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
  data = [metadata4 data];
  v30 = [v27 arrayByAddingObject:data];

  metadataPropertyName2 = [objc_opt_class() metadataPropertyName];
  [modelCopy hmbSetProperty:v30 named:metadataPropertyName2];

  v32 = objc_autoreleasePoolPush();
  selfCopy = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v35;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Submitting clip model update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v32);
  v36 = [(HMDCameraClipOperation *)selfCopy updateClipModel:modelCopy];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __83__HMDCameraClipAppendStreamingAssetOperation__updateClipModel_usingStreamingAsset___block_invoke;
  v39[3] = &unk_2797330A0;
  v39[4] = selfCopy;
  v37 = [v36 flatMap:v39];

  return v37;
}

id __83__HMDCameraClipAppendStreamingAssetOperation__updateClipModel_usingStreamingAsset___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mirrorOutputResult];

  if (v4)
  {
    v5 = [v3 mirrorOutputResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@No mirrorOutputResult available for clip update, failing operation", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v5 = [v10 futureWithError:v11];
  }

  return v5;
}

- (void)cancelWithError:(id)error
{
  v4.receiver = self;
  v4.super_class = HMDCameraClipAppendStreamingAssetOperation;
  [(HMDCameraClipOperation *)&v4 cancelWithError:error];
  [(HMDCameraClipAppendStreamingAssetOperation *)self setRetryTimer:0];
}

- (void)finish
{
  v3.receiver = self;
  v3.super_class = HMDCameraClipAppendStreamingAssetOperation;
  [(HMDCameraClipOperation *)&v3 finish];
  [(HMDCameraClipAppendStreamingAssetOperation *)self setRetryTimer:0];
}

- (void)main
{
  v14.receiver = self;
  v14.super_class = HMDCameraClipAppendStreamingAssetOperation;
  [(HMDCameraClipOperation *)&v14 main];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__123908;
  v12[4] = __Block_byref_object_dispose__123909;
  v13 = 0;
  fetchClipModel = [(HMDCameraClipOperation *)self fetchClipModel];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke;
  v11[3] = &unk_27972C1A8;
  v11[4] = self;
  v11[5] = v12;
  v4 = [fetchClipModel flatMap:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_28;
  v10[3] = &unk_27972C1D0;
  v10[4] = self;
  v10[5] = v12;
  v5 = [v4 flatMap:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_30;
  v9[3] = &unk_2797358F0;
  v9[4] = self;
  v6 = [v5 addSuccessBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_32;
  v8[3] = &unk_2797359D8;
  v8[4] = self;
  v7 = [v6 addFailureBlock:v8];

  _Block_object_dispose(v12, 8);
}

id __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = [objc_opt_class() streamingAssetPropertyName];
  v6 = [v4 hmbPropertyNamed:v5];

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v35 = v4;
    v10 = [v9 uploadStreamingAsset];
    v11 = [*(a1 + 32) encryptionManager];
    v12 = [*(a1 + 32) data];
    v13 = [v11 encryptedDataContextFromData:v12];

    v14 = [v13 dataRepresentation];
    v15 = [v10 bytesUploaded];
    v16 = [*(a1 + 32) metadata];
    [v16 setByteOffset:v15];

    v17 = [v14 length];
    v18 = [*(a1 + 32) metadata];
    [v18 setByteLength:v17];

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v22;
      v38 = 2048;
      v39 = [v14 length];
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Appending %lu bytes of data to streaming asset", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = objc_alloc_init(MEMORY[0x277D2C900]);
    v24 = [objc_alloc(MEMORY[0x277CBC6D8]) initWithStreamingAsset:v10];
    v25 = [*(a1 + 32) dataSource];
    v26 = [v23 completionHandlerAdapter];
    [v25 appendData:v14 toStreamingAssetAppendContext:v24 completion:v26];

    v4 = v35;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [objc_opt_class() streamingAssetPropertyName];
      *buf = 138544130;
      v37 = v30;
      v38 = 2112;
      v39 = v31;
      v40 = 2112;
      v41 = objc_opt_class();
      v42 = 2112;
      v43 = v7;
      v32 = v41;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Property %@ was of unexpected class %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    v33 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    v23 = [v33 futureWithError:v10];
  }

  return v23;
}

id __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_28(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully appended to streaming asset", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _updateClipModel:*(*(*(a1 + 40) + 8) + 40) usingStreamingAsset:v3];

  return v8;
}

void __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_30(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully updated clip model with updated streaming asset", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) finish];
}

void __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_32(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v7;
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to append to streaming asset: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _retryDelayForError:v3];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) uploadOperationEvent];
    [v10 setRetryCount:{objc_msgSend(v10, "retryCount") + 1}];

    [v9 doubleValue];
    if (v11 < 0.5)
    {

      v9 = &unk_28662BE68;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Retrying failed append in %@ seconds", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [*(a1 + 32) dataSource];
    [v9 doubleValue];
    v17 = [v16 timerWithTimeInterval:2 options:?];
    [*(a1 + 32) setRetryTimer:v17];

    v18 = *(a1 + 32);
    v19 = [v18 retryTimer];
    [v19 setDelegate:v18];

    v20 = [*(a1 + 32) underlyingQueue];
    v21 = [*(a1 + 32) retryTimer];
    [v21 setDelegateQueue:v20];

    v22 = [*(a1 + 32) retryTimer];
    [v22 resume];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to retry append operation, canceling", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    [*(a1 + 32) cancelWithError:v3];
  }
}

- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)d localZone:(id)zone data:(id)data metadata:(id)metadata encryptionManager:(id)manager dataSource:(id)source
{
  dCopy = d;
  zoneCopy = zone;
  dataCopy = data;
  metadataCopy = metadata;
  managerCopy = manager;
  sourceCopy = source;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!zoneCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!dataCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!metadataCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!managerCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v20 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_15:
    v24 = _HMFPreconditionFailure();
    return [(HMDCameraClipAppendStreamingAssetOperation *)v24 initWithClipModelID:v25 localZone:v26 data:v27 metadata:v28 encryptionManager:v29, v30];
  }

  v31.receiver = self;
  v31.super_class = HMDCameraClipAppendStreamingAssetOperation;
  v21 = [(HMDCameraClipOperation *)&v31 initWithClipModelID:dCopy localZone:zoneCopy dataSource:sourceCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_data, data);
    objc_storeStrong(&v22->_metadata, metadata);
    objc_storeStrong(&v22->_encryptionManager, manager);
  }

  return v22;
}

- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)d localZone:(id)zone data:(id)data metadata:(id)metadata encryptionManager:(id)manager
{
  managerCopy = manager;
  metadataCopy = metadata;
  dataCopy = data;
  zoneCopy = zone;
  dCopy = d;
  v17 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v18 = [(HMDCameraClipAppendStreamingAssetOperation *)self initWithClipModelID:dCopy localZone:zoneCopy data:dataCopy metadata:metadataCopy encryptionManager:managerCopy dataSource:v17];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_123954 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_123954, &__block_literal_global_123955);
  }

  v3 = logCategory__hmf_once_v13_123956;

  return v3;
}

uint64_t __57__HMDCameraClipAppendStreamingAssetOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v13_123956;
  logCategory__hmf_once_v13_123956 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)shouldRetry
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (NSString)metadataPropertyName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (NSString)streamingAssetPropertyName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end