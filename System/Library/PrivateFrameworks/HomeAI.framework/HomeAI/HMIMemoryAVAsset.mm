@interface HMIMemoryAVAsset
- (BOOL)loadValuesSynchronously;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (HMIMemoryAVAsset)initWithData:(id)data;
@end

@implementation HMIMemoryAVAsset

- (HMIMemoryAVAsset)initWithData:(id)data
{
  dataCopy = data;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v12.receiver = self;
  v12.super_class = HMIMemoryAVAsset;
  v7 = [(HMIMemoryAVAsset *)&v12 initWithURL:v6 options:0];

  if (v7)
  {
    objc_storeStrong(&v7->_data, data);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("HMIMemoryAVAsset", v8);

    resourceLoader = [(HMIMemoryAVAsset *)v7 resourceLoader];
    [resourceLoader setDelegate:? queue:?];
  }

  return v7;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  v30 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  resourceCopy = resource;
  contentInformationRequest = [resourceCopy contentInformationRequest];
  v9 = contentInformationRequest;
  if (contentInformationRequest)
  {
    [contentInformationRequest setContentType:?];
    [(NSData *)self->_data length];
    [v9 setContentLength:?];
    [v9 setByteRangeAccessSupported:?];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v13;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Fullfilled content request: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  dataRequest = [resourceCopy dataRequest];
  v15 = dataRequest;
  if (!dataRequest)
  {
    goto LABEL_13;
  }

  if (([dataRequest requestedOffset] & 0x8000000000000000) == 0 && (objc_msgSend(v15, "requestedLength") & 0x8000000000000000) == 0)
  {
    requestedOffset = [v15 requestedOffset];
    v17 = requestedOffset + [v15 requestedLength];
    if (v17 <= [(NSData *)self->_data length])
    {
      [(NSData *)self->_data bytes];
      [v15 requestedOffset];
      v19 = MEMORY[0x277CBEA90];
      [v15 requestedLength];
      v20 = [v19 dataWithBytesNoCopy:? length:? freeWhenDone:?];
      [v15 respondWithData:?];

      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v24;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Fullfilled data request: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
LABEL_13:
      [resourceCopy finishLoading];
      v18 = 1;
      goto LABEL_14;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)loadValuesSynchronously
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __43__HMIMemoryAVAsset_loadValuesSynchronously__block_invoke;
  v15 = &unk_278752868;
  v4 = v3;
  v16 = v4;
  [HMIMemoryAVAsset loadValuesAsynchronouslyForKeys:"loadValuesAsynchronouslyForKeys:completionHandler:" completionHandler:?];
  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to loadValuesAsynchronouslyForKeys, due to timeout.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6 == 0;
}

@end