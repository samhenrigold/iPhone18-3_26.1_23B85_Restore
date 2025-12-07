@interface HMIFaceprinter
+ (__CVBuffer)createFacePixelBufferForFaceDetection:(id)detection pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error;
+ (__CVBuffer)createFacePixelBufferForFaceEvent:(id)event pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error;
+ (id)currentModelUUID;
+ (int64_t)_minorVersionFromVisionVersion:(int)version;
- (__CVBuffer)createFacePixelBufferFromFaceCrop:(id)crop error:(id *)error;
- (id)createFaceprintForFacePixelBuffer:(__CVBuffer *)buffer fastMode:(BOOL)mode error:(id *)error;
- (id)generateFaceprintForFaceCrop:(id)crop error:(id *)error;
- (id)updatedFaceprintsForFaceCrops:(id)crops withExistingFaceprints:(id)faceprints error:(id *)error;
- (void)warmStart;
@end

@implementation HMIFaceprinter

+ (id)currentModelUUID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMIFaceprinter_currentModelUUID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentModelUUID_onceToken_0 != -1)
  {
    dispatch_once(&currentModelUUID_onceToken_0, block);
  }

  v2 = currentModelUUID_modelUUID_0;

  return v2;
}

void __34__HMIFaceprinter_currentModelUUID__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = +[HMIFaceUtilities faceprintDefaultRevision];
  HMIVisionRuntimeVersion();
  v3 = [HMIFaceprinter _minorVersionFromVisionVersion:?];
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
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Faceprint Version: %ld.%ld", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = HMIModelUUID(v2, v3);
  v9 = currentModelUUID_modelUUID_0;
  currentModelUUID_modelUUID_0 = v8;
}

- (void)warmStart
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMIFaceprinter_warmStart__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  if (warmStart_onceToken != -1)
  {
    dispatch_once(&warmStart_onceToken, block);
  }
}

void __27__HMIFaceprinter_warmStart__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_22D12F000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Warm starting faceprint model...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = HMIDispatchQueueNameString(*(a1 + 32), @"warm_start_faceprint_model");
  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMIFaceprinter_warmStart__block_invoke_177;
  block[3] = &unk_278752868;
  block[4] = *(a1 + 32);
  dispatch_async(v9, block);
}

void __27__HMIFaceprinter_warmStart__block_invoke_177(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [HMIVisionUtilities createPixelBufferWithSize:"createPixelBufferWithSize:pixelFormat:useIOSurface:" pixelFormat:? useIOSurface:?];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) createFaceprintForFacePixelBuffer:? fastMode:? error:?];
    v6 = 0;
    CVPixelBufferRelease(v4);
    if (v5)
    {
      v7 = [MEMORY[0x277CBEAA8] date];
      [v7 timeIntervalSinceDate:?];
      v9 = v8;

      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v13;
        v23 = 2048;
        v24 = v9;
        v14 = "%{public}@Warm start of faceprint model took: %f";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&dword_22D12F000, v15, v16, v14, buf, 0x16u);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v13;
        v23 = 2112;
        v24 = v6;
        v14 = "%{public}@Failed to warm start faceprint model: %@";
        v15 = v12;
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_10;
      }
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_12;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v20;
    _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create pixel buffer when warm starting faceprint model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
LABEL_12:
}

- (id)createFaceprintForFacePixelBuffer:(__CVBuffer *)buffer fastMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  v36 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc(MEMORY[0x277CE2D50]);
  v9 = +[HMIVisionSession sharedInstance];
  vnSession = [v9 vnSession];
  v33 = [v8 initWithCVPixelBuffer:? options:? session:?];

  v11 = objc_alloc_init(MEMORY[0x277CE2C48]);
  v35 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:? unalignedBoundingBox:? alignedBoundingBox:?];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  [v11 setInputFaceObservations:?];
  +[HMIFaceUtilities faceprintDefaultRevision];
  v34[2] = 0;
  LOBYTE(vnSession) = [v11 setRevision:? error:?];
  v13 = 0;
  if (vnSession)
  {
    v14 = objc_alloc_init(MEMORY[0x277CE2C08]);
    [v14 setInputFaceObservations:?];
    +[HMIFaceUtilities faceprintAttributeDefaultRevision];
    v34[1] = v13;
    v15 = [v14 setRevision:? error:?];
    v16 = v13;

    if (v15)
    {
      if (modeCopy)
      {
        [v11 setDetectionLevel:?];
        [v14 setDetectionLevel:?];
      }

      v34[0] = [[HMISignpost alloc] initWithName:?];
      v34[3] = v11;
      v34[4] = v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v18 = [v33 performRequests:? error:?];
      v13 = v16;

      if (v18)
      {
        results = [v11 results];
        firstObject = [results firstObject];

        results2 = [v14 results];
        firstObject2 = [results2 firstObject];

        v23 = 0;
        if (firstObject && firstObject2)
        {
          faceprint = [firstObject faceprint];
          [firstObject2 setFaceprint:?];

          v23 = firstObject2;
        }
      }

      else
      {
        v30 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
        firstObject = v30;
        if (error)
        {
          v31 = v30;
          *error = firstObject;
        }

        HMIErrorLog(self, firstObject);
        v23 = 0;
      }

      __HMISignpostScopeLeave(v34);
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
      v28 = v27;
      if (error)
      {
        v29 = v27;
        *error = v28;
      }

      HMIErrorLog(self, v28);

      v23 = 0;
      v13 = v16;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
    v14 = v25;
    if (error)
    {
      v26 = v25;
      *error = v14;
    }

    HMIErrorLog(self, v14);
    v23 = 0;
  }

  return v23;
}

+ (__CVBuffer)createFacePixelBufferForFaceDetection:(id)detection pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error
{
  v90 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  rollCopy = roll;
  Size = HMICVPixelBufferGetSize(buffer);
  v13 = v12;
  [detectionCopy unalignedBoundingBox];
  HMICGRectFlipCoordinateSpaceNormalized(v14, v15, v16, v17);
  HMICGRectSquareNormalized(v18, v19, v20, v21, Size, v13);
  v26 = HMIExpandFaceRect(v22, v23, v24, v25, 1.76470578);
  HMICGRectPixelFromNormalized(v26, v27, v28, v29, Size, v13);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [rollCopy floatValue];
  v78 = v37;
  v79 = v35;
  if (fabsf(v38) <= 0.175)
  {

    v44 = v37;
    v43 = v35;
    v42 = v33;
    v41 = v31;
    rollCopy = &unk_284075888;
  }

  else
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v41 = HMICGRectExpandWithinLimit(v31, v33, v35, v37, Width, Height, 1.4142);
  }

  v91 = CGRectIntegral(*&v41);
  x = v91.origin.x;
  y = v91.origin.y;
  v47 = v91.size.width;
  v48 = v91.size.height;
  v49 = objc_autoreleasePoolPush();
  selfCopy = self;
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    v52 = HMFGetLogIdentifier();
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = v47;
    v92.size.height = v48;
    NSStringFromRect(v92);
    v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [rollCopy floatValue];
    *buf = 138544386;
    v81 = v52;
    v82 = 2112;
    v83 = v53;
    v84 = 2048;
    v85 = Size;
    v86 = 2048;
    v87 = v13;
    v88 = 2048;
    v89 = v54 * 57.2957795;
    _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_DEBUG, "%{public}@Cropping face %@ from pixel buffer with dimensions: %.1f x %.1f roll: %.02f degrees", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v49);
  v55 = v47 < 256.0;
  v56 = v48 < 256.0;
  if (v55 && v56)
  {
    v57 = v47;
  }

  else
  {
    v57 = 256.0;
  }

  if (v55 && v56)
  {
    v58 = v48;
  }

  else
  {
    v58 = 256.0;
  }

  v59 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:crop:size:pixelFormat:options:error:" crop:? size:? pixelFormat:? options:? error:?];
  v60 = COERCE_DOUBLE(0);
  if (v59)
  {
    v61 = v31 - x;
    HMICGRectTransferToNewCoordinate(v31, v33, v79, v78, v57, v58, v61);
    [rollCopy floatValue];
    v62 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:rotationAngle:crop:size:precision:error:" rotationAngle:? crop:? size:? precision:? error:?];
    v63 = COERCE_DOUBLE(*&v60);

    CVPixelBufferRelease(v59);
    v64 = objc_autoreleasePoolPush();
    v65 = selfCopy;
    v66 = HMFGetOSLogHandle();
    v67 = v66;
    if (v62)
    {
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v68 = HMFGetLogIdentifier();
        [rollCopy floatValue];
        *buf = 138543618;
        v81 = v68;
        v82 = 2048;
        v83 = v69 * 57.2957795;
        _os_log_impl(&dword_22D12F000, v67, OS_LOG_TYPE_DEBUG, "%{public}@Face was rotated by:%.02f degrees", buf, 0x16u);
      }

LABEL_26:

      objc_autoreleasePoolPop(v64);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v74 = HMFGetLogIdentifier();
      *buf = 138543618;
      v81 = v74;
      v82 = 2112;
      v83 = v63;
      _os_log_impl(&dword_22D12F000, v67, OS_LOG_TYPE_ERROR, "%{public}@Error in rotating the face %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v64);
    v60 = v63;
  }

  else
  {
    v70 = objc_autoreleasePoolPush();
    v71 = selfCopy;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v73 = HMFGetLogIdentifier();
      *buf = 138543618;
      v81 = v73;
      v82 = 2112;
      v83 = v60;
      _os_log_impl(&dword_22D12F000, v72, OS_LOG_TYPE_ERROR, "%{public}@Error pixel buffer type conversion %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
  }

  v62 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:crop:size:pixelFormat:options:error:" crop:? size:? pixelFormat:? options:? error:?];
  v63 = COERCE_DOUBLE(*&v60);

  if (!v62)
  {
    v64 = objc_autoreleasePoolPush();
    v75 = selfCopy;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v76 = HMFGetLogIdentifier();
      *buf = 138543618;
      v81 = v76;
      v82 = 2112;
      v83 = v63;
      _os_log_impl(&dword_22D12F000, v67, OS_LOG_TYPE_ERROR, "%{public}@HMIPrivateErrorCodeCropAndResizeFailed %@", buf, 0x16u);
    }

    v62 = 0;
    goto LABEL_26;
  }

LABEL_27:

  return v62;
}

+ (__CVBuffer)createFacePixelBufferForFaceEvent:(id)event pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error
{
  rollCopy = roll;
  [event boundingBox];
  HMICGRectFlipCoordinateSpaceNormalized(v8, v9, v10, v11);
  v12 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:? unalignedBoundingBox:? alignedBoundingBox:?];
  v13 = [HMIFaceprinter createFacePixelBufferForFaceDetection:"createFacePixelBufferForFaceDetection:pixelBuffer:roll:error:" pixelBuffer:? roll:? error:?];

  return v13;
}

- (__CVBuffer)createFacePixelBufferFromFaceCrop:(id)crop error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  dataRepresentation = [cropCopy dataRepresentation];
  v8 = [HMIVisionUtilities createPixelBufferFromJPEGData:"createPixelBufferFromJPEGData:error:" error:?];

  if (v8)
  {
    [cropCopy faceBoundingBox];
    y = 0.0;
    v58.origin.x = 0.0;
    v58.origin.y = 0.0;
    v58.size.width = 1.0;
    v58.size.height = 1.0;
    if (CGRectEqualToRect(v54, v58))
    {
      Width = CVPixelBufferGetWidth(v8);
      Height = CVPixelBufferGetHeight(v8);
      x = 0.0;
    }

    else
    {
      Size = HMICVPixelBufferGetSize(v8);
      v16 = v15;
      [cropCopy faceBoundingBox];
      HMICGRectSquareNormalized(v17, v18, v19, v20, Size, v16);
      v25 = HMIExpandFaceRect(v21, v22, v23, v24, 1.76470578);
      HMICGRectPixelFromNormalized(v25, v26, v27, v28, Size, v16);
      v56 = CGRectIntegral(v55);
      x = v56.origin.x;
      y = v56.origin.y;
      Width = v56.size.width;
      Height = v56.size.height;
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v57.origin.x = x;
        v57.origin.y = y;
        v57.size.width = Width;
        v57.size.height = Height;
        v33 = NSStringFromRect(v57);
        *buf = 138544130;
        v46 = v32;
        v47 = 2112;
        v48 = v33;
        v49 = 2048;
        v50 = Size;
        v51 = 2048;
        v52 = v16;
        _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_INFO, "%{public}@Cropping face %@ from face crop with dimensions %.1f x %.1f", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v29);
    }

    v34 = Width < 256.0;
    v35 = Height < 256.0;
    if (v34 && v35)
    {
      v36 = Height;
    }

    else
    {
      v36 = 256.0;
    }

    if (v34 && v35)
    {
      v37 = Width;
    }

    else
    {
      v37 = 256.0;
    }

    v38 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:crop:size:pixelFormat:options:error:" crop:? size:? pixelFormat:? options:? error:?];
    v39 = 0;
    CVPixelBufferRelease(v8);
    if (v38)
    {
      HMICGRectTransferToNewCoordinate(x, y, Width, Height, v37, v36, 0.0);
      v13 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:rotationAngle:crop:size:precision:error:" rotationAngle:? crop:? size:? precision:? error:?];
      v40 = v39;

      CVBufferRelease(v38);
      v39 = v40;
    }

    else
    {
      v41 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
      v42 = v41;
      if (error)
      {
        v43 = v41;
        *error = v42;
      }

      HMIErrorLog(self, v42);

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)generateFaceprintForFaceCrop:(id)crop error:(id *)error
{
  v5 = [HMIFaceprinter createFacePixelBufferFromFaceCrop:"createFacePixelBufferFromFaceCrop:error:" error:?];
  if (v5)
  {
    v6 = v5;
    v7 = [HMIFaceprinter createFaceprintForFacePixelBuffer:"createFaceprintForFacePixelBuffer:fastMode:error:" fastMode:? error:?];
    CVBufferRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)updatedFaceprintsForFaceCrops:(id)crops withExistingFaceprints:(id)faceprints error:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  cropsCopy = crops;
  faceprintsCopy = faceprints;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  obj = faceprintsCopy;
  v9 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(8 * i);
        faceCropUUID = [v13 faceCropUUID];
        v15 = [dictionary objectForKey:?];

        if (!v15)
        {
          v15 = [MEMORY[0x277CBEB58] set];
        }

        [v15 addObject:?];
        faceCropUUID2 = [v13 faceCropUUID];
        [dictionary setObject:? forKeyedSubscript:?];
      }

      v10 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  v69 = [MEMORY[0x277CBEB58] set];
  v72 = [MEMORY[0x277CBEB58] set];
  v68 = [MEMORY[0x277CBEB58] set];
  v75 = cropsCopy;
  v17 = [v75 countByEnumeratingWithState:? objects:? count:?];
  selfCopy2 = self;
  if (v17)
  {
    v20 = v17;
    v21 = MEMORY[0];
    *&v18 = 138543362;
    v66 = v18;
    v74 = MEMORY[0];
    v77 = dictionary;
    do
    {
      v22 = 0;
      v73 = v20;
      do
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v75);
        }

        v23 = *(8 * v22);
        uUID = [v23 UUID];
        v25 = [dictionary objectForKey:?];

        if (v25)
        {
          v26 = [v25 na_firstObjectPassingTest:?];
          v27 = objc_autoreleasePoolPush();
          v28 = selfCopy2;
          v29 = HMFGetOSLogHandle();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
          if (v26)
          {
            if (v30)
            {
              HMFGetLogIdentifier();
              v70 = v26;
              v31 = v20;
              v32 = v21;
              v33 = selfCopy2;
              v35 = v34 = v25;
              *buf = 138543618;
              v80 = v35;
              v81 = 2112;
              v82 = v23;
              _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@Using existing faceprint for face crop:%@", buf, 0x16u);

              v25 = v34;
              selfCopy2 = v33;
              v21 = v32;
              v20 = v31;
              v26 = v70;
            }

            objc_autoreleasePoolPop(v27);
            [v72 addObject:?];
            dictionary = v77;
            goto LABEL_36;
          }

          if (v30)
          {
            HMFGetLogIdentifier();
            v37 = v36 = v25;
            v38 = [v36 count];
            *buf = 138543874;
            v80 = v37;
            v81 = 2048;
            v82 = v38;
            v83 = 2112;
            v84 = v23;
            _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@%lu faceprint(s) exist for face crop:%@ but are not the current version", buf, 0x20u);

            v25 = v36;
          }

          objc_autoreleasePoolPop(v27);
          [v68 unionSet:?];
        }

        v78 = v25;
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy2;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v80 = v42;
          v81 = 2112;
          v82 = v23;
          _os_log_impl(&dword_22D12F000, v41, OS_LOG_TYPE_INFO, "%{public}@Faceprinting face crop:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        v43 = [HMIFaceprinter generateFaceprintForFaceCrop:v40 error:"generateFaceprintForFaceCrop:error:"];
        v26 = 0;
        if (v43)
        {
          faceAttributes = [v43 faceAttributes];
          facemaskCategory = [faceAttributes facemaskCategory];

          label = [facemaskCategory label];
          identifier = [label identifier];
          v48 = [identifier isEqualToString:?];

          if (v48)
          {
            v49 = objc_autoreleasePoolPush();
            v50 = v40;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = HMFGetLogIdentifier();
              *buf = v66;
              v80 = v52;
              _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_INFO, "%{public}@Face crop has a facemask, creating sentinel faceprint", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v49);
            uUID2 = [MEMORY[0x277CCAD78] UUID];
            faceprint = +[HMIFaceprinter currentModelUUID];
            uUID3 = [v23 UUID];
            v56 = [HMIFaceprint sentinelFaceprintWithUUID:"sentinelFaceprintWithUUID:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];
          }

          else
          {
            v71 = [HMIFaceprint alloc];
            uUID2 = [MEMORY[0x277CCAD78] UUID];
            faceprint = [v43 faceprint];
            uUID3 = [faceprint descriptorData];
            v61 = +[HMIFaceprinter currentModelUUID];
            [v23 UUID];
            v63 = v62 = facemaskCategory;
            v56 = [HMIFaceprint initWithUUID:v71 data:"initWithUUID:data:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];

            facemaskCategory = v62;
            selfCopy2 = self;
          }

          [v69 addObject:?];
          dictionary = v77;
          v20 = v73;
          v21 = v74;
        }

        else
        {
          v57 = objc_autoreleasePoolPush();
          v58 = v40;
          v59 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = HMFGetLogIdentifier();
            *buf = 138543618;
            v80 = v60;
            v81 = 2112;
            v82 = v26;
            _os_log_impl(&dword_22D12F000, v59, OS_LOG_TYPE_ERROR, "%{public}@Skipping crop, encountered error faceprinting: %@", buf, 0x16u);

            v21 = v74;
          }

          objc_autoreleasePoolPop(v57);
          dictionary = v77;
        }

        v25 = v78;
LABEL_36:

        v22 = (v22 + 1);
      }

      while (v20 != v22);
      v20 = [v75 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v20);
  }

  v64 = [HMIUpdatedFaceprintsResult initWithExistingAtCurrentVersion:"initWithExistingAtCurrentVersion:createdAtCurrentVersion:existingAtOtherVersions:" createdAtCurrentVersion:? existingAtOtherVersions:?];

  return v64;
}

void *__77__HMIFaceprinter_updatedFaceprintsForFaceCrops_withExistingFaceprints_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 modelUUID];
  v3 = +[HMIFaceprinter currentModelUUID];
  v4 = [v2 isEqual:?];

  return v4;
}

+ (int64_t)_minorVersionFromVisionVersion:(int)version
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138544386;
    v11 = v8;
    v12 = 1024;
    v13 = version >> 16;
    v14 = 1024;
    v15 = BYTE1(version);
    v16 = 1024;
    versionCopy = version;
    v18 = 1024;
    versionCopy2 = version;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Vision run-time version: %d.%02d.%02d (%d)", &v10, 0x24u);
  }

  objc_autoreleasePoolPop(v5);
  return version;
}

@end