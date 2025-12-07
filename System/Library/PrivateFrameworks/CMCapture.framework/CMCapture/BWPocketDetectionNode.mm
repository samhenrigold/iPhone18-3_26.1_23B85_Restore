@interface BWPocketDetectionNode
+ (void)initialize;
- (BWPocketDetectionNode)initWithMetalCommandQueue:(id)queue clientApplicationID:(id)d;
- (int)_allocateResources;
- (int)_detectPocket:(opaqueCMSampleBuffer *)pocket;
- (void)accidentalActivationMitigationSessionStateDidChange:(id)change;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWPocketDetectionNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWPocketDetectionNode)initWithMetalCommandQueue:(id)queue clientApplicationID:(id)d
{
  v17.receiver = self;
  v17.super_class = BWPocketDetectionNode;
  v6 = [(BWNode *)&v17 init];
  v7 = v6;
  if (!queue)
  {
    [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
    goto LABEL_15;
  }

  if (!d)
  {
    [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
    goto LABEL_15;
  }

  if (v6)
  {
    v8 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v6];
    [(BWNodeInput *)v8 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v8 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v8 primaryMediaConfiguration] setRetainedBufferCount:1];
    [(BWNode *)v7 addInput:v8];
    v9 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
    [(BWNodeOutput *)v9 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v9 setPassthroughMode:1];
    [(BWNode *)v7 addOutput:v9];
    v7->_coreMotionSuppressionStateLock._os_unfair_lock_opaque = 0;
    v10 = [FigWeakReference weakReferenceToObject:v7];
    v11 = [BWCoreMotionSuppressionStateMonitor alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__BWPocketDetectionNode_initWithMetalCommandQueue_clientApplicationID___block_invoke;
    v16[3] = &unk_1E7990458;
    v16[4] = v10;
    v12 = [(BWCoreMotionSuppressionStateMonitor *)v11 initWithSuppressionStateChangeHandler:v16];
    v7->_coreMotionSuppressionStateMonitor = v12;
    if (v12)
    {
      v13 = [[BWPocketDetectionFFTProcessor alloc] initWithMetalCommandQueue:queue];
      v7->_fftProcessor = v13;
      if (v13)
      {
        v7->_detectionQueue = FigDispatchQueueCreateWithPriority();
        v7->_cumulativeEnergyHistory = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7->_cumulativeEnergyHistoryLength = 10;
        HIDWORD(v7->_lastDetectionFramePTS.epoch) = 1036831949;
        HIDWORD(v7->_firstFramePts.epoch) = 1088421888;
        *&v7->_stopDetection = 1089260749;
        LOBYTE(v7->_cumulativeEnergyInPocketThreshold) = 1;
        v7->_sbMitigationSessionDurationInSeconds = 5.0;
        v7->_suppressFacedownSetdownAccidentals = 1;
        if (LOBYTE(v7->_cumulativeEnergyInPocketThreshold) != 1 || (v14 = [objc_alloc(MEMORY[0x1E69D4180]) initWithBundleIdentifier:d callOutQueue:v7->_detectionQueue], (v7->_sbAccidentalActivationMitigationClientSession = v14) != 0))
        {
          v7->_suppressionStateStrings = &unk_1F2248250;
          [(BWNode *)v7 setSupportsLiveReconfiguration:1];
          return v7;
        }

        [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
      }

      else
      {
        [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
      }
    }

    else
    {
      [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
    }

LABEL_15:

    return 0;
  }

  return v7;
}

void __71__BWPocketDetectionNode_initWithMetalCommandQueue_clientApplicationID___block_invoke(uint64_t a1, uint32_t a2, uint32_t a3, double a4)
{
  v7 = [*(a1 + 32) referencedObject];
  os_unfair_lock_lock((v7 + 160));
  *(v7 + 136) = a2;
  *(v7 + 144) = a4;
  *(v7 + 152) = a3;

  os_unfair_lock_unlock((v7 + 160));
}

- (void)dealloc
{
  if (self->_resourcesAllocated)
  {
    [(BWPocketDetectionNode *)self _cleanupResources];
  }

  if (LOBYTE(self->_cumulativeEnergyInPocketThreshold) == 1)
  {
  }

  v3.receiver = self;
  v3.super_class = BWPocketDetectionNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if ([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] width]< 0x2D0 || [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]<= 0x2CF)
  {
    if (dword_1EB58E520)
    {
      v13 = 0;
      v12 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    LOBYTE(self->_detectionEnabledDurationInSeconds) = 1;
  }

  if (dword_1EB58E520)
  {
    v13 = 0;
    v12 = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = v13;
    if (os_log_type_enabled(v4, v12))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v10 = 136315138;
      v11 = "[BWPocketDetectionNode prepareForCurrentConfigurationToBecomeLive]";
      LODWORD(v8) = 12;
      v7 = &v10;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWCoreMotionSuppressionStateMonitor *)self->_coreMotionSuppressionStateMonitor start:v7];
  v9.receiver = self;
  v9.super_class = BWPocketDetectionNode;
  [(BWNode *)&v9 prepareForCurrentConfigurationToBecomeLive];
}

void *__53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _allocateResources];
  *(*(a1 + 32) + 232) = 1;
  return result;
}

void *__53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_39(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (dword_1EB58E520)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  [*(v2 + 280) addObserver:{v6, v7}];
  result = [*(*(a1 + 32) + 280) activateSessionWithDuration:0 accidentalActivationMitigationSessionCancellationPolicyClassName:v3];
  *(*(a1 + 32) + 288) = 1;
  return result;
}

void __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[264])
  {
    if (v3)
    {
      CFRelease(*(a1 + 40));
    }
  }

  else
  {
    [v2 _detectPocket:v3];
  }

  *(*(a1 + 32) + 232) = 1;
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    [(BWCoreMotionSuppressionStateMonitor *)self->_coreMotionSuppressionStateMonitor stop];
    [(BWPocketDetectionNode *)self _waitForDetectionToComplete];
    if (LOBYTE(self->_cumulativeEnergyInPocketThreshold) == 1)
    {
      detectionQueue = self->_detectionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__BWPocketDetectionNode_didReachEndOfDataForConfigurationID_input___block_invoke;
      block[3] = &unk_1E798F870;
      block[4] = self;
      dispatch_sync(detectionQueue, block);
    }

    if ([(SBSAccidentalActivationMitigationClientSession *)self->_sbAccidentalActivationMitigationClientSession state]== 3 && dword_1EB58E520 != 0)
    {
      v15 = 0;
      v14 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_ppsData.detectionSessionStopTime = CFAbsoluteTimeGetCurrent();
    v12 = *&self->_ppsData.detectionSessionStartTime;
    v13 = *&self->_ppsData.inPocket;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __pdn_sendPPSData_block_invoke;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  v10.receiver = self;
  v10.super_class = BWPocketDetectionNode;
  [(BWNode *)&v10 didReachEndOfDataForConfigurationID:d input:input];
}

void *__67__BWPocketDetectionNode_didReachEndOfDataForConfigurationID_input___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 288) == 1)
  {
    return [*(v1 + 280) removeObserver:?];
  }

  return result;
}

- (int)_detectPocket:(opaqueCMSampleBuffer *)pocket
{
  ImageBuffer = CMSampleBufferGetImageBuffer(pocket);
  v6 = CMGetAttachment(pocket, *off_1E798A3C8, 0);
  v7 = *(MEMORY[0x1E695F058] + 8);
  rect.origin.x = *MEMORY[0x1E695F058];
  rect.origin.y = v7;
  rect.size.width = CVPixelBufferGetWidth(ImageBuffer);
  rect.size.height = CVPixelBufferGetHeight(ImageBuffer);
  CGRectMakeWithDictionaryRepresentation([v6 objectForKeyedSubscript:*off_1E798B7A0], &rect);
  v12 = 0.0;
  [(BWPocketDetectionFFTProcessor *)self->_fftProcessor processFFTOnInputPixelBuffer:ImageBuffer usingSourceRect:&v12 cumulativeScoreOut:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  self->_cumulativeEnergy = log10f(v12);
  if ([(NSMutableArray *)self->_cumulativeEnergyHistory count]== self->_cumulativeEnergyHistoryLength)
  {
    [(NSMutableArray *)self->_cumulativeEnergyHistory removeObjectAtIndex:0];
  }

  *&v8 = self->_cumulativeEnergy;
  -[NSMutableArray addObject:](self->_cumulativeEnergyHistory, "addObject:", [MEMORY[0x1E696AD98] numberWithFloat:v8]);
  [-[NSMutableArray valueForKeyPath:](self->_cumulativeEnergyHistory valueForKeyPath:{@"@max.floatValue", "floatValue"}];
  self->_cumulativeEnergyFiltered = v9;
  v10 = self->_coreMotionSuppressionState == 1 && ([(NSMutableArray *)self->_cumulativeEnergyHistory count]>= 5 && self->_cumulativeEnergyFiltered < *&self->_stopDetection || self->_suppressFacedownSetdownAccidentals && self->_coreMotionFacedownState == 1);
  self->_inPocketConsolidatedDecision = v10;
  if (pocket)
  {
    CFRelease(pocket);
  }

  return 0;
}

- (void)accidentalActivationMitigationSessionStateDidChange:(id)change
{
  state = [(SBSAccidentalActivationMitigationClientSession *)self->_sbAccidentalActivationMitigationClientSession state];
  if (state == 3)
  {
    if (!dword_1EB58E520)
    {
      return;
    }

    goto LABEL_9;
  }

  if (state == 2)
  {
    if (!dword_1EB58E520)
    {
      return;
    }

    goto LABEL_9;
  }

  if (state == 1 && dword_1EB58E520)
  {
LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (int)_allocateResources
{
  allocateResources = [(BWPocketDetectionFFTProcessor *)self->_fftProcessor allocateResources];
  v4 = allocateResources;
  if (!self->_fftProcessor)
  {
    [BWPocketDetectionNode _allocateResources];
    if (!v4)
    {
      return v4;
    }

    goto LABEL_3;
  }

  if (allocateResources)
  {
LABEL_3:
    [(BWPocketDetectionNode *)self _cleanupResources];
  }

  return v4;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, @"CaptureInitiatedOnce", 0);
  if ((LOBYTE(self->_detectionEnabledDurationInSeconds) & 1) == 0)
  {
    if ([v6 BOOLValue])
    {
      LOBYTE(self->_detectionEnabledDurationInSeconds) = 1;
      self->_inPocketConsolidatedDecision = 0;
      self->_ppsData.inPocket = 0;
      if (dword_1EB58E520)
      {
        LODWORD(sampleBufferOut) = 0;
        v107 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_3_18();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    memset(&v105, 0, sizeof(v105));
    PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v105, buffer);
    if ((self->_firstFramePts.timescale & 1) == 0)
    {
      OUTLINED_FUNCTION_2_24(PresentationTimeStamp, v9, v10, v11, v12, v13, v14, v15, v16, v59, v65, v71, v77, v78, v79, v80, selfCopy3, v82, v83.value, *&v83.timescale, v83.epoch, v84.value, *&v84.timescale, v84.epoch, v85, v86, v87, v88, selfCopy2, rhs.value, *&rhs.timescale, rhs.epoch, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, v94.value, *&v94.timescale, v94.epoch, block, v96, v97, v98, selfCopy, sampleBufferOut, v101, v102, v103, v104.value, *&v104.timescale, v104.epoch, v17, v105.value);
      self->_ppsData.detectionSessionStartTime = CFAbsoluteTimeGetCurrent();
    }

    memset(&v104, 0, sizeof(v104));
    v18 = CMTimeMakeWithSeconds(&v104, 4.0, v105.timescale);
    OUTLINED_FUNCTION_1_29(v18, v19, v20, v21, v22, v23, v24, v25, v59, v65, v71, v77, SBYTE1(v77), v78, v79, v80, selfCopy3, v82, v83.value, *&v83.timescale, v83.epoch, v84.value, *&v84.timescale, v84.epoch, v85, v86, v87, v88, selfCopy2, rhs.value, *&rhs.timescale, rhs.epoch, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, v94.value, *&v94.timescale, v94.epoch, block, v96, v97, v98, selfCopy, sampleBufferOut, v101, v102, v103, v104.value, *&v104.timescale, v104.epoch, *&v105.value, v105.epoch);
    if (OUTLINED_FUNCTION_4_22(v104.epoch, v60, v66, v72, v77, v78, v79, v80, selfCopy3, v82, v83.value, *&v83.timescale, v83.epoch, v84.value, *&v84.timescale, v84.epoch, v85, v86, v87, v88, selfCopy2, v104.value, *&v104.timescale, rhs.epoch) >= 1)
    {
      if (!self->_resourcesAllocated)
      {
        *(&self->_inPocketConsolidatedDecision + 4) = v105;
        LOBYTE(self->_detectionIntervalInSeconds) = 0;
        detectionQueue = self->_detectionQueue;
        block = MEMORY[0x1E69E9820];
        v96 = 3221225472;
        v97 = __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke;
        v98 = &unk_1E798F870;
        selfCopy = self;
        dispatch_async(detectionQueue, &block);
        self->_resourcesAllocated = 1;
      }

      memset(&v94, 0, sizeof(v94));
      v27 = CMTimeMakeWithSeconds(&v94, *(&self->_firstFramePts.epoch + 1), v105.timescale);
      OUTLINED_FUNCTION_1_29(v27, v28, v29, v30, v31, v32, v33, v34, v61, v67, v73, v77, SBYTE1(v77), v78, v79, v80, selfCopy3, v82, v83.value, *&v83.timescale, v83.epoch, v84.value, *&v84.timescale, v84.epoch, v85, v86, v87, v88, selfCopy2, rhs.value, *&rhs.timescale, rhs.epoch, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, v94.value, *&v94.timescale, v94.epoch, block, v96, v97, v98, selfCopy, sampleBufferOut, v101, v102, v103, v104.value, *&v104.timescale, v104.epoch, *&v105.value, v105.epoch);
      if (OUTLINED_FUNCTION_4_22(v94.epoch, v62, v68, v74, v77, v78, v79, v80, selfCopy3, v82, v83.value, *&v83.timescale, v83.epoch, v84.value, *&v84.timescale, v84.epoch, v85, v86, v87, v88, selfCopy2, v94.value, *&v94.timescale, rhs.epoch) >= 1)
      {
        LOBYTE(self->_detectionEnabledDurationInSeconds) = 1;
        self->_ppsData.inPocket = self->_inPocketConsolidatedDecision;
        if (dword_1EB58E520)
        {
          LODWORD(sampleBufferOut) = 0;
          v107 = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v36 = sampleBufferOut;
          if (os_log_type_enabled(v35, v107))
          {
            v37 = v36;
          }

          else
          {
            v37 = v36 & 0xFFFFFFFE;
          }

          if (v37)
          {
            v38 = *(&self->_firstFramePts.epoch + 1);
            inPocketConsolidatedDecision = self->_inPocketConsolidatedDecision;
            v40 = [(NSArray *)self->_suppressionStateStrings objectAtIndexedSubscript:self->_coreMotionSuppressionState];
            cumulativeEnergyFiltered = self->_cumulativeEnergyFiltered;
            v42 = cumulativeEnergyFiltered <= *&self->_stopDetection;
            coreMotionFacedownState = self->_coreMotionFacedownState;
            LODWORD(rhs.value) = 136316674;
            *(&rhs.value + 4) = "[BWPocketDetectionNode renderSampleBuffer:forInput:]";
            LOWORD(rhs.flags) = 2050;
            *(&rhs.flags + 2) = v38;
            HIWORD(rhs.epoch) = 1026;
            LODWORD(v91) = inPocketConsolidatedDecision;
            WORD2(v91) = 2114;
            *(&v91 + 6) = v40;
            HIWORD(v91) = 1026;
            LODWORD(v92) = v42;
            WORD2(v92) = 2050;
            *(&v92 + 6) = cumulativeEnergyFiltered;
            HIWORD(v92) = 1026;
            LODWORD(v93) = coreMotionFacedownState;
            LODWORD(v69) = 60;
            p_rhs = &rhs;
            OUTLINED_FUNCTION_5_0(v37, v44, &lhs, v45, &dword_1AC90E000);
          }

          OUTLINED_FUNCTION_3_18();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (LOBYTE(self->_cumulativeEnergyInPocketThreshold) == 1 && self->_inPocketConsolidatedDecision)
        {
          v46 = self->_detectionQueue;
          v85 = MEMORY[0x1E69E9820];
          v86 = 3221225472;
          v87 = __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_39;
          v88 = &unk_1E798F870;
          selfCopy2 = self;
          dispatch_async(v46, &v85);
        }
      }

      memset(&v84, 0, sizeof(v84));
      lhs = v105;
      rhs = *(&self->_inPocketConsolidatedDecision + 4);
      CMTimeSubtract(&v84, &lhs, &rhs);
      memset(&v83, 0, sizeof(v83));
      CMTimeMakeWithSeconds(&v83, *(&self->_lastDetectionFramePTS.epoch + 1), v105.timescale);
      lhs = v84;
      v47 = OUTLINED_FUNCTION_4_22(v83.epoch, p_rhs, v69, v75, v77, v78, v79, v80, selfCopy3, v82, v83.value, *&v83.timescale, v83.epoch, v84.value, *&v84.timescale, v84.epoch, v85, v86, v87, v88, selfCopy2, v83.value, *&v83.timescale, rhs.epoch);
      if (v47 >= 1 && (LOBYTE(self->_detectionEnabledDurationInSeconds) & 1) == 0 && LOBYTE(self->_detectionIntervalInSeconds) == 1)
      {
        LOBYTE(self->_detectionIntervalInSeconds) = 0;
        OUTLINED_FUNCTION_2_24(v47, v48, v49, v50, v51, v52, v53, v54, v55, v64, v70, v76, v77, v78, v79, v80, selfCopy3, v82, v83.value, *&v83.timescale, v83.epoch, v84.value, *&v84.timescale, v84.epoch, v85, v86, v87, v88, selfCopy2, rhs.value, *&rhs.timescale, rhs.epoch, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, v94.value, *&v94.timescale, v94.epoch, block, v96, v97, v98, selfCopy, sampleBufferOut, v101, v102, v103, v104.value, *&v104.timescale, v104.epoch, v56, v105.value);
        lhs.value = 0;
        rhs.value = 0;
        BWOverCaptureSampleBufferUnpackAndRetain(buffer, 0, &rhs, &lhs, 0, 0);
        value = lhs.value;
        if (rhs.value && [objc_msgSend(CMGetAttachment(rhs.value *off_1E798A3C8])
        {
          value = rhs.value;
        }

        sampleBufferOut = 0;
        BWCMSampleBufferCreateCopyIncludingMetadata(value, &sampleBufferOut);
        v58 = self->_detectionQueue;
        v77 = MEMORY[0x1E69E9820];
        v78 = 3221225472;
        v79 = __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_40;
        v80 = &unk_1E7990178;
        selfCopy3 = self;
        v82 = sampleBufferOut;
        dispatch_async(v58, &v77);
        if (lhs.value)
        {
          CFRelease(lhs.value);
        }

        if (rhs.value)
        {
          CFRelease(rhs.value);
        }
      }
    }
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

@end