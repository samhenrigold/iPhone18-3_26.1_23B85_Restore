@interface BWHDRNode
- (BOOL)_receivedExpectedNumberOfInputFramesOrErrors;
- (id)_initWithClientPID:(int)d sensorIDDictionary:(id)dictionary sbpCreationFunction:(void *)function;
- (uint64_t)_setupSampleBufferProcessor;
- (void)_clearCaptureRequestState;
- (void)_configureCaptureRequestStateWithStillImageCaptureSettings:(void *)result;
- (void)_emitNodeErrorToReportFailedOutputFrame;
- (void)_emitNodeErrorsIfNecessary;
- (void)_hdrProcessorOutputReady:(CMAttachmentBearerRef)target sampleBuffer:;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWHDRNode

- (void)dealloc
{
  sampleBufferProcessor = self->_sampleBufferProcessor;
  if (sampleBufferProcessor)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(sampleBufferProcessor, 0, 0);
    }

    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    if (FigBaseObject)
    {
      v6 = FigBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    v8 = self->_sampleBufferProcessor;
    if (v8)
    {
      CFRelease(v8);
      self->_sampleBufferProcessor = 0;
    }
  }

  [(BWHDRNode *)self _clearCaptureRequestState];

  telephotoHDREV0DisparityFormatDescription = self->_telephotoHDREV0DisparityFormatDescription;
  if (telephotoHDREV0DisparityFormatDescription)
  {
    CFRelease(telephotoHDREV0DisparityFormatDescription);
  }

  telephotoHDREV0DisparityCopySession = self->_telephotoHDREV0DisparityCopySession;
  if (telephotoHDREV0DisparityCopySession)
  {
    CFRelease(telephotoHDREV0DisparityCopySession);
  }

  v11.receiver = self;
  v11.super_class = BWHDRNode;
  [(BWNode *)&v11 dealloc];
}

- (id)_initWithClientPID:(int)d sensorIDDictionary:(id)dictionary sbpCreationFunction:(void *)function
{
  v16.receiver = self;
  v16.super_class = BWHDRNode;
  v8 = [(BWNode *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_clientPID = d;
    v8->_sensorIDDictionary = dictionary;
    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F224CAA0, &unk_1F224CAB0, &unk_1F224CAC0, 0}];
    v9->_exposureValues = v10;
    v9->_bracketCount = [(NSArray *)v10 count];
    v9->_createSampleBufferProcessorFunction = function;
    v11 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
    [(BWNodeInput *)v11 setRetainedBufferCount:[(NSArray *)v9->_exposureValues count]];
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:&unk_1F2249810];
    [(BWNodeInput *)v11 setFormatRequirements:v12];

    [(BWNode *)v9 addInput:v11];
    v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:&unk_1F2249828];
    [(BWNodeOutput *)v13 setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)v13 setFormatRequirements:v14];

    [(BWNode *)v9 addOutput:v13];
  }

  return v9;
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(format, "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]);
  -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [format width]);
  -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", [format height]);
  [(BWVideoFormatRequirements *)v6 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
  if ([format colorSpaceProperties])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:v7];
  [(BWNodeOutput *)self->super._output setFormatRequirements:v6];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWHDRNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_sampleBufferProcessor && [(BWHDRNode *)self _setupSampleBufferProcessor])
  {
    [BWHDRNode prepareForCurrentConfigurationToBecomeLive];
  }

  if (self->_supportsStereoFusionCaptures && !self->_stereoFusionPixelConverter)
  {
    self->_stereoFusionPixelConverter = objc_alloc_init(FigCapturePixelConverter);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v80 = 0;
  if (!buffer)
  {
    return;
  }

  if (!self->_sampleBufferProcessor)
  {
    goto LABEL_81;
  }

  v7 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (!v7)
  {
    [BWHDRNode renderSampleBuffer:forInput:];
    goto LABEL_81;
  }

  v8 = v7;
  v9 = *off_1E798A3C8;
  v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v10)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, sampleSizeArray, v70, v71, v72, v73, v74);
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v79 = 0;
    v78 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(cf[0].origin.x) = 0;
    v68 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v68, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWHDRNode.m", 252, @"LastShownDate:BWHDRNode.m:252", @"LastShownBuild:BWHDRNode.m:252", 0);
    free(v68);
    goto LABEL_81;
  }

  v11 = v10;
  if (!self->_currentStillImageSettings)
  {
    if ([objc_msgSend(v8 "captureSettings")] != 3)
    {
      output = self->super._output;

      [(BWNodeOutput *)output emitSampleBuffer:buffer];
      return;
    }

    [(BWHDRNode *)self _configureCaptureRequestStateWithStillImageCaptureSettings:v8];
  }

  v12 = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  v13 = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
  v14 = [v11 objectForKeyedSubscript:*off_1E798B540];
  if (!v13)
  {
    v16 = v12 - 1;
    if (v12 >= 1)
    {
      v17 = v14;
      if (v12 > self->_bracketCount)
      {
        [BWHDRNode renderSampleBuffer:forInput:];
      }

      if (!self->_supportsStereoFusionCaptures)
      {
        v18 = self->_pendingBracketBuffers[v16];
        self->_pendingBracketBuffers[v16] = buffer;
        CFRetain(buffer);
        if (v18)
        {
          CFRelease(v18);
        }

        _receivedExpectedNumberOfInputFramesOrErrors = v12 == self->_bracketCount;
LABEL_21:
        v20 = [v11 objectForKeyedSubscript:*off_1E798A830];
        if (v20)
        {
          [v20 doubleValue];
          if (v21 == 0.0 && ([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureFlags]& 0x800) != 0 && objc_msgSend_isEqualToString_(v17))
          {
            telephotoHDREV0DisparityBufferPool = self->_telephotoHDREV0DisparityBufferPool;
            if (!telephotoHDREV0DisparityBufferPool)
            {
              self->_telephotoHDREV0DisparityBufferPool = [[BWPixelBufferPool alloc] initWithVideoFormat:[(BWNodeOutput *)self->super._output videoFormat] capacity:1 name:@"HDR EV0 Disparity Pool"];
              VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_telephotoHDREV0DisparityCopySession);
              telephotoHDREV0DisparityBufferPool = self->_telephotoHDREV0DisparityBufferPool;
            }

            newPixelBuffer = [(BWPixelBufferPool *)telephotoHDREV0DisparityBufferPool newPixelBuffer];
            cf[0].origin.x = 0.0;
            if (newPixelBuffer)
            {
              v24 = newPixelBuffer;
              telephotoHDREV0DisparityCopySession = self->_telephotoHDREV0DisparityCopySession;
              ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
              v27 = VTPixelTransferSessionTransferImage(telephotoHDREV0DisparityCopySession, ImageBuffer, v24);
              if (v27)
              {
                v28 = [BWNodeError newError:v27 sourceNode:self stillImageSettings:self->_currentStillImageSettings metadata:v11];
                [(BWNodeOutput *)self->super._output emitNodeError:v28];
              }

              else
              {
                BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v24, &self->_telephotoHDREV0DisparityFormatDescription, cf);
                [(BWNodeOutput *)self->super._output emitSampleBuffer:*&cf[0].origin.x];
              }

              CFRelease(v24);
              if (*&cf[0].origin.x)
              {
                CFRelease(*&cf[0].origin.x);
              }
            }

            else
            {
              v32 = [BWNodeError newError:4294954510 sourceNode:self stillImageSettings:self->_currentStillImageSettings metadata:v11];
              [(BWNodeOutput *)self->super._output emitNodeError:v32];
            }
          }
        }

        if (!_receivedExpectedNumberOfInputFramesOrErrors)
        {
          goto LABEL_81;
        }

        bracketCount = self->_bracketCount;
        if (bracketCount < 1)
        {
          v37 = 0;
        }

        else
        {
          v37 = 0;
          pendingBracketBuffers = self->_pendingBracketBuffers;
          do
          {
            if (!*pendingBracketBuffers++)
            {
              ++v37;
            }

            --bracketCount;
          }

          while (bracketCount);
        }

        if (self->_preBracketedFrameExpected && !self->_preBracketedFrameReceived)
        {
          if (self->_supportsStereoFusionCaptures)
          {
            [(BWHDRNode *)self _emitNodeErrorToReportFailedOutputFrame];
            ++self->_emittedFrameOrErrorCount;
            if (!v37)
            {
LABEL_61:
              if ([CMGetAttachment(self->_pendingBracketBuffers[1] @"StereoFusionFailed"])
              {
                [BWHDRNode renderSampleBuffer:self forInput:?];
              }

              else if (CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v80))
              {
                [BWHDRNode renderSampleBuffer:forInput:];
              }

              else
              {
                CMSetAttachment(v80, *off_1E798D0B8, self->_pendingBracketBuffers[2], 0);
                CMSetAttachment(v80, *off_1E798D0C8, self->_pendingBracketBuffers[1], 0);
                CMSetAttachment(v80, *off_1E798D0C0, self->_pendingBracketBuffers[0], 0);
                if (FigSampleBufferProcessorProcessSampleBuffer(self->_sampleBufferProcessor, v80))
                {
                  [BWHDRNode renderSampleBuffer:forInput:];
                }
              }

              goto LABEL_65;
            }

LABEL_70:
            [BWHDRNode renderSampleBuffer:forInput:];
LABEL_65:
            v30 = 1;
            goto LABEL_82;
          }

          ++v37;
        }

        if (!v37)
        {
          goto LABEL_61;
        }

        goto LABEL_70;
      }

      if (([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureFlags]& 0x400) != 0)
      {
        v33 = *(MEMORY[0x1E695F050] + 16);
        cf[0].origin = *MEMORY[0x1E695F050];
        cf[0].size = v33;
        if (objc_msgSend_isEqualToString_(v17))
        {
          v34 = *off_1E798A5C8;
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            [v11 removeObjectForKey:v34];
          }
        }

        if (v12 != 2 && !CGRectIsNull(cf[0]))
        {
          FormatDescription = CMSampleBufferGetFormatDescription(buffer);
          Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
          [(FigCapturePixelConverter *)self->_stereoFusionPixelConverter updateOutputPixelFormat:[(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelFormat] dimensions:Dimensions poolCapacity:2 colorSpaceProperties:[(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] colorSpaceProperties]];
          target[0] = 0;
          [(FigCapturePixelConverter *)self->_stereoFusionPixelConverter convertSampleBuffer:buffer cropRect:target outputSampleBuffer:cf[0].origin.x * Dimensions.width, cf[0].origin.y * Dimensions.height, cf[0].size.width * Dimensions.width, cf[0].size.height * Dimensions.height];
          Dimensions.width = [(FigCaptureStillImageSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings requestedSettings] outputWidth];
          outputHeight = [(FigCaptureStillImageSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings requestedSettings] outputHeight];
          if (Dimensions.width && outputHeight)
          {
            Dimensions = Dimensions.width;
            height = outputHeight;
          }

          else
          {
            Dimensions = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] width];
            height = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] height];
          }

          v75 = CMGetAttachment(target[0], v9, 0);
          width = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] width];
          height2 = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height];
          v46.n128_u64[0] = *&cf[0].origin.x;
          v48.n128_u64[0] = *&cf[0].size.height;
          v47.n128_u64[0] = *&cf[0].size.width;
          v49.n128_f64[0] = *&Dimensions / height;
          FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(width, height2, v46, cf[0].origin.y, v47, v48, v49, v50);
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57;
          LODWORD(width) = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] width];
          height3 = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height];
          v60.n128_u64[0] = v52;
          v61.n128_u64[0] = v54;
          v62.n128_u64[0] = v56;
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v75, width | (height3 << 32), Dimensions.width | (height << 32), v60, v61, v62, v58, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
          FigCaptureMetadataUtilitiesPreventFurtherCropping(v75, v63);
          v64 = self->_pendingBracketBuffers[v16];
          v65 = target[0];
          self->_pendingBracketBuffers[v16] = target[0];
          if (v65)
          {
            CFRetain(v65);
          }

          if (v64)
          {
            CFRelease(v64);
          }

          if (target[0])
          {
            CFRelease(target[0]);
          }

          goto LABEL_44;
        }

        v31 = self->_pendingBracketBuffers;
      }

      else
      {
        v31 = self->_pendingBracketBuffers;
      }

      v35 = v31[v16];
      v31[v16] = buffer;
      CFRetain(buffer);
      if (v35)
      {
        CFRelease(v35);
      }

LABEL_44:
      _receivedExpectedNumberOfInputFramesOrErrors = [(BWHDRNode *)self _receivedExpectedNumberOfInputFramesOrErrors];
      goto LABEL_21;
    }

LABEL_81:
    v30 = 0;
    goto LABEL_82;
  }

  if (self->_alwaysRequestsPreBracketedEV0)
  {
    if (!self->_preBracketedFrameExpected)
    {
      goto LABEL_81;
    }

    goto LABEL_31;
  }

  if (!self->_preBracketedFrameExpected)
  {
    [BWHDRNode renderSampleBuffer:v14 forInput:?];
    goto LABEL_81;
  }

LABEL_31:
  self->_preBracketedFrameReceived = 1;
  [v11 setObject:&unk_1F2246300 forKeyedSubscript:*off_1E798B370];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(buffer, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 1}];
  CMSetAttachment(buffer, @"StillImageProcessingFlags", v29, 1u);
  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  v30 = 0;
  ++self->_emittedFrameOrErrorCount;
LABEL_82:
  if (v80)
  {
    CFRelease(v80);
    if ((v30 & 1) == 0)
    {
      return;
    }

LABEL_86:
    [BWHDRNode renderSampleBuffer:? forInput:?];
    return;
  }

  if (v30)
  {
    goto LABEL_86;
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  supportsStereoFusionCaptures = self->_supportsStereoFusionCaptures;
  currentStillImageSettings = self->_currentStillImageSettings;
  if (supportsStereoFusionCaptures)
  {
    [(BWHDRNode *)currentStillImageSettings == 0 handleNodeError:error forInput:?];
  }

  else
  {
    if (currentStillImageSettings)
    {
      v8 = [(BWStillImageSettings *)currentStillImageSettings requestedSettings:error];
      if (v8 == [objc_msgSend(error "stillImageSettings")])
      {
        [(BWHDRNode *)self _clearCaptureRequestState];
      }
    }

    output = self->super._output;

    [(BWNodeOutput *)output emitNodeError:error, input];
  }
}

- (void)_clearCaptureRequestState
{
  if (self)
  {

    *(self + 176) = 0;
    if (*(self + 160) >= 1)
    {
      v2 = 0;
      selfCopy = self;
      do
      {
        v4 = *(selfCopy + 184);
        if (v4)
        {
          CFRelease(v4);
          *(selfCopy + 184) = 0;
        }

        ++v2;
        selfCopy += 8;
      }

      while (v2 < *(self + 160));
    }

    *(self + 208) = 0;
    *(self + 209) = 0;

    *(self + 216) = 0;
    *(self + 224) = 0;
  }
}

- (uint64_t)_setupSampleBufferProcessor
{
  selfCopy = self;
  if (self)
  {
    v16 = 0;
    v2 = *(self + 144);
    if (v2)
    {
      v14 = *off_1E798A9B0;
      v15 = v2;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    }

    else
    {
      v3 = 0;
    }

    v4 = *(selfCopy + 128);
    if (!v4)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v12, v13, v14, v15, v16, v17, v18);
      return 0;
    }

    v4(*MEMORY[0x1E695E480], @"HDR", v3, &v16);
    if (*(selfCopy + 136))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
      FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(FigBaseObject, *MEMORY[0x1E69736C8], v5);
      }
    }

    v8 = v16;
    *(selfCopy + 152) = v16;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v9)
    {
      selfCopy = 4294954514;
LABEL_13:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v12, v13, v14, v15, v16, v17, v18);
      return selfCopy;
    }

    selfCopy = v9(v8, hdrn_processorOutputReadyCallback, selfCopy);
    if (selfCopy)
    {
      goto LABEL_13;
    }
  }

  return selfCopy;
}

- (void)_configureCaptureRequestStateWithStillImageCaptureSettings:(void *)result
{
  if (result)
  {
    v3 = result;
    result[22] = a2;
    result = [objc_msgSend(a2 "captureSettings")];
    *(v3 + 208) = result;
  }

  return result;
}

- (BOOL)_receivedExpectedNumberOfInputFramesOrErrors
{
  if (result)
  {
    v1 = *(result + 160);
    if (v1 < 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = 0;
      v3 = (result + 184);
      do
      {
        if (*v3++)
        {
          ++v2;
        }

        --v1;
      }

      while (v1);
    }

    v5 = v2 + *(result + 209);
    return v5 + [*(result + 216) count] >= *(result + 160) + *(result + 208);
  }

  return result;
}

- (void)_emitNodeErrorToReportFailedOutputFrame
{
  if (self)
  {
    if ([*(self + 216) count] < 2)
    {
      v2 = [BWNodeError newError:4294954516 sourceNode:self stillImageSettings:*(self + 176) metadata:0];
    }

    else
    {
      v2 = [*(self + 216) objectAtIndex:0];
      [*(self + 216) removeObjectAtIndex:0];
    }

    [*(self + 16) emitNodeError:v2];
  }
}

- (void)_hdrProcessorOutputReady:(CMAttachmentBearerRef)target sampleBuffer:
{
  if (self)
  {
    v6 = CMGetAttachment(target, *off_1E798D0B8, 0);
    if (a2)
    {
      FigCaptureGetFrameworkRadarComponent();
      v7 = OUTLINED_FUNCTION_1_111();
      if (os_log_type_enabled(v7, v47))
      {
        v8 = v48;
      }

      else
      {
        v8 = v48 & 0xFFFFFFFE;
      }

      if (v8)
      {
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7_0();
      v16 = fig_log_call_emit_and_clean_up_after_send_and_compose();
      v20 = OUTLINED_FUNCTION_6_0(v16, v17, v18, v19, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      v21 = OUTLINED_FUNCTION_82();
      FigCapturePleaseFileRadar(v21, v22, v23, 0, v24, 746, v25, v26, 0);
      free(v20);
      v9 = *(self + 192);
    }

    else
    {
      v9 = v6;
      if (!v6)
      {
        fig_log_get_emitter();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v41, v42, v43, v44, v45, v46);
        FigCaptureGetFrameworkRadarComponent();
        v27 = OUTLINED_FUNCTION_1_111();
        if (os_log_type_enabled(v27, v47))
        {
          v28 = v48;
        }

        else
        {
          v28 = v48 & 0xFFFFFFFE;
        }

        if (v28)
        {
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7_0();
        v29 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v33 = OUTLINED_FUNCTION_6_0(v29, v30, v31, v32, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        v34 = OUTLINED_FUNCTION_82();
        FigCapturePleaseFileRadar(v34, v35, v36, 0, v37, 754, v38, v39, 0);
        free(v33);
        v40 = [BWNodeError newError:4294954510 sourceNode:self stillImageSettings:*(self + 176) metadata:0];
        [*(self + 16) emitNodeError:v40];

        goto LABEL_15;
      }

      v10 = CMGetAttachment(v6, *off_1E798A3C8, 0);
      if ([objc_msgSend(*(self + 176) "requestedSettings")])
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v11), *off_1E798B370}];
      v12 = OUTLINED_FUNCTION_82();
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v12, v13, v14), "unsignedIntValue") | 2}];
      CMSetAttachment(v9, @"StillImageProcessingFlags", v15, 1u);
      CMSetAttachment(v9, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
      CMRemoveAttachment(v9, *off_1E798A448);
    }

    [*(self + 16) emitSampleBuffer:v9];
LABEL_15:
    ++*(self + 224);
  }
}

- (void)_emitNodeErrorsIfNecessary
{
  if (self)
  {
    v2 = *(self + 208) + 1 - *(self + 224);
    if (v2)
    {
      if (v2 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = *(self + 208) + 1 - *(self + 224);
      }

      do
      {
        [(BWHDRNode *)self _emitNodeErrorToReportFailedOutputFrame];
        --v3;
      }

      while (v3);
    }
  }
}

- (void)renderSampleBuffer:(uint64_t)a1 forInput:.cold.8(uint64_t a1)
{
  if (*(a1 + 229) == 1)
  {
    [(BWHDRNode *)a1 _emitNodeErrorsIfNecessary];
  }

  [(BWHDRNode *)a1 _clearCaptureRequestState];
}

- (void)handleNodeError:(void *)a3 forInput:.cold.1(char a1, void *a2, void *a3)
{
  if (a1)
  {
    -[BWHDRNode _configureCaptureRequestStateWithStillImageCaptureSettings:](a2, [a3 stillImageSettings]);
  }

  v5 = a2[27];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    a2[27] = v5;
  }

  [v5 addObject:a3];
  if ([(BWHDRNode *)a2 _receivedExpectedNumberOfInputFramesOrErrors])
  {
    [(BWHDRNode *)a2 _emitNodeErrorsIfNecessary];

    [(BWHDRNode *)a2 _clearCaptureRequestState];
  }
}

@end