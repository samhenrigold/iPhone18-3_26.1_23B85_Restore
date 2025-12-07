@interface BWPhotonicEngineNodeResourceCoordinator
+ (void)initialize;
- (BOOL)hasSuccessfullySetupProcessorControllersAndMemoryResources;
- (BWPhotonicEngineNodeResourceCoordinator)initWithNodeConfiguration:(id)configuration nodeInput:(id)input nodeOutput:(id)output;
- (id)_inferenceOutputPixelBufferPoolForAttachedMediaKey:(void *)key output:;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type;
- (id)attachedMediaFromInferencesOrSampleBuffer:(opaqueCMSampleBuffer *)buffer attachedMediaKeys:(id)keys;
- (id)pixelBufferProviderForInferencesWithResolutionFlavor:(int)flavor;
- (id)pixelBufferProviderForProcessorController:(id)controller processorInput:(id)input type:(unint64_t)type dimensions:(id)dimensions pixelFormat:(unsigned int)format attachedMediaKey:(id)key;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
- (id)processorControllersForSharedExternalMemoryResource;
- (id)syncGetInferencesForInferenceInputBufferType:(unint64_t)type;
- (id)waitAndSafelyGetProcessorControllerForType:(unint64_t)type;
- (int)liveReconfigureIfNeeded;
- (int)setupProcessorControllersAndMemoryResources;
- (unint64_t)_deepFusionEnhancedResolutionOutputDimensionsForOutput:(uint64_t)output;
- (unint64_t)_disparityProcessorInputDimensionsForInputVideoFormat:(uint64_t)format;
- (unint64_t)_resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:(unint64_t)dimensions standardSoftISPOutputDimensions:;
- (void)_ensureProcessorCoordinatorSetupForPostponedProcessors;
- (void)_requiredResolutionFlavorsForSharedExternalMemoryResourceWithSettings:(void *)result;
- (void)asyncSetInference:(id)inference inferenceAttachmentKey:(id)key;
- (void)asyncSetInferenceAttachedMediaMetadata:(id)metadata;
- (void)asyncSetInferenceBuffer:(__CVBuffer *)buffer metadata:(id)metadata inferenceAttachedMediaKey:(id)key;
- (void)cancelAllProcessing;
- (void)clearEnhancedResolutionPortraitSemaphoreWithError:(int)error;
- (void)createAndWaitOnEnhancedResolutionPortraitSemaphore;
- (void)dealloc;
- (void)flushSoftISPOutputBufferPools;
- (void)flushUltraHighResolutionBufferPools;
- (void)kickoffAnyPostonedResourceAllocations;
- (void)postponedProcessorForType:(unint64_t)type safelyExecuteBlockWhenReady:(id)ready;
- (void)prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:(id)settings;
- (void)purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:(id)settings;
- (void)releaseResources;
- (void)releaseResourcesWithSettings:(id)settings;
- (void)syncMergeInferencesWithSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings;
- (void)syncReleaseInferencesForInferenceInputBufferType:(unint64_t)type;
- (void)unsafeSetInferences:(id)inferences forInferenceInputBufferType:(unint64_t)type;
@end

@implementation BWPhotonicEngineNodeResourceCoordinator

- (BOOL)hasSuccessfullySetupProcessorControllersAndMemoryResources
{
  os_unfair_lock_lock(&self->_resourceCoordinatorLock);
  hasSuccessfullySetupProcessorControllersAndMemoryResources = self->_hasSuccessfullySetupProcessorControllersAndMemoryResources;
  os_unfair_lock_unlock(&self->_resourceCoordinatorLock);
  return hasSuccessfullySetupProcessorControllersAndMemoryResources;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWPhotonicEngineNodeResourceCoordinator)initWithNodeConfiguration:(id)configuration nodeInput:(id)input nodeOutput:(id)output
{
  v11.receiver = self;
  v11.super_class = BWPhotonicEngineNodeResourceCoordinator;
  v8 = [(BWStillImageProcessorCoordinator *)&v11 initWithProcessorControllers:0];
  if (v8)
  {
    v8->_output = output;
    v8->_input = input;
    v8->_resourceCoordinatorLock._os_unfair_lock_opaque = 0;
    configurationCopy = configuration;
    v8->_nodeConfiguration = configurationCopy;
    [(BWStillImageNodeConfiguration *)configurationCopy figThreadPriority];
    v8->_workerQueue = FigDispatchQueueCreateWithPriority();
    [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
    v8->_emitQueue = FigDispatchQueueCreateWithPriority();
    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration postponeSelectResourceAlloctions])
    {
      [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
      v8->_postponedResourceSetupQueue = FigDispatchQueueCreateWithPriority();
      v8->_postponedResourceSetupGroup = dispatch_group_create();
    }

    [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
    v8->_inferenceControllerQueue = FigDispatchQueueCreateWithPriority();
    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration inferenceControllerConfiguration])
    {
      v8->_inferenceControllerGroup = dispatch_group_create();
    }

    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration stereoDisparityProcessorControllerConfiguration])
    {
      [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
      v8->_stereoDisparityProcessorControllerQueue = FigDispatchQueueCreateWithPriority();
    }

    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration deferredProcessorControllerConfiguration])
    {
      [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
      v8->_deferredProcessorControllerQueue = FigDispatchQueueCreateWithPriority();
    }

    v8->_useSharedExternalMemoryResourceForProcessorControllers = 1;
    v8->_postponedProcessorTypes = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_enhancedResolutionPortraitSemaphoreLock._os_unfair_lock_opaque = 0;
    v8->_inferenceAttachedMediaFormatDescriptionByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v8;
}

- (void)cancelAllProcessing
{
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{12), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{6), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{2), "cancelProcessing"}];
  inferenceControllerQueue = self->_inferenceControllerQueue;
  if (inferenceControllerQueue)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke;
    v8[3] = &unk_1E798F870;
    v8[4] = self;
    ubn_dispatch_sync(inferenceControllerQueue, v8);
  }

  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{7), "cancelProcessing"}];
  [-[BWPhotonicEngineNodeResourceCoordinator waitAndSafelyGetProcessorControllerForType:](self waitAndSafelyGetProcessorControllerForType:{10), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{18), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{16), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{15), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{4), "cancelProcessing"}];
  stereoDisparityProcessorControllerQueue = self->_stereoDisparityProcessorControllerQueue;
  if (stereoDisparityProcessorControllerQueue)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_2;
    v7[3] = &unk_1E798F870;
    v7[4] = self;
    ubn_dispatch_sync(stereoDisparityProcessorControllerQueue, v7);
  }

  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{9), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{13), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{11), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{14), "cancelProcessing"}];
  v5 = self->_inferenceControllerQueue;
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_3;
    v6[3] = &unk_1E798F870;
    v6[4] = self;
    ubn_dispatch_sync(v5, v6);
  }
}

uint64_t __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) controllerForType:3];

  return [v1 cancelProcessing];
}

uint64_t __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) controllerForType:8];

  return [v1 cancelProcessing];
}

void __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 336) = 0;

  *(*(a1 + 32) + 344) = 0;
  *(*(a1 + 32) + 352) = 0;
}

- (void)releaseResources
{
  self->_nodeConfiguration = 0;

  self->_input = 0;
  self->_output = 0;
  [(BWPhotonicEngineNodeResourceCoordinator *)self clearEnhancedResolutionPortraitSemaphoreWithError:0];

  self->_noiseReductionAndFusionProcessorOutputIntermediatePool = 0;
  self->_deepFusionEnhancedResolutionGainMapPool = 0;

  self->_deepZoomTransferHighResolutionInputPool = 0;
  self->_deepZoomTransferEnhancedResolutionOutputPool = 0;

  self->_deepFusionEnhancedResolutionOutputPool = 0;
  self->_deepFusionEnhancedResolutionSemanticStyleOutputPool = 0;

  self->_smartStyleEnhancedResolutionOutputPool = 0;
  self->_smartStyleUltraHighResolutionOutputPool = 0;

  self->_distortionCorrectionEnhancedResolutionOutputPool = 0;
  self->_softISPOutputPoolByPixelFormat = 0;

  self->_rawNightModeDenoisedImagePool = 0;
  self->_rawNightModeNoiseMapPool = 0;

  self->_syntheticIntermediatesPool = 0;
  self->_fusionMapPool = 0;

  self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = 0;
  self->_intermediateInferenceInputPool = 0;

  self->_inferenceInputPixelBufferProviderByResolutionFlavor = 0;
  self->_stereoPhotoOutputPool = 0;

  self->_pixelBufferProviderByPixelFormatByResolutionFlavor = 0;
  os_unfair_lock_lock(&self->_resourceCoordinatorLock);

  self->_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderByPortType = 0;
  os_unfair_lock_unlock(&self->_resourceCoordinatorLock);

  self->_postponedResourceSetupQueue = 0;
  self->_postponedResourceSetupGroup = 0;

  self->_inferenceControllerQueue = 0;
  self->_inferenceControllerGroup = 0;

  self->_workerQueue = 0;
  self->_stereoDisparityProcessorControllerQueue = 0;
  deferredProcessorControllerQueue = self->_deferredProcessorControllerQueue;
  if (deferredProcessorControllerQueue)
  {
    ubn_dispatch_sync(deferredProcessorControllerQueue, &__block_literal_global_75);

    self->_deferredProcessorControllerQueue = 0;
  }

  self->_sharedExternalMemoryResourceSetUpForResolutionFlavors = 0;
  self->_sharedExternalMemoryResource = 0;

  [(BWStillImageProcessorCoordinator *)self releaseControllers];
}

- (void)dealloc
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self releaseResources];

  v3.receiver = self;
  v3.super_class = BWPhotonicEngineNodeResourceCoordinator;
  [(BWStillImageProcessorCoordinator *)&v3 dealloc];
}

- (int)setupProcessorControllersAndMemoryResources
{
  selfCopy = self;
  if ([(BWPhotonicEngineNodeResourceCoordinator *)self hasSuccessfullySetupProcessorControllersAndMemoryResources])
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (dword_1EB58E040)
  {
    v847 = 0;
    v846 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigDebugIsInternalBuild();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
  mach_absolute_time();
  [array addObject:v4];
  v668 = [MEMORY[0x1E695DFA8] set];
  p_output = &selfCopy->_output;
  memoryPool = [(BWNodeOutput *)selfCopy->_output memoryPool];
  if (![(BWNodeInput *)selfCopy->_input videoFormat])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v627 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v627, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v844) = 0;
    v630 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v630, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 370, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:370", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:370", 0);
    goto LABEL_813;
  }

  v664 = v4;
  p_input = &selfCopy->_input;
  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration requiresResizedOutputDimensionsWithInputDimensions:[(BWVideoFormat *)[(BWNodeInput *)selfCopy->_input videoFormat] width]| ([(BWVideoFormat *)[(BWNodeInput *)selfCopy->_input videoFormat] height]<< 32)])
  {
    FigDebugIsInternalBuild();
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 2];
    mach_absolute_time();
    [array addObject:v5];
    if ([objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")])
    {
      v6 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [objc_msgSend(*p_output "videoFormat")]);
      -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [objc_msgSend(*p_input "videoFormat")]);
      -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", [objc_msgSend(*p_input "videoFormat")]);
      -[BWVideoFormatRequirements setWidthAlignment:](v6, "setWidthAlignment:", [objc_msgSend(*p_input "videoFormat")]);
      -[BWVideoFormatRequirements setHeightAlignment:](v6, "setHeightAlignment:", [objc_msgSend(*p_input "videoFormat")]);
      v843 = v6;
      v7 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v843 count:1]);
      v8 = [objc_msgSend(*p_input "videoFormat")];
      if (v8 != [v7 extendedWidth])
      {
        goto LABEL_681;
      }

      v9 = [objc_msgSend(*p_input "videoFormat")];
      if (v9 != [v7 extendedHeight])
      {
        goto LABEL_681;
      }

      v10 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v7, [objc_msgSend(*p_output "preparedPixelBufferPool")], @"Noise Reduction and Fusion Processor Output Intermediate Pool", memoryPool);
      selfCopy->_noiseReductionAndFusionProcessorOutputIntermediatePool = v10;
      if (!v10)
      {
        goto LABEL_681;
      }

      if (dword_1EB58E040)
      {
        v847 = 0;
        v846 = OS_LOG_TYPE_DEFAULT;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v12 = v847;
        if (os_log_type_enabled(v11, v846))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          mach_absolute_time();
          v14 = FigHostTimeToNanoseconds();
          v766 = 136315650;
          v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v768 = 2114;
          v769 = v5;
          v770 = 2048;
          v771 = (v14 / 1000) / 1000.0;
          LODWORD(v659) = 32;
          v634 = &v766;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [array removeLastObject];
      goto LABEL_18;
    }

    v628 = FigCaptureGetFrameworkRadarComponent();
    v847 = 0;
    v846 = OS_LOG_TYPE_DEFAULT;
    v629 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v629, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    outputDimensions = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputDimensions];
    outputDimensions2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputDimensions];
    v844 = 67109376;
    *v845 = outputDimensions;
    *&v845[4] = 1024;
    *&v845[6] = HIDWORD(outputDimensions2);
    v630 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v628, v630, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 382, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:382", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:382", 0);
LABEL_813:
    free(v630);
    goto LABEL_681;
  }

LABEL_18:
  smartStyleRenderingProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration smartStyleRenderingProcessorControllerConfiguration];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dimensionsByResolutionFlavorByPortType = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v17 = BWCommonDimensionsForResolutionFlavor(dimensionsByResolutionFlavorByPortType, 2);
  v18 = HIDWORD(v17);
  v20 = v17 > 0 && SHIDWORD(v17) > 0;
  obj = v20;
  v689 = v17;
  v690 = HIDWORD(v17);
  if (v20)
  {
    v695 = FigCaptureRoundFloatToMultipleOf(2, (([objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] / objc_msgSend(objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "inputFormat"), "height")) / (v17 / HIDWORD(v17))) * v17);
    if (dword_1EB58E040)
    {
      v847 = 0;
      v846 = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v847;
      if (os_log_type_enabled(v21, v846))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v24 = BWStringFromDimensions();
        v766 = 136315394;
        v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v768 = 2114;
        v769 = v24;
        LODWORD(v659) = 22;
        v633 = &v766;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LODWORD(v18) = v690;
    }

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v683 = v18;
  }

  else
  {
    v683 = 0;
    v695 = 0;
    dictionary3 = 0;
  }

  v667 = [(BWPhotonicEngineNodeResourceCoordinator *)selfCopy _deepFusionEnhancedResolutionOutputDimensionsForOutput:?];
  array2 = [MEMORY[0x1E695DF70] array];
  v839 = 0u;
  v840 = 0u;
  v841 = 0u;
  v842 = 0u;
  v26 = [&unk_1F2248C28 countByEnumeratingWithState:&v839 objects:v838 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v840;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v840 != v28)
        {
          objc_enumerationMutation(&unk_1F2248C28);
        }

        v30 = *(*(&v839 + 1) + 8 * i);
        dimensionsByResolutionFlavorByPortType2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
        if (BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType2, [v30 intValue]))
        {
          [array2 addObject:v30];
        }
      }

      v27 = [&unk_1F2248C28 countByEnumeratingWithState:&v839 objects:v838 count:16];
    }

    while (v27);
  }

  dimensionsByResolutionFlavorByPortType3 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v33 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType3, 5);
  if (v33)
  {
    [array2 addObject:&unk_1F2244B18];
  }

  dimensionsByResolutionFlavorByPortType4 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v35 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType4, 1);
  v36 = 0x1E696A000uLL;
  v37 = array;
  v701 = array2;
  v665 = dictionary;
  if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration])
  {
    v51 = 0;
    goto LABEL_355;
  }

  FigDebugIsInternalBuild();
  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 3];
  mach_absolute_time();
  v662 = v38;
  [array addObject:v38];
  v691 = [[BWSoftISPProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration]];
  if (!v691)
  {
    [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
    goto LABEL_681;
  }

  FigDebugIsInternalBuild();
  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 4];
  mach_absolute_time();
  v661 = v39;
  [array addObject:v39];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  if (v33)
  {
    [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")];
  }

  if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "lowLightFusionEnabled") & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "rawNightModeEnabled") & 1) != 0 || objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "demosaicedRawEnabled") && !-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled"))
  {
    v40 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:10 processingMode:0];
    v41 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v41, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v41, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v41 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v41 setHeightAlignment:16];
    v837 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v40];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v41, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v837 count:1]);
    v836 = v41;
    v42 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v836 count:1]);
    v43 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    v44 = [BWPixelBufferPool alloc];
    if (v43)
    {
      v45 = 8;
    }

    else
    {
      v45 = 1;
    }

    v46 = [(BWPixelBufferPool *)v44 initWithVideoFormat:v42 capacity:v45 name:@"YUV SoftISP output pool" memoryPool:memoryPool];
    if (!v46)
    {
      [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
      goto LABEL_681;
    }

    v47 = v46;
    [dictionary4 setObject:v46 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v40)}];
  }

  else
  {
    LODWORD(v40) = 0;
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration])
  {
    v48 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:2 processingMode:0];
    v49 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v48)}];
    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration redEyeProcessorControllerConfiguration])
    {
      capacity = 4;
    }

    else
    {
      capacity = 3;
    }

    if (v49)
    {
      if ([v49 capacity] > capacity)
      {
        capacity = [v49 capacity];
      }

      if (capacity != [v49 capacity])
      {
        [v49 setCapacity:capacity];
      }
    }

    else
    {
      v52 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v52, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
      -[BWVideoFormatRequirements setHeight:](v52, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
      [(BWVideoFormatRequirements *)v52 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v52 setHeightAlignment:16];
      v835 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v48];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v52, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v835 count:1]);
      v834 = v52;
      v36 = 0x1E696A000uLL;
      v53 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v834 count:1]);
      v54 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v53, capacity, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v54)
      {
        goto LABEL_681;
      }

      v55 = v54;
      [dictionary4 setObject:v54 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v48)}];
    }
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
  {
    v56 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode]& 1;
  }

  else
  {
    v56 = 0;
  }

  v663 = v40;
  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
  {
    v57 = 0;
  }

  else
  {
    v57 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1;
  }

  v669 = v56 | v57;
  if ((v56 | v57))
  {
    v58 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:1 captureFlags:128 processingMode:0];
    v59 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v59, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v59, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v59 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v59 setHeightAlignment:16];
    v678 = v58;
    v833 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v58];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v59, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v833 count:1]);
    v832 = v59;
    v60 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v832 count:1]);
    v61 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v61, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v61, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v61 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v61 setHeightAlignment:16];
    v831 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1751527984];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v61, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v831 count:1]);
    v830 = v61;
    v62 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v830 count:1]);
    [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
    [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
    v829 = 0u;
    v828 = 0u;
    v827 = 0u;
    v826 = 0u;
    v63 = [v35 countByEnumeratingWithState:&v826 objects:v825 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v827;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v827 != v65)
          {
            objc_enumerationMutation(v35);
          }

          v67 = FigCaptureDimensionsFromDictionaryRepresentation(*(*(&v826 + 1) + 8 * j));
          if (v67 == [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration rawSensorDimensions])
          {
            [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
          }
        }

        v64 = [v35 countByEnumeratingWithState:&v826 objects:v825 count:16];
      }

      while (v64);
    }

    if (v57)
    {
      [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    }

    learnedNRMode = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode];
    v69 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount]<< ((learnedNRMode & 0x10) != 0);
    v36 = 0x1E696A000uLL;
    v70 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v678)}];
    if (v70)
    {
      v71 = v70;
      if ([v70 capacity] <= v69)
      {
        capacity2 = v69;
      }

      else
      {
        capacity2 = [v71 capacity];
      }

      if (capacity2 != [v71 capacity])
      {
        [v71 setCapacity:capacity2];
      }
    }

    else
    {
      v73 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v60, v69, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v73)
      {
        goto LABEL_681;
      }

      v74 = v73;
      [dictionary4 setObject:v73 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v678)}];
    }
  }

  if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
  {
    v75 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:11 captureFlags:0x800000000 processingMode:0];
    v76 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v76, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v76, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v76 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v76 setHeightAlignment:16];
    v824 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v75];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v76, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v824 count:1]);
    v823 = v76;
    v77 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v823 count:1]);
    [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    v78 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v75)}];
    if (v78)
    {
      v79 = v78;
      if ([v78 capacity] < 8)
      {
        capacity3 = 7;
      }

      else
      {
        capacity3 = [v79 capacity];
      }

      if (capacity3 != [v79 capacity])
      {
        [v79 setCapacity:capacity3];
      }
    }

    else
    {
      v81 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v77, 7, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v81)
      {
        goto LABEL_681;
      }

      v82 = v81;
      [dictionary4 setObject:v81 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v75)}];
    }
  }

  if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || -[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "deepFusionProcessorControllerConfiguration"))
  {
    v83 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:12 processingMode:0];
    v84 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v84, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v84, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v84 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v84 setHeightAlignment:16];
    v822 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v83];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v84, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v822 count:1]);
    v821 = v84;
    v85 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v821 count:1]);
    if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
    {
      [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    }

    if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
    {
      ultraHighResolutionProcessingEnabled = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled];
    }

    else
    {
      ultraHighResolutionProcessingEnabled = 0;
    }

    stereoPhotoOutputDimensions = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions];
    v88 = 1;
    if (stereoPhotoOutputDimensions >= 1 && SHIDWORD(stereoPhotoOutputDimensions) >= 1)
    {
      v88 = ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode]& 4) == 0;
    }

    deferredCaptureSupportEnabled = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled];
    v90 = 5;
    if ((ultraHighResolutionProcessingEnabled & v88) != 0)
    {
      v90 = 0;
    }

    if (deferredCaptureSupportEnabled)
    {
      capacity4 = 2;
    }

    else
    {
      capacity4 = v90;
    }

    v92 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v83)}];
    if (v92)
    {
      v93 = v92;
      if ([v92 capacity] > capacity4)
      {
        capacity4 = [v93 capacity];
      }

      v36 = 0x1E696A000;
      if (capacity4 != [v93 capacity])
      {
        [v93 setCapacity:capacity4];
      }
    }

    else
    {
      v94 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v85, capacity4, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      v36 = 0x1E696A000uLL;
      if (!v94)
      {
        goto LABEL_681;
      }

      v95 = v94;
      [dictionary4 setObject:v94 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v83)}];
    }

    gainMapMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
    if (*&gainMapMainImageDownscalingFactor != 0.0 && v667 >= 1 && SHIDWORD(v667) >= 1)
    {
      v97 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v97 setSupportedPixelFormats:&unk_1F2248C40];
      gainMapMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      [(BWVideoFormatRequirements *)v97 setWidth:(v667 / *&gainMapMainImageDownscalingFactor2)];
      gainMapMainImageDownscalingFactor3 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      [(BWVideoFormatRequirements *)v97 setHeight:(HIDWORD(v667) / *&gainMapMainImageDownscalingFactor3)];
      [(BWVideoFormatRequirements *)v97 setWidthAlignment:8];
      [(BWVideoFormatRequirements *)v97 setHeightAlignment:8];
      v820 = v97;
      v100 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v820 count:1]);
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Fusion Enhanced Resolution Gain Map pool (%@)", BWStringForOSType()];
      v102 = [[BWPixelBufferPool alloc] initWithVideoFormat:v100 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount] name:v101 memoryPool:memoryPool];
      selfCopy->_deepFusionEnhancedResolutionGainMapPool = v102;
      if (!v102)
      {
        goto LABEL_681;
      }
    }
  }

  if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
  {
    v103 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:13 processingMode:0];
    v104 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v104, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v104, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v104 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v104 setHeightAlignment:16];
    v819 = [*(v36 + 3480) numberWithUnsignedInt:v103];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v104, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v819 count:1]);
    v818 = v104;
    v105 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v818 count:1]);
    [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled])
    {
      capacity5 = 2;
    }

    else
    {
      capacity5 = 3;
    }

    v107 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v103)}];
    if (v107)
    {
      v108 = v107;
      if ([v107 capacity] > capacity5)
      {
        capacity5 = [v108 capacity];
      }

      if (capacity5 != [v108 capacity])
      {
        [v108 setCapacity:capacity5];
      }
    }

    else
    {
      v109 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v105, capacity5, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v109)
      {
        goto LABEL_681;
      }

      v110 = v109;
      [dictionary4 setObject:v109 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v103)}];
    }
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration stereoDisparityProcessorControllerConfiguration])
  {
    v127 = -[BWPhotonicEngineNodeResourceCoordinator _disparityProcessorInputDimensionsForInputVideoFormat:](selfCopy, [*p_input videoFormat]);
    v128 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:10 processingMode:3];
    v129 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v129 setWidth:v127];
    [(BWVideoFormatRequirements *)v129 setHeight:v127 >> 32];
    v817 = [*(v36 + 3480) numberWithUnsignedInt:v128];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v129, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v817 count:1]);
    v816 = v129;
    v130 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v816 count:1]);
    v131 = 2 * [*p_output owningNodeRetainedBufferCount] + 2;
    v132 = [objc_msgSend(*p_output "primaryMediaConfiguration")];
    LOBYTE(v635) = v132;
    v133 = [[BWPixelBufferPool alloc] initWithVideoFormat:v130 capacity:v131 name:@"Disparity Processor Input SoftISP output pool" clientProvidesPool:0 memoryPool:memoryPool providesBackPressure:v132 reportSlowBackPressureAllocations:v635];
    if (!v133)
    {
      goto LABEL_681;
    }

    v134 = v133;
    [dictionary4 setObject:v133 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v128)}];
  }

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  if (obj)
  {
    FigDebugIsInternalBuild();
    v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 5];
    mach_absolute_time();
    v674 = v111;
    [array addObject:v111];
    v112 = v695 | (v683 << 32);
    [dictionary5 setObject:FigCaptureDictionaryRepresentationForDimensions(v112) forKeyedSubscript:&unk_1F2244B48];
    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration]&& v667 >= 1 && SHIDWORD(v667) >= 1)
    {
      v113 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:12 processingMode:0];
      v114 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v114 setWidth:v695];
      [(BWVideoFormatRequirements *)v114 setHeight:v683];
      [(BWVideoFormatRequirements *)v114 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v114 setHeightAlignment:16];
      v815 = [*(v36 + 3480) numberWithUnsignedInt:v113];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v114, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v815 count:1]);
      v814 = v114;
      v115 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v814 count:1]), 1, @"Deep Fusion Ultra High Resolution SoftISP output pool", memoryPool);
      if (!v115)
      {
        goto LABEL_681;
      }

      v116 = v115;
      [dictionary3 setObject:v115 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v113)}];

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration semanticStyleRenderingEnabled])
      {
        v117 = [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
        v118 = v117 < 1 || SHIDWORD(v117) < 1;
        v119 = v118;
      }

      else
      {
        v119 = 0;
      }

      v120 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v120 setWidth:v667 & 0x7FFFFFFF];
      v121 = v667 >> 32;
      [(BWVideoFormatRequirements *)v120 setHeight:v667 >> 32];
      [(BWVideoFormatRequirements *)v120 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v120 setHeightAlignment:16];
      [(BWVideoFormatRequirements *)v120 setSupportedPixelFormats:&unk_1F2248C58];
      v813 = v120;
      v122 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v813 count:1]);
      v123 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v122, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Zoom Transfer high resolution input pool (%@)", BWStringForOSType()], memoryPool);
      selfCopy->_deepZoomTransferHighResolutionInputPool = v123;
      if (!v123)
      {
        goto LABEL_681;
      }

      v124 = 1751527984;
      if (!v119)
      {
        v124 = [objc_msgSend(*p_output "videoFormat")];
      }

      v125 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v125 setWidth:v667 & 0x7FFFFFFF];
      [(BWVideoFormatRequirements *)v125 setHeight:v121];
      [(BWVideoFormatRequirements *)v125 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v125 setHeightAlignment:16];
      v812 = [*(v36 + 3480) numberWithUnsignedInt:v124];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v125, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v812 count:1]);
      if ([objc_msgSend(*p_input "videoFormat")])
      {
        v811 = [*(v36 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
        v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v811 count:1];
      }

      else
      {
        v126 = 0;
      }

      [(BWVideoFormatRequirements *)v125 setSupportedColorSpaceProperties:v126];
      v810 = v125;
      v135 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v810 count:1]);
      v136 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Zoom Transfer output pool (%@)", BWStringForOSType()];
      v137 = [[BWPixelBufferPool alloc] initWithVideoFormat:v135 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v136 memoryPool:memoryPool];
      selfCopy->_deepZoomTransferEnhancedResolutionOutputPool = v137;
      v36 = 0x1E696A000uLL;
      if (!v137)
      {
        goto LABEL_681;
      }

      if (v119)
      {
        v138 = [objc_msgSend(*p_output "videoFormat")];
        v139 = objc_alloc_init(BWVideoFormatRequirements);
        -[BWVideoFormatRequirements setWidth:](v139, "setWidth:", [objc_msgSend(*p_output "videoFormat")]);
        -[BWVideoFormatRequirements setHeight:](v139, "setHeight:", [objc_msgSend(*p_output "videoFormat")]);
        [(BWVideoFormatRequirements *)v139 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v139 setHeightAlignment:16];
        v809 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v138];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v139, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v809 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v808 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v808 count:1];
        }

        else
        {
          v140 = 0;
        }

        [(BWVideoFormatRequirements *)v139 setSupportedColorSpaceProperties:v140];
        v807 = v139;
        v141 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v807 count:1]);
        v142 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v141, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Fusion Enhanced Resolution output pool (%@)", BWStringForOSType()], memoryPool);
        selfCopy->_deepFusionEnhancedResolutionOutputPool = v142;
        if (!v142)
        {
          goto LABEL_681;
        }

        v143 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v143 setWidth:v667 & 0x7FFFFFFF];
        [(BWVideoFormatRequirements *)v143 setHeight:v121];
        [(BWVideoFormatRequirements *)v143 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v143 setHeightAlignment:16];
        v806 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v143, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v806 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v805 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v144 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v805 count:1];
        }

        else
        {
          v144 = 0;
        }

        [(BWVideoFormatRequirements *)v143 setSupportedColorSpaceProperties:v144];
        v804 = v143;
        v145 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v804 count:1]);
        v146 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v145, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Fusion Enhanced Resolution Semantic Style output pool (%@)", BWStringForOSType()], memoryPool);
        selfCopy->_deepFusionEnhancedResolutionSemanticStyleOutputPool = v146;
        v36 = 0x1E696A000uLL;
        if (!v146)
        {
          goto LABEL_681;
        }
      }

      [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
      [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
      [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
      if (smartStyleRenderingProcessorControllerConfiguration)
      {
        v147 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v147 setWidth:v667 & 0x7FFFFFFF];
        [(BWVideoFormatRequirements *)v147 setHeight:v121];
        [(BWVideoFormatRequirements *)v147 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v147 setHeightAlignment:16];
        v803 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v147, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v803 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v802 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v148 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v802 count:1];
        }

        else
        {
          v148 = 0;
        }

        [(BWVideoFormatRequirements *)v147 setSupportedColorSpaceProperties:v148];
        v801 = v147;
        v149 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v801 count:1]);
        v150 = MEMORY[0x1E696AEC0];
        [objc_msgSend(*p_output "videoFormat")];
        v151 = [v150 stringWithFormat:@"Smart Style Enhanced Resolution output pool (%@)", BWStringForOSType()];
        v152 = [[BWPixelBufferPool alloc] initWithVideoFormat:v149 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v151 memoryPool:memoryPool];
        selfCopy->_smartStyleEnhancedResolutionOutputPool = v152;
        if (!v152)
        {
          goto LABEL_681;
        }
      }

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
      {
        v153 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v153 setWidth:v667 & 0x7FFFFFFF];
        [(BWVideoFormatRequirements *)v153 setHeight:v121];
        [(BWVideoFormatRequirements *)v153 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v153 setHeightAlignment:16];
        v800 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v153, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v800 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v799 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v799 count:1];
        }

        else
        {
          v154 = 0;
        }

        [(BWVideoFormatRequirements *)v153 setSupportedColorSpaceProperties:v154];
        v798 = v153;
        v155 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v798 count:1]);
        v156 = MEMORY[0x1E696AEC0];
        [objc_msgSend(*p_output "videoFormat")];
        v157 = [v156 stringWithFormat:@"Distortion Correction Enhanced Resolution output pool (%@)", BWStringForOSType()];
        v158 = [[BWPixelBufferPool alloc] initWithVideoFormat:v155 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v157 memoryPool:memoryPool];
        selfCopy->_distortionCorrectionEnhancedResolutionOutputPool = v158;
        if (!v158)
        {
          goto LABEL_681;
        }
      }
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled])
    {
      v797 = 0u;
      v796 = 0u;
      v795 = 0u;
      v794 = 0u;
      dimensionsByResolutionFlavorByPortType5 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
      v160 = BWPortTypesWithResolutionFlavor(dimensionsByResolutionFlavorByPortType5, 2);
      v161 = [v160 countByEnumeratingWithState:&v794 objects:v793 count:16];
      if (v161)
      {
        v162 = v161;
        v163 = *v795;
        while (2)
        {
          for (k = 0; k != v162; ++k)
          {
            if (*v795 != v163)
            {
              objc_enumerationMutation(v160);
            }

            v165 = *(*(&v794 + 1) + 8 * k);
            if ([-[BWPhotonicEngineNodeConfiguration portTypesWithGeometricDistortionCorrectionEnabled](selfCopy->_nodeConfiguration) containsObject:v165] & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](selfCopy->_nodeConfiguration), "containsObject:", v165))
            {
              v166 = 1;
              v36 = 0x1E696A000;
              goto LABEL_200;
            }

            v36 = 0x1E696A000;
          }

          v162 = [v160 countByEnumeratingWithState:&v794 objects:v793 count:16];
          v166 = 0;
          if (v162)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v166 = 0;
      }

LABEL_200:
      v167 = [objc_msgSend(*p_output "videoFormat")];
      v168 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v168 setWidth:v695];
      [(BWVideoFormatRequirements *)v168 setHeight:v683];
      [(BWVideoFormatRequirements *)v168 setBytesPerRowAlignment:16];
      [(BWVideoFormatRequirements *)v168 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v168 setHeightAlignment:16];
      v792 = [*(v36 + 3480) numberWithUnsignedInt:v167];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v168, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v792 count:1]);
      if ([objc_msgSend(*p_input "videoFormat")])
      {
        v791 = [*(v36 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
        v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v791 count:1];
      }

      else
      {
        v169 = 0;
      }

      [(BWVideoFormatRequirements *)v168 setSupportedColorSpaceProperties:v169];
      v790 = v168;
      v170 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v790 count:1]), -[BWPhotonicEngineNodeConfiguration outputBufferCount](selfCopy->_nodeConfiguration) << v166, @"Ultra High Resolution output pool", memoryPool);
      if (!v170)
      {
        [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
        goto LABEL_681;
      }

      v171 = v170;
      v36 = 0x1E696A000uLL;
      [dictionary3 setObject:v170 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v167)}];

      if (![(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
      {
        v172 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:1 processingMode:0];
        v173 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v173 setWidth:v695];
        [(BWVideoFormatRequirements *)v173 setHeight:v683];
        [(BWVideoFormatRequirements *)v173 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v173 setHeightAlignment:16];
        v789 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v172];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v173, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v789 count:1]);
        v788 = v173;
        v174 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v788 count:1]), 1, @"Ultra High Resolution YUV SoftISP output pool", memoryPool);
        if (!v174)
        {
          [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
          goto LABEL_681;
        }

        v175 = v174;
        [dictionary3 setObject:v174 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v172)}];
      }

      [dictionary6 setObject:FigCaptureDictionaryRepresentationForDimensions(v112) forKeyedSubscript:&unk_1F2244B48];
      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
      {
        v176 = ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode]>> 2) & 1;
      }

      else
      {
        v176 = 0;
      }

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
      {
        v177 = 0;
      }

      else
      {
        v177 = ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] >> 2) & 1;
      }

      if ((v176 | v177))
      {
        v178 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:1 captureFlags:128 processingMode:0 isQuadra:1];
        v179 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v179 setWidth:v695];
        [(BWVideoFormatRequirements *)v179 setHeight:v683];
        [(BWVideoFormatRequirements *)v179 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v179 setHeightAlignment:16];
        v787 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v178];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v179, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v787 count:1]);
        v786 = v179;
        v180 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v786 count:1]);
        v181 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v181 setWidth:v695];
        [(BWVideoFormatRequirements *)v181 setHeight:v683];
        [(BWVideoFormatRequirements *)v181 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v181 setHeightAlignment:16];
        v785 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1751527984];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v181, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v785 count:1]);
        v784 = v181;
        v36 = 0x1E696A000uLL;
        v182 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v784 count:1]);
        v183 = [dictionary3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v178)}];
        if (v183)
        {
          v184 = v183;
          if ([v183 capacity] < 2)
          {
            capacity6 = 1;
          }

          else
          {
            capacity6 = [v184 capacity];
          }

          if (capacity6 != [v184 capacity])
          {
            [v184 setCapacity:capacity6];
          }
        }

        else
        {
          v186 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v180, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Ultra High Resolution SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
          if (!v186)
          {
            goto LABEL_681;
          }

          v187 = v186;
          [dictionary3 setObject:v186 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v178)}];
        }

        [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        if (v177)
        {
          v188 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
          if (v188)
          {
            v189 = v188;
          }

          else
          {
            v189 = v182;
          }

          [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
        }
      }

      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v190 = -[BWPhotonicEngineNodeConfiguration demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:](selfCopy->_nodeConfiguration, "demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:", v112, [objc_msgSend(objc_msgSend(objc_msgSend(*p_output "formatRequirements")]);
        [v190 setWidthAlignment:16];
        [v190 setHeightAlignment:16];
        v783 = v190;
        v191 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v783 count:1]);
        v192 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount]<< v166;
        v193 = [dictionary3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v191, "pixelFormat"))}];
        if (v193)
        {
          [v193 setCapacity:{objc_msgSend(v193, "capacity") + v192}];
        }

        else
        {
          v194 = [[BWPixelBufferPool alloc] initWithVideoFormat:v191 capacity:v192 name:@"Ultra High Resolution Demosaiced RAW pool" memoryPool:memoryPool];
          if (!v194)
          {
            goto LABEL_681;
          }

          v195 = v194;
          [dictionary3 setObject:v194 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v191, "pixelFormat"))}];
        }
      }

      gainMapMainImageDownscalingFactor4 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      if (*&gainMapMainImageDownscalingFactor4 != 0.0)
      {
        v197 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v197 setSupportedPixelFormats:&unk_1F2248C70];
        gainMapMainImageDownscalingFactor5 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v197 setWidth:(v695 / *&gainMapMainImageDownscalingFactor5)];
        gainMapMainImageDownscalingFactor6 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v197 setHeight:(v683 / *&gainMapMainImageDownscalingFactor6)];
        v782 = v197;
        v200 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v782 count:1]), -[BWPhotonicEngineNodeConfiguration outputBufferCount](selfCopy->_nodeConfiguration) << v166, @"Ultra High Resolution Gain Map pool", memoryPool);
        if (!v200)
        {
          goto LABEL_681;
        }

        v201 = v200;
        [dictionary3 setObject:v200 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[BWPixelBufferPool pixelFormat](v200, "pixelFormat"))}];
      }

      if (smartStyleRenderingProcessorControllerConfiguration)
      {
        v202 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v202 setWidth:v695];
        [(BWVideoFormatRequirements *)v202 setHeight:v683];
        [(BWVideoFormatRequirements *)v202 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v202 setHeightAlignment:16];
        v781 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v202, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v781 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v780 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v203 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v780 count:1];
        }

        else
        {
          v203 = 0;
        }

        [(BWVideoFormatRequirements *)v202 setSupportedColorSpaceProperties:v203];
        v779 = v202;
        v204 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v779 count:1]);
        v205 = MEMORY[0x1E696AEC0];
        [objc_msgSend(*p_output "videoFormat")];
        v206 = [v205 stringWithFormat:@"Smart Style Ultra High Resolution output pool (%@)", BWStringForOSType()];
        v207 = [[BWPixelBufferPool alloc] initWithVideoFormat:v204 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v206 memoryPool:memoryPool];
        selfCopy->_smartStyleUltraHighResolutionOutputPool = v207;
        if (!v207)
        {
          goto LABEL_681;
        }
      }
    }

    if (dword_1EB58E040)
    {
      v847 = 0;
      v846 = OS_LOG_TYPE_DEFAULT;
      v208 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v209 = v847;
      if (os_log_type_enabled(v208, v846))
      {
        v210 = v209;
      }

      else
      {
        v210 = v209 & 0xFFFFFFFE;
      }

      if (v210)
      {
        mach_absolute_time();
        v211 = FigHostTimeToNanoseconds();
        v766 = 136315650;
        v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v768 = 2114;
        v769 = v674;
        v770 = 2048;
        v771 = (v211 / 1000) / 1000.0;
        LODWORD(v659) = 32;
        v636 = &v766;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [array removeLastObject];
  }

  selfCopy->_softISPOutputPoolByPixelFormat = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dictionary4];
  v775 = 0u;
  v776 = 0u;
  v777 = 0u;
  v778 = 0u;
  v212 = v701;
  v681 = [v701 countByEnumeratingWithState:&v775 objects:v774 count:16];
  if (!v681)
  {
    goto LABEL_340;
  }

  v675 = *v776;
  v671 = selfCopy;
  do
  {
    for (m = 0; m != v681; ++m)
    {
      if (*v776 != v675)
      {
        objc_enumerationMutation(v212);
      }

      v214 = *(*(&v775 + 1) + 8 * m);
      intValue = [v214 intValue];
      dimensionsByResolutionFlavorByPortType6 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
      v217 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType6, intValue);
      v218 = FigCaptureLargestDimensionsFromDimensionsArray(v217);
      v220 = v218 == [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration rawSensorDimensions]&& intValue != 5;
      v699 = -[BWPhotonicEngineNodeResourceCoordinator _resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:standardSoftISPOutputDimensions:](selfCopy, v218, [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
      if (dword_1EB58E040)
      {
        v221 = m;
        v222 = intValue;
        v847 = 0;
        v846 = OS_LOG_TYPE_DEFAULT;
        v223 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v224 = v847;
        if (os_log_type_enabled(v223, v846))
        {
          v225 = v224;
        }

        else
        {
          v225 = v224 & 0xFFFFFFFE;
        }

        if (v225)
        {
          v226 = BWPhotoEncoderStringFromEncodingScheme(v222);
          v227 = BWStringFromDimensions();
          v228 = BWStringFromDimensions();
          v766 = 136315906;
          v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v768 = 2112;
          v769 = v226;
          v770 = 2114;
          v771 = *&v227;
          v36 = 0x1E696A000;
          v772 = 2114;
          v773 = v228;
          LODWORD(v659) = 42;
          v635 = &v766;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v212 = v701;
        intValue = v222;
        m = v221;
        selfCopy = v671;
      }

      [dictionary5 setObject:FigCaptureDictionaryRepresentationForDimensions(v699) forKeyedSubscript:v214];
      [dictionary6 setObject:FigCaptureDictionaryRepresentationForDimensions(v699) forKeyedSubscript:v214];
      if (v220)
      {
        continue;
      }

      dictionary7 = [MEMORY[0x1E695DF90] dictionary];
      v230 = [objc_msgSend(*p_output "videoFormat")];
      v231 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v231 setWidth:?];
      v684 = v699 >> 32;
      [(BWVideoFormatRequirements *)v231 setHeight:?];
      [(BWVideoFormatRequirements *)v231 setBytesPerRowAlignment:16];
      [(BWVideoFormatRequirements *)v231 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v231 setHeightAlignment:16];
      v765 = [*(v36 + 3480) numberWithUnsignedInt:v230];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v231, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v765 count:1]);
      if ([objc_msgSend(*p_input "videoFormat")])
      {
        v764 = [*(v36 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
        v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v764 count:1];
      }

      else
      {
        v232 = 0;
      }

      [(BWVideoFormatRequirements *)v231 setSupportedColorSpaceProperties:v232, v635, v659];
      v763 = v231;
      v233 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v763 count:1]);
      v234 = MEMORY[0x1E696AEC0];
      v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
      v659 = BWStringForOSType();
      v235 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v233, [v234 stringWithFormat:@"Additional output on-demand allocator (%@, %@)"], memoryPool, 0);
      v36 = 0x1E696A000uLL;
      if (!v235)
      {
        goto LABEL_681;
      }

      v236 = v235;
      [dictionary7 setObject:v235 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v230)}];

      if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "lowLightFusionEnabled") & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "rawNightModeEnabled") & 1) != 0 || objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "deepFusionEnabled") && !-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled") || objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "demosaicedRawEnabled") && !-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled"))
      {
        v237 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:10 processingMode:0];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v237)}])
        {
          v238 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWVideoFormatRequirements *)v238 setWidth:v699];
          [(BWVideoFormatRequirements *)v238 setHeight:v684];
          [(BWVideoFormatRequirements *)v238 setWidthAlignment:16];
          [(BWVideoFormatRequirements *)v238 setHeightAlignment:16];
          v762 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v237];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v238, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v762 count:1]);
          v761 = v238;
          v239 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v761 count:1]);
          v240 = MEMORY[0x1E696AEC0];
          v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          v659 = BWStringForOSType();
          v241 = [v240 stringWithFormat:@"Additional YUV SoftISP output on-demand allocator (%@, %@)"];
          v242 = [BWOnDemandPixelBufferAllocator alloc];
          v243 = v241;
          v36 = 0x1E696A000uLL;
          v244 = [(BWOnDemandPixelBufferAllocator *)v242 initWithVideoFormat:v239 name:v243 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v244)
          {
            goto LABEL_681;
          }

          v245 = v244;
          [dictionary7 setObject:v244 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v237)}];
        }
      }

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration])
      {
        v246 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:2 processingMode:0];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v246)}])
        {
          v247 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWVideoFormatRequirements *)v247 setWidth:v699];
          [(BWVideoFormatRequirements *)v247 setHeight:v684];
          [(BWVideoFormatRequirements *)v247 setWidthAlignment:16];
          [(BWVideoFormatRequirements *)v247 setHeightAlignment:16];
          v760 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v246];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v247, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v760 count:1]);
          v759 = v247;
          v248 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v759 count:1]);
          v249 = MEMORY[0x1E696AEC0];
          v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          v659 = BWStringForOSType();
          v250 = [v249 stringWithFormat:@"Additional SWFR SoftISP output on-demand allocator (%@, %@)"];
          v251 = [BWOnDemandPixelBufferAllocator alloc];
          v252 = v250;
          v36 = 0x1E696A000uLL;
          v253 = [(BWOnDemandPixelBufferAllocator *)v251 initWithVideoFormat:v248 name:v252 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v253)
          {
            goto LABEL_681;
          }

          v254 = v253;
          [dictionary7 setObject:v253 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v246)}];
        }
      }

      v255 = 0x1E695D000uLL;
      if (v669)
      {
        v256 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:1 captureFlags:128 processingMode:0];
        v257 = +[BWVideoFormatRequirements formatRequirements];
        [v257 setWidth:v699];
        [v257 setHeight:v684];
        [v257 setWidthAlignment:16];
        [v257 setHeightAlignment:16];
        v758 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v256];
        [v257 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v758, 1)}];
        v757 = v257;
        v258 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v757 count:1]);
        v259 = +[BWVideoFormatRequirements formatRequirements];
        [v259 setWidth:v699];
        [v259 setHeight:v684];
        [v259 setWidthAlignment:16];
        [v259 setHeightAlignment:16];
        [v259 setSupportedPixelFormats:&unk_1F2248C88];
        v756 = v259;
        v260 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v756 count:1]);
        [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        if (intValue <= 3)
        {
          if (intValue != 1)
          {
            v255 = 0x1E695D000;
            v36 = 0x1E696A000;
            if (intValue == 3)
            {
              [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
            }

LABEL_299:
            if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v256)}])
            {
              v261 = MEMORY[0x1E696AEC0];
              v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
              v659 = BWStringForOSType();
              v36 = 0x1E696A000uLL;
              v262 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v258, [v261 stringWithFormat:@"Additional LearnedNR SoftISP output pool (%@, %@)"], memoryPool, 0);
              if (!v262)
              {
                goto LABEL_681;
              }

              [dictionary7 setObject:v262 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v256)}];
            }

            goto LABEL_302;
          }

          [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        }

        else
        {
          if (intValue != 4)
          {
            v255 = 0x1E695D000;
            v36 = 0x1E696A000;
            if (intValue == 5)
            {
              [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
            }

            else if (intValue == 6)
            {
              [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
            }

            goto LABEL_299;
          }

          [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        }

        v255 = 0x1E695D000uLL;
        v36 = 0x1E696A000uLL;
        goto LABEL_299;
      }

LABEL_302:
      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v263 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:11 captureFlags:0x800000000 processingMode:0];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v263)}])
        {
          v264 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWVideoFormatRequirements *)v264 setWidth:v699];
          [(BWVideoFormatRequirements *)v264 setHeight:v684];
          [(BWVideoFormatRequirements *)v264 setWidthAlignment:16];
          [(BWVideoFormatRequirements *)v264 setHeightAlignment:16];
          v755 = [*(v36 + 3480) numberWithUnsignedInt:v263];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v264, "setSupportedPixelFormats:", [*(v255 + 3784) arrayWithObjects:&v755 count:1]);
          v754 = v264;
          v265 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v754 count:1]);
          v266 = MEMORY[0x1E696AEC0];
          v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          v659 = BWStringForOSType();
          v267 = [v266 stringWithFormat:@"Additional RawNightMode SoftISP output on-demand allocator (%@, %@)"];
          v268 = [BWOnDemandPixelBufferAllocator alloc];
          v269 = v267;
          v36 = 0x1E696A000uLL;
          v270 = [(BWOnDemandPixelBufferAllocator *)v268 initWithVideoFormat:v265 name:v269 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v270)
          {
            goto LABEL_681;
          }

          v271 = v270;
          [dictionary7 setObject:v270 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v263)}];
        }
      }

      v272 = v699;
      if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || -[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "deepFusionProcessorControllerConfiguration"))
      {
        v273 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:12 processingMode:0];
        v274 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v274 setWidth:v699];
        [(BWVideoFormatRequirements *)v274 setHeight:v684];
        [(BWVideoFormatRequirements *)v274 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v274 setHeightAlignment:16];
        v753 = [*(v36 + 3480) numberWithUnsignedInt:v273];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v274, "setSupportedPixelFormats:", [*(v255 + 3784) arrayWithObjects:&v753 count:1]);
        v752 = v274;
        v275 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v752 count:1]);
        v276 = MEMORY[0x1E696AEC0];
        v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
        v659 = BWStringForOSType();
        v277 = v276;
        v36 = 0x1E696A000uLL;
        v278 = [v277 stringWithFormat:@"Additional DeepFusion SoftISP output on-demand allocator (%@, %@)"];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v273)}])
        {
          v279 = [[BWOnDemandPixelBufferAllocator alloc] initWithVideoFormat:v275 name:v278 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v279)
          {
            goto LABEL_681;
          }

          v280 = v279;
          [dictionary7 setObject:v279 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v273)}];

          v272 = v699;
        }

        v281 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        if (v272 > v281 || SHIDWORD(v699) > SHIDWORD(v281))
        {
          v282 = v272;
          if ([-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] > v272)
          {
            v282 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          }

          v283 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          LODWORD(v284) = HIDWORD(v699);
          if (SHIDWORD(v283) > SHIDWORD(v699))
          {
            v284 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] >> 32;
          }

          [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        }

        v285 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        if (v272 > v285 || SHIDWORD(v699) > SHIDWORD(v285))
        {
          v286 = v272;
          if ([-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] > v272)
          {
            v286 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          }

          v287 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          LODWORD(v288) = HIDWORD(v699);
          if (SHIDWORD(v287) > SHIDWORD(v699))
          {
            v288 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] >> 32;
          }

          [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        }
      }

      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v289 = [(BWSoftISPProcessorController *)v691 outputPixelFormatForCaptureType:13 processingMode:0];
        v290 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v290 setWidth:v699];
        [(BWVideoFormatRequirements *)v290 setHeight:v684];
        [(BWVideoFormatRequirements *)v290 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v290 setHeightAlignment:16];
        v751 = [*(v36 + 3480) numberWithUnsignedInt:v289];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v290, "setSupportedPixelFormats:", [*(v255 + 3784) arrayWithObjects:&v751 count:1]);
        v750 = v290;
        v291 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v750 count:1]);
        v292 = MEMORY[0x1E696AEC0];
        v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
        v659 = BWStringForOSType();
        v36 = 0x1E696A000uLL;
        v293 = [v292 stringWithFormat:@"Additional LearnedFusion SoftISP output on-demand allocator (%@, %@)"];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v289)}])
        {
          v294 = [[BWOnDemandPixelBufferAllocator alloc] initWithVideoFormat:v291 name:v293 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v294)
          {
            goto LABEL_681;
          }

          v295 = v294;
          [dictionary7 setObject:v294 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v289)}];
        }

        [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
        v272 = v699;
      }

      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v296 = -[BWPhotonicEngineNodeConfiguration demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:](selfCopy->_nodeConfiguration, "demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:", v272, [objc_msgSend(objc_msgSend(objc_msgSend(*p_output "formatRequirements")]);
        [v296 setWidthAlignment:16];
        [v296 setHeightAlignment:16];
        v749 = v296;
        v297 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v749 count:1]);
        v272 = *(v36 + 3480);
        linearYUVPixelFormat = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration linearYUVPixelFormat];
        v299 = v272;
        LODWORD(v272) = v699;
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(v299, "numberWithUnsignedInt:", linearYUVPixelFormat)}])
        {
          v300 = MEMORY[0x1E696AEC0];
          v301 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration linearYUVPixelFormat];
          v635 = v301;
          v659 = BWStringForOSType();
          v302 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v297, [v300 stringWithFormat:@"Additional Linear YUV output on-demand allocator (%@, %@)"], memoryPool, 0);
          if (!v302)
          {
            goto LABEL_681;
          }

          v303 = v302;
          [dictionary7 setObject:v302 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", -[BWPhotonicEngineNodeConfiguration linearYUVPixelFormat](selfCopy->_nodeConfiguration))}];

          LODWORD(v272) = v699;
        }
      }

      gainMapMainImageDownscalingFactor7 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      if (*&gainMapMainImageDownscalingFactor7 != 0.0)
      {
        v305 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v305 setSupportedPixelFormats:&unk_1F2248CA0];
        gainMapMainImageDownscalingFactor8 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v305 setWidth:(v272 / *&gainMapMainImageDownscalingFactor8)];
        gainMapMainImageDownscalingFactor9 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v305 setHeight:(SHIDWORD(v699) / *&gainMapMainImageDownscalingFactor9)];
        [(BWVideoFormatRequirements *)v305 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v305 setHeightAlignment:16];
        v748 = v305;
        v308 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v748 count:1]);
        v309 = MEMORY[0x1E696AEC0];
        v635 = BWPhotoEncoderStringFromEncodingScheme(intValue);
        v659 = BWStringForOSType();
        v310 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v308, [v309 stringWithFormat:@"Additional gain map on-demand allocator (%@, %@)"], memoryPool, 0);
        if (!v310)
        {
          goto LABEL_681;
        }

        v311 = v310;
        [dictionary7 setObject:v310 forKeyedSubscript:&unk_1F2244B30];
      }

      [dictionary2 setObject:dictionary7 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithInt:", intValue)}];
      v212 = v701;
    }

    v681 = [v212 countByEnumeratingWithState:&v775 objects:v774 count:16];
  }

  while (v681);
LABEL_340:
  [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration];
  [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
  [v668 addObject:v691];
  if (dword_1EB58E040)
  {
    v847 = 0;
    v846 = OS_LOG_TYPE_DEFAULT;
    v312 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v313 = v847;
    if (os_log_type_enabled(v312, v846))
    {
      v314 = v313;
    }

    else
    {
      v314 = v313 & 0xFFFFFFFE;
    }

    if (v314)
    {
      mach_absolute_time();
      v315 = FigHostTimeToNanoseconds();
      v766 = 136315650;
      v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
      v768 = 2114;
      v769 = v661;
      v770 = 2048;
      v771 = (v315 / 1000) / 1000.0;
      LODWORD(v659) = 32;
      v637 = &v766;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [array removeLastObject];
  if (dword_1EB58E040)
  {
    v847 = 0;
    v846 = OS_LOG_TYPE_DEFAULT;
    v316 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v317 = v847;
    if (os_log_type_enabled(v316, v846))
    {
      v318 = v317;
    }

    else
    {
      v318 = v317 & 0xFFFFFFFE;
    }

    if (v318)
    {
      mach_absolute_time();
      v319 = FigHostTimeToNanoseconds();
      v766 = 136315650;
      v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
      v768 = 2114;
      v769 = v662;
      v770 = 2048;
      v771 = (v319 / 1000) / 1000.0;
      LODWORD(v660) = 32;
      v638 = &v766;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v37 = array;
  [array removeLastObject];
  v51 = v663;
LABEL_355:
  if (-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled") && !-[BWPhotonicEngineNodeConfiguration learnedNRMode](selfCopy->_nodeConfiguration) && ![-[BWPhotonicEngineNodeConfiguration portTypesWithLearnedFusionEnabled](selfCopy->_nodeConfiguration) count])
  {
LABEL_389:
    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration])
    {
      FigDebugIsInternalBuild();
      v347 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 6];
      mach_absolute_time();
      [v37 addObject:v347];
      v348 = [[BWDeepFusionProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration]];
      if (!v348)
      {
        goto LABEL_681;
      }

      [v668 addObject:v348];
      if (dword_1EB58E040)
      {
        v847 = 0;
        v846 = OS_LOG_TYPE_DEFAULT;
        v349 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v350 = v847;
        if (os_log_type_enabled(v349, v846))
        {
          v351 = v350;
        }

        else
        {
          v351 = v350 & 0xFFFFFFFE;
        }

        if (v351)
        {
          mach_absolute_time();
          v352 = FigHostTimeToNanoseconds();
          v766 = 136315650;
          v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v768 = 2114;
          v769 = v347;
          v770 = 2048;
          v771 = (v352 / 1000) / 1000.0;
          LODWORD(v659) = 32;
          v641 = &v766;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v37 = array;
      [array removeLastObject];
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureControllerConfiguration])
    {
      FigDebugIsInternalBuild();
      v353 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 8];
      mach_absolute_time();
      [v37 addObject:v353];
      v354 = [[BWDeferredCaptureController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureControllerConfiguration]];
      if (!v354)
      {
        goto LABEL_681;
      }

      [v668 addObject:v354];
      if (dword_1EB58E040)
      {
        v847 = 0;
        v846 = OS_LOG_TYPE_DEFAULT;
        v355 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v356 = v847;
        if (os_log_type_enabled(v355, v846))
        {
          v357 = v356;
        }

        else
        {
          v357 = v356 & 0xFFFFFFFE;
        }

        if (v357)
        {
          mach_absolute_time();
          v358 = FigHostTimeToNanoseconds();
          v766 = 136315650;
          v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v768 = 2114;
          v769 = v353;
          v770 = 2048;
          v771 = (v358 / 1000) / 1000.0;
          LODWORD(v659) = 32;
          v642 = &v766;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v37 = array;
      [array removeLastObject];
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredProcessorControllerConfiguration])
    {
      FigDebugIsInternalBuild();
      v359 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 9];
      mach_absolute_time();
      [v37 addObject:v359];
      v360 = [[BWDeferredProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredProcessorControllerConfiguration]];
      if (!v360)
      {
        goto LABEL_681;
      }

      [v668 addObject:v360];
      if (dword_1EB58E040)
      {
        v847 = 0;
        v846 = OS_LOG_TYPE_DEFAULT;
        v361 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v362 = v847;
        if (os_log_type_enabled(v361, v846))
        {
          v363 = v362;
        }

        else
        {
          v363 = v362 & 0xFFFFFFFE;
        }

        if (v363)
        {
          mach_absolute_time();
          v364 = FigHostTimeToNanoseconds();
          v766 = 136315650;
          v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v768 = 2114;
          v769 = v359;
          v770 = 2048;
          v771 = (v364 / 1000) / 1000.0;
          LODWORD(v659) = 32;
          v643 = &v766;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v37 = array;
      [array removeLastObject];
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionSyntheticsInNRSupportEnabled])
    {
      FigDebugIsInternalBuild();
      v365 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 7];
      mach_absolute_time();
      [v37 addObject:v365];
      v366 = objc_alloc_init(BWVideoFormatRequirements);
      v367 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
      v368 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
      v369 = v367 + 15;
      v370 = v368 + 15;
      [(BWVideoFormatRequirements *)v366 setWidth:(v369 >> 1) & 0x7FFFFFFFFFFFFFF8];
      [(BWVideoFormatRequirements *)v366 setHeight:(v370 >> 1) & 0x7FFFFFFFFFFFFFF8];
      [(BWVideoFormatRequirements *)v366 setSupportedPixelFormats:&unk_1F2248CB8];
      v738 = v366;
      v371 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v738 count:1]);
      maxDeepFusionOutputCount = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount];
      maxDeepFusionOutputCount2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount];
      LODWORD(v366) = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled];
      v374 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
      v375 = v374;
      if (v366)
      {
        v376 = [objc_msgSend(v374 "pixelBufferAttributes")];
        [v376 setObject:&unk_1F2248CD0 forKeyedSubscript:*MEMORY[0x1E6966038]];
        v377 = [[BWVideoFormatRequirements alloc] initWithPixelBufferAttributes:v376];
        [(BWVideoFormatRequirements *)v377 setSupportedPixelFormats:&unk_1F2248CE8];
        v737 = v377;
        v375 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v737 count:1]);
      }

      if (!v375 || !maxDeepFusionOutputCount || !maxDeepFusionOutputCount2)
      {
        goto LABEL_681;
      }

      v378 = 2 * maxDeepFusionOutputCount;
      v379 = 3 * maxDeepFusionOutputCount2;
      if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled])
      {
        v380 = [[BWDeferredContainerPixelBufferPool alloc] initWithVideoFormat:v375 capacity:v378 name:@"DeepFusion deferred synthetic intermediate pool"];
        v381 = [[BWDeferredContainerPixelBufferPool alloc] initWithVideoFormat:v371 capacity:v379 name:@"DeepFusion deferred fusion map pool"];
      }

      else
      {
        v380 = [[BWPixelBufferPool alloc] initWithVideoFormat:v375 capacity:v378 name:@"Deep Fusion synthetic intermediate pool" memoryPool:memoryPool];
        v381 = [[BWPixelBufferPool alloc] initWithVideoFormat:v371 capacity:v379 name:@"Deep Fusion synthetic fusion map pool" memoryPool:memoryPool];
      }

      v382 = v381;
      v36 = 0x1E696A000uLL;
      if (!v380)
      {
        goto LABEL_681;
      }

      v383 = v382;
      selfCopy->_syntheticIntermediatesPool = v380;
      selfCopy->_fusionMapPool = v383;
      if (dword_1EB58E040)
      {
        v847 = 0;
        v846 = OS_LOG_TYPE_DEFAULT;
        v384 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v385 = v847;
        if (os_log_type_enabled(v384, v846))
        {
          v386 = v385;
        }

        else
        {
          v386 = v385 & 0xFFFFFFFE;
        }

        if (v386)
        {
          mach_absolute_time();
          v387 = FigHostTimeToNanoseconds();
          v766 = 136315650;
          v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v768 = 2114;
          v769 = v365;
          v770 = 2048;
          v771 = (v387 / 1000) / 1000.0;
          LODWORD(v659) = 32;
          v644 = &v766;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [array removeLastObject];
    }

    v388 = v701;
    if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
    {
      goto LABEL_471;
    }

    FigDebugIsInternalBuild();
    v389 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 10];
    mach_absolute_time();
    [array addObject:v389];
    v390 = [[BWLearnedNRProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration]];
    if (!v390)
    {
      v394 = 0;
      goto LABEL_463;
    }

    v391 = v390;
    v392 = objc_alloc(MEMORY[0x1E695DF90]);
    if (selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey)
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
    }

    else
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = MEMORY[0x1E695E0F8];
    }

    v394 = [v392 initWithDictionary:inferenceOutputPixelBufferProvidersByAttachedMediaKey];
    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v395 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], 1, @"LearnedNR output pool", memoryPool);
      if (!v395)
      {
        goto LABEL_463;
      }

      v396 = v395;
      [(NSDictionary *)v394 setObject:v395 forKeyedSubscript:0x1F219ED10];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v397 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Zoom based LearnedNR output allocator", memoryPool, 0);
      if (!v397)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v394 setObject:v397 forKeyedSubscript:0x1F219ED30];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v398 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Aspect ratio crop landscape LearnedNR output allocator", memoryPool, 0);
      if (!v398)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v394 setObject:v398 forKeyedSubscript:0x1F219ED50];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v399 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Aspect ratio crop portrait LearnedNR output allocator", memoryPool, 0);
      if (!v399)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v394 setObject:v399 forKeyedSubscript:0x1F219ED70];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v400 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Aspect ratio crop square LearnedNR output allocator", memoryPool, 0);
      if (!v400)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v394 setObject:v400 forKeyedSubscript:0x1F219ED90];
    }

    if (![-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
LABEL_460:

      selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = v394;
      if (![(BWLearnedNRProcessorController *)v391 prepareWithPixelBufferPoolProvider:selfCopy])
      {
        [v668 addObject:v391];
      }

      v394 = 0;
      goto LABEL_463;
    }

    v401 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], 1, @"Ultra High Resolution LearnedNR output pool", memoryPool);
    if (v401)
    {
      v402 = v401;
      [(NSDictionary *)v394 setObject:v401 forKeyedSubscript:0x1F219EDB0];

      goto LABEL_460;
    }

LABEL_463:

    if (dword_1EB58E040)
    {
      v847 = 0;
      v846 = OS_LOG_TYPE_DEFAULT;
      v403 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v404 = v847;
      if (os_log_type_enabled(v403, v846))
      {
        v405 = v404;
      }

      else
      {
        v405 = v404 & 0xFFFFFFFE;
      }

      if (v405)
      {
        mach_absolute_time();
        v406 = FigHostTimeToNanoseconds();
        v766 = 136315650;
        v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v768 = 2114;
        v769 = v389;
        v770 = 2048;
        v771 = (v406 / 1000) / 1000.0;
        LODWORD(v659) = 32;
        v645 = &v766;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [array removeLastObject];
LABEL_471:
    if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceControllerConfiguration])
    {
      height4 = 0;
      width4 = 0;
      v461 = array;
      goto LABEL_586;
    }

    FigDebugIsInternalBuild();
    v407 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 11];
    mach_absolute_time();
    [array addObject:v407];
    inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v677 = v407;
    if (*&inferenceMainImageDownscalingFactor == 0.0)
    {
      goto LABEL_805;
    }

    v409 = +[BWVideoFormatRequirements formatRequirements];
    v410 = +[BWVideoFormatRequirements formatRequirements];
    if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio]|| (v411 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio], v412 = p_output, v411 == 6))
    {
      v412 = p_input;
    }

    v413 = 875704422;
    videoFormat = [*v412 videoFormat];
    width = [videoFormat width];
    inferenceMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v417 = FigCaptureRoundFloatToMultipleOf(2, width / *&inferenceMainImageDownscalingFactor2);
    height = [videoFormat height];
    inferenceMainImageDownscalingFactor3 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v692 = FigCaptureRoundFloatToMultipleOf(2, height / *&inferenceMainImageDownscalingFactor3);
    if (FigCapturePlatformSupportsUniversalCompression())
    {
      v413 = FigCaptureCompressedPixelFormatForPixelFormat(875704422, 4, 0);
    }

    [v409 setWidth:v417];
    [v409 setHeight:v692];
    [v409 setWidthAlignment:8];
    [v409 setHeightAlignment:8];
    v736 = [*(v36 + 3480) numberWithUnsignedInt:v413];
    v696 = v409;
    [v409 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v736, 1)}];
    if (v417 <= 0x200)
    {
      v420 = 512;
    }

    else
    {
      v420 = v417;
    }

    [v410 setWidth:v420];
    if (v692 <= 0x180)
    {
      v421 = 384;
    }

    else
    {
      v421 = v692;
    }

    [v410 setHeight:v421];
    [v410 setWidthAlignment:8];
    [v410 setHeightAlignment:8];
    v700 = v413;
    v735 = [*(v36 + 3480) numberWithUnsignedInt:v413];
    [v410 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v735, 1)}];
    v734 = v410;
    v422 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v734 count:1]);
    v423 = [-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](selfCopy->_nodeConfiguration) objectForKeyedSubscript:&unk_1F2244B48];
    outputBufferCount = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount];
    if (v423)
    {
      v425 = 2;
    }

    else
    {
      v425 = 1;
    }

    v426 = [[BWPixelBufferPool alloc] initWithVideoFormat:v422 capacity:(outputBufferCount << v425) name:@"Inference input pool for standard resolution" memoryPool:memoryPool];
    selfCopy->_intermediateInferenceInputPool = v426;
    if (!v426)
    {
      v474 = 0;
      height4 = 0;
      width4 = 0;
      goto LABEL_572;
    }

    obja = v417;
    dictionary8 = [MEMORY[0x1E695DF90] dictionary];
    v730 = 0u;
    v731 = 0u;
    v732 = 0u;
    v733 = 0u;
    v428 = [v701 countByEnumeratingWithState:&v730 objects:v729 count:16];
    if (!v428)
    {
      goto LABEL_517;
    }

    v429 = v428;
    v430 = *v731;
LABEL_490:
    v431 = 0;
    while (1)
    {
      if (*v731 != v430)
      {
        objc_enumerationMutation(v388);
      }

      intValue2 = [*(*(&v730 + 1) + 8 * v431) intValue];
      dimensionsByResolutionFlavorByPortType7 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
      v434 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType7, intValue2);
      v435 = FigCaptureLargestDimensionsFromDimensionsArray(v434);
      rawSensorDimensions = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration rawSensorDimensions];
      v437 = -[BWPhotonicEngineNodeResourceCoordinator _resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:standardSoftISPOutputDimensions:](selfCopy, v435, [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
      if (v435 != rawSensorDimensions || intValue2 == 5)
      {
        break;
      }

LABEL_515:
      if (v429 == ++v431)
      {
        v429 = [v388 countByEnumeratingWithState:&v730 objects:v729 count:16];
        if (v429)
        {
          goto LABEL_490;
        }

LABEL_517:
        v458 = [dictionary8 count];
        if (v458)
        {
          v458 = [dictionary8 copy];
        }

        v459 = obja;
        selfCopy->_inferenceInputPixelBufferProviderByResolutionFlavor = v458;
        if ([v696 width] < 0x201)
        {
          width2 = 512;
        }

        else
        {
          width2 = [v696 width];
        }

        [v696 setWidth:width2];
        if ([v696 height] < 0x181)
        {
          height2 = 384;
        }

        else
        {
          height2 = [v696 height];
        }

        [v696 setHeight:height2];
        v726 = v696;
        [-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](selfCopy->_nodeConfiguration "inferenceControllerConfiguration")];
        width3 = [v696 width];
        if (width3 <= [v696 height])
        {
          height3 = [v696 height];
          v459 = v692;
        }

        else
        {
          height3 = [v696 width];
        }

        v465 = height3 / v459;
        inferenceControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceControllerConfiguration];
        *&v467 = v465;
        [inferenceControllerConfiguration setMainImageDownscalingFactor:v467];
        v468 = [BWInferenceEngineController alloc];
        inferenceControllerConfiguration2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceControllerConfiguration];
        v470 = -[BWInferenceEngineController initWithConfiguration:contextName:](v468, "initWithConfiguration:contextName:", inferenceControllerConfiguration2, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-PhotonicEngine", -[BWStillImageNodeConfiguration pipelineProcessingContext](selfCopy->_nodeConfiguration, "pipelineProcessingContext")]);
        if (v470)
        {
          v471 = v470;
          v472 = objc_alloc(MEMORY[0x1E695DF90]);
          if (selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey)
          {
            v473 = selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
          }

          else
          {
            v473 = MEMORY[0x1E695E0F8];
          }

          v474 = [v472 initWithDictionary:v473];
          v722 = 0u;
          v723 = 0u;
          v724 = 0u;
          v725 = 0u;
          objb = [(BWInferenceEngineController *)v471 providedAttachedMediaKeys];
          v475 = [(NSArray *)objb countByEnumeratingWithState:&v722 objects:v721 count:16];
          if (v475)
          {
            v476 = v475;
            height4 = 0;
            v477 = *v723;
            width4 = 0;
            v682 = *v723;
            while (2)
            {
              v478 = 0;
              v685 = v476;
              do
              {
                if (*v723 != v477)
                {
                  objc_enumerationMutation(objb);
                }

                v479 = *(*(&v722 + 1) + 8 * v478);
                v480 = [*p_output mediaPropertiesForAttachedMediaKey:v479];
                if ([v480 preparedPixelBufferPool])
                {
                  resolvedVideoFormat = [v480 resolvedVideoFormat];
                  if (([resolvedVideoFormat isEqual:{-[BWInferenceEngineController outputVideoFormatForAttachedMediaKey:](v471, "outputVideoFormatForAttachedMediaKey:", v479)}] & 1) == 0)
                  {
                    goto LABEL_572;
                  }
                }

                else
                {
                  v482 = [(BWInferenceEngineController *)v471 outputVideoFormatForAttachedMediaKey:v479];
                  if (!v482)
                  {
                    goto LABEL_572;
                  }

                  resolvedVideoFormat = v482;
                  v483 = v471;
                  v484 = v474;
                  deferredCaptureSupportEnabled2 = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled];
                  stereoPhotoOutputDimensions2 = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions];
                  if (SHIDWORD(stereoPhotoOutputDimensions2) <= 0 || stereoPhotoOutputDimensions2 <= 0)
                  {
                    v488 = 2;
                  }

                  else
                  {
                    v488 = 3;
                  }

                  v489 = [BWPixelBufferPool alloc];
                  v479 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UB %@ Output Pool", v479];
                  LOBYTE(v647) = deferredCaptureSupportEnabled2;
                  v491 = [(BWPixelBufferPool *)v489 initWithVideoFormat:resolvedVideoFormat capacity:v488 name:v479 clientProvidesPool:0 memoryPool:memoryPool providesBackPressure:deferredCaptureSupportEnabled2 reportSlowBackPressureAllocations:v647];
                  if (!v491)
                  {
                    v474 = v484;
                    goto LABEL_572;
                  }

                  v492 = v491;
                  v474 = v484;
                  [(NSDictionary *)v484 setObject:v491 forKeyedSubscript:v479];

                  v471 = v483;
                  v477 = v682;
                  v476 = v685;
                }

                if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration]&& ((objc_msgSend_isEqualToString_(v479) & 1) != 0 || objc_msgSend_isEqualToString_(v479)))
                {
                  width4 = [resolvedVideoFormat width];
                  height4 = [resolvedVideoFormat height];
                }

                ++v478;
              }

              while (v476 != v478);
              v476 = [(NSArray *)objb countByEnumeratingWithState:&v722 objects:v721 count:16];
              if (v476)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            height4 = 0;
            width4 = 0;
          }

          if ([(NSDictionary *)v474 count])
          {

            selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = v474;
            v474 = 0;
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration postponeInferenceControllerPreparation])
          {
            [(NSMutableArray *)selfCopy->_postponedProcessorTypes addObject:&unk_1F2244B90];
            goto LABEL_570;
          }

          FigDebugIsInternalBuild();
          v493 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 12];
          mach_absolute_time();
          [array addObject:v493];
          v494 = [(BWInferenceEngineController *)v471 prepareWithPixelBufferPoolProvider:selfCopy];
          if (dword_1EB58E040)
          {
            v847 = 0;
            v846 = OS_LOG_TYPE_DEFAULT;
            v495 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v496 = v847;
            if (os_log_type_enabled(v495, v846))
            {
              v497 = v496;
            }

            else
            {
              v497 = v496 & 0xFFFFFFFE;
            }

            if (v497)
            {
              mach_absolute_time();
              v498 = FigHostTimeToNanoseconds();
              v766 = 136315650;
              v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v768 = 2114;
              v769 = v493;
              v770 = 2048;
              v771 = (v498 / 1000) / 1000.0;
              LODWORD(v659) = 32;
              v648 = &v766;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [array removeLastObject];
          if (!v494)
          {
LABEL_570:
            [v668 addObject:v471];
            goto LABEL_578;
          }

LABEL_572:
          v847 = 0;
          v846 = OS_LOG_TYPE_DEFAULT;
          v499 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v500 = v847;
          if (os_log_type_enabled(v499, v846))
          {
            v501 = v500;
          }

          else
          {
            v501 = v500 & 0xFFFFFFFE;
          }

          if (v501)
          {
            v766 = 136315138;
            v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
            LODWORD(v659) = 12;
            v646 = &v766;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_578:

          if (dword_1EB58E040)
          {
            v847 = 0;
            v846 = OS_LOG_TYPE_DEFAULT;
            v502 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v503 = v847;
            if (os_log_type_enabled(v502, v846))
            {
              v504 = v503;
            }

            else
            {
              v504 = v503 & 0xFFFFFFFE;
            }

            if (v504)
            {
              mach_absolute_time();
              v505 = FigHostTimeToNanoseconds();
              v766 = 136315650;
              v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v768 = 2114;
              v769 = v677;
              v770 = 2048;
              v771 = (v505 / 1000) / 1000.0;
              LODWORD(v659) = 32;
              v646 = &v766;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v461 = array;
          [array removeLastObject];
LABEL_586:
          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v506 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 13];
            mach_absolute_time();
            [v461 addObject:v506];
            v507 = [[BWSWFRProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration]];
            if (v507)
            {
              [v668 addObject:v507];
              if (dword_1EB58E040)
              {
                v847 = 0;
                v846 = OS_LOG_TYPE_DEFAULT;
                v508 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v509 = v847;
                if (os_log_type_enabled(v508, v846))
                {
                  v510 = v509;
                }

                else
                {
                  v510 = v509 & 0xFFFFFFFE;
                }

                if (v510)
                {
                  mach_absolute_time();
                  v511 = FigHostTimeToNanoseconds();
                  v766 = 136315650;
                  v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                  v768 = 2114;
                  v769 = v506;
                  v770 = 2048;
                  v771 = (v511 / 1000) / 1000.0;
                  LODWORD(v659) = 32;
                  v649 = &v766;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v461 = array;
              [array removeLastObject];
              goto LABEL_596;
            }

            goto LABEL_681;
          }

LABEL_596:
          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration colorConstancyProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v512 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 22];
            mach_absolute_time();
            [v461 addObject:v512];
            v513 = [[BWColorConstancyProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration colorConstancyProcessorControllerConfiguration]];
            if (!v513)
            {
              goto LABEL_681;
            }

            [v668 addObject:v513];
            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v514 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v515 = v847;
              if (os_log_type_enabled(v514, v846))
              {
                v516 = v515;
              }

              else
              {
                v516 = v515 & 0xFFFFFFFE;
              }

              if (v516)
              {
                mach_absolute_time();
                v517 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v512;
                v770 = 2048;
                v771 = (v517 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v650 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v461 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration redEyeProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v518 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 14];
            mach_absolute_time();
            [v461 addObject:v518];
            v519 = [[BWRedEyeReductionController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration redEyeProcessorControllerConfiguration]];
            if (!v519)
            {
              goto LABEL_681;
            }

            [v668 addObject:v519];
            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v520 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v521 = v847;
              if (os_log_type_enabled(v520, v846))
              {
                v522 = v521;
              }

              else
              {
                v522 = v521 & 0xFFFFFFFE;
              }

              if (v522)
              {
                mach_absolute_time();
                v523 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v518;
                v770 = 2048;
                v771 = (v523 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v651 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v461 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v524 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 15];
            mach_absolute_time();
            [v461 addObject:v524];
            if ([objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")])
            {
              if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
              {
                width4 = 512;
                height4 = 384;
              }

              else if (![(BWPhotonicEngineNodeResourceCoordinator *)&selfCopy->super.super.isa _inferenceOutputPixelBufferPoolForAttachedMediaKey:*p_output output:?]&& ![(BWPhotonicEngineNodeResourceCoordinator *)&selfCopy->super.super.isa _inferenceOutputPixelBufferPoolForAttachedMediaKey:*p_output output:?]|| !width4 || !height4)
              {
                goto LABEL_681;
              }
            }

            v525 = [objc_msgSend(*p_output "videoFormat")];
            v526 = [objc_msgSend(*p_output "videoFormat")];
            v527 = width4 | (height4 << 32);
            if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration]&& v667 >= 1 && SHIDWORD(v667) >= 1)
            {
              if (v525 <= v667)
              {
                v525 = v667;
              }

              if (v526 <= HIDWORD(v667))
              {
                v526 = HIDWORD(v667);
              }

              else
              {
                v526 = v526;
              }
            }

            IsEqualForDimensions = FigCaptureOrientationIsEqualForDimensions([objc_msgSend(*p_output "videoFormat")], v527);
            v529 = __ROR8__(v527, 32);
            v717 = 0u;
            v718 = 0u;
            if (IsEqualForDimensions)
            {
              v530 = width4 | (height4 << 32);
            }

            else
            {
              v530 = v529;
            }

            v719 = 0uLL;
            v720 = 0uLL;
            v531 = [v701 countByEnumeratingWithState:&v717 objects:v716 count:16];
            if (v531)
            {
              v532 = v531;
              v533 = *v718;
              do
              {
                for (n = 0; n != v532; ++n)
                {
                  if (*v718 != v533)
                  {
                    objc_enumerationMutation(v701);
                  }

                  intValue3 = [*(*(&v717 + 1) + 8 * n) intValue];
                  dimensionsByResolutionFlavorByPortType8 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
                  v537 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType8, intValue3);
                  v538 = FigCaptureLargestDimensionsFromDimensionsArray(v537);
                  if ((intValue3 - 3) < 4)
                  {
                    if (!FigCaptureOrientationIsEqualForDimensions([objc_msgSend(*p_output "videoFormat")], v538))
                    {
                      continue;
                    }

                    v539 = HIDWORD(v538);
                    if (v525 <= v538)
                    {
                      v525 = v538;
                    }

LABEL_640:
                    if (v526 <= v539)
                    {
                      v526 = v539;
                    }

                    else
                    {
                      v526 = v526;
                    }

                    continue;
                  }

                  if (intValue3 != 2)
                  {
                    if (intValue3 != 1)
                    {
                      continue;
                    }

                    v540 = -[BWPhotonicEngineNodeResourceCoordinator _resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:standardSoftISPOutputDimensions:](selfCopy, v538, [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
                    v539 = HIDWORD(v540);
                    if (v525 <= v540)
                    {
                      v525 = v540;
                    }

                    goto LABEL_640;
                  }

                  ultraHighResolutionProcessingEnabled2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled];
                  if (v525 <= v689)
                  {
                    v542 = v689;
                  }

                  else
                  {
                    v542 = v525;
                  }

                  if (v526 <= v690)
                  {
                    v543 = v690;
                  }

                  else
                  {
                    v543 = v526;
                  }

                  if (ultraHighResolutionProcessingEnabled2)
                  {
                    v526 = v543;
                  }

                  else
                  {
                    v526 = v526;
                  }

                  if (ultraHighResolutionProcessingEnabled2)
                  {
                    v525 = v542;
                  }
                }

                v532 = [v701 countByEnumeratingWithState:&v717 objects:v716 count:16];
              }

              while (v532);
            }

            [-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
            if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration depthDataDeliveryEnabled]&& [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration depthDataType]== 3 && [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dcProcessingWithDepthSupported])
            {
              pearlModuleType = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration pearlModuleType];
              if (pearlModuleType == 3)
              {
                v546 = 0;
              }

              else
              {
                v546 = FigCaptureFrontDepthDataToRGBRotationAngle(pearlModuleType, v545);
              }

              [-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
            }

            v547 = [[BWIntelligentDistortionCorrectionProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration]];
            if (!v547)
            {
              goto LABEL_681;
            }

            [v668 addObject:v547];
            stereoPhotoOutputDimensions3 = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions];
            if (stereoPhotoOutputDimensions3 >= 1 && SHIDWORD(stereoPhotoOutputDimensions3) >= 1)
            {
              deepFusionEnhancedResolutionDimensions = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionEnhancedResolutionDimensions];
              v551 = deepFusionEnhancedResolutionDimensions > 0 && SHIDWORD(deepFusionEnhancedResolutionDimensions) > 0;
              v552 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
              v553 = [objc_msgSend(*p_output "videoFormat")];
              v554 = objc_alloc_init(BWVideoFormatRequirements);
              [(BWVideoFormatRequirements *)v554 setWidth:[(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions]];
              [(BWVideoFormatRequirements *)v554 setHeight:[(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions]>> 32];
              [(BWVideoFormatRequirements *)v554 setWidthAlignment:16];
              [(BWVideoFormatRequirements *)v554 setHeightAlignment:16];
              v715 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v553];
              -[BWVideoFormatRequirements setSupportedPixelFormats:](v554, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v715 count:1]);
              if ([objc_msgSend(*p_input "videoFormat")])
              {
                v714 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
                v555 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v714 count:1];
              }

              else
              {
                v555 = 0;
              }

              [(BWVideoFormatRequirements *)v554 setSupportedColorSpaceProperties:v555];
              v713 = v554;
              v556 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v713 count:1]);
              v557 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v556, v552 + 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Stereo photo output pool (%@)", BWStringForOSType()], memoryPool);
              selfCopy->_stereoPhotoOutputPool = v557;
              if (v557 == 0 || v551)
              {
                if (!v557)
                {
                  goto LABEL_681;
                }
              }

              else
              {
                [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
                [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
              }
            }

            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v562 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v563 = v847;
              if (os_log_type_enabled(v562, v846))
              {
                v564 = v563;
              }

              else
              {
                v564 = v563 & 0xFFFFFFFE;
              }

              if (v564)
              {
                mach_absolute_time();
                v565 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v524;
                v770 = 2048;
                v771 = (v565 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v652 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v461 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepZoomProcessorControllerConfiguration])
          {
            if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration postponeSelectResourceAlloctions])
            {
              [(NSMutableArray *)selfCopy->_postponedProcessorTypes addObject:&unk_1F2244BA8];
            }

            else
            {
              FigDebugIsInternalBuild();
              v566 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 16];
              mach_absolute_time();
              [v461 addObject:v566];
              v567 = [[BWDeepZoomProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepZoomProcessorControllerConfiguration]];
              if (!v567)
              {
                goto LABEL_681;
              }

              v568 = v567;
              if ([(BWDeepZoomProcessorController *)v567 prepareWithPixelBufferPoolProvider:selfCopy])
              {
                goto LABEL_681;
              }

              [v668 addObject:v568];
              if (dword_1EB58E040)
              {
                v847 = 0;
                v846 = OS_LOG_TYPE_DEFAULT;
                v569 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v570 = v847;
                if (os_log_type_enabled(v569, v846))
                {
                  v571 = v570;
                }

                else
                {
                  v571 = v570 & 0xFFFFFFFE;
                }

                if (v571)
                {
                  mach_absolute_time();
                  v572 = FigHostTimeToNanoseconds();
                  v766 = 136315650;
                  v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                  v768 = 2114;
                  v769 = v566;
                  v770 = 2048;
                  v771 = (v572 / 1000) / 1000.0;
                  LODWORD(v659) = 32;
                  v653 = &v766;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v461 = array;
              [array removeLastObject];
            }
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration scalerProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v576 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 17];
            mach_absolute_time();
            [v461 addObject:v576];
            v577 = [[BWScalerProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration scalerProcessorControllerConfiguration]];
            if (!v577)
            {
              goto LABEL_681;
            }

            [v668 addObject:v577];
            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v578 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v579 = v847;
              if (os_log_type_enabled(v578, v846))
              {
                v580 = v579;
              }

              else
              {
                v580 = v579 & 0xFFFFFFFE;
              }

              if (v580)
              {
                mach_absolute_time();
                v581 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v576;
                v770 = 2048;
                v771 = (v581 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v654 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v461 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration smartStyleRenderingProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v582 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 21];
            mach_absolute_time();
            [v461 addObject:v582];
            v583 = [[BWSmartStyleRenderingProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration smartStyleRenderingProcessorControllerConfiguration]];
            if (!v583)
            {
              goto LABEL_681;
            }

            [v668 addObject:v583];
            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v584 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v585 = v847;
              if (os_log_type_enabled(v584, v846))
              {
                v586 = v585;
              }

              else
              {
                v586 = v585 & 0xFFFFFFFE;
              }

              if (v586)
              {
                mach_absolute_time();
                v587 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v582;
                v770 = 2048;
                v771 = (v587 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v655 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v461 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration stereoDisparityProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v588 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 18];
            mach_absolute_time();
            [v461 addObject:v588];
            if ([-[BWPhotonicEngineNodeConfiguration stereoDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "stereoDisparityProcessorControllerConfiguration")] == 8 && !-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "softISPProcessorControllerConfiguration"))
            {
              goto LABEL_681;
            }

            [-[BWPhotonicEngineNodeConfiguration stereoDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "stereoDisparityProcessorControllerConfiguration")];
            v589 = [[BWStereoDisparityProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration stereoDisparityProcessorControllerConfiguration]];
            if (!v589)
            {
              goto LABEL_681;
            }

            [v668 addObject:v589];
            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v590 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v591 = v847;
              if (os_log_type_enabled(v590, v846))
              {
                v592 = v591;
              }

              else
              {
                v592 = v591 & 0xFFFFFFFE;
              }

              if (v592)
              {
                mach_absolute_time();
                v593 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v588;
                v770 = 2048;
                v771 = (v593 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v656 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v461 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperColorStillsExecutorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v594 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 19];
            mach_absolute_time();
            [v461 addObject:v594];
            [-[BWPhotonicEngineNodeConfiguration jasperColorStillsExecutorControllerConfiguration](selfCopy->_nodeConfiguration "jasperColorStillsExecutorControllerConfiguration")];
            [-[BWPhotonicEngineNodeConfiguration jasperColorStillsExecutorControllerConfiguration](selfCopy->_nodeConfiguration "jasperColorStillsExecutorControllerConfiguration")];
            v595 = [[BWJasperColorStillsExecutorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperColorStillsExecutorControllerConfiguration]];
            if (!v595)
            {
              goto LABEL_681;
            }

            [v668 addObject:v595];
            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v596 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v597 = v847;
              if (os_log_type_enabled(v596, v846))
              {
                v598 = v597;
              }

              else
              {
                v598 = v597 & 0xFFFFFFFE;
              }

              if (v598)
              {
                mach_absolute_time();
                v599 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v594;
                v770 = 2048;
                v771 = (v599 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v657 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v461 = array;
            [array removeLastObject];
          }

          v600 = dictionary2;
          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperDisparityProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v601 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 20];
            mach_absolute_time();
            [v461 addObject:v601];
            [-[BWPhotonicEngineNodeConfiguration jasperDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "jasperDisparityProcessorControllerConfiguration")];
            [-[BWPhotonicEngineNodeConfiguration jasperDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "jasperDisparityProcessorControllerConfiguration")];
            [-[BWPhotonicEngineNodeConfiguration jasperDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "jasperDisparityProcessorControllerConfiguration")];
            v602 = [[BWJasperDisparityProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperDisparityProcessorControllerConfiguration]];
            if (!v602)
            {
              [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
              goto LABEL_681;
            }

            [v668 addObject:v602];
            if (dword_1EB58E040)
            {
              v847 = 0;
              v846 = OS_LOG_TYPE_DEFAULT;
              v603 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v604 = v847;
              if (os_log_type_enabled(v603, v846))
              {
                v605 = v604;
              }

              else
              {
                v605 = v604 & 0xFFFFFFFE;
              }

              if (v605)
              {
                mach_absolute_time();
                v606 = FigHostTimeToNanoseconds();
                v766 = 136315650;
                v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v768 = 2114;
                v769 = v601;
                v770 = 2048;
                v771 = (v606 / 1000) / 1000.0;
                LODWORD(v659) = 32;
                v658 = &v766;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v461 = array;
              v600 = dictionary2;
            }

            [v461 removeLastObject];
          }

          v711 = 0u;
          v712 = 0u;
          v709 = 0u;
          v710 = 0u;
          v607 = [v668 countByEnumeratingWithState:&v709 objects:v708 count:16];
          if (v607)
          {
            v608 = v607;
            v609 = *v710;
            do
            {
              for (ii = 0; ii != v608; ++ii)
              {
                if (*v710 != v609)
                {
                  objc_enumerationMutation(v668);
                }

                [(BWStillImageProcessorCoordinator *)selfCopy addController:*(*(&v709 + 1) + 8 * ii)];
              }

              v608 = [v668 countByEnumeratingWithState:&v709 objects:v708 count:16];
            }

            while (v608);
          }

          if ([dictionary3 count])
          {
            v611 = dictionary3;
          }

          else
          {
            v611 = 0;
          }

          [v665 setObject:v611 forKeyedSubscript:&unk_1F2244B48];
          v706 = 0u;
          v707 = 0u;
          v704 = 0u;
          v705 = 0u;
          v612 = [v600 countByEnumeratingWithState:&v704 objects:v703 count:16];
          if (v612)
          {
            v613 = v612;
            v614 = *v705;
            do
            {
              for (jj = 0; jj != v613; ++jj)
              {
                if (*v705 != v614)
                {
                  objc_enumerationMutation(v600);
                }

                v616 = *(*(&v704 + 1) + 8 * jj);
                v617 = [v600 objectForKeyedSubscript:v616];
                if ([v617 count])
                {
                  v618 = v617;
                }

                else
                {
                  v618 = 0;
                }

                [v665 setObject:v618 forKeyedSubscript:v616];
              }

              v613 = [v600 countByEnumeratingWithState:&v704 objects:v703 count:16];
            }

            while (v613);
          }

          selfCopy->_pixelBufferProviderByPixelFormatByResolutionFlavor = [v665 copy];
          if (![(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
          {
            [(BWPhotonicEngineNodeResourceCoordinator *)selfCopy prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:0];
          }

          os_unfair_lock_lock(&selfCopy->_resourceCoordinatorLock);
          selfCopy->_hasSuccessfullySetupProcessorControllersAndMemoryResources = 1;
          os_unfair_lock_unlock(&selfCopy->_resourceCoordinatorLock);
          if (dword_1EB58E040)
          {
            v847 = 0;
            v846 = OS_LOG_TYPE_DEFAULT;
            v619 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v620 = v847;
            if (os_log_type_enabled(v619, v846))
            {
              v621 = v620;
            }

            else
            {
              v621 = v620 & 0xFFFFFFFE;
            }

            if (v621)
            {
              mach_absolute_time();
              v622 = FigHostTimeToNanoseconds();
              v766 = 136315650;
              v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v768 = 2114;
              v769 = v664;
              v770 = 2048;
              v771 = (v622 / 1000) / 1000.0;
              LODWORD(v659) = 32;
              v633 = &v766;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [array removeLastObject];
          if (dword_1EB58E040)
          {
            v847 = 0;
            v846 = OS_LOG_TYPE_DEFAULT;
            v623 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v624 = v847;
            if (os_log_type_enabled(v623, v846))
            {
              v625 = v624;
            }

            else
            {
              v625 = v624 & 0xFFFFFFFE;
            }

            if (v625)
            {
              v766 = 136315394;
              v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v768 = 2114;
              v769 = selfCopy;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          return 0;
        }

LABEL_805:
        v474 = 0;
        height4 = 0;
        width4 = 0;
        goto LABEL_572;
      }
    }

    v439 = HIDWORD(v437);
    v440 = v437;
    inferenceMainImageDownscalingFactor4 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v442 = FigCaptureRoundFloatToMultipleOf(2, v440 / *&inferenceMainImageDownscalingFactor4);
    inferenceMainImageDownscalingFactor5 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v444 = FigCaptureRoundFloatToMultipleOf(2, v439 / *&inferenceMainImageDownscalingFactor5);
    v445 = v444;
    if (intValue2 != 1)
    {
      height5 = v444;
      processingAspectRatio = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio];
      if (intValue2 == BWResolutionFlavorForAspectRatio(processingAspectRatio))
      {
        v448 = v696;
        [v696 setWidth:v442];
      }

      else
      {
        if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio]!= 6)
        {
          goto LABEL_507;
        }

        v448 = v696;
        width5 = [v696 width];
        width6 = v442;
        if (width5 > v442)
        {
          width6 = [v696 width];
        }

        [v696 setWidth:width6];
        if ([v696 height] > v445)
        {
          height5 = [v696 height];
        }
      }

      [v448 setHeight:height5];
    }

LABEL_507:
    v451 = +[BWVideoFormatRequirements formatRequirements];
    v452 = v451;
    if (v442 <= 0x200)
    {
      v453 = 512;
    }

    else
    {
      v453 = v442;
    }

    [v451 setWidth:v453];
    if (v445 <= 0x180)
    {
      v454 = 384;
    }

    else
    {
      v454 = v445;
    }

    [v452 setHeight:v454];
    [v452 setWidthAlignment:8];
    [v452 setHeightAlignment:8];
    v728 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v700];
    [v452 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v728, 1)}];
    v727 = v452;
    v455 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v727 count:1]);
    v456 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v455, [MEMORY[0x1E696AEC0] stringWithFormat:@"Additional inference input on-demand allocator (%@)", BWPhotoEncoderStringFromEncodingScheme(intValue2)], memoryPool, 0);
    if (!v456)
    {
      v474 = 0;
      height4 = 0;
      width4 = 0;
      goto LABEL_572;
    }

    v457 = v456;
    [dictionary8 setObject:v456 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", intValue2)}];

    v388 = v701;
    goto LABEL_515;
  }

  FigDebugIsInternalBuild();
  v320 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 1];
  mach_absolute_time();
  [v37 addObject:v320];
  v321 = [[BWNRFProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration nrfProcessorControllerConfiguration]];
  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration])
  {
    if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
    {
      v322 = -[NSDictionary objectForKeyedSubscript:](selfCopy->_softISPOutputPoolByPixelFormat, "objectForKeyedSubscript:", [*(v36 + 3480) numberWithUnsignedInt:v51]);
      capacity7 = [v322 capacity];
      if (capacity7 <= [(BWNRFProcessorController *)v321 progressiveLowLightFusionBatchSize]+ 2)
      {
        capacity8 = [(BWNRFProcessorController *)v321 progressiveLowLightFusionBatchSize]+ 2;
      }

      else
      {
        capacity8 = [v322 capacity];
      }

      [v322 setCapacity:capacity8];
    }

    if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
    {
      v325 = [(BWNRFProcessorController *)v321 rawNightModeOutputPixelFormatByBufferType:31];
      v326 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v326, "setWidth:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      -[BWVideoFormatRequirements setHeight:](v326, "setHeight:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      [(BWVideoFormatRequirements *)v326 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v326 setHeightAlignment:16];
      v747 = [*(v36 + 3480) numberWithUnsignedInt:v325];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v326, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v747 count:1]);
      v746 = v326;
      v327 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v746 count:1]);
      v328 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v327, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Raw Night Mode Denoised Image pool (%@)", BWStringForOSType()], memoryPool);
      if (!v328)
      {
        goto LABEL_681;
      }

      selfCopy->_rawNightModeDenoisedImagePool = v328;
      v329 = [(BWNRFProcessorController *)v321 rawNightModeOutputPixelFormatByBufferType:32];
      v330 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v330, "setWidth:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      -[BWVideoFormatRequirements setHeight:](v330, "setHeight:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      [(BWVideoFormatRequirements *)v330 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v330 setHeightAlignment:16];
      v745 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v329];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v330, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v745 count:1]);
      v744 = v330;
      v331 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v744 count:1]);
      v332 = MEMORY[0x1E696AEC0];
      v640 = BWStringForOSType();
      v333 = v332;
      v36 = 0x1E696A000;
      v334 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v331, 1, [v333 stringWithFormat:@"Raw Night Mode Noise Map pool (%@)", v640], memoryPool);
      if (!v334)
      {
        goto LABEL_681;
      }

      selfCopy->_rawNightModeNoiseMapPool = v334;
    }
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration digitalFlashSupportEnabled])
  {
    dictionary9 = [MEMORY[0x1E695DF90] dictionary];
    v740 = 0u;
    v741 = 0u;
    v742 = 0u;
    v743 = 0u;
    sensorConfigurationsByPortType = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration sensorConfigurationsByPortType];
    v337 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v740 objects:v739 count:16];
    if (v337)
    {
      v339 = v337;
      v340 = *v741;
      do
      {
        for (kk = 0; kk != v339; ++kk)
        {
          if (*v741 != v340)
          {
            objc_enumerationMutation(sensorConfigurationsByPortType);
          }

          v342 = *(*(&v740 + 1) + 8 * kk);
          if (BWPortTypeIsColorCamera(v342, v338))
          {
            [dictionary9 setObject:-[BWNRFProcessorController adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:](v321 forKeyedSubscript:{"adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:", v342), v342}];
          }
        }

        v339 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v740 objects:v739 count:16];
      }

      while (v339);
    }

    v36 = 0x1E696A000;
    if ([dictionary9 count])
    {
      os_unfair_lock_lock(&selfCopy->_resourceCoordinatorLock);
      selfCopy->_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderByPortType = [dictionary9 copy];
      os_unfair_lock_unlock(&selfCopy->_resourceCoordinatorLock);
    }
  }

  if (v321)
  {
    [v668 addObject:v321];
    if (dword_1EB58E040)
    {
      v847 = 0;
      v846 = OS_LOG_TYPE_DEFAULT;
      v343 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v344 = v847;
      if (os_log_type_enabled(v343, v846))
      {
        v345 = v344;
      }

      else
      {
        v345 = v344 & 0xFFFFFFFE;
      }

      if (v345)
      {
        mach_absolute_time();
        v346 = FigHostTimeToNanoseconds();
        v766 = 136315650;
        v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v768 = 2114;
        v769 = v320;
        v770 = 2048;
        v771 = (v346 / 1000) / 1000.0;
        LODWORD(v659) = 32;
        v639 = &v766;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v37 = array;
    [array removeLastObject];
    goto LABEL_389;
  }

LABEL_681:
  v847 = 0;
  v846 = OS_LOG_TYPE_DEFAULT;
  v558 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v559 = v847;
  if (os_log_type_enabled(v558, v846))
  {
    v560 = v559;
  }

  else
  {
    v560 = v559 & 0xFFFFFFFE;
  }

  if (v560)
  {
    v561 = [array componentsJoinedByString:@"->"];
    v766 = 136315394;
    v767 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
    v768 = 2114;
    v769 = v561;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v573 = [array componentsJoinedByString:@"->"];
  v844 = 138543362;
  *v845 = v573;
  v574 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(7, v574, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 2355, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:2355", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:2355", 0);
  free(v574);
  return -12786;
}

- (int)liveReconfigureIfNeeded
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if (dword_1EB58E040)
  {
    v49 = 0;
    v48 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceControllerConfiguration:v42])
  {
    if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio]&& [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio])
    {
      v4 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__output;
    }

    else
    {
      v4 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__input;
    }

    videoFormat = [*(&self->super.super.isa + *v4) videoFormat];
    width = [videoFormat width];
    inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v8 = FigCaptureRoundFloatToMultipleOf(2, width / *&inferenceMainImageDownscalingFactor);
    height = [videoFormat height];
    inferenceMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v11 = FigCaptureRoundFloatToMultipleOf(2, height / *&inferenceMainImageDownscalingFactor2);
    if ((v8 | (v11 << 32)) != -[BWPixelBufferPool dimensions](self->_intermediateInferenceInputPool, "dimensions") && ((self->_intermediateInferenceInputPool, self->_intermediateInferenceInputPool = 0, !FigCapturePlatformSupportsUniversalCompression()) ? (v12 = 875704422) : (v12 = FigCaptureCompressedPixelFormatForPixelFormat(875704422, 4, 0)), (v13 = +[BWVideoFormatRequirements formatRequirements](BWVideoFormatRequirements, "formatRequirements"), v14 = v13, v8 <= 0x200) ? (v15 = 512) : (v15 = v8), ([v13 setWidth:v15], v11 <= 0x180) ? (v16 = 384) : (v16 = v11), (objc_msgSend(v14, "setHeight:", v16), objc_msgSend(v14, "setWidthAlignment:", 8), objc_msgSend(v14, "setHeightAlignment:", 8), v47 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v12), objc_msgSend(v14, "setSupportedPixelFormats:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v47, 1)), v46 = v14, v17 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v46, 1)), v18 = objc_msgSend(-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](self->_nodeConfiguration), "objectForKeyedSubscript:", &unk_1F2244B48), v19 = -[BWPhotonicEngineNodeConfiguration outputBufferCount](self->_nodeConfiguration), !v18) ? (v20 = 1) : (v20 = 2), v21 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v17, (v19 << v20), @"Inference input pool for standard resolution", -[BWNodeOutput memoryPool](self->_output, "memoryPool")), (self->_intermediateInferenceInputPool = v21) == 0) || (v22 = -[BWPhotonicEngineNodeResourceCoordinator waitAndSafelyGetProcessorControllerForType:](self, "waitAndSafelyGetProcessorControllerForType:", 3)) == 0)
    {
      v40 = v51;
      v39 = -12780;
      goto LABEL_44;
    }

    v23 = objc_alloc(MEMORY[0x1E695DF90]);
    if (self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey)
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
    }

    else
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = MEMORY[0x1E695E0F8];
    }

    v25 = [v23 initWithDictionary:inferenceOutputPixelBufferProvidersByAttachedMediaKey];
    inferenceControllerQueue = self->_inferenceControllerQueue;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke;
    v45[3] = &unk_1E79989D0;
    v45[4] = v22;
    v45[5] = self;
    v45[6] = v25;
    v45[7] = &v50;
    ubn_dispatch_sync(inferenceControllerQueue, v45);

    self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = 0;
    if ([(NSDictionary *)v25 count])
    {
      self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = v25;
    }

    v27 = self->_inferenceControllerQueue;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke_2;
    v44[3] = &unk_1E79907B0;
    v44[5] = self;
    v44[6] = &v50;
    v44[4] = v22;
    ubn_dispatch_sync(v27, v44);
  }

  if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
  {
    v39 = *(v51 + 6);
    goto LABEL_46;
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio]&& [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio])
  {
    v28 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__output;
  }

  else
  {
    v28 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__input;
  }

  videoFormat2 = [*(&self->super.super.isa + *v28) videoFormat];
  v30 = [-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](self->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
  v32 = v31;
  IsEqualForDimensions = FigCaptureOrientationIsEqualForDimensions([videoFormat2 dimensions], v30);
  v34 = [(BWPhotonicEngineNodeResourceCoordinator *)self waitAndSafelyGetProcessorControllerForType:7];
  v35 = __ROR8__(v32, 32);
  if (IsEqualForDimensions)
  {
    v36 = v32;
  }

  else
  {
    v36 = v35;
  }

  if (IsEqualForDimensions)
  {
    v37 = HIDWORD(v30);
  }

  else
  {
    LODWORD(v37) = v30;
  }

  if (IsEqualForDimensions)
  {
    LODWORD(v38) = v30;
  }

  else
  {
    v38 = HIDWORD(v30);
  }

  v39 = [v34 determineWorkingBufferRequirementsWithProcessorConfig:{v38 | (v37 << 32), v36}];
  v40 = v51;
LABEL_44:
  *(v40 + 6) = v39;
LABEL_46:
  _Block_object_dispose(&v50, 8);
  return v39;
}

BWPixelBufferPool *__66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke(uint64_t a1)
{
  v1 = a1;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(a1 + 32) providedAttachedMediaKeys];
  result = [obj countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v25;
    v5 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
    while (2)
    {
      v6 = 0;
      v21 = v3;
      do
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = v5[947];
        if (![objc_msgSend(*(*(v1 + 40) + v8) mediaPropertiesForAttachedMediaKey:{v7), "preparedPixelBufferPool"}])
        {
          result = [*(v1 + 32) outputVideoFormatForAttachedMediaKey:v7];
          if (!result)
          {
            v19 = -12780;
LABEL_21:
            *(*(*(v1 + 56) + 8) + 24) = v19;
            return result;
          }

          v9 = result;
          v10 = v4;
          v11 = v1;
          v12 = [*(*(v1 + 40) + 32) deferredCaptureSupportEnabled];
          v13 = [*(*(v1 + 40) + 32) stereoPhotoOutputDimensions];
          if (SHIDWORD(v13) <= 0 || v13 <= 0)
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }

          v16 = [BWPixelBufferPool alloc];
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UB %@ Output Pool", v7];
          LOBYTE(v20) = v12;
          result = -[BWPixelBufferPool initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:](v16, "initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:", v9, v15, v17, 0, [*(*(v11 + 40) + v8) memoryPool], v12, v20);
          if (!result)
          {
            v19 = -12786;
            v1 = v11;
            goto LABEL_21;
          }

          v18 = result;
          [*(v11 + 48) setObject:result forKeyedSubscript:v7];

          v4 = v10;
          v5 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
          v1 = v11;
          v3 = v21;
        }

        v6 = (v6 + 1);
      }

      while (v3 != v6);
      result = [obj countByEnumeratingWithState:&v24 objects:v23 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *__66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) inferenceEnginePrepared];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) prepareWithPixelBufferPoolProvider:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (id)pixelBufferProviderForInferencesWithResolutionFlavor:(int)flavor
{
  if (flavor <= 6)
  {
    if (((1 << flavor) & 0x7A) != 0)
    {
      v4 = *(self + 23);
      v5 = [MEMORY[0x1E696AD98] numberWithInt:?];

      return [v4 objectForKeyedSubscript:v5];
    }

    else
    {
      return *(self + 22);
    }
  }

  return self;
}

- (void)flushSoftISPOutputBufferPools
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  softISPOutputPoolByPixelFormat = self->_softISPOutputPoolByPixelFormat;
  v4 = [(NSDictionary *)softISPOutputPoolByPixelFormat countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(softISPOutputPoolByPixelFormat);
        }

        [-[NSDictionary objectForKeyedSubscript:](self->_softISPOutputPoolByPixelFormat objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * i)), "flushToMinimumCapacity:", 0}];
      }

      v5 = [(NSDictionary *)softISPOutputPoolByPixelFormat countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)flushUltraHighResolutionBufferPools
{
  v2 = [(NSDictionary *)self->_pixelBufferProviderByPixelFormatByResolutionFlavor objectForKeyedSubscript:&unk_1F2244B48];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [v2 objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v6)];
        if (v7)
        {
          [v7 flushToMinimumCapacity:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }
}

- (void)releaseResourcesWithSettings:(id)settings
{
  v5 = [objc_msgSend(settings "captureSettings")];
  if ((v5 & 0x200000000) != 0)
  {
    v6 = [objc_msgSend(settings "captureSettings")] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x100000000) != 0)
  {
    if ([objc_msgSend(settings "captureSettings")] == 12)
    {
      v7 = [objc_msgSend(settings "captureSettings")] ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([objc_msgSend(settings "captureSettings")] != 13)
  {
    [(BWPixelBufferPool *)self->_syntheticIntermediatesPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_fusionMapPool flushToMinimumCapacity:0];
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x800000000) == 0)
  {
    [(BWPixelBufferPool *)self->_rawNightModeDenoisedImagePool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_rawNightModeNoiseMapPool flushToMinimumCapacity:0];
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x200) == 0 && objc_msgSend(-[BWPhotonicEngineNodeConfiguration jasperColorStillsExecutorControllerConfiguration](self->_nodeConfiguration, "jasperColorStillsExecutorControllerConfiguration"), "postponeProcessorSetup"))
  {
    [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{9), "purgeResources"}];
  }

  [(BWPhotonicEngineNodeResourceCoordinator *)self flushSoftISPOutputBufferPools];
  if (v7)
  {
    if ((v5 & 0x200000000) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [(BWPhotonicEngineNodeResourceCoordinator *)self flushUltraHighResolutionBufferPools];
    if ((v5 & 0x200000000) != 0)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionGainMapPool flushToMinimumCapacity:0];
  if ((v6 & 1) == 0)
  {
LABEL_19:
    [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionSemanticStyleOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_deepZoomTransferHighResolutionInputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_deepZoomTransferEnhancedResolutionOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_smartStyleEnhancedResolutionOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_smartStyleUltraHighResolutionOutputPool flushToMinimumCapacity:0];
  }

LABEL_20:
  if (![objc_msgSend(settings "captureSettings")])
  {
    [(BWPixelBufferPool *)self->_stereoPhotoOutputPool flushToMinimumCapacity:0];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  inferenceOutputPixelBufferProvidersByAttachedMediaKey = self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
  v9 = [(NSDictionary *)inferenceOutputPixelBufferProvidersByAttachedMediaKey countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(inferenceOutputPixelBufferProvidersByAttachedMediaKey);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [(NSDictionary *)self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey objectForKeyedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v14 && [v14 usesMemoryPool] && ((objc_msgSend_isEqualToString_(v13) & 1) == 0 && (objc_msgSend_isEqualToString_(v13) & 1) == 0 && !objc_msgSend_isEqualToString_(v13) || (objc_msgSend(objc_msgSend(settings, "captureSettings"), "captureFlags") & 0x80) == 0))
        {
          [v14 flushToMinimumCapacity:0];
        }
      }

      v10 = [(NSDictionary *)inferenceOutputPixelBufferProvidersByAttachedMediaKey countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }
}

- (void)kickoffAnyPostonedResourceAllocations
{
  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration postponeSelectResourceAlloctions])
  {
    postponedResourceSetupGroup = self->_postponedResourceSetupGroup;
    postponedResourceSetupQueue = self->_postponedResourceSetupQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__BWPhotonicEngineNodeResourceCoordinator_kickoffAnyPostonedResourceAllocations__block_invoke;
    v5[3] = &unk_1E798F870;
    v5[4] = self;
    ubn_dispatch_group_async(postponedResourceSetupGroup, postponedResourceSetupQueue, v5);
  }
}

- (id)waitAndSafelyGetProcessorControllerForType:(unint64_t)type
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator waitAndSafelyGetProcessorControllerForType:];
  }

  postponedResourceSetupGroup = self->_postponedResourceSetupGroup;
  if (postponedResourceSetupGroup)
  {
    dispatch_group_wait(postponedResourceSetupGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  return [(BWStillImageProcessorCoordinator *)self controllerForType:type];
}

- (id)processorControllersForSharedExternalMemoryResource
{
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_1F2248D00 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_1F2248D00);
        }

        v8 = -[BWStillImageProcessorCoordinator controllerForType:](self, "controllerForType:", [*(*(&v11 + 1) + 8 * v7) intValue]);
        if ([v8 supportsExternalMemoryResource])
        {
          [array addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_1F2248D00 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  return [array copy];
}

- (void)purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:(id)settings
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:];
  }
}

- (void)postponedProcessorForType:(unint64_t)type safelyExecuteBlockWhenReady:(id)ready
{
  postponedResourceSetupGroup = self->_postponedResourceSetupGroup;
  postponedResourceSetupQueue = self->_postponedResourceSetupQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__BWPhotonicEngineNodeResourceCoordinator_postponedProcessorForType_safelyExecuteBlockWhenReady___block_invoke;
  v6[3] = &unk_1E7991B98;
  v6[5] = ready;
  v6[6] = type;
  v6[4] = self;
  ubn_dispatch_group_async(postponedResourceSetupGroup, postponedResourceSetupQueue, v6);
}

uint64_t __97__BWPhotonicEngineNodeResourceCoordinator_postponedProcessorForType_safelyExecuteBlockWhenReady___block_invoke(uint64_t a1)
{
  [*(a1 + 32) controllerForType:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

double __97__BWPhotonicEngineNodeResourceCoordinator__ensureProcessorCoordinatorSetupForPostponedProcessors__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) inferenceEnginePrepared] & 1) == 0)
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 12];
    mach_absolute_time();
    [*(a1 + 32) prepareWithPixelBufferPoolProvider:*(a1 + 40)];
    if (dword_1EB58E040)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (void)createAndWaitOnEnhancedResolutionPortraitSemaphore
{
  os_unfair_lock_lock(&self->_enhancedResolutionPortraitSemaphoreLock);
  self->_enhancedResolutionPortraitSemaphore = dispatch_semaphore_create(0);
  os_unfair_lock_unlock(&self->_enhancedResolutionPortraitSemaphoreLock);
  if (dword_1EB58E040)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_semaphore_wait(self->_enhancedResolutionPortraitSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (dword_1EB58E040)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)clearEnhancedResolutionPortraitSemaphoreWithError:(int)error
{
  os_unfair_lock_lock(&self->_enhancedResolutionPortraitSemaphoreLock);
  enhancedResolutionPortraitSemaphore = self->_enhancedResolutionPortraitSemaphore;
  if (enhancedResolutionPortraitSemaphore)
  {
    if (dword_1EB58E040)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      enhancedResolutionPortraitSemaphore = self->_enhancedResolutionPortraitSemaphore;
    }

    dispatch_semaphore_signal(enhancedResolutionPortraitSemaphore);
    v6 = self->_enhancedResolutionPortraitSemaphore;
    if (v6)
    {
      CFRelease(v6);
      self->_enhancedResolutionPortraitSemaphore = 0;
    }
  }

  os_unfair_lock_unlock(&self->_enhancedResolutionPortraitSemaphoreLock);
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type
{
  os_unfair_lock_lock(&self->_resourceCoordinatorLock);
  v5 = [(NSDictionary *)self->_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderByPortType objectForKeyedSubscript:type];
  os_unfair_lock_unlock(&self->_resourceCoordinatorLock);

  return v5;
}

- (id)syncGetInferencesForInferenceInputBufferType:(unint64_t)type
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator syncGetInferencesForInferenceInputBufferType:];
  }

  v5 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__26;
  v14 = __Block_byref_object_dispose__26;
  v15 = 0;
  if (type <= 0x27 && ((1 << type) & 0x9000008000) != 0)
  {
    inferenceControllerQueue = self->_inferenceControllerQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__BWPhotonicEngineNodeResourceCoordinator_syncGetInferencesForInferenceInputBufferType___block_invoke;
    v9[3] = &unk_1E79989F8;
    v9[5] = &v10;
    v9[6] = type;
    v9[4] = self;
    ubn_dispatch_sync(inferenceControllerQueue, v9);
    v5 = v11[5];
  }

  v7 = v5;
  _Block_object_dispose(&v10, 8);
  return v7;
}

id __88__BWPhotonicEngineNodeResourceCoordinator_syncGetInferencesForInferenceInputBufferType___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__inferences;
  if (v2 == 39)
  {
    v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoSecondaryInferences;
  }

  if (v2 == 36)
  {
    v4 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__quadraForEnhancedResolutionInferences;
  }

  else
  {
    v4 = v3;
  }

  result = *(a1[4] + *v4);
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

- (void)asyncSetInferenceBuffer:(__CVBuffer *)buffer metadata:(id)metadata inferenceAttachedMediaKey:(id)key
{
  if (buffer)
  {
    CFRetain(buffer);
  }

  inferenceControllerQueue = self->_inferenceControllerQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceBuffer_metadata_inferenceAttachedMediaKey___block_invoke;
  v10[3] = &unk_1E7998980;
  v10[4] = self;
  v10[5] = metadata;
  v10[6] = key;
  v10[7] = buffer;
  ubn_dispatch_async(inferenceControllerQueue, v10);
}

void __102__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceBuffer_metadata_inferenceAttachedMediaKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 336);
  if (!v2)
  {
    *(a1[4] + 336) = objc_alloc_init(BWStillImageInferences);
    v2 = *(a1[4] + 336);
  }

  [v2 addInferenceBuffer:a1[7] metadata:a1[5] inferenceAttachedMediaKey:a1[6]];
  v3 = a1[7];
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)asyncSetInference:(id)inference inferenceAttachmentKey:(id)key
{
  inferenceControllerQueue = self->_inferenceControllerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__BWPhotonicEngineNodeResourceCoordinator_asyncSetInference_inferenceAttachmentKey___block_invoke;
  v5[3] = &unk_1E798FD58;
  v5[4] = self;
  v5[5] = inference;
  v5[6] = key;
  ubn_dispatch_async(inferenceControllerQueue, v5);
}

uint64_t __84__BWPhotonicEngineNodeResourceCoordinator_asyncSetInference_inferenceAttachmentKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 336);
  if (!v2)
  {
    *(a1[4] + 336) = objc_alloc_init(BWStillImageInferences);
    v2 = *(a1[4] + 336);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v2 addInference:v3 inferenceAttachmentKey:v4];
}

- (void)asyncSetInferenceAttachedMediaMetadata:(id)metadata
{
  inferenceControllerQueue = self->_inferenceControllerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceAttachedMediaMetadata___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = metadata;
  ubn_dispatch_async(inferenceControllerQueue, v4);
}

uint64_t __82__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceAttachedMediaMetadata___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 336);
  if (!v2)
  {
    *(*(a1 + 32) + 336) = objc_alloc_init(BWStillImageInferences);
    v2 = *(*(a1 + 32) + 336);
  }

  v3 = *(a1 + 40);

  return [v2 addInferenceAttachedMediaMetadata:v3];
}

- (void)syncMergeInferencesWithSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator syncMergeInferencesWithSampleBuffer:stillImageSettings:];
  }

  inferenceControllerQueue = self->_inferenceControllerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__BWPhotonicEngineNodeResourceCoordinator_syncMergeInferencesWithSampleBuffer_stillImageSettings___block_invoke;
  block[3] = &unk_1E798FE50;
  block[5] = self;
  block[6] = buffer;
  block[4] = settings;
  dispatch_sync(inferenceControllerQueue, block);
}

void *__98__BWPhotonicEngineNodeResourceCoordinator_syncMergeInferencesWithSampleBuffer_stillImageSettings___block_invoke(uint64_t a1)
{
  if (dword_1EB58E040)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  BWPhotonicEngineUtilitiesMergeInferenceAttachmentsIfRequired(*(a1 + 48), *(*(a1 + 40) + 336));
  return BWPhotonicEngineUtilitiesMergeInferenceAttachedMedia(*(a1 + 48), [*(*(a1 + 40) + 32) inferenceAttachedMediaRequiredForSettings:*(a1 + 32) inferences:*(*(a1 + 40) + 336)], *(*(a1 + 40) + 336), *(*(a1 + 40) + 360));
}

- (void)syncReleaseInferencesForInferenceInputBufferType:(unint64_t)type
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator syncReleaseInferencesForInferenceInputBufferType:];
  }

  inferenceControllerQueue = self->_inferenceControllerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __92__BWPhotonicEngineNodeResourceCoordinator_syncReleaseInferencesForInferenceInputBufferType___block_invoke;
  v6[3] = &unk_1E7990178;
  v6[4] = self;
  v6[5] = type;
  ubn_dispatch_sync(inferenceControllerQueue, v6);
}

void __92__BWPhotonicEngineNodeResourceCoordinator_syncReleaseInferencesForInferenceInputBufferType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 15:
      v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__inferences;
      break;
    case 39:
      v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoSecondaryInferences;
      break;
    case 36:
      v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__quadraForEnhancedResolutionInferences;
      break;
    default:
      return;
  }

  v4 = *v3;

  *(*(a1 + 32) + v4) = 0;
}

- (void)unsafeSetInferences:(id)inferences forInferenceInputBufferType:(unint64_t)type
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator unsafeSetInferences:forInferenceInputBufferType:];
  }

  switch(type)
  {
    case 0xFuLL:
      v7 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__inferences;
      break;
    case 0x27uLL:
      v7 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoSecondaryInferences;
      break;
    case 0x24uLL:
      v7 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__quadraForEnhancedResolutionInferences;
      break;
    default:
      return;
  }

  v8 = *v7;

  *(&self->super.super.isa + v8) = inferences;
}

- (id)attachedMediaFromInferencesOrSampleBuffer:(opaqueCMSampleBuffer *)buffer attachedMediaKeys:(id)keys
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = CMGetAttachment(buffer, @"AttachedMedia", 0);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [keys countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    syncInferences = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(keys);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        if (v14)
        {
          [dictionary setObject:v14 forKeyedSubscript:v13];
        }

        else
        {
          if (!syncInferences)
          {
            syncInferences = [(BWPhotonicEngineNodeResourceCoordinator *)self syncInferences];
          }

          CMSampleBufferGetPresentationTimeStamp(&v19, buffer);
          v15 = [(BWStillImageInferences *)syncInferences createSampleBufferForInferenceForAttachedMediaKey:v13 pts:&v19];
          if (v15)
          {
            v16 = v15;
            [dictionary setObject:v15 forKeyedSubscript:v13];
            CFRelease(v16);
          }
        }
      }

      v9 = [keys countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (unint64_t)_deepFusionEnhancedResolutionOutputDimensionsForOutput:(uint64_t)output
{
  if (output)
  {
    if (![a2 videoFormat] || ((v3 = OUTLINED_FUNCTION_18_19(), v3 >= 1) ? (v4 = SHIDWORD(v3) < 1) : (v4 = 1), v4))
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v5 = [objc_msgSend(a2 "videoFormat")];
      v6 = v5 / [objc_msgSend(a2 "videoFormat")];
      v7 = OUTLINED_FUNCTION_18_19();
      v8 = v6 / (v7 / (OUTLINED_FUNCTION_18_19() >> 32));
      v9 = OUTLINED_FUNCTION_18_19();
      v10 = FigCaptureRoundFloatToMultipleOf(2, v8 * v9);
      v11 = OUTLINED_FUNCTION_18_19() & 0xFFFFFFFF00000000;
      v12 = v10;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

- (unint64_t)_disparityProcessorInputDimensionsForInputVideoFormat:(uint64_t)format
{
  if (format)
  {
    width = [a2 width];
    height = [a2 height];
    if ([objc_msgSend(*(format + 32) "stereoDisparityProcessorControllerConfiguration")] == 8)
    {
      width = width / 2;
      height = (height / 2);
    }
  }

  else
  {
    height = 0;
    width = 0;
  }

  return width | (height << 32);
}

- (unint64_t)_resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:(unint64_t)dimensions standardSoftISPOutputDimensions:
{
  if (result)
  {
    dimensionsCopy = dimensions;
    v5 = result;
    v6 = HIDWORD(a2);
    v7 = HIDWORD(dimensions);
    if (a2 != [(BWPhotonicEngineNodeConfiguration *)*(result + 32) rawSensorDimensions]|| v6 != [(BWPhotonicEngineNodeConfiguration *)*(v5 + 32) rawSensorDimensions]>> 32)
    {
      v8 = a2 / v6;
      v9 = vabdd_f64(dimensionsCopy / v7, v8);
      if (dimensionsCopy != v7 && v9 > 0.1)
      {
        v8 = dimensionsCopy / v7;
      }

      v11 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(a2, v8);
      v12 = BWExtendDimensionsToConformToAlignmentRequirements(v11, 16, 16);
      if (v12 >= a2)
      {
        dimensionsCopy = a2;
      }

      else
      {
        dimensionsCopy = v12;
      }

      if (SHIDWORD(v12) >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = HIDWORD(v12);
      }
    }

    return dimensionsCopy | (v7 << 32);
  }

  return result;
}

- (id)_inferenceOutputPixelBufferPoolForAttachedMediaKey:(void *)key output:
{
  if (!result)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  if (objc_msgSend_isEqualToString_(a2, a2, 0x1F219ECB0))
  {
    if ([objc_msgSend(v5[4] "deepZoomProcessorControllerConfiguration")] == 3)
    {
      v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__deepZoomTransferEnhancedResolutionOutputPool;
      goto LABEL_7;
    }

    v4 = @"PrimaryFormat";
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoOutputPool;
LABEL_7:
    result = *(v5 + *v6);
    if (result)
    {
      return result;
    }
  }

  v7 = [key mediaPropertiesForAttachedMediaKey:v4];
  result = [v7 livePixelBufferPool];
  if (!result)
  {
    result = [v7 preparedPixelBufferPool];
    if (!result)
    {
      v8 = v5[21];

      return [v8 objectForKeyedSubscript:v4];
    }
  }

  return result;
}

- (id)pixelBufferProviderForProcessorController:(id)controller processorInput:(id)input type:(unint64_t)type dimensions:(id)dimensions pixelFormat:(unsigned int)format attachedMediaKey:(id)key
{
  v9 = *&format;
  v15 = -[BWPhotonicEngineNodeConfiguration resolvedProcessingResolutionFlavorForSettings:portType:](self->_nodeConfiguration, "resolvedProcessingResolutionFlavorForSettings:portType:", [input stillImageSettings], objc_msgSend(input, "portType"));
  switch([controller type])
  {
    case 2:
      if (![input onlyApplyingSemanticStyle])
      {
        switch(type)
        {
          case 0xDuLL:
            if ((v15 - 1) < 6)
            {
              v33 = OUTLINED_FUNCTION_14_26();
              OUTLINED_FUNCTION_13_30(v33);
              v34 = OUTLINED_FUNCTION_13_30([*(type + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
              if (v34)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = v34;
              }

              else
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  noiseReductionAndFusionProcessorOutputIntermediatePool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
                  if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                  {
                    goto LABEL_188;
                  }
                }
              }

              if ([objc_msgSend(input "processingSettings")] && -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") != dimensions)
              {
                v66 = MEMORY[0x1E696AEC0];
                v67 = BWStillImageProcessorTypeToShortString([controller type]);
                typeCopy = 13;
                goto LABEL_173;
              }

              goto LABEL_188;
            }

            if (v15 || ([objc_msgSend(input "captureSettings")] & 0x200000000) != 0 && self->_deepFusionEnhancedResolutionOutputPool)
            {
              goto LABEL_188;
            }

            goto LABEL_181;
          case 0xEuLL:
          case 0x10uLL:
          case 0x11uLL:
          case 0x12uLL:
          case 0x14uLL:
            goto LABEL_188;
          case 0xFuLL:
            goto LABEL_175;
          case 0x13uLL:
            switch(v15)
            {
              case 0:
                if (([objc_msgSend(input "captureSettings")] & 0x200000000) == 0 || !self->_deepFusionEnhancedResolutionGainMapPool)
                {
                  goto LABEL_57;
                }

                goto LABEL_188;
              case 1:
              case 3:
              case 4:
              case 5:
              case 6:
                [MEMORY[0x1E696AD98] numberWithInt:v15];
                if (![objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244B30}")])
                {
                  goto LABEL_57;
                }

                goto LABEL_188;
              case 2:
                goto LABEL_57;
              default:
                goto LABEL_188;
            }

          case 0x15uLL:
            if ((v15 - 1) >= 6)
            {
              if (!v15)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v62 = OUTLINED_FUNCTION_14_26();
              OUTLINED_FUNCTION_13_30(v62);
              v63 = [*(type + 3480) numberWithUnsignedInt:-[BWPhotonicEngineNodeConfiguration linearYUVPixelFormat](self->_nodeConfiguration)];
              v64 = OUTLINED_FUNCTION_13_30(v63);
              if (v64)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = v64;
              }

              else
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F21AAE10), "livePixelBufferPool"}];
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  goto LABEL_188;
                }
              }

              if ([objc_msgSend(input "processingSettings")] && -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") != dimensions)
              {
                v66 = MEMORY[0x1E696AEC0];
                v67 = BWStillImageProcessorTypeToShortString([controller type]);
                typeCopy = 21;
                goto LABEL_173;
              }
            }

            break;
          default:
            switch(type)
            {
              case 0x1EuLL:
                goto LABEL_188;
              case 0x24uLL:
                goto LABEL_175;
              case 0x29uLL:
                goto LABEL_63;
            }

            goto LABEL_188;
        }

        goto LABEL_188;
      }

      deepFusionEnhancedResolutionSemanticStyleOutputPool = self->_deepFusionEnhancedResolutionSemanticStyleOutputPool;
      if (deepFusionEnhancedResolutionSemanticStyleOutputPool && [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionSemanticStyleOutputPool width]== dimensions.var0 && [(BWPixelBufferPool *)deepFusionEnhancedResolutionSemanticStyleOutputPool height]== *&dimensions >> 32 && self->_deepFusionEnhancedResolutionSemanticStyleOutputPool)
      {
        goto LABEL_188;
      }

LABEL_181:
      if (self->_noiseReductionAndFusionProcessorOutputIntermediatePool)
      {
        goto LABEL_188;
      }

      goto LABEL_182;
    case 3:
      goto LABEL_82;
    case 6:
      switch(type)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 0xEuLL:
        case 0x21uLL:
        case 0x23uLL:
        case 0x26uLL:
        case 0x34uLL:
        case 0x35uLL:
          OUTLINED_FUNCTION_20_14();
          if (!v22)
          {
            if ([objc_msgSend(input "captureSettings")] == 10)
            {
              goto LABEL_182;
            }

            v25 = OUTLINED_FUNCTION_8_38();
            OUTLINED_FUNCTION_13_30(v25);
            v26 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
            if (v26)
            {
              noiseReductionAndFusionProcessorOutputIntermediatePool = v26;
            }

            else
            {
              noiseReductionAndFusionProcessorOutputIntermediatePool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
              if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  goto LABEL_188;
                }
              }
            }

            if (![objc_msgSend(input "processingSettings")] || -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") == dimensions)
            {
              goto LABEL_188;
            }

            v66 = MEMORY[0x1E696AEC0];
            v67 = BWStillImageProcessorTypeToShortString([controller type]);
            typeCopy = type;
LABEL_173:
            v81 = BWStillImageBufferTypeToShortString(typeCopy);
            v82 = BWStringFromDimensions();
            [v66 stringWithFormat:@"OptimizedProcessingForZoomFOV-OnDemand-%@-%@-%@-%@", v67, v81, v82, BWStringFromCVPixelFormatType(-[BWPixelBufferPool pixelFormat](noiseReductionAndFusionProcessorOutputIntermediatePool, "pixelFormat"))];
            goto LABEL_104;
          }

          if ((v15 - 1) >= 2)
          {
            if (!v15)
            {
              goto LABEL_181;
            }

            goto LABEL_188;
          }

          v35 = OUTLINED_FUNCTION_8_38();
          OUTLINED_FUNCTION_13_30(v35);
          v36 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
          if (v36)
          {
            livePixelBufferPool = v36;
          }

          else
          {
            livePixelBufferPool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
            if (!livePixelBufferPool)
            {
              livePixelBufferPool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
              if (!livePixelBufferPool)
              {
                goto LABEL_188;
              }
            }
          }

          if (![objc_msgSend(input "processingSettings")])
          {
            goto LABEL_188;
          }

          [(BWPixelBufferPool *)livePixelBufferPool pixelFormat];
          v69 = MEMORY[0x1E696AEC0];
          v70 = BWStillImageProcessorTypeToShortString([controller type]);
          v71 = BWStillImageBufferTypeToShortString(type);
          v72 = BWStringFromDimensions();
          [v69 stringWithFormat:@"OptimizedFusionProcessing-OnDemand-%@-%@-%@-%@", v70, v71, v72, BWStringFromCVPixelFormatType(-[BWPixelBufferPool pixelFormat](livePixelBufferPool, "pixelFormat"))];
          +[BWMemoryPool sharedMemoryPool];
          OUTLINED_FUNCTION_17_23();
          goto LABEL_105;
        case 7uLL:
        case 0x1DuLL:
        case 0x33uLL:
          if (v15 > 6)
          {
            goto LABEL_188;
          }

          if (((1 << v15) & 0x7A) == 0)
          {
            goto LABEL_181;
          }

          v60 = OUTLINED_FUNCTION_8_38();
          OUTLINED_FUNCTION_13_30(v60);
          v61 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
          if (v61)
          {
            noiseReductionAndFusionProcessorOutputIntermediatePool = v61;
          }

          else
          {
            noiseReductionAndFusionProcessorOutputIntermediatePool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
            if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
            {
              noiseReductionAndFusionProcessorOutputIntermediatePool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
              if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
              {
                goto LABEL_188;
              }
            }
          }

          if ([objc_msgSend(input "processingSettings")] && -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") != dimensions || objc_msgSend(objc_msgSend(input, "processingSettings"), "optimizedProcessingWithCropAndDownscaleEnabled"))
          {
            v53 = MEMORY[0x1E696AEC0];
            v54 = BWStillImageProcessorTypeToShortString([controller type]);
            typeCopy2 = type;
            goto LABEL_103;
          }

          goto LABEL_188;
        case 0xFuLL:
          OUTLINED_FUNCTION_20_14();
          if (v22)
          {
            if (v15 > 2)
            {
              goto LABEL_188;
            }
          }

          else
          {
            [objc_msgSend(input "captureSettings")];
          }

LABEL_175:
          OUTLINED_FUNCTION_6_50();

          result = [v83 pixelBufferProviderForInferencesWithResolutionFlavor:?];
          break;
        case 0x13uLL:
          switch(v15)
          {
            case 0:
              goto LABEL_207;
            case 1:
              deepFusionEnhancedResolutionGainMapPool = [OUTLINED_FUNCTION_13_30(objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{1)), "objectForKeyedSubscript:", &unk_1F2244B30}];
              if (![objc_msgSend(input "processingSettings")])
              {
                break;
              }

              inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
              FigCaptureRoundFloatToMultipleOf(2, dimensions.var0 / *&inferenceMainImageDownscalingFactor);
              inferenceMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
              FigCaptureRoundFloatToMultipleOf(2, dimensions.var1 / *&inferenceMainImageDownscalingFactor2);
              v93 = MEMORY[0x1E696AEC0];
              v94 = BWStillImageProcessorTypeToShortString([controller type]);
              v95 = BWStillImageBufferTypeToShortString(19);
              v96 = BWStringFromDimensions();
              [v93 stringWithFormat:@"OptimizedProcessing-OnDemand-%@-%@-%@-%@", v94, v95, v96, BWStringFromCVPixelFormatType(1278226488)];
              +[BWMemoryPool sharedMemoryPool];
              OUTLINED_FUNCTION_17_23();
              v79 = [v97 onDemandAllocatorWithDimensions:? dimensionAlignment:? pixelFormat:? name:? memoryPool:?];
              goto LABEL_191;
            case 2:
              if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
              {
                v87 = MEMORY[0x1E696AD98];
                v88 = 2;
                goto LABEL_190;
              }

LABEL_207:
              if (([objc_msgSend(input "captureSettings")] & 0x200000000) != 0)
              {
                deepFusionEnhancedResolutionGainMapPool = self->_deepFusionEnhancedResolutionGainMapPool;
              }

              else
              {
LABEL_208:
                deepFusionEnhancedResolutionGainMapPool = 0;
              }

              break;
            case 3:
            case 4:
            case 5:
            case 6:
              if ([objc_msgSend(input "captureSettings")] == 10)
              {
                v79 = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F217BF50), "livePixelBufferPool"}];
              }

              else
              {
                v87 = MEMORY[0x1E696AD98];
                v88 = v15;
LABEL_190:
                [v87 numberWithInt:v88];
                v79 = [objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244B30}")];
              }

LABEL_191:
              deepFusionEnhancedResolutionGainMapPool = v79;
              break;
            default:
              goto LABEL_208;
          }

          [objc_msgSend(input "captureSettings")];
          if (!deepFusionEnhancedResolutionGainMapPool)
          {
            goto LABEL_57;
          }

          goto LABEL_188;
        case 0x15uLL:
          switch(v15)
          {
            case 0:
              goto LABEL_53;
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
              v74 = OUTLINED_FUNCTION_14_26();
              OUTLINED_FUNCTION_13_30(v74);
              v75 = [*(type + 3480) numberWithUnsignedInt:-[BWPhotonicEngineNodeConfiguration linearYUVPixelFormat](self->_nodeConfiguration)];
              v76 = OUTLINED_FUNCTION_13_30(v75);
              if (v76)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = v76;
              }

              else
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F21AAE10), "livePixelBufferPool"}];
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  goto LABEL_188;
                }
              }

              if ((![objc_msgSend(input "processingSettings")] || -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") == dimensions) && !objc_msgSend(objc_msgSend(input, "processingSettings"), "optimizedProcessingWithCropAndDownscaleEnabled"))
              {
                goto LABEL_188;
              }

              v53 = MEMORY[0x1E696AEC0];
              v54 = BWStillImageProcessorTypeToShortString([controller type]);
              typeCopy2 = 21;
              break;
            case 2:
              if (![objc_msgSend(input "captureSettings")])
              {
                goto LABEL_153;
              }

              goto LABEL_53;
            default:
              goto LABEL_188;
          }

          goto LABEL_103;
        case 0x1FuLL:
          switch(v15)
          {
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
              [OUTLINED_FUNCTION_2_72() numberWithInt:v15];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v73 = 136;
              goto LABEL_150;
            case 2:
              if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
              {
                goto LABEL_188;
              }

              [OUTLINED_FUNCTION_2_72() numberWithInt:2];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v90 = 136;
              break;
            default:
              goto LABEL_188;
          }

          goto LABEL_213;
        case 0x20uLL:
          switch(v15)
          {
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
              [OUTLINED_FUNCTION_2_72() numberWithInt:v15];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v73 = 144;
LABEL_150:
              [input numberWithUnsignedInt:{objc_msgSend(*(&self->super.super.isa + v73), "pixelFormat")}];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              goto LABEL_188;
            case 2:
              if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
              {
                goto LABEL_188;
              }

              [OUTLINED_FUNCTION_2_72() numberWithInt:2];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v90 = 144;
              break;
            default:
              goto LABEL_188;
          }

LABEL_213:
          videoFormat = *(&self->super.super.isa + v90);
          goto LABEL_214;
        case 0x27uLL:
          [(BWVideoFormat *)[(BWNodeInput *)self->_input videoFormat] width];
          [(BWVideoFormat *)[(BWNodeInput *)self->_input videoFormat] height];
          BWStillImageBufferTypeToShortString(39);
          [(BWNodeOutput *)self->_output memoryPool];
          OUTLINED_FUNCTION_17_23();
          goto LABEL_105;
        case 0x29uLL:
          -[BWPhotonicEngineNodeConfiguration smartStyleUseCaseForSettings:](self->_nodeConfiguration, "smartStyleUseCaseForSettings:", [input stillImageSettings]);
          [OUTLINED_FUNCTION_4() linearYUVIntermediateThumbnailDimensionsForUseCase:?];
          [-[BWPhotonicEngineNodeConfiguration smartStyleRenderingProcessorControllerConfiguration](self->_nodeConfiguration "smartStyleRenderingProcessorControllerConfiguration")];
          BWStillImageBufferTypeToShortString(41);
          [(BWNodeOutput *)self->_output memoryPool];
          OUTLINED_FUNCTION_6_50();

          return [v77 onDemandAllocatorWithDimensions:? pixelFormat:? name:? memoryPool:?];
        default:
          goto LABEL_188;
      }

      return result;
    case 7:
    case 18:
      switch(type)
      {
        case 0x7D2uLL:
          goto LABEL_46;
        case 0x10uLL:
          output = self->_output;
          keyCopy = key;
          goto LABEL_59;
        case 0x13uLL:
          if (v15 > 6)
          {
            goto LABEL_188;
          }

          if (v15 != 2 || ![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
          {
LABEL_57:
            output = self->_output;
            keyCopy = @"GainMap";
            goto LABEL_59;
          }

          [MEMORY[0x1E696AD98] numberWithInt:2];
          if (![objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244B30}")])
          {
            [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F217BF50), "livePixelBufferPool"}];
          }

          [-[NSDictionary objectForKeyedSubscript:](self->_pixelBufferProviderByPixelFormatByResolutionFlavor objectForKeyedSubscript:{&unk_1F2244B48), "objectForKeyedSubscript:", &unk_1F2244B30}];
          goto LABEL_188;
        case 0x15uLL:
          if (v15 > 6)
          {
            goto LABEL_188;
          }

          if (v15 != 2 || ![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
          {
LABEL_53:
            output = self->_output;
            keyCopy = @"DemosaicedRaw";
            goto LABEL_59;
          }

LABEL_153:
          [OUTLINED_FUNCTION_2_72() numberWithInt:2];
          [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
          OUTLINED_FUNCTION_15_24();
          linearYUVPixelFormat = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration linearYUVPixelFormat];
          break;
        case 0x26uLL:
          goto LABEL_188;
        case 0x29uLL:
LABEL_63:
          -[BWPhotonicEngineNodeConfiguration smartStyleUseCaseForSettings:](self->_nodeConfiguration, "smartStyleUseCaseForSettings:", [input stillImageSettings]);
          [OUTLINED_FUNCTION_4() linearYUVIntermediateThumbnailDimensionsForUseCase:?];
          [-[BWPhotonicEngineNodeConfiguration smartStyleRenderingProcessorControllerConfiguration](self->_nodeConfiguration "smartStyleRenderingProcessorControllerConfiguration")];
          BWStillImageBufferTypeToShortString(41);
          [(BWNodeOutput *)self->_output memoryPool];
          OUTLINED_FUNCTION_17_23();
          goto LABEL_105;
        case 1uLL:
          [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] dimensions];
          formatRequirements = [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)self->_output primaryMediaConfiguration] formatRequirements];
          widthAlignment = [(BWFormatRequirements *)formatRequirements widthAlignment];
          if (widthAlignment <= [(BWFormatRequirements *)formatRequirements heightAlignment])
          {
            [(BWFormatRequirements *)formatRequirements heightAlignment];
          }

          else
          {
            [(BWFormatRequirements *)formatRequirements widthAlignment];
          }

          OUTLINED_FUNCTION_20_14();
          if (!v22)
          {
            pixelFormat = v9;
            if (!v9)
            {
              pixelFormat = [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] pixelFormat];
            }

            if (pixelFormat == [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] pixelFormat])
            {
              goto LABEL_90;
            }

            goto LABEL_97;
          }

          if (v15 < 2)
          {
            if (([objc_msgSend(input "captureSettings")] & 0x200000000) == 0 || (distortionCorrectionEnhancedResolutionOutputPool = self->_distortionCorrectionEnhancedResolutionOutputPool) == 0)
            {
              distortionCorrectionEnhancedResolutionOutputPool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
            }

            if (v9 && [(BWPixelBufferPool *)distortionCorrectionEnhancedResolutionOutputPool pixelFormat]!= v9)
            {
LABEL_97:
              v51 = MEMORY[0x1E696AEC0];
              [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] dimensions];
              v52 = BWStringFromDimensions();
              [v51 stringWithFormat:@"On-demand allocator %@ '%@' for Scaler / DC", v52, BWStringFromCVPixelFormatType(v9)];
              +[BWMemoryPool sharedMemoryPool];
LABEL_105:
              OUTLINED_FUNCTION_6_50();

              return [v58 onDemandAllocatorWithDimensions:? dimensionAlignment:? pixelFormat:? name:? memoryPool:?];
            }

LABEL_188:
            OUTLINED_FUNCTION_6_50();
            return result;
          }

          if (v15 != 2)
          {
            goto LABEL_188;
          }

          if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
          {
LABEL_90:
            v49 = self->_output;
            goto LABEL_183;
          }

          [OUTLINED_FUNCTION_2_72() numberWithInt:2];
          [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
          OUTLINED_FUNCTION_15_24();
          videoFormat = [(BWNodeOutput *)self->_output videoFormat];
LABEL_214:
          linearYUVPixelFormat = [(BWVideoFormat *)videoFormat pixelFormat];
          break;
        default:
          goto LABEL_188;
      }

      [input numberWithUnsignedInt:linearYUVPixelFormat];
      OUTLINED_FUNCTION_4();
LABEL_82:
      OUTLINED_FUNCTION_6_50();

      return [v45 objectForKeyedSubscript:?];
    case 8:
    case 9:
    case 13:
      if (type != 2001)
      {
        goto LABEL_188;
      }

      output = self->_output;
      keyCopy = @"Depth";
      goto LABEL_59;
    case 10:
      goto LABEL_182;
    case 12:
      if (type != 1)
      {
        goto LABEL_188;
      }

      v29 = [controller outputPixelFormatForInput:input];
      if (v15 > 6)
      {
        goto LABEL_188;
      }

      v30 = v29;
      if (((1 << v15) & 0x5A) == 0)
      {
        if (((1 << v15) & 5) == 0 || ((-[BWPhotonicEngineNodeConfiguration dimensionsByResolutionFlavorByPortType](self->_nodeConfiguration), v38 = [OUTLINED_FUNCTION_13_30(objc_msgSend(input "portType"))], v39 = FigCaptureDimensionsFromDictionaryRepresentation(v38), v40 = FigCaptureDimensionsFromDictionaryRepresentation(objc_msgSend(objc_msgSend(-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](self->_nodeConfiguration, "softISPProcessorControllerConfiguration"), "outputDimensionsByResolutionFlavor"), "objectForKeyedSubscript:", &unk_1F2244B48)), v39 >= 1) ? (v41 = SHIDWORD(v39) < 1) : (v41 = 1), !v41 ? (v42 = v40 == dimensions) : (v42 = 0), !v42))
        {
          v43 = MEMORY[0x1E696AD98];
          v44 = v30;
          goto LABEL_81;
        }
      }

      v31 = OUTLINED_FUNCTION_8_38();
      OUTLINED_FUNCTION_13_30(v31);
      v32 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:v30]);
      if (v32)
      {
        noiseReductionAndFusionProcessorOutputIntermediatePool = v32;
      }

      else
      {
        noiseReductionAndFusionProcessorOutputIntermediatePool = -[NSDictionary objectForKeyedSubscript:](self->_softISPOutputPoolByPixelFormat, "objectForKeyedSubscript:", [*(v9 + 3480) numberWithUnsignedInt:v30]);
        if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
        {
          goto LABEL_188;
        }
      }

      if ((![objc_msgSend(input "processingSettings")] || -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") == dimensions) && !objc_msgSend(objc_msgSend(input, "processingSettings"), "optimizedProcessingWithCropAndDownscaleEnabled"))
      {
        goto LABEL_188;
      }

      v53 = MEMORY[0x1E696AEC0];
      v54 = BWStillImageProcessorTypeToShortString([controller type]);
      typeCopy2 = 1;
LABEL_103:
      v56 = BWStillImageBufferTypeToShortString(typeCopy2);
      v57 = BWStringFromDimensions();
      [v53 stringWithFormat:@"OptimizedProcessing-OnDemand-%@-%@-%@-%@", v54, v56, v57, BWStringFromCVPixelFormatType(-[BWPixelBufferPool pixelFormat](noiseReductionAndFusionProcessorOutputIntermediatePool, "pixelFormat"))];
LABEL_104:
      [(BWPixelBufferPool *)noiseReductionAndFusionProcessorOutputIntermediatePool pixelFormat];
      +[BWMemoryPool sharedMemoryPool];
      OUTLINED_FUNCTION_17_23();
      goto LABEL_105;
    case 15:
      if (type != 1)
      {
        goto LABEL_188;
      }

      outputPixelFormat = [controller outputPixelFormat];
      if ((v15 - 1) >= 6)
      {
        if (v15)
        {
          goto LABEL_188;
        }

        v43 = MEMORY[0x1E696AD98];
      }

      else
      {
        v21 = -[NSDictionary objectForKeyedSubscript:](self->_pixelBufferProviderByPixelFormatByResolutionFlavor, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v15]);
        if ([v21 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", outputPixelFormat)}])
        {
          goto LABEL_188;
        }

        v43 = MEMORY[0x1E696AD98];
      }

      v44 = outputPixelFormat;
LABEL_81:
      [v43 numberWithUnsignedInt:v44];
      goto LABEL_82;
    case 16:
      if (type == 19)
      {
        goto LABEL_57;
      }

      if (type == 1)
      {
        OUTLINED_FUNCTION_20_14();
        if (!v22)
        {
          goto LABEL_182;
        }

        if (v15 <= 2)
        {
          smartStyleEnhancedResolutionOutputPool = self->_smartStyleEnhancedResolutionOutputPool;
          if ([(BWPixelBufferPool *)smartStyleEnhancedResolutionOutputPool width]!= dimensions.var0 || [(BWPixelBufferPool *)smartStyleEnhancedResolutionOutputPool height]!= *&dimensions >> 32)
          {
            smartStyleUltraHighResolutionOutputPool = self->_smartStyleUltraHighResolutionOutputPool;
            if ([(BWPixelBufferPool *)smartStyleUltraHighResolutionOutputPool width]!= dimensions.var0 || [(BWPixelBufferPool *)smartStyleUltraHighResolutionOutputPool height]!= *&dimensions >> 32)
            {
              goto LABEL_182;
            }
          }
        }
      }

      goto LABEL_188;
    case 17:
      if (type == 2002)
      {
LABEL_46:
        output = self->_output;
        keyCopy = @"ConstantColorConfidenceMap";
LABEL_59:
        [(BWNodeOutput *)output mediaPropertiesForAttachedMediaKey:keyCopy];
      }

      else
      {
        if (type != 1)
        {
          goto LABEL_188;
        }

LABEL_182:
        v49 = self->_output;
LABEL_183:
        [(BWNodeOutput *)v49 primaryMediaProperties];
      }

      OUTLINED_FUNCTION_6_50();

      return [v85 livePixelBufferPool];
    default:
      goto LABEL_188;
  }
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(key, a2, 0x1F219ECB0, format))
  {
    if ([-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")] == 3)
    {
      v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__deepZoomTransferEnhancedResolutionOutputPool;
      goto LABEL_6;
    }

    keyCopy = @"PrimaryFormat";
  }

  else if (objc_msgSend_isEqualToString_(keyCopy))
  {
    v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoOutputPool;
LABEL_6:
    result = *(&self->super.super.isa + *v6);
    if (result)
    {
      return result;
    }
  }

  v8 = [(BWNodeOutput *)self->_output mediaPropertiesForAttachedMediaKey:keyCopy];
  result = [v8 livePixelBufferPool];
  if (!result)
  {
    result = [v8 preparedPixelBufferPool];
    if (!result)
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;

      return [(NSDictionary *)inferenceOutputPixelBufferProvidersByAttachedMediaKey objectForKeyedSubscript:keyCopy];
    }
  }

  return result;
}

- (void)_ensureProcessorCoordinatorSetupForPostponedProcessors
{
  if (!self)
  {
    return;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v21);
  }

  array = [MEMORY[0x1E695DF70] array];
  FigDebugIsInternalBuild();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 25];
  mach_absolute_time();
  [array addObject:v3];
  if ([self hasSuccessfullySetupProcessorControllersAndMemoryResources])
  {
    v4 = [self controllerForType:3];
    if (v4)
    {
      v5 = v4;
      if ([*(self + 32) postponeInferenceControllerPreparation])
      {
        v6 = *(self + 248);
        v7 = *(self + 240);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __97__BWPhotonicEngineNodeResourceCoordinator__ensureProcessorCoordinatorSetupForPostponedProcessors__block_invoke;
        v25[3] = &unk_1E798F898;
        v25[4] = v5;
        v25[5] = self;
        ubn_dispatch_group_async(v6, v7, v25);
      }
    }

    if (![*(self + 32) deepZoomProcessorControllerConfiguration] || objc_msgSend(self, "controllerForType:", 10))
    {
      goto LABEL_20;
    }

    FigDebugIsInternalBuild();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 16];
    mach_absolute_time();
    [array addObject:v8];
    v9 = -[BWDeepZoomProcessorController initWithConfiguration:]([BWDeepZoomProcessorController alloc], "initWithConfiguration:", [*(self + 32) deepZoomProcessorControllerConfiguration]);
    if (v9)
    {
      v10 = v9;
      if (![(BWDeepZoomProcessorController *)v9 prepareWithPixelBufferPoolProvider:self])
      {
        [self addController:v10];
        if (dword_1EB58E040)
        {
          OUTLINED_FUNCTION_3_64();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v23))
          {
            v12 = v24;
          }

          else
          {
            v12 = v24 & 0xFFFFFFFE;
          }

          if (v12)
          {
            mach_absolute_time();
            v13 = FigHostTimeToNanoseconds();
            v14 = OUTLINED_FUNCTION_16_27(v13);
            OUTLINED_FUNCTION_19_19(v14, 1000.0);
            OUTLINED_FUNCTION_11_32();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [array removeLastObject];
LABEL_20:
        if (dword_1EB58E040)
        {
          OUTLINED_FUNCTION_3_64();
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(v15, v23))
          {
            v16 = v24;
          }

          else
          {
            v16 = v24 & 0xFFFFFFFE;
          }

          if (v16)
          {
            mach_absolute_time();
            v17 = FigHostTimeToNanoseconds();
            v18 = OUTLINED_FUNCTION_16_27(v17);
            OUTLINED_FUNCTION_19_19(v18, 1000.0);
            OUTLINED_FUNCTION_11_32();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [array removeLastObject];
        return;
      }
    }
  }

  OUTLINED_FUNCTION_3_64();
  v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (os_log_type_enabled(v19, v23))
  {
    v20 = v24;
  }

  else
  {
    v20 = v24 & 0xFFFFFFFE;
  }

  if (v20)
  {
    [array componentsJoinedByString:@"->"];
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  [array componentsJoinedByString:@"->"];
  v22 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(7, v22, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 3856, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:3856", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:3856", 0);
  free(v22);
}

- (void)prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:(id)settings
{
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v87);
  }

  if (!self->_useSharedExternalMemoryResourceForProcessorControllers)
  {
    goto LABEL_84;
  }

  v5 = 296;
  if ([(NSArray *)self->_sharedExternalMemoryResourceSetUpForResolutionFlavors count])
  {
    goto LABEL_84;
  }

  v100 = [(BWPhotonicEngineNodeResourceCoordinator *)self _requiredResolutionFlavorsForSharedExternalMemoryResourceWithSettings:settings];
  if (![v100 count])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v88, v90, v91, selfCopy, v93, v95, v96, type);
    goto LABEL_84;
  }

  FigDebugIsInternalBuild();
  v89 = 23;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
  v7 = mach_absolute_time();
  processorControllersForSharedExternalMemoryResource = [(BWPhotonicEngineNodeResourceCoordinator *)self processorControllersForSharedExternalMemoryResource];
  v9 = [processorControllersForSharedExternalMemoryResource count];
  v17 = &dword_1EB58E000;
  v94 = v7;
  if (v9 < 2)
  {
    if (dword_1EB58E040)
    {
      v33 = OUTLINED_FUNCTION_5_57(v9, v10, v11, v12, v13, v14, v15, v16, 23, v90, v91, selfCopy, v7, 296, v96, type, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), *v121, *&v121[8], *&v121[16], v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
      if (os_log_type_enabled(v33, type))
      {
        v34 = v141;
      }

      else
      {
        v34 = v141 & 0xFFFFFFFE;
      }

      if (v34)
      {
        if ([processorControllersForSharedExternalMemoryResource firstObject])
        {
          v35 = BWStillImageProcessorTypeToShortString([objc_msgSend(processorControllersForSharedExternalMemoryResource "firstObject")]);
        }

        else
        {
          v35 = @"No processor controller";
        }

        *v121 = 136315394;
        *&v121[4] = "[BWPhotonicEngineNodeResourceCoordinator prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:]";
        *&v121[12] = 2114;
        *&v121[14] = v35;
        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v36 = 0;
      v5 = v95;
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_76;
  }

  v91 = v6;
  array = [MEMORY[0x1E695DF70] array];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = processorControllersForSharedExternalMemoryResource;
  v19 = [processorControllersForSharedExternalMemoryResource countByEnumeratingWithState:&v143 objects:v142 count:16];
  selfCopy = self;
  v95 = 296;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    memSize = 0;
    v23 = *v144;
    memSize2 = 0;
    type = 6;
LABEL_9:
    v24 = 0;
    while (1)
    {
      if (*v144 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v143 + 1) + 8 * v24);
      v26 = [v25 externalMemoryDescriptorForResolutionFlavors:v100];
      if (!v26)
      {
        goto LABEL_84;
      }

      v27 = v26;
      if ([v26 memSize] > memSize)
      {
        memSize = [v27 memSize];
        type = [v25 type];
      }

      allocatorType = [v27 allocatorType];
      if (v21)
      {
        if (v21 != allocatorType)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v21 = allocatorType;
      }

      if ([v25 type] == 6)
      {
        memSize2 = [v27 memSize];
      }

      v29 = MEMORY[0x1E696AEC0];
      v89 = BWStillImageProcessorTypeToShortString([v25 type]);
      v90 = BWPrettyStringFromBytes([v27 memSize]);
      [array addObject:{objc_msgSend(v29, "stringWithFormat:", @"%@:%@"}];
      if (v20 == ++v24)
      {
        v20 = [obj countByEnumeratingWithState:&v143 objects:v142 count:16];
        if (v20)
        {
          goto LABEL_9;
        }

        if (type != 12)
        {
          self = selfCopy;
          v5 = 296;
          v17 = &dword_1EB58E000;
          goto LABEL_41;
        }

        self = selfCopy;
        v5 = 296;
        v17 = &dword_1EB58E000;
        if (([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled]& 1) == 0)
        {
          digitalFlashSupportEnabled = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration digitalFlashSupportEnabled];
          v31 = 0.1;
          if (digitalFlashSupportEnabled)
          {
            v31 = 0.6;
          }

          memSize += (v31 * memSize2);
        }

        v32 = 12;
        goto LABEL_37;
      }
    }
  }

  v21 = 0;
  LODWORD(memSize) = 0;
  v32 = 6;
LABEL_37:
  type = v32;
LABEL_41:
  dimensionsByResolutionFlavorByPortType = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v38 = BWCommonDimensionsForResolutionFlavor(dimensionsByResolutionFlavorByPortType, 2);
  if (v38 >= 1 && SHIDWORD(v38) >= 1)
  {
    [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled];
  }

  v96 = 32;
  if (v17[16])
  {
    v141 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    self = selfCopy;
    v5 = 296;
  }

  v41 = objc_alloc_init(MEMORY[0x1E6991760]);
  [v41 setMemSize:memSize];
  [v41 setWireMemory:1];
  [v41 setEnforceImmediateDealloc:0];
  [v41 setLabel:@"FigMetalAllocatorBackend-Shared-PhotonicEngine"];
  [v41 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  sharedExternalMemoryResource = self->_sharedExternalMemoryResource;
  if (!sharedExternalMemoryResource)
  {
    device = [(MTLCommandQueue *)[(BWStillImageNodeConfiguration *)self->_nodeConfiguration metalCommandQueue] device];
    if (device)
    {
      v36 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:device allocatorType:v21];
      if (!v36)
      {
        goto LABEL_85;
      }

      goto LABEL_54;
    }

LABEL_84:
    v36 = 0;
    goto LABEL_85;
  }

  if (![(CMIExternalMemoryResource *)sharedExternalMemoryResource allocatorBackend])
  {
    goto LABEL_84;
  }

  v36 = 0;
  if (v21 != [-[CMIExternalMemoryResource allocatorBackend](self->_sharedExternalMemoryResource "allocatorBackend")])
  {
    goto LABEL_85;
  }

LABEL_54:
  allocatorBackend = [(CMIExternalMemoryResource *)self->_sharedExternalMemoryResource allocatorBackend];
  if (allocatorBackend)
  {
    v45 = allocatorBackend;
  }

  else
  {
    v45 = v36;
  }

  v46 = [v45 setupWithDescriptor:v41];
  if (v46)
  {
    goto LABEL_85;
  }

  if (!self->_sharedExternalMemoryResource)
  {
    v54 = objc_alloc_init(MEMORY[0x1E69916D0]);
    self->_sharedExternalMemoryResource = v54;
    v55 = [(CMIExternalMemoryResource *)v54 setAllocatorBackend:v45];
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v46 = OUTLINED_FUNCTION_21_21(v55, v56, v57, v58, v59, v60, v61, v62, v89, v90, v91, selfCopy, v94, 296, 32, type, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    if (v46)
    {
      v63 = v46;
      v64 = MEMORY[0];
      do
      {
        v65 = 0;
        do
        {
          if (MEMORY[0] != v64)
          {
            objc_enumerationMutation(obj);
          }

          v66 = [*(8 * v65++) setExternalMemoryResource:self->_sharedExternalMemoryResource];
        }

        while (v63 != v65);
        v46 = OUTLINED_FUNCTION_21_21(v66, v67, v68, v69, v70, v71, v72, v73, v89, v90, v91, selfCopy, v94, v95, v96, type, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
        v63 = v46;
      }

      while (v46);
    }
  }

  if (dword_1EB58E040)
  {
    v74 = OUTLINED_FUNCTION_5_57(v46, v47, v48, v49, v50, v51, v52, v53, v89, v90, v91, selfCopy, v94, v95, v96, type, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), *v121, *&v121[8], *&v121[16], v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
    if (os_log_type_enabled(v74, type))
    {
      v75 = v141;
    }

    else
    {
      v75 = v141 & 0xFFFFFFFE;
    }

    if (v75)
    {
      *v121 = 136315395;
      *&v121[4] = "[BWPhotonicEngineNodeResourceCoordinator prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:]";
      *&v121[12] = 2113;
      *&v121[14] = self->_sharedExternalMemoryResource;
      OUTLINED_FUNCTION_9_37();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_76:

  v76 = [v100 copy];
  *(&self->super.super.isa + v5) = v76;
  if (dword_1EB58E040)
  {
    v84 = OUTLINED_FUNCTION_5_57(v76, v77, v78, v79, v80, v81, v82, v83, v89, v90, v91, selfCopy, v94, v95, v96, type, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), *v121, *&v121[8], *&v121[16], v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
    if (os_log_type_enabled(v84, type))
    {
      v85 = v141;
    }

    else
    {
      v85 = v141 & 0xFFFFFFFE;
    }

    if (v85)
    {
      mach_absolute_time();
      v86 = FigHostTimeToNanoseconds();
      OUTLINED_FUNCTION_16_27(v86);
      OUTLINED_FUNCTION_9_37();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_85:
}

- (void)_requiredResolutionFlavorsForSharedExternalMemoryResourceWithSettings:(void *)result
{
  if (!result)
  {
    return result;
  }

  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType = [(BWPhotonicEngineNodeConfiguration *)v4 dimensionsByResolutionFlavorByPortType];
  v6 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType, 3);
  v7 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType2 = [(BWPhotonicEngineNodeConfiguration *)v7 dimensionsByResolutionFlavorByPortType];
  v9 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType2, 4);
  v10 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType3 = [(BWPhotonicEngineNodeConfiguration *)v10 dimensionsByResolutionFlavorByPortType];
  v12 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType3, 6);
  v13 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType4 = [(BWPhotonicEngineNodeConfiguration *)v13 dimensionsByResolutionFlavorByPortType];
  v15 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType4, 5);
  v16 = v15;
  if ((((v6 | v9) | v12) & 1) == 0 || v15)
  {
    [v3 addObject:&unk_1F2244C50];
    if (!v6)
    {
LABEL_5:
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_9:
      v17 = OUTLINED_FUNCTION_7_45();
      dimensionsByResolutionFlavorByPortType5 = [(BWPhotonicEngineNodeConfiguration *)v17 dimensionsByResolutionFlavorByPortType];
      v19 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType5, 3);
      v20 = FigCaptureLargestDimensionsFromDimensionsArray(v19);
      v21 = OUTLINED_FUNCTION_7_45();
      dimensionsByResolutionFlavorByPortType6 = [(BWPhotonicEngineNodeConfiguration *)v21 dimensionsByResolutionFlavorByPortType];
      v23 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType6, 4);
      if (v20 == __ROR8__(FigCaptureLargestDimensionsFromDimensionsArray(v23), 32))
      {
        v24 = v6;
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 1) == 0)
      {
        [v3 addObject:&unk_1F2244AE8];
      }

      goto LABEL_14;
    }
  }

  else if (!v6)
  {
    goto LABEL_5;
  }

  [v3 addObject:&unk_1F2244AD0];
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_14:
  if (v12)
  {
    [v3 addObject:&unk_1F2244B00];
  }

  if (v16)
  {
    [v3 addObject:&unk_1F2244B18];
  }

  v25 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType7 = [(BWPhotonicEngineNodeConfiguration *)v25 dimensionsByResolutionFlavorByPortType];
  if (BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType7, 2))
  {
    [v3 addObject:&unk_1F2244B48];
  }

  if (a2 && [objc_msgSend(OUTLINED_FUNCTION_7_45() resolvedProcessingResolutionFlavorsForSettings:{a2), "containsObject:", &unk_1F2244AB8}])
  {
    [v3 addObject:&unk_1F2244AB8];
  }

  v27 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType8 = [(BWPhotonicEngineNodeConfiguration *)v27 dimensionsByResolutionFlavorByPortType];
  v29 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType8, 1);
  v30 = FigCaptureLargestDimensionsFromDimensionsArray(v29);
  v31 = OUTLINED_FUNCTION_7_45();
  if (v30 > [(BWPhotonicEngineNodeConfiguration *)v31 rawSensorDimensions]|| (v32 = OUTLINED_FUNCTION_7_45(), SHIDWORD(v30) > ([(BWPhotonicEngineNodeConfiguration *)v32 rawSensorDimensions]>> 32)))
  {
    [v3 addObject:&unk_1F2244AB8];
  }

  return [v3 allObjects];
}

- (uint64_t)waitAndSafelyGetProcessorControllerForType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)syncGetInferencesForInferenceInputBufferType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)syncMergeInferencesWithSampleBuffer:stillImageSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)syncReleaseInferencesForInferenceInputBufferType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)unsafeSetInferences:forInferenceInputBufferType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

@end