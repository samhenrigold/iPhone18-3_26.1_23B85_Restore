@interface HMIFaceDetectorVision
+ (id)detectFacesInImageData:(id)data error:(id *)error;
+ (id)detectFacesInPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
+ (void)releaseCachedResources;
@end

@implementation HMIFaceDetectorVision

+ (id)detectFacesInPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CE2C88]);
  v6 = +[HMIPreference sharedInstance];
  shouldUseCPUOnlyForVisionFaceDetection = [v6 shouldUseCPUOnlyForVisionFaceDetection];

  if (shouldUseCPUOnlyForVisionFaceDetection)
  {
    [v5 setUsesCPUOnly:?];
  }

  +[HMIFaceDetectorVision defaultRevision];
  [v5 setRevision:?];
  v8 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCVPixelBuffer:? options:?];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v10 = [v8 performRequests:? error:?];
  v11 = 0;

  if (v10)
  {
    results = [v5 results];
  }

  else
  {
    if (error)
    {
      v13 = v11;
      *error = v11;
    }

    HMIErrorLogC(v11);
    results = 0;
  }

  return results;
}

+ (id)detectFacesInImageData:(id)data error:(id *)error
{
  v5 = MEMORY[0x277CE2C88];
  dataCopy = data;
  v7 = objc_alloc_init(v5);
  v8 = +[HMIPreference sharedInstance];
  shouldUseCPUOnlyForVisionFaceDetection = [v8 shouldUseCPUOnlyForVisionFaceDetection];

  if (shouldUseCPUOnlyForVisionFaceDetection)
  {
    [v7 setUsesCPUOnly:?];
  }

  +[HMIFaceDetectorVision defaultRevision];
  [v7 setRevision:?];
  v10 = objc_alloc(MEMORY[0x277CE2D50]);
  v11 = +[HMIVisionSession sharedInstance];
  vnSession = [v11 vnSession];
  v13 = [v10 initWithData:? options:? session:?];

  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  LOBYTE(vnSession) = [v13 performRequests:? error:?];
  v15 = 0;

  if (vnSession)
  {
    results = [v7 results];
  }

  else
  {
    if (error)
    {
      v17 = v15;
      *error = v15;
    }

    HMIErrorLogC(v15);
    results = 0;
  }

  return results;
}

+ (void)releaseCachedResources
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@releaseCachedResources is deprecated and is now a no-op.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

@end