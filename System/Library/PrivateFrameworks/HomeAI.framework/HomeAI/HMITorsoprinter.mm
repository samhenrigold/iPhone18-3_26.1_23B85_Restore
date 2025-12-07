@interface HMITorsoprinter
+ (__CVBuffer)createTorsoPixelBufferForTorsoEvent:(id)event pixelBuffer:(__CVBuffer *)buffer error:(id *)error;
+ (id)currentModelUUID;
- (id)torsoprintForTorsoPixelBuffer:(__CVBuffer *)buffer unrecognizable:(BOOL)unrecognizable error:(id *)error;
@end

@implementation HMITorsoprinter

+ (id)currentModelUUID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMITorsoprinter_currentModelUUID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentModelUUID_onceToken != -1)
  {
    dispatch_once(&currentModelUUID_onceToken, block);
  }

  v2 = currentModelUUID_modelUUID;

  return v2;
}

void __35__HMITorsoprinter_currentModelUUID__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = +[HMITorsoprinter currentTorsoRequestRevision];
  v3 = HMIVisionRuntimeVersion();
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v7;
    v12 = 2048;
    v13 = v2;
    v14 = 2048;
    v15 = v3;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Torsoprint Version: %ld.%ld", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = HMIModelUUID(v2, v3);
  v9 = currentModelUUID_modelUUID;
  currentModelUUID_modelUUID = v8;
}

+ (__CVBuffer)createTorsoPixelBufferForTorsoEvent:(id)event pixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  eventCopy = event;
  Size = HMICVPixelBufferGetSize(buffer);
  v9 = v8;
  [eventCopy boundingBox];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  HMICGRectPixelFromNormalized(v11, v13, v15, v17, Size, v9);
  CGRectIntegral(v20);

  return [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:crop:size:pixelFormat:options:error:" crop:? size:? pixelFormat:? options:? error:?];
}

- (id)torsoprintForTorsoPixelBuffer:(__CVBuffer *)buffer unrecognizable:(BOOL)unrecognizable error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CE2C50]);
  +[HMITorsoprinter currentTorsoRequestRevision];
  v8 = [v7 setRevision:? error:?];
  v9 = 0;
  if (v8)
  {
    v65 = [MEMORY[0x277CE2D30] observationWithRequestRevision:? boundingBox:?];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [v7 setInputDetectedObjectObservations:?];

    v11 = objc_alloc(MEMORY[0x277CE2D50]);
    v12 = +[HMIVisionSession sharedInstance];
    vnSession = [v12 vnSession];
    v14 = [v11 initWithCVPixelBuffer:? options:? session:?];

    v64 = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v16 = [v14 performRequests:? error:?];
    v17 = v9;

    if (v16)
    {
      results = [v7 results];
      v19 = [results count];

      if (v19 == 1)
      {
        results2 = [v7 results];
        firstObject = [results2 firstObject];

        torsoprint = [firstObject torsoprint];
        [torsoprint confidence];
        v24 = v23;

        if (v24 <= 0.5)
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            torsoprint2 = [firstObject torsoprint];
            [torsoprint2 confidence];
            *buf = 138543618;
            v59 = v55;
            v60 = 2048;
            v61 = v27;
            _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_INFO, "%{public}@Found low quality torso conf: %.4f", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
        }

        [HMITorsoQuality entropyOfSaturationForBGRAPixelBuffer:?];
        v29 = v28;
        [HMITorsoQuality entropyOfLaplacianForBGRAPixelBuffer:?];
        v31 = v30;
        if (v29 >= -1.988 && v30 >= -1.915)
        {
          v32 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v35 = v57 = v32;
            *buf = 138543874;
            v59 = v35;
            v60 = 2048;
            v61 = v29;
            v62 = 2048;
            v63 = v31;
            _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Found low quality torso entropyOfSaturation: %.4f entropyOfLaplacian: %.4f", buf, 0x20u);

            v32 = v57;
          }

          objc_autoreleasePoolPop(v32);
        }

        torsoprint3 = [firstObject torsoprint];

        if (torsoprint3)
        {
          v37 = [HMITorsoprint alloc];
          uUID = [MEMORY[0x277CCAD78] UUID];
          torsoprint4 = [firstObject torsoprint];
          descriptorData = [torsoprint4 descriptorData];
          v41 = [HMITorsoprint initWithUUID:v37 data:"initWithUUID:data:lowQuality:unrecognizable:" lowQuality:? unrecognizable:?];
        }

        else
        {
          v51 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
          uUID = v51;
          if (error)
          {
            v52 = v51;
            *error = uUID;
          }

          HMIErrorLog(self, uUID);
          v41 = 0;
        }

        goto LABEL_29;
      }

      v46 = MEMORY[0x277CCACA8];
      results3 = [v7 results];
      firstObject = [v46 stringWithFormat:objc_msgSend(results3, "count")];

      v48 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      v49 = v48;
      if (error)
      {
        v50 = v48;
        *error = v49;
      }

      HMIErrorLog(self, v49);
    }

    else
    {
      v44 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
      firstObject = v44;
      if (error)
      {
        v45 = v44;
        *error = firstObject;
      }

      HMIErrorLog(self, firstObject);
    }

    v41 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v42 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
  v14 = v42;
  if (error)
  {
    v43 = v42;
    *error = v14;
  }

  HMIErrorLog(self, v14);
  v41 = 0;
  v17 = v9;
LABEL_30:

  return v41;
}

@end