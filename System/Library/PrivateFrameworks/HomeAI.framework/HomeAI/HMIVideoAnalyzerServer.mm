@interface HMIVideoAnalyzerServer
- (HMIVideoAnalyzerServer)initWithConfiguration:(id)configuration identifier:(id)identifier;
- (double)delay;
- (double)timeSinceAnalyzerStarted;
- (double)timeSinceLastFragmentWasReceived;
- (id)_filterFrameResult:(id)result dynamicConfiguration:(id)configuration motionDetections:(id)detections;
- (id)dynamicConfigurationForTime:(id *)time;
- (id)state;
- (opaqueCMSampleBuffer)frameSelector:(id)selector prepareFrame:(opaqueCMSampleBuffer *)frame;
- (unint64_t)status;
- (void)_configureAssetWriter;
- (void)_configureEncoder;
- (void)_configureTimelapseAssetWriter;
- (void)_configureTimelapseEncoder;
- (void)_handleDecodedSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_notifyDelegateDidAnalyzeFragmentWithResult:(id)result;
- (void)_notifyDelegateDidAnalyzeFrameWithResult:(id)result;
- (void)_notifyDelegateDidCreateTimelapseFragment:(id)fragment;
- (void)_notifyDelegateDidFailWithError:(id)error;
- (void)_notifyDelegateDidProduceAnalysisStateUpdate:(id)update;
- (void)_prepareForInputVideoFormat:(opaqueCMFormatDescription *)format audioFormat:(opaqueCMFormatDescription *)audioFormat;
- (void)_prepareForTimelapseOutputVideoFormat:(opaqueCMFormatDescription *)format;
- (void)_produceResult:(SEL)result withArguments:(id)arguments;
- (void)_saveFragmentDataToDisk:(id)disk diskBufferSize:(unint64_t)size;
- (void)_updateDecoderAndEncodersForFragment:(id)fragment withConfiguration:(id)configuration;
- (void)_updateDecoderForFragment:(id)fragment decodeMode:(int64_t)mode;
- (void)_updateEncoder:(BOOL)encoder;
- (void)_updateTimelapseEncoder:(id *)encoder;
- (void)analyzeFragment:(id)fragment configuration:(id)configuration;
- (void)assetWriter:(id)writer didOutputInitializationSegment:(id)segment;
- (void)assetWriter:(id)writer didOutputSeparableSegment:(id)segment segmentReport:(id)report;
- (void)buffer:(id)buffer willHandleSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)bufferWillFlush:(id)flush;
- (void)dealloc;
- (void)decoder:(id)decoder didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)encoder:(id)encoder didEncodeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)encoder:(id)encoder didFailWithError:(id)error;
- (void)finishWithCompletionHandler:(id)handler;
- (void)flush;
- (void)flushAsync;
- (void)frameAnalyzer:(id)analyzer didAnalyzeFrame:(id)frame;
- (void)frameSampler:(id)sampler didSampleFrame:(opaqueCMSampleBuffer *)frame;
- (void)frameSelector:(id)selector didSelectFrame:(opaqueCMSampleBuffer *)frame reference:(opaqueCMSampleBuffer *)reference;
- (void)frameSelector:(id)selector didSkipFrame:(opaqueCMSampleBuffer *)frame;
- (void)frameTracker:(id)tracker didTrackFrame:(opaqueCMSampleBuffer *)frame background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks;
- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer errorHandler:(id)handler;
- (void)setAnalysisFPS:(double)s;
- (void)setBoosted:(BOOL)boosted;
- (void)setDecodeMode:(int64_t)mode;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIVideoAnalyzerServer

- (HMIVideoAnalyzerServer)initWithConfiguration:(id)configuration identifier:(id)identifier
{
  configurationCopy = configuration;
  v86.receiver = self;
  v86.super_class = HMIVideoAnalyzerServer;
  v7 = [(HMIVideoAnalyzer *)&v86 initWithConfiguration:configurationCopy identifier:identifier];
  if (v7)
  {
    v8 = +[HMIPreference sharedInstance];
    analysisQOS = [v8 analysisQOS];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, analysisQOS, 0);
    v12 = dispatch_queue_create("HMIVideoAnalyzerServer", v11);
    v13 = *(v7 + 21);
    *(v7 + 21) = v12;

    v14 = MEMORY[0x277CCACA8];
    identifier = [v7 identifier];
    v16 = [v14 stringWithFormat:identifier];
    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    v20 = *(v7 + 20);
    *(v7 + 20) = v19;

    v21 = MEMORY[0x277CCACA8];
    identifier2 = [v7 identifier];
    v23 = [v21 stringWithFormat:identifier2];
    uTF8String2 = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(uTF8String2, v25);
    v27 = *(v7 + 22);
    *(v7 + 22) = v26;

    v28 = MEMORY[0x277CCACA8];
    identifier3 = [v7 identifier];
    v30 = [v28 stringWithFormat:identifier3];
    uTF8String3 = [v30 UTF8String];
    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_attr_make_with_qos_class(v32, QOS_CLASS_USER_INTERACTIVE, 0);
    v34 = dispatch_queue_create(uTF8String3, v33);
    v35 = *(v7 + 16);
    *(v7 + 16) = v34;

    v7[137] = [configurationCopy transcode];
    *(v7 + 19) = [configurationCopy initialDecodeMode];
    v36 = [[HMIVideoCommandBuffer alloc] initWithMaxCapacity:?];
    v37 = *(v7 + 27);
    *(v7 + 27) = v36;

    v38 = *(v7 + 27);
    inputQueue = [v7 inputQueue];
    [v38 setDelegate:? queue:?];

    v40 = [HMIVideoFrameSelector alloc];
    workQueue = [v7 workQueue];
    v42 = [HMIVideoFrameSelector initWithConfiguration:v40 workQueue:"initWithConfiguration:workQueue:"];
    v43 = *(v7 + 33);
    *(v7 + 33) = v42;

    [*(v7 + 33) setDelegate:?];
    v44 = [HMIVideoFrameTracker alloc];
    workQueue2 = [v7 workQueue];
    v46 = [HMIVideoFrameTracker initWithConfiguration:v44 workQueue:"initWithConfiguration:workQueue:"];
    v47 = *(v7 + 34);
    *(v7 + 34) = v46;

    [*(v7 + 34) setDelegate:?];
    v48 = [HMIVideoFrameAnalyzer alloc];
    workQueue3 = [v7 workQueue];
    v50 = [HMIVideoFrameAnalyzer initWithConfiguration:v48 workQueue:"initWithConfiguration:workQueue:"];
    v51 = *(v7 + 35);
    *(v7 + 35) = v50;

    [*(v7 + 35) setDelegate:?];
    v52 = objc_alloc_init(HMIVideoTemporalEventFilter);
    v53 = *(v7 + 43);
    *(v7 + 43) = v52;

    if (configurationCopy)
    {
      [&v83 thumbnailInterval];
      if ((v84 & 0x100000000) != 0)
      {
        v54 = [HMIVideoFrameIntervalSampler alloc];
        [v82 thumbnailInterval];
        v55 = [(HMIVideoFrameIntervalSampler *)v54 initWithInterval:?];
        v56 = *(v7 + 29);
        *(v7 + 29) = v55;

        [*(v7 + 29) setDelegate:?];
      }

      [&v79 timelapseInterval];
      if ((v80 & 0x100000000) != 0)
      {
        v57 = [HMIVideoFrameIntervalSampler alloc];
        [v82 timelapseInterval];
        v58 = [(HMIVideoFrameIntervalSampler *)v57 initWithInterval:?];
        v59 = *(v7 + 30);
        *(v7 + 30) = v58;

        [*(v7 + 30) setDelegate:?];
      }
    }

    else
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v80 = 0;
      v81 = 0;
      v79 = 0;
    }

    v60 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:?];
    v61 = *(v7 + 38);
    *(v7 + 38) = v60;

    v62 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:?];
    v63 = *(v7 + 39);
    *(v7 + 39) = v62;

    v64 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:?];
    v65 = *(v7 + 42);
    *(v7 + 42) = v64;

    v66 = MEMORY[0x277CC08F0];
    v67 = *MEMORY[0x277CC08F0];
    *(v7 + 376) = *MEMORY[0x277CC08F0];
    v68 = *(v66 + 16);
    *(v7 + 49) = v68;
    *(v7 + 25) = v67;
    *(v7 + 52) = v68;
    v69 = [[HMIVideoTimeline alloc] initWithMaxCapacity:?];
    v70 = *(v7 + 44);
    *(v7 + 44) = v69;

    [configurationCopy analysisFPS];
    *(v7 + 18) = v71;
    [configurationCopy analysisFPS];
    [*(v7 + 33) setSampleRate:?];
    *(v7 + 11) = 0;
    *(v7 + 12) = 0;
    *(v7 + 13) = 0;
    *(v7 + 14) = 0;
    *(v7 + 15) = 0;
    v7[136] = 1;
    v7[139] = 0;
    v7[140] = 0;
    v72 = [MEMORY[0x277CBEAA8] now];
    v73 = *(v7 + 45);
    *(v7 + 45) = v72;

    v74 = [MEMORY[0x277CBEAA8] now];
    v75 = *(v7 + 46);
    *(v7 + 46) = v74;

    v76 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:? options:?];
    v77 = *(v7 + 26);
    *(v7 + 26) = v76;

    [*(v7 + 26) setDelegate:?];
    [*(v7 + 26) resume];
  }

  return v7;
}

- (id)dynamicConfigurationForTime:(id *)time
{
  v19 = *MEMORY[0x277D85DE8];
  dynamicConfigurationBuffer = self->_dynamicConfigurationBuffer;
  start = **&MEMORY[0x277CC08F0];
  v16 = *time;
  CMTimeRangeFromTimeToTime(&v18, &start, &v16);
  v6 = [HMIVideoEventBuffer objectsInTimeRange:"objectsInTimeRange:includeEnd:" includeEnd:?];
  lastObject = [v6 lastObject];
  value = [lastObject value];

  if (!value)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *&v18.start.value = *&time->var0;
      v18.start.epoch = time->var3;
      v13 = HMICMTimeDescription(&v18.start);
      LODWORD(v18.start.value) = 138543618;
      *(&v18.start.value + 4) = v12;
      LOWORD(v18.start.flags) = 2112;
      *(&v18.start.flags + 2) = v13;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Dynamic configuration is missing for time: %@, using the first instead.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    firstObject = [(HMIVideoEventBuffer *)self->_dynamicConfigurationBuffer firstObject];
    value = [firstObject value];
  }

  return value;
}

- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = optionsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received Message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(NSString *)optionsCopy objectForKeyedSubscript:?];
  v13 = [(NSString *)optionsCopy objectForKeyedSubscript:?];
  v14 = NSSelectorFromString(v12);
  if (v14 == sel_flush)
  {
    [(HMIVideoAnalyzerServer *)selfCopy flush];
  }

  else if (v14 == sel_flushAsync)
  {
    [(HMIVideoAnalyzerServer *)selfCopy flushAsync];
  }

  else
  {
    if (v14 == sel_finishWithCompletionHandler_)
    {
      v26 = handlerCopy;
      v25 = optionsCopy;
      [(HMIVideoAnalyzerServer *)selfCopy finishWithCompletionHandler:?];

      goto LABEL_29;
    }

    if (v14 == sel_cancel)
    {
      [(HMIVideoAnalyzerServer *)selfCopy cancel];
    }

    else
    {
      if (v14 == sel_setAnalysisFPS_)
      {
        v19 = [v13 objectAtIndexedSubscript:?];
        [v19 doubleValue];
        [(HMIVideoAnalyzerServer *)selfCopy setAnalysisFPS:?];
      }

      else if (v14 == sel_setMonitored_)
      {
        v19 = [v13 objectAtIndexedSubscript:?];
        [v19 BOOLValue];
        [(HMIVideoAnalyzerServer *)selfCopy setMonitored:?];
      }

      else if (v14 == sel_setDecodeMode_)
      {
        v19 = [v13 objectAtIndexedSubscript:?];
        [v19 integerValue];
        [(HMIVideoAnalyzerServer *)selfCopy setDecodeMode:?];
      }

      else if (v14 == sel_setBoosted_)
      {
        v19 = [v13 objectAtIndexedSubscript:?];
        [v19 BOOLValue];
        [(HMIVideoAnalyzerServer *)selfCopy setBoosted:?];
      }

      else
      {
        if (v14 != sel_analyzeFragment_configuration_)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = selfCopy;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v28 = v18;
            v29 = 2112;
            v30 = v12;
            _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unknown %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          goto LABEL_25;
        }

        v19 = [v13 objectAtIndexedSubscript:?];
        v20 = [v13 objectAtIndexedSubscript:?];
        [HMIVideoAnalyzerServer analyzeFragment:selfCopy configuration:"analyzeFragment:configuration:"];
      }
    }
  }

LABEL_25:
  if (handlerCopy)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = optionsCopy;
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Sent Message Reply: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_29:
}

void __69__HMIVideoAnalyzerServer_handleMessageWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Sent Message Reply: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)analyzeFragment:(id)fragment configuration:(id)configuration
{
  v82 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  configurationCopy = configuration;
  v7 = [MEMORY[0x277CBEAA8] now];
  [(HMIVideoAnalyzerServer *)self setLastFragmentReceivedDate:?];

  data = [fragmentCopy data];
  v8 = +[HMIPreference sharedInstance];
  v9 = [v8 hasPreferenceForKey:?];

  if (v9)
  {
    v10 = +[HMIPreference sharedInstance];
    v11 = [v10 numberPreferenceForKey:?];
    [v11 integerValue];
    [configurationCopy setEventTriggers:?];
  }

  v12 = +[HMIPreference sharedInstance];
  v13 = [v12 numberPreferenceForKey:? defaultValue:?];
  integerValue = [v13 integerValue];

  if (integerValue)
  {
    [HMIVideoAnalyzerServer _saveFragmentDataToDisk:"_saveFragmentDataToDisk:diskBufferSize:" diskBufferSize:?];
  }

  if (fragmentCopy)
  {
    [&time1 duration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  configuration = [(HMIVideoAnalyzer *)self configuration];
  if (configuration)
  {
    [&time2 maxFragmentDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v16 = CMTimeCompare(&time1, &time2) > 0;

  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = MEMORY[0x277CCACA8];
  if (fragmentCopy)
  {
    [&time1 duration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  Seconds = CMTimeGetSeconds(&time1);
  configuration2 = [(HMIVideoAnalyzer *)self configuration];
  if (configuration2)
  {
    [&time1 maxFragmentDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v20 = [v17 stringWithFormat:*&Seconds, CMTimeGetSeconds(&time1)];

  if (+[HMIPreference isInternalInstall])
  {
    sanitizedData = [fragmentCopy sanitizedData];
    v53 = [sanitizedData base64EncodedDataWithOptions:?];

    v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      configuration3 = [(HMIVideoAnalyzer *)selfCopy configuration];
      camera = [configuration3 camera];
      manufacturer = [camera manufacturer];
      configuration4 = [(HMIVideoAnalyzer *)selfCopy configuration];
      camera2 = [configuration4 camera];
      model = [camera2 model];
      LODWORD(time1.value) = 138544386;
      *(&time1.value + 4) = v48;
      LOWORD(time1.flags) = 2112;
      *(&time1.flags + 2) = manufacturer;
      HIWORD(time1.epoch) = 2112;
      v77 = model;
      v78 = 2112;
      v79 = fragmentCopy;
      v80 = 2112;
      v81 = v52;
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_ERROR, "%{public}@Camera, Manufacturer: %@, Model: %@, Fragment: %@, Sanitized Fragment Data: %@", &time1, 0x34u);
    }

    objc_autoreleasePoolPop(context);
  }

  v28 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:? description:?];

  if (!v28)
  {
LABEL_24:
    v30 = [(HMIVideoAnalyzerServer *)self decodeMode]!= 0;
    [(HMIVideoAnalyzerServer *)self encode];
    [configurationCopy setDecodeMode:?];
    [configurationCopy setShouldEncode:?];
    v31 = MEMORY[0x277CC0898];
    if (v30)
    {
      configuration5 = [(HMIVideoAnalyzer *)self configuration];
      if (configuration5)
      {
        [&v66 timelapseInterval];
      }

      else
      {
        memset(&v66, 0, sizeof(v66));
      }

      time1 = v66;
      [configurationCopy setTimelapseInterval:?];
    }

    else
    {
      v66 = **&MEMORY[0x277CC0898];
      time1 = v66;
      [configurationCopy setTimelapseInterval:?];
    }

    dynamicConfigurationBuffer = [(HMIVideoAnalyzerServer *)self dynamicConfigurationBuffer];
    v34 = [HMIVideoEventEntry alloc];
    p_currentDTS = &self->_currentDTS;
    time1 = self->_currentDTS;
    v36 = [HMIVideoEventEntry initWithValue:v34 time:"initWithValue:time:"];
    [dynamicConfigurationBuffer addObject:?];

    objc_initWeak(&location, self);
    commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
    v58 = MEMORY[0x277D85DD0];
    v59 = 3221225472;
    v60 = __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke_2;
    v61 = &unk_278752AC0;
    objc_copyWeak(&v64, &location);
    v38 = fragmentCopy;
    v62 = v38;
    v63 = configurationCopy;
    [commandBuffer handleBlock:?];

    v39 = [[HMIMemoryAVAsset alloc] initWithData:?];
    [(HMIMemoryAVAsset *)v39 loadValuesSynchronously];
    [v38 videoFormatDescription];
    configuration6 = [(HMIVideoAnalyzer *)self configuration];
    if ([configuration6 passthroughAudio])
    {
      [v38 audioFormatDescription];
    }

    v41 = [HMIVideoAssetReader initWithAsset:"initWithAsset:readVideoTrack:readAudioTrack:" readVideoTrack:? readAudioTrack:?];
    *&time1.value = *&p_currentDTS->value;
    time1.epoch = self->_currentDTS.epoch;
    value = *v31;
    flags = *(v31 + 12);
    timescale = *(v31 + 8);
    epoch = *(v31 + 16);
    while (1)
    {
      copyNextSampleBuffer = [(HMIVideoAssetReader *)v41 copyNextSampleBuffer];
      v45 = copyNextSampleBuffer;
      if (!copyNextSampleBuffer)
      {
        break;
      }

      time2 = time1;
      v46 = HMICMSampleBufferCreateCopyWithTimingOffset(copyNextSampleBuffer, &time2);
      if (HMICMSampleBufferIsVideo(v45))
      {
        CMSampleBufferGetDuration(&time2, v45);
        value = time2.value;
        flags = time2.flags;
        timescale = time2.timescale;
        epoch = time2.epoch;
      }

      CFRelease(v45);
      [HMIVideoAnalyzerServer handleSampleBuffer:"handleSampleBuffer:errorHandler:" errorHandler:?];
      CFRelease(v46);
    }

    if (flags)
    {
      *&lhs.value = *&p_currentDTS->value;
      lhs.epoch = self->_currentDTS.epoch;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeAdd(&time2, &lhs, &rhs);
      *&p_currentDTS->value = *&time2.value;
      self->_currentDTS.epoch = time2.epoch;
      if ([(HMIVideoNode *)v41 status]!= 4)
      {
LABEL_42:

        objc_destroyWeak(&v64);
        objc_destroyWeak(&location);
        goto LABEL_43;
      }

      error = [(HMIVideoNode *)v41 error];
      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:?];
    }

    else
    {
      error = [MEMORY[0x277CCA9B8] hmiErrorWithCode:? description:?];
      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:?];
    }

    goto LABEL_42;
  }

  objc_initWeak(&time1, self);
  commandBuffer2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  v67 = MEMORY[0x277D85DD0];
  v68 = 3221225472;
  v69 = __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke;
  v70 = &unk_278752BB0;
  objc_copyWeak(&v72, &time1);
  v71 = v28;
  [commandBuffer2 handleBlock:?];

  objc_destroyWeak(&v72);
  objc_destroyWeak(&time1);

LABEL_43:
}

void __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyDelegateDidFailWithError:?];
}

uint64_t __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [*(a1 + 32) videoFormatDescription];
    v4 = [v6 configuration];
    if ([v4 passthroughAudio])
    {
      [*(a1 + 32) audioFormatDescription];
    }

    [v6 _prepareForInputVideoFormat:? audioFormat:?];

    WeakRetained = [v6 _updateDecoderAndEncodersForFragment:? withConfiguration:?];
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer errorHandler:(id)handler
{
  if (HMICMSampleBufferIsAudio(buffer))
  {
    commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
    [commandBuffer handleSampleBuffer:?];
  }

  else if (CMSampleBufferGetImageBuffer(buffer))
  {

    [(HMIVideoAnalyzerServer *)self _handleDecodedSampleBuffer:?];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetDecodeTimeStamp(&v11, buffer);
    self->_currentDTS = v11;
    timeline = [(HMIVideoAnalyzerServer *)self timeline];
    v7 = [MEMORY[0x277CBEAA8] now];
    CMSampleBufferGetPresentationTimeStamp(&v10, buffer);
    [timeline addDate:? atTime:?];

    commandBuffer2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
    [commandBuffer2 handleSampleBuffer:?];
  }
}

- (void)flush
{
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer flush];
}

- (void)flushAsync
{
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer flushAsync];
}

- (void)finishWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Finish Analyzer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  commandBuffer = [(HMIVideoAnalyzerServer *)selfCopy commandBuffer];
  v11 = MEMORY[0x277D85DD0];
  v12 = handlerCopy;
  v10 = handlerCopy;
  [commandBuffer handleBlock:{v11, 3221225472, __54__HMIVideoAnalyzerServer_finishWithCompletionHandler___block_invoke, &unk_278752DF8, selfCopy}];
}

void __54__HMIVideoAnalyzerServer_finishWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) inputQueue];
  dispatch_assert_queue_V2(v2);

  if ([*(a1 + 32) hasFailed])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has failed, ignoring finish.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) state];
    [HMIAnalytics videoAnalyzerDidTerminateWithError:"videoAnalyzerDidTerminateWithError:state:" state:?];

    v8 = [*(a1 + 32) timelapseAssetWriter];

    if (v8)
    {
      v9 = [*(a1 + 32) timelapseEncoder];
      [v9 flush];

      v11 = [*(a1 + 32) timelapseAssetWriter];
      [v11 finishWithCompletionHandler:?];
    }

    else
    {
      v10 = *(*(a1 + 40) + 16);

      v10();
    }
  }
}

- (void)_saveFragmentDataToDisk:(id)disk diskBufferSize:(unint64_t)size
{
  diskCopy = disk;
  configuration = [(HMIVideoAnalyzer *)self configuration];
  camera = [configuration camera];
  name = [camera name];
  v8 = name;
  v9 = @"Unknown";
  if (name)
  {
    v9 = name;
  }

  v44 = v9;

  v41 = MEMORY[0x277CCACA8];
  configuration2 = [(HMIVideoAnalyzer *)self configuration];
  camera2 = [configuration2 camera];
  manufacturer = [camera2 manufacturer];
  v11 = manufacturer;
  if (manufacturer)
  {
    v12 = manufacturer;
  }

  else
  {
    v12 = @"UnknownManufacturer";
  }

  configuration3 = [(HMIVideoAnalyzer *)self configuration];
  camera3 = [configuration3 camera];
  model = [camera3 model];
  v16 = model;
  if (model)
  {
    v17 = model;
  }

  else
  {
    v17 = @"UnknownModel";
  }

  configuration4 = [(HMIVideoAnalyzer *)self configuration];
  camera4 = [configuration4 camera];
  firmwareVersion = [camera4 firmwareVersion];
  v21 = firmwareVersion;
  v22 = @"UnknownFirmware";
  if (firmwareVersion)
  {
    v22 = firmwareVersion;
  }

  v23 = [v41 stringWithFormat:v12, v17, v22];

  v24 = [v23 stringByReplacingOccurrencesOfString:? withString:?];

  v25 = NSTemporaryDirectory();
  v26 = [v25 stringByAppendingPathComponent:?];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke;
  v47[3] = &unk_278755DE8;
  v47[4] = self;
  v48 = v26;
  v49 = diskCopy;
  sizeCopy = size;
  v28 = diskCopy;
  v29 = v26;
  v30 = MEMORY[0x2318CB8E0](v47);
  v31 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v31 setDateFormat:?];
  v32 = MEMORY[0x277CCACA8];
  startDate = [(HMIVideoAnalyzerServer *)self startDate];
  v34 = [v31 stringFromDate:?];
  identifier = [(HMIVideoAnalyzer *)self identifier];
  v36 = [v32 stringWithFormat:v34, identifier, v24];

  v37 = [v29 stringByAppendingPathComponent:?];
  v38 = [v37 stringByAppendingPathExtension:?];

  (v30)[2](v30, v38, 0);
  v39 = [v29 stringByAppendingPathComponent:?];
  v40 = [v39 stringByAppendingPathExtension:?];

  (v30)[2](v30, v40, 1);
}

void __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke(uint64_t a1, void *a2, char a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:?];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v7;
  if (!v6)
  {
    v48 = v4;
    v17 = [v7 enumeratorAtPath:?];

    v9 = [MEMORY[0x277CBEB18] array];
    v49 = [MEMORY[0x277CBEB38] dictionary];
    v18 = [v17 nextObject];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      do
      {
        [v9 addObject:?];
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [*(a1 + 40) stringByAppendingPathComponent:?];
        v23 = [v21 attributesOfItemAtPath:? error:?];

        v24 = MEMORY[0x277CCABB0];
        [v23 fileSize];
        v25 = [v24 numberWithUnsignedLongLong:?];
        [v49 setObject:? forKeyedSubscript:?];

        v20 += [v23 fileSize];
        v26 = [v17 nextObject];

        v19 = v26;
      }

      while (v26);
    }

    else
    {
      v20 = 0;
    }

    v47 = v17;
    v27 = *(a1 + 56);
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = v27 - v20;
      v32 = HMFGetLogIdentifier();
      v33 = v32;
      v34 = *(a1 + 40);
      v35 = v31 + 0xFFFFF;
      *buf = 138543874;
      if (v31 >= 0)
      {
        v35 = v31;
      }

      v53 = v32;
      v54 = 2112;
      v55 = v34;
      v56 = 2048;
      v57 = v35 >> 20;
      _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Disk buffer size remaining in %@, %ld MB", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v36 = v49;
    if (([v9 hmf_isEmpty] & 1) == 0)
    {
      v50 = v9;
      do
      {
        if (v20 < *(a1 + 56))
        {
          break;
        }

        v37 = [v9 firstObject];
        [v9 hmf_removeFirstObject];
        v38 = [*(a1 + 40) stringByAppendingPathComponent:?];
        v39 = [MEMORY[0x277CCAA00] defaultManager];
        [v39 removeItemAtPath:? error:?];
        v40 = 0;

        v41 = [v36 objectForKeyedSubscript:?];
        v42 = [v41 integerValue];

        v43 = objc_autoreleasePoolPush();
        v44 = *(a1 + 32);
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543874;
          v53 = v46;
          v54 = 2112;
          v55 = v38;
          v56 = 2112;
          v57 = v40;
          _os_log_impl(&dword_22D12F000, v45, OS_LOG_TYPE_DEBUG, "%{public}@Deleted %@ to free up some space, error: %@", buf, 0x20u);

          v36 = v49;
        }

        v20 -= v42;

        objc_autoreleasePoolPop(v43);
        v9 = v50;
      }

      while (![v50 hmf_isEmpty]);
    }

    v10 = v47;
    v4 = v48;
    goto LABEL_22;
  }

  v9 = [v7 attributesOfItemAtPath:? error:?];
  v10 = 0;

  v11 = [v9 fileSize];
  v12 = *(a1 + 56);
  if (v11 <= v12 >> 3)
  {
LABEL_22:

    v51 = v4;
    [HMIVideoFragment fragmentData:"fragmentData:handler:" handler:?];
    v10 = v51;
    goto LABEL_23;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v53 = v16;
    v54 = 2112;
    v55 = v4;
    v56 = 2048;
    v57 = v12 >> 23;
    _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Video file %@ size is too large, maximum allowed is (%ld MB), no longer appending fragments.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_23:
}

void __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke_335(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:?];
  v5 = v4;
  if (v4)
  {
    [v4 seekToEndOfFile];
    if (*(a1 + 48) == 1)
    {
      [v3 sanitizedSeperableSegment];
    }

    else
    {
      [v3 separableSegment];
    }
    v6 = ;
    [v5 writeData:?];

    [v5 closeFile];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v12 = "%{public}@Appending fragment to %@";
LABEL_12:
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_DEBUG, v12, &v15, 0x16u);
    }
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      [v3 sanitizedData];
    }

    else
    {
      [v3 data];
    }
    v13 = ;
    [v13 writeToFile:? atomically:?];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v14;
      v12 = "%{public}@Saving fragment to %@";
      goto LABEL_12;
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_prepareForInputVideoFormat:(opaqueCMFormatDescription *)format audioFormat:(opaqueCMFormatDescription *)audioFormat
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
    self->_inputVideoFormat = format;
    if (format)
    {
      CFRetain(format);
    }
  }

  if (!CMFormatDescriptionEqual(format, [(HMIVideoAnalyzerServer *)self inputVideoFormat]))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Video format should not change.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  if (![(HMIVideoAnalyzerServer *)self inputAudioFormat])
  {
    self->_inputAudioFormat = audioFormat;
    if (audioFormat)
    {
      CFRetain(audioFormat);
    }
  }

  if (!CMFormatDescriptionEqual(audioFormat, [(HMIVideoAnalyzerServer *)self inputAudioFormat]))
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Audio format should not change.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (!assetWriter)
  {
    [(HMIVideoAnalyzerServer *)self _configureAssetWriter];
  }
}

- (void)_prepareForTimelapseOutputVideoFormat:(opaqueCMFormatDescription *)format
{
  if (!CMFormatDescriptionEqual(format, [(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat]))
  {
    timelapseOutputVideoFormat = self->_timelapseOutputVideoFormat;
    if (timelapseOutputVideoFormat)
    {
      CFRelease(timelapseOutputVideoFormat);
    }

    self->_timelapseOutputVideoFormat = CFRetain(format);

    [(HMIVideoAnalyzerServer *)self _configureTimelapseAssetWriter];
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@[HMIVideoAnalyzerServer dealloc]", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  inputVideoFormat = selfCopy->_inputVideoFormat;
  if (inputVideoFormat)
  {
    CFRelease(inputVideoFormat);
  }

  inputAudioFormat = selfCopy->_inputAudioFormat;
  if (inputAudioFormat)
  {
    CFRelease(inputAudioFormat);
  }

  timelapseOutputVideoFormat = selfCopy->_timelapseOutputVideoFormat;
  if (timelapseOutputVideoFormat)
  {
    CFRelease(timelapseOutputVideoFormat);
  }

  v10.receiver = selfCopy;
  v10.super_class = HMIVideoAnalyzerServer;
  [(HMIVideoAnalyzer *)&v10 dealloc];
}

- (void)_configureAssetWriter
{
  assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (assetWriter)
  {
    _configureAssetWriter = [HMIVideoAnalyzerServer _configureAssetWriter];
    [(HMIVideoAnalyzerServer *)_configureAssetWriter _configureTimelapseAssetWriter];
  }

  else
  {
    v4 = [HMIVideoAssetWriter alloc];
    [(HMIVideoAnalyzerServer *)self inputVideoFormat];
    [(HMIVideoAnalyzerServer *)self inputAudioFormat];
    v5 = [HMIVideoAssetWriter initWithVideoFormat:v4 audioFormat:"initWithVideoFormat:audioFormat:"];
    [(HMIVideoAnalyzerServer *)self setAssetWriter:?];

    logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
    assetWriter2 = [(HMIVideoAnalyzerServer *)self assetWriter];
    [assetWriter2 setLogIdentifier:?];

    assetWriter3 = [(HMIVideoAnalyzerServer *)self assetWriter];
    [assetWriter3 setDelegate:?];
  }
}

- (void)_configureTimelapseAssetWriter
{
  if ([(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat])
  {
    v3 = [HMIVideoAssetWriter alloc];
    [(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat];
    configuration = [(HMIVideoAnalyzer *)self configuration];
    if (configuration)
    {
      [v13 timelapsePreferredFragmentDuration];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v5 = [HMIVideoAssetWriter initWithVideoFormat:v3 audioFormat:"initWithVideoFormat:audioFormat:initialFragmentSequenceNumber:preferredOutputSegmentInterval:" initialFragmentSequenceNumber:? preferredOutputSegmentInterval:?];
    [(HMIVideoAnalyzerServer *)self setTimelapseAssetWriter:?];

    timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
    [timelapseAssetWriter setDelegate:?];

    identifier = [(HMIVideoAnalyzer *)self identifier];
    uUIDString = [identifier UUIDString];
    v9 = [uUIDString stringByAppendingString:?];
    timelapseAssetWriter2 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
    [timelapseAssetWriter2 setLogIdentifier:?];
  }

  else
  {
    _configureTimelapseAssetWriter = [HMIVideoAnalyzerServer _configureTimelapseAssetWriter];
    [(HMIVideoAnalyzerServer *)_configureTimelapseAssetWriter _configureEncoder];
  }
}

- (void)_configureEncoder
{
  if (!self->_encode)
  {
    [HMIVideoAnalyzerServer _configureEncoder];
    goto LABEL_9;
  }

  encoder = [(HMIVideoAnalyzerServer *)self encoder];

  if (encoder)
  {
LABEL_9:
    [HMIVideoAnalyzerServer _configureEncoder];
    goto LABEL_10;
  }

  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
LABEL_10:
    _configureEncoder = [HMIVideoAnalyzerServer _configureEncoder];
    [(HMIVideoAnalyzerServer *)_configureEncoder _configureTimelapseEncoder];
    return;
  }

  v4 = [HMIVideoEncoder alloc];
  CMVideoFormatDescriptionGetDimensions([(HMIVideoAnalyzerServer *)self inputVideoFormat]);
  configuration = [(HMIVideoAnalyzer *)self configuration];
  [configuration transcodeCodecType];
  v6 = [HMIVideoEncoder initWithDimensions:v4 codecType:"initWithDimensions:codecType:useHardwareAcceleration:error:" useHardwareAcceleration:? error:?];
  v7 = 0;
  [(HMIVideoAnalyzerServer *)self setEncoder:?];

  encoder2 = [(HMIVideoAnalyzerServer *)self encoder];

  if (encoder2)
  {
    logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
    encoder3 = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder3 setLogIdentifier:?];

    encoder4 = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder4 setAverageBitRate:?];

    encoder5 = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder5 setDataRateLimit:?];

    encoder6 = [(HMIVideoAnalyzerServer *)self encoder];
    encoderQueue = [(HMIVideoAnalyzerServer *)self encoderQueue];
    [encoder6 setDelegate:? queue:?];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:?];
  }
}

- (void)_configureTimelapseEncoder
{
  v24 = *MEMORY[0x277D85DE8];
  timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (timelapseEncoder)
  {
    [HMIVideoAnalyzerServer _configureTimelapseEncoder];
LABEL_20:
    [HMIVideoAnalyzerServer _configureEncoder];
  }

  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
    goto LABEL_20;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([(HMIVideoAnalyzerServer *)self inputVideoFormat]);
  v5 = HMIAspectRatioMake(Dimensions, HIDWORD(Dimensions));
  if (!HMIAspectRatioEqualToAspectRatio(v5, 0x900000010) && !HMIAspectRatioEqualToAspectRatio(v5, 0x1000000009) && !HMIAspectRatioEqualToAspectRatio(v5, 0x300000004) && !HMIAspectRatioEqualToAspectRatio(v5, 0x400000003) && !HMIAspectRatioEqualToAspectRatio(v5, 0x100000001))
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = v22;
      LOWORD(time.flags) = 1024;
      *(&time.flags + 2) = v5;
      WORD1(time.epoch) = 1024;
      HIDWORD(time.epoch) = HIDWORD(v5);
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unsupported aspect ratio: (%d, %d)", &time, 0x18u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v6 = [HMIVideoEncoder alloc];
  configuration = [(HMIVideoAnalyzer *)self configuration];
  [configuration timelapseCodecType];
  v8 = [HMIVideoEncoder initWithDimensions:v6 codecType:"initWithDimensions:codecType:useHardwareAcceleration:error:" useHardwareAcceleration:? error:?];
  v9 = 0;
  [(HMIVideoAnalyzerServer *)self setTimelapseEncoder:?];

  logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
  v11 = [logIdentifier stringByAppendingString:?];
  timelapseEncoder2 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
  [timelapseEncoder2 setLogIdentifier:?];

  timelapseEncoder3 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
  [timelapseEncoder3 setAverageBitRate:?];

  timelapseEncoder4 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (timelapseEncoder4)
  {
    configuration2 = [(HMIVideoAnalyzer *)self configuration];
    if (configuration2)
    {
      [&time timelapsePreferredFragmentDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    CMTimeGetSeconds(&time);
    timelapseEncoder5 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    [timelapseEncoder5 setMaxKeyFrameIntervalDuration:?];

    timelapseEncoder6 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    encoderQueue = [(HMIVideoAnalyzerServer *)self encoderQueue];
    [timelapseEncoder6 setDelegate:? queue:?];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:?];
  }
}

- (void)buffer:(id)buffer willHandleSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v20 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  inputQueue = [(HMIVideoAnalyzerServer *)self inputQueue];
  dispatch_assert_queue_V2(inputQueue);

  if (![(HMIVideoAnalyzerServer *)self hasFailed]&& ![(HMIVideoAnalyzerServer *)self isCancelled])
  {
    if (HMICMSampleBufferIsAudio(sampleBuffer))
    {
      assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

      if (assetWriter)
      {
        assetWriter2 = [(HMIVideoAnalyzerServer *)self assetWriter];
        [assetWriter2 handleSampleBuffer:?];
        goto LABEL_15;
      }

      [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
LABEL_18:
      [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
    }

    encoder = [(HMIVideoAnalyzerServer *)self encoder];

    if (!encoder)
    {
      assetWriter3 = [(HMIVideoAnalyzerServer *)self assetWriter];

      if (!assetWriter3)
      {
        goto LABEL_18;
      }

      assetWriter4 = [(HMIVideoAnalyzerServer *)self assetWriter];
      [assetWriter4 handleSampleBuffer:?];
    }

    CMSampleBufferGetPresentationTimeStamp(&v19, sampleBuffer);
    v17 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:?];
    decodeMode = [v17 decodeMode];

    if (decodeMode == 1 && !HMICMSampleBufferIsSync(sampleBuffer))
    {
      goto LABEL_16;
    }

    assetWriter2 = [(HMIVideoAnalyzerServer *)self decoder];
    [assetWriter2 handleSampleBuffer:? outputFrame:?];
LABEL_15:

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    LODWORD(v19.value) = 138543362;
    *(&v19.value + 4) = v11;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has failed or was cancelled, ignoring sample buffer.", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
LABEL_16:
}

- (void)bufferWillFlush:(id)flush
{
  v18 = *MEMORY[0x277D85DE8];
  flushCopy = flush;
  inputQueue = [(HMIVideoAnalyzerServer *)self inputQueue];
  dispatch_assert_queue_V2(inputQueue);

  if ([(HMIVideoAnalyzerServer *)self hasFailed]|| [(HMIVideoAnalyzerServer *)self isCancelled])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has failed or was cancelled, ignoring flush.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    decoder = [(HMIVideoAnalyzerServer *)self decoder];
    [decoder flush];

    frameSelector = [(HMIVideoAnalyzerServer *)self frameSelector];
    [frameSelector flush];

    frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
    [frameTracker flush];

    encoder = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder flush];

    assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];
    [assetWriter flush];

    frameAnalyzer = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
    [frameAnalyzer flush];
  }
}

- (void)_updateDecoderAndEncodersForFragment:(id)fragment withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  fragmentCopy = fragment;
  [configurationCopy decodeMode];
  [HMIVideoAnalyzerServer _updateDecoderForFragment:"_updateDecoderForFragment:decodeMode:" decodeMode:?];

  [configurationCopy shouldEncode];
  [(HMIVideoAnalyzerServer *)self _updateEncoder:?];
  if (configurationCopy)
  {
    [v8 timelapseInterval];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(HMIVideoAnalyzerServer *)self _updateTimelapseEncoder:?];
}

- (void)_updateDecoderForFragment:(id)fragment decodeMode:(int64_t)mode
{
  fragmentCopy = fragment;
  if (mode)
  {
    decoder = [(HMIVideoAnalyzerServer *)self decoder];

    if (!decoder)
    {
      v7 = [HMIVideoDecoder alloc];
      [fragmentCopy frameReorderingRequired];
      v8 = [(HMIVideoDecoder *)v7 initWithFrameReordering:?];
      decoder = self->_decoder;
      self->_decoder = v8;

      logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
      [(HMIVideoDecoder *)self->_decoder setLogIdentifier:?];

      [(HMIVideoDecoder *)self->_decoder setDelegate:?];
    }
  }

  else
  {
    v11 = self->_decoder;
    self->_decoder = 0;
  }
}

- (void)_updateEncoder:(BOOL)encoder
{
  if (encoder)
  {
    encoder = [(HMIVideoAnalyzerServer *)self encoder];

    if (!encoder)
    {

      [(HMIVideoAnalyzerServer *)self _configureEncoder];
    }
  }

  else
  {

    [(HMIVideoAnalyzerServer *)self setEncoder:?];
  }
}

- (void)_updateTimelapseEncoder:(id *)encoder
{
  if (encoder->var2)
  {
    timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

    if (!timelapseEncoder)
    {
      [(HMIVideoAnalyzerServer *)self _configureTimelapseEncoder];
    }

    frameTimelapseSampler = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];

    if (!frameTimelapseSampler)
    {
      v7 = [[HMIVideoFrameIntervalSampler alloc] initWithInterval:*&encoder->var0, encoder->var3];
      [(HMIVideoAnalyzerServer *)self setFrameTimelapseSampler:?];

      frameTimelapseSampler2 = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];
      [frameTimelapseSampler2 setDelegate:?];
    }
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self setTimelapseEncoder:?];

    [(HMIVideoAnalyzerServer *)self setFrameTimelapseSampler:?];
  }
}

- (void)decoder:(id)decoder didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMIVideoAnalyzerServer_decoder_didDecodeSampleBuffer___block_invoke;
  v7[3] = &unk_278754838;
  v7[4] = self;
  v7[5] = buffer;
  dispatch_sync(workQueue, v7);
}

- (void)encoder:(id)encoder didEncodeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  encoderCopy = encoder;
  encoder = [(HMIVideoAnalyzerServer *)self encoder];

  if (encoder == encoderCopy)
  {
    assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

    if (assetWriter)
    {
      assetWriter2 = [(HMIVideoAnalyzerServer *)self assetWriter];
      goto LABEL_7;
    }

    [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
LABEL_12:
    [HMIVideoAnalyzerServer encoder:didEncodeSampleBuffer:];
    [(HMIVideoAnalyzerServer *)v13 _handleDecodedSampleBuffer:v14, v15];
    return;
  }

  timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  v8 = encoderCopy;
  if (timelapseEncoder == encoderCopy)
  {
    CMSampleBufferGetFormatDescription(buffer);
    [(HMIVideoAnalyzerServer *)self _prepareForTimelapseOutputVideoFormat:?];
    timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

    if (timelapseAssetWriter)
    {
      assetWriter2 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
LABEL_7:
      v12 = assetWriter2;
      [assetWriter2 handleSampleBuffer:?];

      v8 = encoderCopy;
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_8:
}

- (void)_handleDecodedSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  memset(&v13, 0, sizeof(v13));
  CMSampleBufferGetDuration(&v13, buffer);
  sampleBufferOut = 0;
  if ((v13.flags & 1) == 0)
  {
    memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
    CMSampleBufferGetDecodeTimeStamp(&sampleTimingArray.decodeTimeStamp, buffer);
    CMSampleBufferGetPresentationTimeStamp(&v10, buffer);
    sampleTimingArray.presentationTimeStamp = v10;
    CMTimeMake(&v10, 1, 30);
    sampleTimingArray.duration = v10;
    CMSampleBufferCreateCopyWithNewTiming(0, buffer, 1, &sampleTimingArray, &sampleBufferOut);
    buffer = sampleBufferOut;
  }

  self->_numDecodedSamples += CMSampleBufferGetNumSamples(buffer);
  memset(&sampleTimingArray, 0, 24);
  CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.duration, buffer);
  *&self->_currentPTS.value = *&sampleTimingArray.duration.value;
  self->_currentPTS.epoch = sampleTimingArray.duration.epoch;
  encoder = [(HMIVideoAnalyzerServer *)self encoder];
  [encoder handleSampleBuffer:?];

  frameSelector = [(HMIVideoAnalyzerServer *)self frameSelector];
  [frameSelector handleSampleBuffer:?];

  frameThumbnailSampler = [(HMIVideoAnalyzerServer *)self frameThumbnailSampler];
  [frameThumbnailSampler handleSampleBuffer:?];

  frameTimelapseSampler = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];
  [frameTimelapseSampler handleSampleBuffer:?];

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

- (opaqueCMSampleBuffer)frameSelector:(id)selector prepareFrame:(opaqueCMSampleBuffer *)frame
{
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  v5 = [frameTracker prepareSampleBuffer:?];

  return v5;
}

- (void)frameSelector:(id)selector didSelectFrame:(opaqueCMSampleBuffer *)frame reference:(opaqueCMSampleBuffer *)reference
{
  CMSampleBufferGetPresentationTimeStamp(&v9, frame);
  v6 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:?];
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker setDynamicConfiguration:?];

  frameTracker2 = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker2 handleSampleBuffer:? reference:?];
}

- (void)frameSelector:(id)selector didSkipFrame:(opaqueCMSampleBuffer *)frame
{
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker handleSampleBuffer:?];
}

- (void)frameTracker:(id)tracker didTrackFrame:(opaqueCMSampleBuffer *)frame background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks
{
  tracksCopy = tracks;
  detectionsCopy = detections;
  CMSampleBufferGetPresentationTimeStamp(&v15, frame);
  v12 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:?];
  frameAnalyzer = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [frameAnalyzer setDynamicConfiguration:?];

  frameAnalyzer2 = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [frameAnalyzer2 handleSampleBuffer:? background:? motionDetections:? tracks:?];
}

- (id)_filterFrameResult:(id)result dynamicConfiguration:(id)configuration motionDetections:(id)detections
{
  v32 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  configurationCopy = configuration;
  detectionsCopy = detections;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v11 = resultCopy;
  v30 = v11;
  v12 = [HMIVideoAnalyzerResultActivityZoneFilter alloc];
  activityZones = [configurationCopy activityZones];
  v14 = [HMIVideoAnalyzerResultActivityZoneFilter initWithActivityZones:v12 motionDetections:"initWithActivityZones:motionDetections:"];
  v31 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  [v15 na_each:?];
  v16 = +[HMIPreference sharedInstance];
  LOBYTE(v14) = [v16 hasPreferenceForKey:?];

  if ((v14 & 1) == 0)
  {
    configuration = [(HMIVideoAnalyzer *)self configuration];
    enableTemporalEventFiltering = [configuration enableTemporalEventFiltering];

    if (enableTemporalEventFiltering)
    {
      v19 = [HMIMotionDetection firstMotionDetectionInArray:"firstMotionDetectionInArray:withMode:" withMode:?];
      temporalEventFilter = [(HMIVideoAnalyzerServer *)self temporalEventFilter];
      v21 = [temporalEventFilter applyFilterWithFrameResult:? motionDetection:?];
      v22 = v26[5];
      v26[5] = v21;
    }
  }

  v23 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v23;
}

uint64_t __83__HMIVideoAnalyzerServer__filterFrameResult_dynamicConfiguration_motionDetections___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 applyWithFrameResult:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)frameAnalyzer:(id)analyzer didAnalyzeFrame:(id)frame
{
  analyzerCopy = analyzer;
  frameCopy = frame;
  ++self->_numDidAnalyzeFrames;
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker handleFrameAnalyzerResult:?];

  frame = [frameCopy frame];
  if (frame)
  {
    [&v27 presentationTimeStamp];
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  v10 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:?];

  frame2 = [frameCopy frame];
  configuration = [(HMIVideoAnalyzer *)self configuration];
  [configuration minFrameScale];
  configuration2 = [(HMIVideoAnalyzer *)self configuration];
  [configuration2 minFrameQuality];
  v33 = 0;
  v14 = [frame2 compressedFrameWithScale:? quality:? error:?];
  v15 = v33;

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__11;
  v31 = __Block_byref_object_dispose__11;
  v16 = [HMIVideoAnalyzerFrameResult alloc];
  events = [frameCopy events];
  [frameCopy regionOfInterest];
  v32 = [HMIVideoAnalyzerFrameResult initWithFrame:v16 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];

  motionDetections = [frameCopy motionDetections];
  v19 = [HMIVideoAnalyzerServer _filterFrameResult:"_filterFrameResult:dynamicConfiguration:motionDetections:" dynamicConfiguration:? motionDetections:?];
  v20 = v28[5];
  v28[5] = v19;

  events2 = [frameCopy events];
  v26 = MEMORY[0x277D85DD0];
  v22 = frameCopy;
  [events2 na_each:{v26, 3221225472, __56__HMIVideoAnalyzerServer_frameAnalyzer_didAnalyzeFrame___block_invoke, &unk_278755210, self}];

  events3 = [v28[5] events];
  v24 = [events3 count];

  if (v24)
  {
    frameAnalyzerFrameResultBuffer = [(HMIVideoAnalyzerServer *)self frameAnalyzerFrameResultBuffer];
    [frameAnalyzerFrameResultBuffer addObject:?];

    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidAnalyzeFrameWithResult:?];
  }

  _Block_object_dispose(&v27, 8);
}

void __56__HMIVideoAnalyzerServer_frameAnalyzer_didAnalyzeFrame___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) frame];
      if (v9)
      {
        [&v16 presentationTimeStamp];
      }

      else
      {
        memset(&v16, 0, sizeof(v16));
      }

      Seconds = CMTimeGetSeconds(&v16);
      if (*(a1 + 40))
      {
        [&v16 backgroundTimeStamp];
      }

      else
      {
        memset(&v16, 0, sizeof(v16));
      }

      v11 = CMTimeGetSeconds(&v16);
      v12 = [v3 shortDescription];
      v13 = [*(*(*(a1 + 48) + 8) + 40) events];
      v14 = [v13 containsObject:?];
      LODWORD(v16.value) = 138544386;
      v15 = @"Filtered";
      *(&v16.value + 4) = v8;
      LOWORD(v16.flags) = 2048;
      if (v14)
      {
        v15 = &stru_284057FB8;
      }

      *(&v16.flags + 2) = Seconds;
      HIWORD(v16.epoch) = 2048;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@AnalyzerEvents(PTS:%.2f/%.2f): %@ %@", &v16, 0x34u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)frameSampler:(id)sampler didSampleFrame:(opaqueCMSampleBuffer *)frame
{
  samplerCopy = sampler;
  frameTimelapseSampler = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];

  if (frameTimelapseSampler == samplerCopy)
  {
    timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    [timelapseEncoder handleSampleBuffer:?];

    goto LABEL_9;
  }

  frameThumbnailSampler = [(HMIVideoAnalyzerServer *)self frameThumbnailSampler];
  if (frameThumbnailSampler != samplerCopy)
  {
    goto LABEL_7;
  }

  v9 = +[HMIPreference sharedInstance];
  [(HMIVideoAnalyzerServer *)self analysisFPS];
  v10 = [v9 shouldGenerateThumbnailForAnalysisFPS:?];

  if (v10)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(frame);
    HMICVPixelBufferGetSize(ImageBuffer);
    if (v12 > 0.0)
    {
      configuration = [(HMIVideoAnalyzer *)self configuration];
      [configuration thumbnailHeight];
    }

    v14 = [[HMIVideoFrame alloc] initWithSampleBuffer:?];
    frameThumbnailSampler = [HMIVideoFrame compressedFrameWithScale:v14 quality:"compressedFrameWithScale:quality:error:" error:?];

    thumbnailBuffer = [(HMIVideoAnalyzerServer *)self thumbnailBuffer];
    [thumbnailBuffer addObject:?];

LABEL_7:
  }

LABEL_9:
}

- (void)assetWriter:(id)writer didOutputInitializationSegment:(id)segment
{
  writerCopy = writer;
  segmentCopy = segment;
  assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (assetWriter == writerCopy)
  {
    [(HMIVideoAnalyzerServer *)self setInitializationSegment:?];
  }

  else
  {
    timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

    if (timelapseAssetWriter == writerCopy)
    {
      [(HMIVideoAnalyzerServer *)self setTimelapseInitializationSegment:?];
    }
  }
}

- (void)assetWriter:(id)writer didOutputSeparableSegment:(id)segment segmentReport:(id)report
{
  v62 = *MEMORY[0x277D85DE8];
  writerCopy = writer;
  segmentCopy = segment;
  reportCopy = report;
  trackReports = [reportCopy trackReports];
  v12 = [trackReports na_firstObjectPassingTest:?];

  memset(&v60, 0, sizeof(v60));
  firstVideoSampleInformation = [v12 firstVideoSampleInformation];
  if (firstVideoSampleInformation)
  {
    [&start presentationTimeStamp];
    if (v12)
    {
LABEL_3:
      [&duration duration];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&start, 0, 24);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  memset(&duration, 0, sizeof(duration));
LABEL_6:
  CMTimeRangeMake(&v60, &start.start, &duration);

  firstVideoSampleInformation2 = [v12 firstVideoSampleInformation];
  [firstVideoSampleInformation2 offset];
  [firstVideoSampleInformation2 length];
  timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

  if (timelapseAssetWriter == writerCopy)
  {
    v49 = [HMIVideoFragment alloc];
    timelapseInitializationSegment = [(HMIVideoAnalyzerServer *)self timelapseInitializationSegment];
    start = v60;
    v24 = [HMIVideoFragment initWithInitializationSegment:v49 separableSegment:"initWithInitializationSegment:separableSegment:timeRange:firstVideoSampleByteRange:" timeRange:? firstVideoSampleByteRange:?];

    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidCreateTimelapseFragment:?];
    ++self->_numDidCreateTimelapseFragments;
  }

  else
  {
    v56 = reportCopy;
    v57 = writerCopy;
    v58 = segmentCopy;
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      start = v60;
      v20 = HMICMTimeRangeDescription(&start);
      frameAnalyzerFrameResultBuffer = [(HMIVideoAnalyzerServer *)selfCopy frameAnalyzerFrameResultBuffer];
      thumbnailBuffer = [(HMIVideoAnalyzerServer *)selfCopy thumbnailBuffer];
      LODWORD(start.start.value) = 138544130;
      *(&start.start.value + 4) = v19;
      LOWORD(start.start.flags) = 2112;
      *(&start.start.flags + 2) = v20;
      HIWORD(start.start.epoch) = 2112;
      start.duration.value = frameAnalyzerFrameResultBuffer;
      LOWORD(start.duration.timescale) = 2112;
      *(&start.duration.timescale + 2) = thumbnailBuffer;
      _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Bundling Fragment Result, timeRange: %@, frames: [%@], thumbnails [%@]", &start, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    frameAnalyzerFrameResultBuffer2 = [(HMIVideoAnalyzerServer *)selfCopy frameAnalyzerFrameResultBuffer];
    start = v60;
    v24 = [frameAnalyzerFrameResultBuffer2 extractObjectsInTimeRange:?];

    frameAnalyzerFrameResultBuffer3 = [(HMIVideoAnalyzerServer *)selfCopy frameAnalyzerFrameResultBuffer];
    v26 = [frameAnalyzerFrameResultBuffer3 count];

    if (v26)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        frameAnalyzerFrameResultBuffer4 = [(HMIVideoAnalyzerServer *)v28 frameAnalyzerFrameResultBuffer];
        LODWORD(start.start.value) = 138543618;
        *(&start.start.value + 4) = v30;
        LOWORD(start.start.flags) = 2112;
        *(&start.start.flags + 2) = frameAnalyzerFrameResultBuffer4;
        _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_ERROR, "%{public}@Analyzer frame result buffer should be empty. %@", &start, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      frameAnalyzerFrameResultBuffer5 = [(HMIVideoAnalyzerServer *)v28 frameAnalyzerFrameResultBuffer];
      [frameAnalyzerFrameResultBuffer5 removeAllObjects];
    }

    thumbnailBuffer2 = [(HMIVideoAnalyzerServer *)selfCopy thumbnailBuffer];
    start = v60;
    v34 = [thumbnailBuffer2 extractObjectsInTimeRange:?];

    thumbnailBuffer3 = [(HMIVideoAnalyzerServer *)selfCopy thumbnailBuffer];
    v36 = [thumbnailBuffer3 count];

    if (v36)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        thumbnailBuffer = v38->_thumbnailBuffer;
        LODWORD(start.start.value) = 138543618;
        *(&start.start.value + 4) = v40;
        LOWORD(start.start.flags) = 2112;
        *(&start.start.flags + 2) = thumbnailBuffer;
        _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_ERROR, "%{public}@Thumbnail buffer should be empty. %@", &start, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      thumbnailBuffer4 = [(HMIVideoAnalyzerServer *)v38 thumbnailBuffer];
      [thumbnailBuffer4 removeAllObjects];
    }

    v43 = [HMIVideoFragment alloc];
    initializationSegment = [(HMIVideoAnalyzerServer *)selfCopy initializationSegment];
    start = v60;
    v45 = [HMIVideoFragment initWithInitializationSegment:v43 separableSegment:"initWithInitializationSegment:separableSegment:timeRange:firstVideoSampleByteRange:" timeRange:? firstVideoSampleByteRange:?];

    *&start.start.value = *&v60.start.value;
    start.start.epoch = v60.start.epoch;
    v46 = [(HMIVideoAnalyzerServer *)selfCopy dynamicConfigurationForTime:?];
    v47 = [HMIVideoAnalyzerResultOutcome alloc];
    [(HMIVideoAnalyzerServer *)selfCopy analysisFPS];
    v48 = [HMIVideoAnalyzerResultOutcome initWithCode:v47 analysisFPS:"initWithCode:analysisFPS:message:" message:?];
    if ([v46 decodeMode] <= 1)
    {
      v51 = [HMIVideoAnalyzerResultOutcome alloc];
      [(HMIVideoAnalyzerServer *)selfCopy analysisFPS];
      v52 = [HMIVideoAnalyzerResultOutcome initWithCode:v51 analysisFPS:"initWithCode:analysisFPS:message:" message:?];

      v48 = v52;
    }

    v53 = [HMIVideoAnalyzerFragmentResult alloc];
    v54 = [MEMORY[0x277CBEB98] set];
    v55 = [HMIVideoAnalyzerFragmentResult initWithFragment:v53 events:"initWithFragment:events:frameResults:thumbnails:configuration:outcome:" frameResults:? thumbnails:? configuration:? outcome:?];

    [(HMIVideoAnalyzerServer *)selfCopy _notifyDelegateDidAnalyzeFragmentWithResult:?];
    ++selfCopy->_numDidAnalyzeFragments;

    writerCopy = v57;
    segmentCopy = v58;
    reportCopy = v56;
  }
}

void *__78__HMIVideoAnalyzerServer_assetWriter_didOutputSeparableSegment_segmentReport___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaType];
  v3 = [v2 isEqualToString:?];

  return v3;
}

- (void)encoder:(id)encoder didFailWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  errorCopy = error;
  timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (timelapseEncoder == encoderCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Timelapse encoder failed, ignoring: error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMIVideoAnalyzerServer *)selfCopy setTimelapseEncoder:?];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:?];
  }
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  watchdogTimer = [(HMIVideoAnalyzerServer *)self watchdogTimer];

  if (watchdogTimer == fireCopy)
  {
    [(HMIVideoAnalyzerServer *)self timeSinceLastFragmentWasReceived];
    if (v6 > 60.0)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:*&v6];
      v9 = [v7 hmiErrorWithCode:? description:?];

      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:?];
    }
  }
}

- (void)_notifyDelegateDidAnalyzeFragmentWithResult:(id)result
{
  v23 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    fragment = [resultCopy fragment];
    outcome = [resultCopy outcome];
    maxConfidenceEvents = [resultCopy maxConfidenceEvents];
    *buf = 138544130;
    v16 = v8;
    v17 = 2112;
    v18 = fragment;
    v19 = 2112;
    v20 = outcome;
    v21 = 2112;
    v22 = maxConfidenceEvents;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Generated Fragment: %@ Outcome: %@ Max Confidence Events: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  state = [(HMIVideoAnalyzerServer *)selfCopy state];
  [HMIAnalytics videoAnalyzerDidAnalyzeFragmentWithResult:"videoAnalyzerDidAnalyzeFragmentWithResult:state:" state:?];

  delegate = [(HMIVideoAnalyzer *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:? didAnalyzeFragmentWithResult:?];
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [HMIVideoAnalyzerServer _produceResult:selfCopy withArguments:"_produceResult:withArguments:"];
}

- (void)_notifyDelegateDidAnalyzeFrameWithResult:(id)result
{
  v7 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  delegate = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:? didAnalyzeFrameWithResult:?];
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:resultCopy count:v7];
  [HMIVideoAnalyzerServer _produceResult:"_produceResult:withArguments:" withArguments:?];
}

- (void)_notifyDelegateDidCreateTimelapseFragment:(id)fragment
{
  v8 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  state = [(HMIVideoAnalyzerServer *)self state];
  [HMIAnalytics videoAnalyzerDidCreateTimelapseFragment:"videoAnalyzerDidCreateTimelapseFragment:state:" state:?];

  delegate = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:? didCreateTimelapseFragment:?];
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:fragmentCopy count:v8];
  [HMIVideoAnalyzerServer _produceResult:"_produceResult:withArguments:" withArguments:?];
}

- (void)_notifyDelegateDidFailWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Analyzer Failed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMIVideoAnalyzerServer *)selfCopy hasFailed])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Analyzer is already in a failed state.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    state = [(HMIVideoAnalyzerServer *)selfCopy state];
    [HMIAnalytics videoAnalyzerDidTerminateWithError:"videoAnalyzerDidTerminateWithError:state:" state:?];

    [(HMIVideoAnalyzerServer *)selfCopy setHasFailed:?];
    delegate = [(HMIVideoAnalyzer *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate analyzer:? didFailWithError:?];
    }

    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [HMIVideoAnalyzerServer _produceResult:selfCopy withArguments:"_produceResult:withArguments:"];
  }
}

- (void)_notifyDelegateDidProduceAnalysisStateUpdate:(id)update
{
  v7 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  delegate = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:? didProduceAnalysisStateUpdate:?];
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:updateCopy count:v7];
  [HMIVideoAnalyzerServer _produceResult:"_produceResult:withArguments:" withArguments:?];
}

- (void)_produceResult:(SEL)result withArguments:(id)arguments
{
  v24 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  delegate = [(HMIVideoAnalyzer *)self delegate];
  if ([delegate conformsToProtocol:?])
  {
    v8 = delegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    v20 = @"selector";
    v10 = NSStringFromSelector(result);
    v21 = @"arguments";
    v22 = v10;
    v23 = argumentsCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Sending Result: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v9 analyzer:? didProduceResult:?];
  }
}

- (id)state
{
  currentPTS = self->_currentPTS;
  v19 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:?];
  v17 = [HMIVideoAnalyzerState alloc];
  configuration = [(HMIVideoAnalyzer *)self configuration];
  identifier = [(HMIVideoAnalyzer *)self identifier];
  [(HMIVideoAnalyzerServer *)self monitored];
  [(HMIVideoAnalyzerServer *)self analysisFPS];
  [(HMIVideoAnalyzerServer *)self timeSinceAnalyzerStarted];
  [(HMIVideoAnalyzerServer *)self timeSinceLastFragmentWasReceived];
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer fillRatio];
  commandBuffer2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer2 size];
  [(HMIVideoAnalyzerServer *)self delay];
  [&currentPTS currentPTS];
  numDecodedSamples = self->_numDecodedSamples;
  numDidAnalyzeFrames = self->_numDidAnalyzeFrames;
  numDidAnalyzeFragments = self->_numDidAnalyzeFragments;
  numDidAnalyzePackages = self->_numDidAnalyzePackages;
  numDidCreateTimelapseFragments = self->_numDidCreateTimelapseFragments;
  frameAnalyzer = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [frameAnalyzer averageAnalysisTime];
  encode = [(HMIVideoAnalyzerServer *)self encode];
  encoder = [(HMIVideoAnalyzerServer *)self encoder];
  BYTE1(v13) = encoder != 0;
  LOBYTE(v13) = encode;
  v11 = [HMIVideoAnalyzerState initWithConfiguration:v17 dynamicConfiguration:"initWithConfiguration:dynamicConfiguration:identifier:monitored:analysisFPS:timeSinceAnalyzerStarted:timeSinceLastFragmentWasReceived:bufferFillRatio:bufferSize:delay:currentPTS:numDecodedSamples:numDidAnalyzeFrames:numDidAnalyzeFragments:numDidAnalyzePackages:numDidCreateTimelapseFragments:averageAnalysisTime:encode:encoder:decodeMode:" identifier:numDecodedSamples monitored:numDidAnalyzeFrames analysisFPS:numDidAnalyzeFragments timeSinceAnalyzerStarted:numDidAnalyzePackages timeSinceLastFragmentWasReceived:numDidCreateTimelapseFragments bufferFillRatio:v13 bufferSize:[(HMIVideoAnalyzerServer *)self decodeMode] delay:? currentPTS:? numDecodedSamples:? numDidAnalyzeFrames:? numDidAnalyzeFragments:? numDidAnalyzePackages:? numDidCreateTimelapseFragments:? averageAnalysisTime:? encode:? encoder:? decodeMode:?];

  return v11;
}

- (double)timeSinceAnalyzerStarted
{
  startDate = [(HMIVideoAnalyzerServer *)self startDate];
  [startDate timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (double)timeSinceLastFragmentWasReceived
{
  lastFragmentReceivedDate = [(HMIVideoAnalyzerServer *)self lastFragmentReceivedDate];
  [lastFragmentReceivedDate timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (double)delay
{
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer delay];
  v4 = v3;

  return v4;
}

- (void)setAnalysisFPS:(double)s
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_analysisFPS != s)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      analysisFPS = self->_analysisFPS;
      v11 = 138543874;
      v12 = v8;
      v13 = 2048;
      v14 = analysisFPS;
      v15 = 2048;
      sCopy = s;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@analysisFPS changing from: %f to: %f", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  self->_analysisFPS = s;
  frameSelector = [(HMIVideoAnalyzerServer *)self frameSelector];
  [frameSelector setSampleRate:?];
}

- (void)setDecodeMode:(int64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_decodeMode != mode)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMIVideoAnalyzerDecodeModeAsString(self->_decodeMode);
      v10 = HMIVideoAnalyzerDecodeModeAsString(mode);
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@decodeMode changing from: %@ to %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  self->_decodeMode = mode;
}

- (void)setBoosted:(BOOL)boosted
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Analyzer boosting is not supported on this platform.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  selfCopy->_boosted = boosted;
}

- (unint64_t)status
{
  if ([(HMIVideoAnalyzerServer *)self hasFailed])
  {
    return 3;
  }

  if ([(HMIVideoAnalyzerServer *)self isCancelled])
  {
    return 2;
  }

  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  isEmpty = [commandBuffer isEmpty];

  return isEmpty ^ 1;
}

@end