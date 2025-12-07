@interface HMIFeedbackVisionProcessor
+ (BOOL)reencodeAssetURL:(id)l outputURL:(id)rL bitRate:(int64_t)rate duration:(id *)duration analysisFPS:(float)s sampleFrameHandler:(id)handler dropFrameHandler:(id)frameHandler;
- (BOOL)blurFacesFromAssetURL:(id)l outputURL:(id)rL duration:(id *)duration analysisFPS:(float)s windowSize:(unint64_t)size faceDetected:(BOOL *)detected;
- (__CVBuffer)_createBlurredPixelBuffer:(__CVBuffer *)buffer events:(id)events;
- (unsigned)_blurRadiusForEvents:(id)events imageSize:(CGSize)size;
- (void)_addEventsToEventQueue:(id)queue events:(id)events;
- (void)_blurSampleBufferWithEncoder:(id)encoder sampleBuffer:(opaqueCMSampleBuffer *)buffer events:(id)events;
@end

@implementation HMIFeedbackVisionProcessor

+ (BOOL)reencodeAssetURL:(id)l outputURL:(id)rL bitRate:(int64_t)rate duration:(id *)duration analysisFPS:(float)s sampleFrameHandler:(id)handler dropFrameHandler:(id)frameHandler
{
  v105 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  frameHandlerCopy = frameHandler;
  v52 = lCopy;
  v57 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:? options:? error:?];
  if (v57)
  {
    v14 = [[HMIVideoFragment alloc] initWithData:?];
    v15 = [HMIMemoryAVAsset alloc];
    v50 = v14;
    data = [(HMIVideoFragment *)v14 data];
    v17 = [(HMIMemoryAVAsset *)v15 initWithData:?];

    v49 = v17;
    v18 = [[HMIVideoAssetReader alloc] initWithAsset:?];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v102 = __Block_byref_object_copy__8;
    v103 = __Block_byref_object_dispose__8;
    v104 = 0;
    v19 = objc_opt_new();
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__8;
    v97 = __Block_byref_object_dispose__8;
    v98 = 0;
    v88 = MEMORY[0x277D85DD0];
    v89 = 3221225472;
    v90 = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke;
    v91 = &unk_278755490;
    v92 = &v93;
    [v19 setAssetWriterDidOutputInitializationSegment:?];
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_2;
    v86 = &unk_2787554B8;
    v87 = &v93;
    [v19 setAssetWriterDidOutputSeparableSegment:?];
    CMVideoFormatDescriptionGetDimensions([(HMIVideoFragment *)v50 videoFormatDescription]);
    v20 = [HMIVideoEncoder initWithDimensions:"initWithDimensions:codecType:useHardwareAcceleration:error:" codecType:? useHardwareAcceleration:? error:?];
    [(HMIVideoEncoder *)v20 setAverageBitRate:?];
    v54 = objc_opt_new();
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("Encoder Queue", v21);
    [HMIVideoEncoder setDelegate:v20 queue:"setDelegate:queue:"];

    v77 = MEMORY[0x277D85DD0];
    v78 = 3221225472;
    v79 = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_3;
    v80 = &unk_2787554E0;
    v82 = buf;
    v48 = v19;
    v81 = v48;
    [v54 setEncoderDidEncodeSampleBuffer:?];
    v23 = [[HMIVideoFrameIntervalSampler alloc] initWithFrameRate:?];
    v24 = objc_opt_new();
    [(HMIVideoFrameSampler *)v23 setDelegate:?];
    v71 = MEMORY[0x277D85DD0];
    v72 = 3221225472;
    v73 = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_4;
    v74 = &unk_278755508;
    v76 = handlerCopy;
    v75 = v20;
    [v24 setFrameSamplerDidSampleFrame:?];
    v65 = MEMORY[0x277D85DD0];
    v66 = 3221225472;
    v67 = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_5;
    v68 = &unk_278755508;
    v70 = frameHandlerCopy;
    v25 = v75;
    v69 = v25;
    [v24 setFrameSamplerDidDropFrame:?];
    v26 = objc_alloc_init(HMIVideoDecoder);
    v27 = objc_opt_new();
    [(HMIVideoDecoder *)v26 setDelegate:?];
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_6;
    v63 = &unk_278755530;
    v28 = v23;
    v64 = v28;
    [v27 setDecoderDidDecodeSampleBuffer:?];
    while (1)
    {
      copyNextSampleBuffer = [(HMIVideoAssetReader *)v18 copyNextSampleBuffer];
      v30 = copyNextSampleBuffer;
      if (!copyNextSampleBuffer)
      {
        break;
      }

      if (HMICMSampleBufferIsVideo(copyNextSampleBuffer))
      {
        [HMIVideoDecoder handleSampleBuffer:v26 outputFrame:"handleSampleBuffer:outputFrame:"];
      }

      memset(&v59, 0, sizeof(v59));
      CMSampleBufferGetPresentationTimeStamp(&v59, v30);
      CFRelease(v30);
      time1 = v59;
      time2 = *duration;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          time2 = v59;
          Seconds = CMTimeGetSeconds(&time2);
          time2 = *duration;
          v35 = CMTimeGetSeconds(&time2);
          LODWORD(time1.value) = 138543874;
          *(&time1.value + 4) = v33;
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = Seconds;
          HIWORD(time1.epoch) = 2048;
          v100 = v35;
          _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_INFO, "%{public}@Finish re-encoding %.3f > %.3f", &time1, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        break;
      }
    }

    [(HMIVideoDecoder *)v26 flush];
    [(HMIVideoEncoder *)v25 flush];
    [*(*&buf[8] + 40) flush];
    v36 = v94[5];
    if (v36)
    {
      v37 = [v36 writeToURL:? atomically:?];
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v45;
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = v52;
        _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_ERROR, "%{public}@Unable to get fragment %@ from AssetWriter", &time1, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
      v37 = 0;
    }

    _Block_object_dispose(&v93, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to read the asset %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v37 = 0;
  }

  return v37;
}

uint64_t __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  if (!*(*(*(result + 32) + 8) + 40))
  {
    v4 = result;
    v5 = [a3 mutableCopy];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x2821F96F8](v5, v7);
  }

  return result;
}

void *__122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_3(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v6 = [HMIVideoAssetWriter alloc];
    CMSampleBufferGetFormatDescription(a3);
    v11 = *MEMORY[0x277CC0888];
    v12 = *(MEMORY[0x277CC0888] + 16);
    v7 = [HMIVideoAssetWriter initWithVideoFormat:v6 audioFormat:"initWithVideoFormat:audioFormat:initialFragmentSequenceNumber:preferredOutputSegmentInterval:" initialFragmentSequenceNumber:v11 preferredOutputSegmentInterval:v12];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 40) + 8) + 40) setDelegate:?];
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v5 handleSampleBuffer:?];
}

- (BOOL)blurFacesFromAssetURL:(id)l outputURL:(id)rL duration:(id *)duration analysisFPS:(float)s windowSize:(unint64_t)size faceDetected:(BOOL *)detected
{
  v50 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v15 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:? options:? error:?];
  if (v15)
  {
    durationCopy = duration;
    v39 = rLCopy;
    v16 = [HMICameraVideoFrameAnalyzerSignificantActivity alloc];
    v17 = +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsFeedback];
    v18 = +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsFeedback];
    v19 = objc_alloc_init(HMIVideoAnalyzerConfiguration);
    v48 = 0;
    v20 = [HMICameraVideoFrameAnalyzerSignificantActivity initWithMediumConfidenceThresholds:v16 highConfidenceThresholds:"initWithMediumConfidenceThresholds:highConfidenceThresholds:analyzerConfiguration:error:" analyzerConfiguration:? error:?];
    v21 = 0;

    if (v21)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to init face detector %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = 0;
      rLCopy = v39;
    }

    else
    {
      if (detected)
      {
        *detected = 0;
      }

      array = [MEMORY[0x277CBEB18] array];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke;
      v42[3] = &unk_278755558;
      v43 = v20;
      selfCopy2 = self;
      v32 = array;
      v45 = v32;
      sizeCopy = size;
      detectedCopy = detected;
      v33 = MEMORY[0x2318CB8E0](v42);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke_22;
      v40[3] = &unk_278755580;
      v40[4] = self;
      v41 = v32;
      v34 = v32;
      v35 = MEMORY[0x2318CB8E0](v40);
      rLCopy = v39;
      *buf = *v38;
      *&buf[16] = *(v38 + 16);
      v26 = [HMIFeedbackVisionProcessor reencodeAssetURL:"reencodeAssetURL:outputURL:bitRate:duration:analysisFPS:sampleFrameHandler:dropFrameHandler:" outputURL:? bitRate:? duration:? analysisFPS:? sampleFrameHandler:? dropFrameHandler:?];
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to read the asset %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  return v26;
}

void __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke(uint64_t a1, void *a2, void *a3, opaqueCMSampleBuffer *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  CMSampleBufferGetImageBuffer(a4);
  v9 = [*(a1 + 32) analyzePixelBuffer:? regionOfInterest:? error:?];
  v10 = 0;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      CMSampleBufferGetPresentationTimeStamp(&time, a4);
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v14;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Skip the frame @ %.3fs due to analyzer failure", &time, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    while ([*(a1 + 48) count] >= *(a1 + 56))
    {
      [*(a1 + 48) hmf_removeFirstObject];
    }

    v16 = *(a1 + 40);
    v17 = [v9 allObjects];
    [v16 _addEventsToEventQueue:? events:?];

    if (*(a1 + 64))
    {
      **(a1 + 64) |= [v9 count] != 0;
    }

    v18 = *(a1 + 40);
    v19 = [*(a1 + 48) na_arrayByFlattening];
    [v18 _blurSampleBufferWithEncoder:? sampleBuffer:? events:?];
  }
}

void __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke_22(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 na_arrayByFlattening];
  [v4 _blurSampleBufferWithEncoder:? sampleBuffer:? events:?];
}

- (void)_addEventsToEventQueue:(id)queue events:(id)events
{
  queueCopy = queue;
  eventsCopy = events;
  if (([queueCopy hmf_isEmpty] & 1) == 0)
  {
    lastObject = [queueCopy lastObject];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke;
    v12 = &unk_278755120;
    v13 = eventsCopy;
    v8 = [lastObject na_filter:?];

    [queueCopy removeLastObject];
    [queueCopy addObject:?];
  }

  [queueCopy addObject:?];
}

uint64_t __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke_2;
  v10 = &unk_278755120;
  v11 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 na_any:?];

  return v4 ^ 1;
}

BOOL __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 boundingBox];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  HMICGRectIntersectionOverMinArea(v5, v7, v9, v11, v13, v15, v17, v19);
  return v20 > 0.5;
}

- (void)_blurSampleBufferWithEncoder:(id)encoder sampleBuffer:(opaqueCMSampleBuffer *)buffer events:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  eventsCopy = events;
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetPresentationTimeStamp(&v18, buffer);
  CMSampleBufferGetImageBuffer(buffer);
  if ([eventsCopy hmf_isEmpty])
  {
    [encoderCopy handleSampleBuffer:?];
  }

  else
  {
    v10 = [HMIFeedbackVisionProcessor _createBlurredPixelBuffer:"_createBlurredPixelBuffer:events:" events:?];
    if (v10)
    {
      v11 = v10;
      CopyWithPixelBuffer = HMICMSampleBufferCreateCopyWithPixelBuffer(buffer, v10);
      [encoderCopy handleSampleBuffer:?];
      CFRelease(CopyWithPixelBuffer);
      CVPixelBufferRelease(v11);
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        time = v18;
        Seconds = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v16;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = Seconds;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Skip the frame @ %.3fs due to blurring failure", &time, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

- (__CVBuffer)_createBlurredPixelBuffer:(__CVBuffer *)buffer events:(id)events
{
  v63 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  Size = HMICVPixelBufferGetSize(buffer);
  v9 = v8;
  v56 = 0;
  v10 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:pixelFormat:options:error:" pixelFormat:? options:? error:?];
  v11 = 0;
  if (!v10)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      LODWORD(dest.data) = 138543618;
      *(&dest.data + 4) = v19;
      WORD2(dest.height) = 2112;
      *(&dest.height + 6) = v11;
      v20 = "%{public}@Failed to convert YCbCr to RGBA (%@)";
      p_dest = &dest;
      goto LABEL_8;
    }

LABEL_12:

    objc_autoreleasePoolPop(v16);
    v24 = 0;
    goto LABEL_13;
  }

  CVPixelBufferGetPixelFormatType(v10);
  v12 = [HMIVisionUtilities createPixelBufferWithSize:"createPixelBufferWithSize:pixelFormat:useIOSurface:" pixelFormat:? useIOSurface:?];
  if (!v12)
  {
    CVPixelBufferRelease(v10);
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      LODWORD(dest.data) = 138543362;
      *(&dest.data + 4) = v19;
      v20 = "%{public}@Failed to clone RGBA source image";
      p_dest = &dest;
      v22 = v18;
      v23 = 12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = v12;
  v14 = [HMIFeedbackVisionProcessor _blurRadiusForEvents:"_blurRadiusForEvents:imageSize:" imageSize:?];
  CVPixelBufferLockBaseAddress(v13, 0);
  CVPixelBufferLockBaseAddress(v10, 1uLL);
  dest.data = CVPixelBufferGetBaseAddressOfPlane(v13, 0);
  dest.height = CVPixelBufferGetHeightOfPlane(v13, 0);
  dest.width = CVPixelBufferGetWidthOfPlane(v13, 0);
  dest.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(v13, 0);
  src.data = CVPixelBufferGetBaseAddressOfPlane(v10, 0);
  src.height = CVPixelBufferGetHeightOfPlane(v10, 0);
  src.width = CVPixelBufferGetWidthOfPlane(v10, 0);
  src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(v10, 0);
  v15 = vImageTentConvolve_ARGB8888(&src, &dest, 0, 0, 0, v14, v14, 0, 3u);
  CVPixelBufferUnlockBaseAddress(v13, 0);
  CVPixelBufferUnlockBaseAddress(v10, 1uLL);
  if (v15)
  {
    CVPixelBufferRelease(v13);
    CVPixelBufferRelease(v10);
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      LODWORD(v61.data) = 138543618;
      *(&v61.data + 4) = v19;
      WORD2(v61.height) = 2048;
      *(&v61.height + 6) = v15;
      v20 = "%{public}@Failed to blur entire image (vImage_Error = %zd)";
      p_dest = &v61;
LABEL_8:
      v22 = v18;
      v23 = 22;
LABEL_11:
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, v20, p_dest, v23);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if ([eventsCopy count])
  {
    v26 = 0;
    while (1)
    {
      v27 = [eventsCopy objectAtIndexedSubscript:?];
      [v27 boundingBox];
      HMICGRectPixelFromNormalized(v28, v29, v30, v31, Size, v9);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v40 = HMICGRectExpandWithinLimit(v33, v35, v37, v39, Size, v9, 1.2);
      v42 = v41;
      v44 = v43;
      v46 = v45;
      CVPixelBufferLockBaseAddress(v13, 1uLL);
      CVPixelBufferLockBaseAddress(v10, 0);
      v47 = dest.rowBytes * v42 + 4 * v40;
      v61.width = v44;
      v61.rowBytes = dest.rowBytes;
      v61.data = dest.data + v47;
      v61.height = v46;
      v54.data = src.data + v47;
      v54.height = v46;
      v54.width = v44;
      v54.rowBytes = src.rowBytes;
      v48 = vImageCopyBuffer(&v61, &v54, 4uLL, 0);
      CVPixelBufferUnlockBaseAddress(v13, 1uLL);
      CVPixelBufferUnlockBaseAddress(v10, 0);
      if (v48)
      {
        break;
      }

      if (++v26 >= [eventsCopy count])
      {
        goto LABEL_18;
      }
    }

    CVPixelBufferRelease(v13);
    CVPixelBufferRelease(v10);
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v19 = HMFGetLogIdentifier();
    v57 = 138543618;
    v58 = v19;
    v59 = 2048;
    v60 = v48;
    v20 = "%{public}@Failed to copy blurred patch (vImage_Error = %zd)";
    p_dest = &v57;
    goto LABEL_8;
  }

LABEL_18:
  CVPixelBufferRelease(v13);
  CVPixelBufferGetPixelFormatType(buffer);
  v24 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:pixelFormat:options:error:" pixelFormat:? options:? error:?];
  v49 = v11;

  CVPixelBufferRelease(v10);
  if (!v24)
  {
    v50 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      LODWORD(v61.data) = 138543618;
      *(&v61.data + 4) = v53;
      WORD2(v61.height) = 2112;
      *(&v61.height + 6) = v49;
      _os_log_impl(&dword_22D12F000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert RGBA to YCbCr (%@)", &v61, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v24 = 0;
  }

  v11 = v49;
LABEL_13:

  return v24;
}

- (unsigned)_blurRadiusForEvents:(id)events imageSize:(CGSize)size
{
  v4 = [events na_reduceWithInitialValue:MEMORY[0x277D85DD0] reducer:3221225472];
  v5 = [v4 intValue] / 8;
  if (v5 >= 64)
  {
    v5 = 64;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (2 * v5) | 1;

  return v6;
}

void *__61__HMIFeedbackVisionProcessor__blurRadiusForEvents_imageSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 boundingBox];
  [v5 boundingBox];

  v6 = MEMORY[0x277CCABB0];
  [v4 floatValue];

  return [v6 numberWithFloat:?];
}

@end