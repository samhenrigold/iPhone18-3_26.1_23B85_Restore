@interface BWMetadataDetectorGatingNode
- (BWMetadataDetectorGatingNode)initWithMRCEnabled:(BOOL)enabled appClipCodeEnabled:(BOOL)codeEnabled textLocalizationEnabled:(BOOL)localizationEnabled lowPowerModeEnabled:(BOOL)modeEnabled compressed8BitInputEnabled:(BOOL)inputEnabled;
- (BWMetadataDetectorGatingNode)initWithSceneClassifierVersion:(id)version mrcEnabled:(BOOL)enabled appClipCodeEnabled:(BOOL)codeEnabled textLocalizationEnabled:(BOOL)localizationEnabled lowPowerModeEnabled:(BOOL)modeEnabled compressed8BitInputEnabled:(BOOL)inputEnabled;
- (CVPixelBufferRef)_createOutputPixelBufferFromSbuf:(_BYTE *)sbuf appliedPrimaryCaptureRect:;
- (id)_updateInputRequirements:(id *)result;
- (id)_updateOutputRequirementsIfNecessary;
- (uint64_t)_anyOutputShouldApplySceneMotion;
- (uint64_t)_anyOutputShouldRunDetection;
- (uint64_t)_ensureOutputBufferPoolWithDimensions:(uint64_t)dimensions;
- (void)_synchronizeOutputControllersWhenApplicable;
- (void)_updateNodeOutputPassthroughMode:(void *)result;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)sceneDidChangeQRConfidence:(float)confidence appClipCodeConfidence:(float)codeConfidence documentConfidence:(float)documentConfidence textConfidence:(float)textConfidence;
@end

@implementation BWMetadataDetectorGatingNode

- (id)_updateOutputRequirementsIfNecessary
{
  if (result)
  {
    v1 = result;
    result = [result[1] passthroughMode];
    if (!result)
    {
      result = [v1[1] videoFormat];
      if (result)
      {
        v2 = result;
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        obj = [v1 outputs];
        result = [obj countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (result)
        {
          v3 = result;
          v4 = *v11;
          do
          {
            v5 = 0;
            do
            {
              if (*v11 != v4)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v10 + 1) + 8 * v5) formatRequirements];
              v8[0] = MEMORY[0x1E69E9820];
              v8[1] = 3221225472;
              v8[2] = __68__BWMetadataDetectorGatingNode__updateOutputRequirementsIfNecessary__block_invoke;
              v8[3] = &unk_1E7999200;
              v8[4] = v2;
              [&unk_1F2248D78 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v8)}];
              [OUTLINED_FUNCTION_28() setSupportedPixelFormats:?];
              [v2 width];
              [OUTLINED_FUNCTION_28() setWidth:?];
              [v2 height];
              [OUTLINED_FUNCTION_28() setHeight:?];
              v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "colorSpaceProperties")}];
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
              [OUTLINED_FUNCTION_28() setSupportedColorSpaceProperties:?];
              v5 = (v5 + 1);
            }

            while (v3 != v5);
            result = [obj countByEnumeratingWithState:&v10 objects:v9 count:16];
            v3 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

- (BWMetadataDetectorGatingNode)initWithMRCEnabled:(BOOL)enabled appClipCodeEnabled:(BOOL)codeEnabled textLocalizationEnabled:(BOOL)localizationEnabled lowPowerModeEnabled:(BOOL)modeEnabled compressed8BitInputEnabled:(BOOL)inputEnabled
{
  if (enabled)
  {
    enabledCopy = 2;
  }

  else
  {
    enabledCopy = 1;
  }

  if (!codeEnabled)
  {
    enabledCopy = enabled;
  }

  v8 = (enabledCopy + localizationEnabled);
  if (!(enabledCopy + localizationEnabled))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No detectors enabled" userInfo:{0, modeEnabled, inputEnabled}]);
  }

  inputEnabledCopy = inputEnabled;
  modeEnabledCopy = modeEnabled;
  localizationEnabledCopy = localizationEnabled;
  codeEnabledCopy = codeEnabled;
  enabledCopy2 = enabled;
  v22.receiver = self;
  v22.super_class = BWMetadataDetectorGatingNode;
  v14 = [(BWFanOutNode *)&v22 initWithFanOutCount:v8 mediaType:1986618469];
  if (v14)
  {
    v14->_sceneStabilityMonitor = objc_alloc_init(BWSceneStabilityMonitor);
    v14->_outputControllers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    v14->_detectorsAvailableGroup = dispatch_group_create();
    if (enabledCopy2)
    {
      v14->_mrcOutput = [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:0];
      v16 = [[BWMetadataDetectorGatingOutputController alloc] initWithOutput:v14->_mrcOutput name:@"MRC Output Controller" sceneStabilityMonitor:v14->_sceneStabilityMonitor detectorAvailableGroup:v14->_detectorsAvailableGroup];
      v14->_mrcOutputController = v16;
      [(BWMetadataDetectorGatingOutputController *)v16 setLowPowerModeEnabled:modeEnabledCopy];
      enabledCopy2 = 1;
      [(BWMetadataDetectorGatingOutputController *)v14->_mrcOutputController setSceneMotionEstimatesSupported:1];
      [(BWMetadataDetectorGatingOutputController *)v14->_mrcOutputController setShouldEmitFirstBufferAfterSceneChange:1];
      [(BWMetadataDetectorGatingOutputController *)v14->_mrcOutputController setSynchronizeWithOtherControllers:1];
      [(NSMutableArray *)v14->_outputControllers addObject:v14->_mrcOutputController];
      if (!codeEnabledCopy)
      {
LABEL_11:
        p_superclass = (BWMultitaskingSessionAnalyticsPayload + 8);
        v18 = 240;
LABEL_14:
        if (localizationEnabledCopy)
        {
          v14->_textLocalizationOutput = [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:enabledCopy2];
          v20 = [objc_alloc((p_superclass + 84)) initWithOutput:v14->_textLocalizationOutput name:@"Text Localization Output Controller" sceneStabilityMonitor:v14->_sceneStabilityMonitor detectorAvailableGroup:*(&v14->super.super.super.isa + v18)];
          v14->_textLocalizationOutputController = v20;
          [(BWMetadataDetectorGatingOutputController *)v20 setLowPowerModeEnabled:modeEnabledCopy];
          [(NSMutableArray *)v14->_outputControllers addObject:v14->_textLocalizationOutputController];
        }

        [(BWMetadataDetectorGatingNode *)&v14->super.super.super.isa _updateInputRequirements:inputEnabledCopy];
        [(BWNodeInput *)v14->super.super._input setPassthroughMode:0];
        [(BWMetadataDetectorGatingNode *)v14 _updateNodeOutputPassthroughMode:?];
        v14->_lowPowerModeEnabled = modeEnabledCopy;
        v14->_needsSynchronization = 1;
        return v14;
      }
    }

    else if (!codeEnabledCopy)
    {
      goto LABEL_11;
    }

    v14->_appClipCodeOutput = [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:enabledCopy2];
    p_superclass = BWMultitaskingSessionAnalyticsPayload.superclass;
    v18 = v21;
    v19 = [[BWMetadataDetectorGatingOutputController alloc] initWithOutput:v14->_appClipCodeOutput name:@"AppClipCode Output Controller" sceneStabilityMonitor:v14->_sceneStabilityMonitor detectorAvailableGroup:*(&v14->super.super.super.isa + v21)];
    v14->_appClipCodeOutputController = v19;
    [(BWMetadataDetectorGatingOutputController *)v19 setLowPowerModeEnabled:modeEnabledCopy];
    [(BWMetadataDetectorGatingOutputController *)v14->_appClipCodeOutputController setSynchronizeWithOtherControllers:1];
    [(NSMutableArray *)v14->_outputControllers addObject:v14->_appClipCodeOutputController];
    ++enabledCopy2;
    goto LABEL_14;
  }

  return v14;
}

- (BWMetadataDetectorGatingNode)initWithSceneClassifierVersion:(id)version mrcEnabled:(BOOL)enabled appClipCodeEnabled:(BOOL)codeEnabled textLocalizationEnabled:(BOOL)localizationEnabled lowPowerModeEnabled:(BOOL)modeEnabled compressed8BitInputEnabled:(BOOL)inputEnabled
{
  v9 = [(BWMetadataDetectorGatingNode *)self initWithMRCEnabled:enabled appClipCodeEnabled:codeEnabled textLocalizationEnabled:localizationEnabled lowPowerModeEnabled:modeEnabled compressed8BitInputEnabled:inputEnabled];
  v10 = v9;
  if (v9)
  {
    [BWMetadataDetectorGatingNode initWithSceneClassifierVersion:v9 mrcEnabled:inputEnabled appClipCodeEnabled:? textLocalizationEnabled:? lowPowerModeEnabled:? compressed8BitInputEnabled:?];
  }

  return v10;
}

- (void)dealloc
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  v4.receiver = self;
  v4.super_class = BWMetadataDetectorGatingNode;
  [(BWFanOutNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v7.receiver = self;
  v7.super_class = BWMetadataDetectorGatingNode;
  [(BWFanOutNode *)&v7 didSelectFormat:format forInput:input];
  if (self)
  {
    v6 = &unk_1F2248D78;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(format, "pixelFormat"))}])
  {
    [BWMetadataDetectorGatingNode didSelectFormat:? forInput:?];
  }

  [(BWMetadataDetectorGatingNode *)&self->super.super.super.isa _updateOutputRequirementsIfNecessary];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v17.receiver = self;
  v17.super_class = BWMetadataDetectorGatingNode;
  [(BWNode *)&v17 prepareForCurrentConfigurationToBecomeLive];
  pixelFormat = [(BWVideoFormat *)[(BWNodeInput *)self->super.super._input videoFormat] pixelFormat];
  if (self)
  {
    v4 = &unk_1F2248D78;
  }

  else
  {
    v4 = 0;
  }

  if (![v4 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", pixelFormat)}] || -[BWVideoFormat cacheMode](-[BWNodeInput videoFormat](self->super.super._input, "videoFormat"), "cacheMode") == 1792)
  {
    [(BWMetadataDetectorGatingNode *)self _ensureTransferSession];
  }

  if (self->_mrcOutputController)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (self->_lowPowerModeEnabled)
    {
      v6 = 5;
      do
      {
        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 10.0)}];
        --v6;
      }

      while (v6);
      v7 = 5;
      do
      {
        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 7.5)}];
        --v7;
      }

      while (v7);
      v8 = 5;
    }

    else
    {
      v9 = 15;
      do
      {
        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 15.0)}];
        --v9;
      }

      while (v9);
      LODWORD(v8) = 15;
      do
      {
        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 7.5)}];
        v8 = (v8 - 1);
      }

      while (v8);
    }

    [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 5.0)}];
    [(BWMetadataDetectorGatingOutputController *)self->_mrcOutputController enableDetectionFrameRateControllingWithRamp:array startIndex:v8];
  }

  if (self->_appClipCodeOutputController)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v11 = 5;
    if (+[BWInferenceEngine isNeuralEngineSupported])
    {
      do
      {
        [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 10.0)}];
        --v11;
      }

      while (v11);
      v12 = 5;
      do
      {
        [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 7.5)}];
        --v12;
      }

      while (v12);
      v13 = 5.0;
    }

    else
    {
      do
      {
        [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 10.0)}];
        --v11;
      }

      while (v11);
      v14 = 5;
      do
      {
        [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 2.0)}];
        --v14;
      }

      while (v14);
      v13 = 1.0;
    }

    [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v13)}];
    [(BWMetadataDetectorGatingOutputController *)self->_appClipCodeOutputController enableDetectionFrameRateControllingWithRamp:array2 startIndex:5];
  }

  textLocalizationOutputController = self->_textLocalizationOutputController;
  if (textLocalizationOutputController)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:5.5];
    -[BWMetadataDetectorGatingOutputController enableDetectionFrameRateControllingWithRamp:startIndex:](textLocalizationOutputController, "enableDetectionFrameRateControllingWithRamp:startIndex:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1], 0);
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
    self->_transferSession = 0;
  }

  self->_outputBufferPool = 0;
  v8.receiver = self;
  v8.super_class = BWMetadataDetectorGatingNode;
  [(BWFanOutNode *)&v8 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)sceneDidChangeQRConfidence:(float)confidence appClipCodeConfidence:(float)codeConfidence documentConfidence:(float)documentConfidence textConfidence:(float)textConfidence
{
  if ([(BWMetadataDetectorGatingOutputController *)self->_mrcOutputController usesSceneClassifierToGateDetection]|| [(BWMetadataDetectorGatingOutputController *)self->_appClipCodeOutputController usesSceneClassifierToGateDetection]|| [(BWMetadataDetectorGatingOutputController *)self->_textLocalizationOutputController usesSceneClassifierToGateDetection])
  {
    os_unfair_lock_lock(&self->_sceneLock);
    BWSmartCameraSceneUpdateWithConfidence(&self->_qrCodeScene, confidence);
    BWSmartCameraSceneUpdateWithConfidence(&self->_appClipCodeScene, codeConfidence);
    BWSmartCameraSceneUpdateWithConfidence(&self->_textScene, textConfidence);
    confident = self->_qrCodeScene.confident;
    v11 = self->_appClipCodeScene.confident;
    v12 = self->_textScene.confident;
    os_unfair_lock_unlock(&self->_sceneLock);
    [(BWMetadataDetectorGatingOutputController *)self->_mrcOutputController setSmartCameraSceneConfident:confident];
    [(BWMetadataDetectorGatingOutputController *)self->_appClipCodeOutputController setSmartCameraSceneConfident:v11];
    textLocalizationOutputController = self->_textLocalizationOutputController;

    [(BWMetadataDetectorGatingOutputController *)textLocalizationOutputController setSmartCameraSceneConfident:v12];
  }
}

- (id)_updateInputRequirements:(id *)result
{
  if (result)
  {
    v3 = result;
    formatRequirements = [result[1] formatRequirements];
    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:&unk_1F2248D78];
    if ([v3[25] usesSceneClassifierToGateDetection] & 1) != 0 || (objc_msgSend(v3[26], "usesSceneClassifierToGateDetection"))
    {
      usesSceneClassifierToGateDetection = 1;
    }

    else
    {
      usesSceneClassifierToGateDetection = [v3[27] usesSceneClassifierToGateDetection];
    }

    [array addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(1, 0, 1, 1, 0, usesSceneClassifierToGateDetection, 1, 1)}];
    [array addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, 3, 1, 1, 0, usesSceneClassifierToGateDetection | a2, 1, 1)}];
    [array addObjectsFromArray:&unk_1F2248D90];

    return [formatRequirements setSupportedPixelFormats:array];
  }

  return result;
}

- (void)_updateNodeOutputPassthroughMode:(void *)result
{
  if (result)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    outputs = [result outputs];
    result = [outputs countByEnumeratingWithState:&v8 objects:v7 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(outputs);
          }

          [*(*(&v8 + 1) + 8 * v6) setPassthroughMode:a2];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        result = [outputs countByEnumeratingWithState:&v8 objects:v7 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  selfCopy = self;
  if (self->_needsSynchronization)
  {
    self = [(BWMetadataDetectorGatingNode *)self _synchronizeOutputControllersWhenApplicable];
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  outputControllers = selfCopy->_outputControllers;
  v11 = OUTLINED_FUNCTION_10_32(self, a2, buffer, input, v4, v5, v6, v7, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v112, v114, v116, v118, v120, v122, v124, v126.value, *&v126.timescale, v126.epoch, v127, v128.value, *&v128.timescale, v128.epoch, v129);
  if (v11)
  {
    v12 = v11;
    v13 = *v131;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v131 != v13)
        {
          objc_enumerationMutation(outputControllers);
        }

        v15 = [*(*(&v130 + 1) + 8 * i) prepareToEmitBuffer:buffer];
      }

      v12 = OUTLINED_FUNCTION_10_32(v15, v16, v17, v18, v19, v20, v21, v22, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v113, v115, v117, v119, v121, v123, v125, v126.value, *&v126.timescale, v126.epoch, v127, v128.value, *&v128.timescale, v128.epoch, v129);
    }

    while (v12);
  }

  HIBYTE(v129) = 0;
  v23 = [(BWMetadataDetectorGatingNode *)selfCopy _createOutputPixelBufferFromSbuf:buffer appliedPrimaryCaptureRect:&v129 + 7];
  if (v23)
  {
    v24 = v23;
    memset(&v128, 0, sizeof(v128));
    BWGetOriginalPresentationTimeStampFromBuffer(buffer, &v128);
    v25 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    sceneStabilityMonitor = selfCopy->_sceneStabilityMonitor;
    ShouldApplyScene = [(BWMetadataDetectorGatingNode *)selfCopy _anyOutputShouldApplySceneMotion:v27];
    v126 = v128;
    v35 = [(BWSceneStabilityMonitor *)sceneStabilityMonitor calculateStabilityWithPixelBuffer:v24 pts:&v126 metadataDictionary:v25 forceSceneMotion:ShouldApplyScene];
    v36 = selfCopy->_outputControllers;
    v44 = OUTLINED_FUNCTION_4_2(v35, v37, v38, v39, v40, v41, v42, v43, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108);
    if (v44)
    {
      v45 = v44;
      v46 = MEMORY[0];
      v47 = HIBYTE(v129);
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (MEMORY[0] != v46)
          {
            objc_enumerationMutation(v36);
          }

          v49 = *(8 * j);
          shouldEmitBuffer = [(BWMetadataDetectorGatingOutputController *)v49 shouldEmitBuffer];
          if (shouldEmitBuffer)
          {
            if (v49 == selfCopy->_textLocalizationOutputController)
            {
              ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
              v59 = v49;
              bufferCopy2 = buffer;
              v58 = 0;
            }

            else
            {
              v58 = v47 & 1;
              v59 = v49;
              ImageBuffer = v24;
              bufferCopy2 = buffer;
            }

            shouldEmitBuffer = [(BWMetadataDetectorGatingOutputController *)v59 emitPixelBuffer:ImageBuffer inputSampleBuffer:bufferCopy2 appliedPrimaryCaptureRect:v58];
          }
        }

        v45 = OUTLINED_FUNCTION_4_2(shouldEmitBuffer, v51, v52, v53, v54, v55, v56, v57, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109);
      }

      while (v45);
    }

    CFRelease(v24);
  }
}

- (void)_synchronizeOutputControllersWhenApplicable
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v4 = v1[28];
  v12 = OUTLINED_FUNCTION_9_39(array2, v5, v6, v7, v8, v9, v10, v11, v58, v61, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, *(&v135 + 1), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1));
  if (!v12)
  {
    goto LABEL_23;
  }

  v20 = v12;
  v21 = 0;
  v22 = *v159;
  do
  {
    v23 = 0;
    do
    {
      if (*v159 != v22)
      {
        objc_enumerationMutation(v4);
      }

      v24 = *(*(&v158 + 1) + 8 * v23);
      synchronizeWithOtherControllers = [v24 synchronizeWithOtherControllers];
      if (synchronizeWithOtherControllers)
      {
        if ([v24 forceSynchronizedControllersToRunDetectionImmediately])
        {
          v21 = 1;
          synchronizeWithOtherControllers = array2;
LABEL_10:
          synchronizeWithOtherControllers = [synchronizeWithOtherControllers addObject:v24];
          goto LABEL_13;
        }

        synchronizeWithOtherControllers = [v24 usesSceneClassifierToGateDetection];
        if ((synchronizeWithOtherControllers & 1) == 0)
        {
          lastDetectedCodesCount = [v24 lastDetectedCodesCount];
          synchronizeWithOtherControllers = array;
          if (!lastDetectedCodesCount)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_13:
      ++v23;
    }

    while (v20 != v23);
    v12 = OUTLINED_FUNCTION_9_39(synchronizeWithOtherControllers, v26, v27, v28, v29, v30, v31, v32, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v135, *(&v135 + 1), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1));
    v20 = v12;
  }

  while (v12);
  if (v21)
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v12 = OUTLINED_FUNCTION_8_39(0, v13, v14, v15, v16, v17, v18, v19, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v135, *(&v135 + 1), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
    if (v12)
    {
      v34 = v12;
      v35 = *v155;
      v59 = *MEMORY[0x1E6960C70];
      v36 = *(MEMORY[0x1E6960C70] + 16);
      do
      {
        v37 = 0;
        do
        {
          if (*v155 != v35)
          {
            objc_enumerationMutation(array);
          }

          v38 = *(*(&v154 + 1) + 8 * v37);
          v135 = v59;
          v136 = v36;
          v39 = [v38 setLastDetectionPTS:{&v135, v59}];
          ++v37;
        }

        while (v34 != v37);
        v12 = OUTLINED_FUNCTION_8_39(v39, v40, v41, v42, v43, v44, v45, v46, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v113, v116, v119, v122, v125, v128, v131, v134, v135, *(&v135 + 1), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
        v34 = v12;
      }

      while (v12);
    }
  }

LABEL_23:
  result = OUTLINED_FUNCTION_11_2(v12, v13, v14, v15, v16, v17, v18, v19, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109);
  if (result)
  {
    v47 = result;
    v48 = MEMORY[0];
    do
    {
      v49 = 0;
      do
      {
        if (MEMORY[0] != v48)
        {
          objc_enumerationMutation(array2);
        }

        v50 = [*(8 * v49) setForceSynchronizedControllersToRunDetectionImmediately:0];
        v49 = (v49 + 1);
      }

      while (v47 != v49);
      result = OUTLINED_FUNCTION_11_2(v50, v51, v52, v53, v54, v55, v56, v57, v60, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110);
      v47 = result;
    }

    while (result);
  }

  return result;
}

- (CVPixelBufferRef)_createOutputPixelBufferFromSbuf:(_BYTE *)sbuf appliedPrimaryCaptureRect:
{
  if (!self)
  {
    return 0;
  }

  *sbuf = 0;
  v6 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v6;
  v7 = CMGetAttachment(target, *off_1E798A430, 0);
  CGRectMakeWithDictionaryRepresentation(v7, &rect);
  if ([*(self + 208) shouldRunDetection])
  {
    if (!CGRectIsNull(rect))
    {
      _ensureTransferSession = [(BWMetadataDetectorGatingNode *)self _ensureTransferSession];
      if (_ensureTransferSession)
      {
        goto LABEL_27;
      }
    }
  }

  if (([(BWMetadataDetectorGatingNode *)self _anyOutputShouldRunDetection:v8]& 1) == 0 && ![(BWMetadataDetectorGatingNode *)self _anyOutputShouldApplySceneMotion:v16]|| !*(self + 256))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(target);
    return CVPixelBufferRetain(ImageBuffer);
  }

  v23 = CMSampleBufferGetImageBuffer(target);
  Width = CVPixelBufferGetWidth(v23);
  Height = CVPixelBufferGetHeight(v23);
  if (!CGRectIsNull(rect))
  {
    v26 = Width;
    v27 = Height;
    FigCaptureMetadataUtilitiesDenormalizeCropRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, Width, Height);
    rect.origin.x = v28;
    rect.origin.y = v29;
    v32 = round(v31 * 0.5);
    v33 = v32 + v32;
    if (v33 < Width)
    {
      v26 = v33;
    }

    v34 = round(v30 * 0.5);
    v35 = v34 + v34;
    if (v35 < v27)
    {
      v27 = v35;
    }

    rect.size.width = v26;
    rect.size.height = v27;
    v36 = v26;
    v37 = v27;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&v28);
    v39 = VTSessionSetProperty(*(self + 256), *MEMORY[0x1E6983E40], DictionaryRepresentation);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    if (v39)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v39);
LABEL_28:
      newPixelBuffer = 0;
      goto LABEL_29;
    }

    Width = v26;
    Height = v27;
  }

  _ensureTransferSession = [(BWMetadataDetectorGatingNode *)self _ensureOutputBufferPoolWithDimensions:?];
  if (_ensureTransferSession)
  {
LABEL_27:
    v45 = _ensureTransferSession;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45);
    goto LABEL_28;
  }

  newPixelBuffer = [*(self + 264) newPixelBuffer];
  if (!newPixelBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v46, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v48, v49);
    return newPixelBuffer;
  }

  v41 = VTPixelTransferSessionTransferImage(*(self + 256), v23, newPixelBuffer);
  if (v41)
  {
    v44 = v41;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v46, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v48, v49);
LABEL_29:
    CVPixelBufferRelease(newPixelBuffer);
    return 0;
  }

  *sbuf = 1;
  return newPixelBuffer;
}

- (uint64_t)_anyOutputShouldApplySceneMotion
{
  if (result)
  {
    v8 = *(result + 224);
    result = OUTLINED_FUNCTION_57(result, a2, a3, a4, a5, a6, a7, a8, v20);
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0];
      while (2)
      {
        v11 = 0;
        do
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v8);
          }

          shouldApplySceneMotion = [*(8 * v11) shouldApplySceneMotion];
          if (shouldApplySceneMotion)
          {
            return 1;
          }

          ++v11;
        }

        while (v9 != v11);
        result = OUTLINED_FUNCTION_57(shouldApplySceneMotion, v13, v14, v15, v16, v17, v18, v19, v21);
        v9 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)_ensureOutputBufferPoolWithDimensions:(uint64_t)dimensions
{
  if (!dimensions)
  {
    return 0;
  }

  v5 = HIDWORD(a2);
  if (*(dimensions + 272) == a2)
  {
    return 0;
  }

  v7 = objc_autoreleasePoolPush();
  name = [dimensions name];
  v9 = objc_alloc_init(BWVideoFormatRequirements);
  if (FigCapturePixelFormatIsFullRange([objc_msgSend(*(dimensions + 8) "videoFormat")]))
  {
    v10 = 875704422;
  }

  else
  {
    v10 = 875704438;
  }

  [(BWVideoFormatRequirements *)v9 setWidth:a2];
  [(BWVideoFormatRequirements *)v9 setHeight:a2 >> 32];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v9, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1]);
  v20 = v9;
  v11 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1]);
  if (v11)
  {
    v12 = v11;
    if (name)
    {
      v13 = name;
    }

    else
    {
      v13 = @"MRC PixelTransfer";
    }

    if (*(dimensions + 232))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v12, v14, v13, [*(dimensions + 16) memoryPool]);
    v6 = 0;
    *(dimensions + 264) = v15;
    *(dimensions + 272) = a2;
    *(dimensions + 276) = v5;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWMetadataDetectorGatingNode >>>>", 0x3EE, v2, v18, v19, &v20->super.super.isa);
  }

  objc_autoreleasePoolPop(v7);
  return v6;
}

- (uint64_t)_anyOutputShouldRunDetection
{
  if (result)
  {
    v8 = *(result + 224);
    result = OUTLINED_FUNCTION_57(result, a2, a3, a4, a5, a6, a7, a8, v20);
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0];
      while (2)
      {
        v11 = 0;
        do
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v8);
          }

          shouldRunDetection = [*(8 * v11) shouldRunDetection];
          if (shouldRunDetection)
          {
            return 1;
          }

          ++v11;
        }

        while (v9 != v11);
        result = OUTLINED_FUNCTION_57(shouldRunDetection, v13, v14, v15, v16, v17, v18, v19, v21);
        v9 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (id)initWithSceneClassifierVersion:(uint64_t)a1 mrcEnabled:(char)a2 appClipCodeEnabled:textLocalizationEnabled:lowPowerModeEnabled:compressed8BitInputEnabled:.cold.1(uint64_t a1, char a2)
{
  *(a1 + 280) = 0;
  *(a1 + 248) = 0;
  v4 = *(a1 + 200);
  if (v4)
  {
    [v4 setUsesSceneClassifierToGateDetection:1];
    [*(a1 + 200) setLogger:{-[FigCaptureLogSmartCameraGating initWithGateIdentifier:]([FigCaptureLogSmartCameraGating alloc], "initWithGateIdentifier:", 0)}];
    v5.n128_u32[0] = 1031127695;
    v6.n128_u32[0] = 1028443341;
    OUTLINED_FUNCTION_3_67(288, v5, v6, "QR");
  }

  v7 = *(a1 + 208);
  if (v7)
  {
    [v7 setUsesSceneClassifierToGateDetection:1];
    [*(a1 + 208) setLogger:{-[FigCaptureLogSmartCameraGating initWithGateIdentifier:]([FigCaptureLogSmartCameraGating alloc], "initWithGateIdentifier:", 1)}];
    v8.n128_u32[0] = 1037905691;
    v9.n128_u32[0] = 1028443341;
    OUTLINED_FUNCTION_3_67(328, v8, v9, "AppClipCode");
  }

  v10 = *(a1 + 216);
  if (v10)
  {
    [v10 setUsesSceneClassifierToGateDetection:1];
    [*(a1 + 216) setLogger:{-[FigCaptureLogSmartCameraGating initWithGateIdentifier:]([FigCaptureLogSmartCameraGating alloc], "initWithGateIdentifier:", 2)}];
    v11.n128_u32[0] = 1035623989;
    v12.n128_u32[0] = 1028443341;
    OUTLINED_FUNCTION_3_67(368, v11, v12, "TextScene");
  }

  return [(BWMetadataDetectorGatingNode *)a1 _updateInputRequirements:?];
}

@end