@interface BWStillImageScalerNode
+ (void)initialize;
- (BWStillImageScalerNode)initWithBasePoolCapacity:(int)capacity nodeConfiguration:(id)configuration;
- (id)_shouldPurgeAllResourcesAfterProcessingSettings:(id *)result;
- (id)mainImageDownscalingFactorForAttachedMediaKey:(void *)key attachedMediaMetadata:;
- (uint64_t)_buildPrimaryFormatScalingSession;
- (uint64_t)_outputDimensionsForAttachedMediaKey:(unint64_t)key attachedMediaMainImageDownscalingFactor:(unint64_t)factor primaryMediaWidth:(unint64_t)width primaryMediaHeight:(unint64_t)height requestedWidth:(int)requestedWidth requestedHeight:(int)requestedHeight zoomWithoutUpscalingEnabled:(__n128)enabled aspectRatio:(double)self0 inputDimensions:(double)self1 normalizedZoomRect:(double)self2 optimizedEnhancedResolutionDepthCapture:(double)self3;
- (uint64_t)_removeUnmodifiedAttachedMedias:(uint64_t)medias;
- (uint64_t)_resolveScalerModeWithSettings:(uint64_t)settings inputDimensions:(int)dimensions inputPixelFormat:(unint64_t)format outputDimensions:(char *)outputDimensions normalizedInputCropRect:(char *)rect attachedMediaThatRequiresDifferentScalingThanPrimaryMedia:(CGFloat *)media stillImageScalerModeOut:(double)out scaledDenormalizedInputCropRectOut:(double)self0 mediaToProcessOut:(double)self1;
- (uint64_t)_resolvedPoolCapacityForSettings:(uint64_t)settings inputDimensions:(uint64_t)dimensions outputDimensions:;
- (unint64_t)_resolveOutputDimensionsForSampleBuffer:(void *)buffer settings:(uint64_t)settings inputDimensions:;
- (void)_attachedMediaKeysThatRequireDifferentScalingThanPrimaryMediaSampleBuffer:primaryMediaNormalizedInputCropRect:primaryMediaRequestedOutputWidth:primaryMediaRequestedOutputHeight:;
- (void)_blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:;
- (void)_purgeResourcesLeavingThemForMediaToProcess:(uint64_t)process;
- (void)_rebuildBufferPoolForAttachedMediaKey:(uint64_t)key attachedMediaMainImageDownscalingFactor:(uint64_t)factor inputDimensions:(void *)dimensions outputDimensions:(float)outputDimensions settings:;
- (void)_rebuildPrimaryFormatBufferPoolForInputDimensions:(uint64_t)dimensions inputPixelFormat:(uint64_t)format outputDimensions:(void *)outputDimensions settings:;
- (void)_zoomAttachedMedia:sampleBuffer:;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setBlackFillingRequired:(BOOL)required;
- (void)setMainImageDownscalingFactorByAttachedMediaKey:(id)key;
- (void)setOutputSizeByAttachedMediaKey:(id)key;
@end

@implementation BWStillImageScalerNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageScalerNode)initWithBasePoolCapacity:(int)capacity nodeConfiguration:(id)configuration
{
  if (capacity <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"baseCapacity must be >= 1" userInfo:0]);
  }

  v11.receiver = self;
  v11.super_class = BWStillImageScalerNode;
  v6 = [(BWNode *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(BWNode *)v6 setSupportsLiveReconfiguration:1];
    v7->_nodeConfiguration = configuration;
    v8 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7];
    [(BWNodeInput *)v8 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeInput *)v8 setPassthroughMode:2];
    [(BWNode *)v7 addInput:v8];
    v9 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
    [(BWNodeOutput *)v9 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeOutput *)v9 setPassthroughMode:2];
    [(BWNodeOutput *)v9 setProvidesPixelBufferPool:0];
    [(BWNode *)v7 addOutput:v9];
    v7->_poolBaseCapacity = capacity;
  }

  return v7;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  scalingSession = self->_scalingSession;
  if (scalingSession)
  {
    CFRelease(scalingSession);
  }

  attachedMediaScalingSession = self->_attachedMediaScalingSession;
  if (attachedMediaScalingSession)
  {
    CFRelease(attachedMediaScalingSession);
  }

  v6.receiver = self;
  v6.super_class = BWStillImageScalerNode;
  [(BWNode *)&v6 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(format, "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1]);
  resizedOutputDimensions = self->_resizedOutputDimensions;
  if (resizedOutputDimensions.width < 1 || resizedOutputDimensions.height < 1)
  {
    -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [format width]);
    height = [format height];
  }

  else
  {
    [(BWVideoFormatRequirements *)v6 setWidth:*&self->_resizedOutputDimensions & 0x7FFFFFFFLL];
    height = self->_resizedOutputDimensions.height;
  }

  [(BWVideoFormatRequirements *)v6 setHeight:height];
  [(BWVideoFormatRequirements *)v6 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
  if ([format colorSpaceProperties])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  }

  else
  {
    v10 = 0;
  }

  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:v10];
  [(BWNodeOutput *)self->super._output setFormatRequirements:v6];
  [(BWNodeInput *)self->super._input setPassthroughMode:0];
  [(BWNodeOutput *)self->super._output setPassthroughMode:0];
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSDictionary *)self->_mainImageDownscalingFactorByAttachedMediaKey count])
  {
    [array addObjectsFromArray:{-[NSDictionary allKeys](self->_mainImageDownscalingFactorByAttachedMediaKey, "allKeys")}];
  }

  if ([(NSDictionary *)self->_outputSizeByAttachedMediaKey count])
  {
    [array addObjectsFromArray:{-[NSDictionary allKeys](self->_outputSizeByAttachedMediaKey, "allKeys")}];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [array countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    obj = array;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        [-[NSDictionary objectForKeyedSubscript:](self->_mainImageDownscalingFactorByAttachedMediaKey objectForKeyedSubscript:{v16), "floatValue"}];
        if (v17 == 0.0 && ![(NSDictionary *)self->_outputSizeByAttachedMediaKey objectForKeyedSubscript:v16])
        {
          [(BWNodeInput *)self->super._input setMediaConfiguration:0 forAttachedMediaKey:v16];
          v19 = 0;
        }

        else
        {
          v18 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v18 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v18 setPassthroughMode:0];
          [(BWNodeInput *)self->super._input setMediaConfiguration:v18 forAttachedMediaKey:v16];
          v19 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          isEqualToString = objc_msgSend_isEqualToString_(v16);
          v21 = v6;
          if ((isEqualToString & 1) == 0)
          {
            v21 = objc_alloc_init(BWVideoFormatRequirements);
          }

          [(BWNodeOutputMediaConfiguration *)v19 setFormatRequirements:v21];
          [(BWNodeOutputMediaConfiguration *)v19 setPassthroughMode:1];
        }

        [(BWNodeOutput *)self->super._output setMediaConfiguration:v19 forAttachedMediaKey:v16];
        ++v15;
      }

      while (v13 != v15);
      v22 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
      v13 = v22;
    }

    while (v22);
  }
}

- (void)setBlackFillingRequired:(BOOL)required
{
  requiredCopy = required;
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    formatRequirements = [(BWNodeInput *)self->super._input formatRequirements];
    if (requiredCopy)
    {
      v6 = &unk_1F2248388;
    }

    else
    {
      v6 = 0;
    }

    [(BWFormatRequirements *)formatRequirements setSupportedPixelFormats:v6];
  }

  self->_blackFillingRequired = requiredCopy;
}

- (void)setMainImageDownscalingFactorByAttachedMediaKey:(id)key
{
  mainImageDownscalingFactorByAttachedMediaKey = self->_mainImageDownscalingFactorByAttachedMediaKey;
  if (mainImageDownscalingFactorByAttachedMediaKey != key)
  {

    self->_mainImageDownscalingFactorByAttachedMediaKey = [key copy];
  }
}

- (void)setOutputSizeByAttachedMediaKey:(id)key
{
  outputSizeByAttachedMediaKey = self->_outputSizeByAttachedMediaKey;
  if (outputSizeByAttachedMediaKey != key)
  {

    self->_outputSizeByAttachedMediaKey = [key copy];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (dword_1ED8444F0)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWStillImageScalerNode *)self _purgeResourcesLeavingThemForMediaToProcess:?];
  v8.receiver = self;
  v8.super_class = BWStillImageScalerNode;
  [(BWNode *)&v8 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  target = 0;
  selfCopy = self;
  if (!buffer || (ImageBuffer = CMSampleBufferGetImageBuffer(buffer)) == 0 || (v7 = ImageBuffer, Width = CVPixelBufferGetWidth(ImageBuffer), Height = CVPixelBufferGetHeight(v7), PixelFormatType = CVPixelBufferGetPixelFormatType(v7), (v11 = CMGetAttachment(buffer, *off_1E798A3C8, 0)) == 0))
  {
    v44 = 0;
    v96 = 0;
LABEL_78:
    newPixelBuffer = 0;
    LOBYTE(v40) = 1;
    goto LABEL_41;
  }

  v12 = v11;
  v13 = CMGetAttachment(buffer, @"StillSettings", 0);
  v96 = v12;
  if (!v13)
  {
    v44 = 0;
    goto LABEL_78;
  }

  sourceBuffer = v7;
  v14 = Width | (Height << 32);
  v98 = v13;
  requestedSettings = [v13 requestedSettings];
  v16 = [(BWStillImageScalerNode *)self _resolveOutputDimensionsForSampleBuffer:buffer settings:requestedSettings inputDimensions:v14];
  FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v12);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v94 = PixelFormatType;
  if (dword_1ED8444F0)
  {
    v104 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v89 = v16 >> 32;
  v90 = v16;
  [BWStillImageScalerNode _attachedMediaKeysThatRequireDifferentScalingThanPrimaryMediaSampleBuffer:primaryMediaNormalizedInputCropRect:primaryMediaRequestedOutputWidth:primaryMediaRequestedOutputHeight:];
  v26 = v25;
  v102 = 0;
  v101.origin.x = FigCaptureRectFromDimensions();
  v101.origin.y = v27;
  v101.size.width = v28;
  v101.size.height = v29;
  v100 = 0;
  v30 = [(BWStillImageScalerNode *)self _resolveScalerModeWithSettings:requestedSettings inputDimensions:v14 inputPixelFormat:PixelFormatType outputDimensions:v16 normalizedInputCropRect:v26 attachedMediaThatRequiresDifferentScalingThanPrimaryMedia:&v102 stillImageScalerModeOut:&v101.origin.x scaledDenormalizedInputCropRectOut:FinalCropRect mediaToProcessOut:v19, v21, v23, &v100];
  if (v30)
  {
    v43 = v30;
    newPixelBuffer = 0;
    LOBYTE(v40) = 1;
    goto LABEL_82;
  }

  v31 = v100;
  v32 = [MEMORY[0x1E695DF70] arrayWithArray:v100];
  memset(v110, 0, sizeof(v110));
  v111 = 0u;
  v112 = 0u;
  v33 = [v31 countByEnumeratingWithState:v110 objects:&v106 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v110[2];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v110[2] != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(v110[1] + 8 * i);
        if ((objc_msgSend_isEqualToString_(v37) & 1) == 0 && !BWSampleBufferGetAttachedMedia(buffer, v37))
        {
          [v32 removeObject:v37];
        }
      }

      v34 = [v31 countByEnumeratingWithState:v110 objects:&v106 count:16];
    }

    while (v34);
  }

  v93 = v16;
  v100 = [v32 copy];
  v38 = [CMGetAttachment(buffer @"NonProcessedReferenceFrame"];
  if (v38)
  {
    v39 = [MEMORY[0x1E695DF70] arrayWithArray:v100];
    [v39 removeObject:@"PrimaryFormat"];
    v100 = v39;
  }

  if ([CMGetAttachment(buffer @"StillImageBufferFrameType"] == 40)
  {
    v40 = 1;
  }

  else
  {
    v40 = v38 ^ 1;
  }

  p_isa = &selfCopy->super.super.isa;
  if (v40 == 1)
  {
    [(BWStillImageScalerNode *)selfCopy _purgeResourcesLeavingThemForMediaToProcess:v100];
  }

  newPixelBuffer = 0;
  v43 = 0;
  if (v102 > 2)
  {
    if ((v102 - 3) < 2)
    {
      if (CMSampleBufferGetImageBuffer(buffer))
      {
        if (dword_1ED8444F0)
        {
          v104 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v47 = v104;
          if (os_log_type_enabled(v46, type))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 0xFFFFFFFE;
          }

          if (v48)
          {
            v49 = BWStringFromCGRect(v101.origin.x, v101.origin.y, v101.size.width, v101.size.height);
            v50 = BWStringFromPixelBuffer();
            LODWORD(v110[0]) = 136315650;
            *(v110 + 4) = "[BWStillImageScalerNode renderSampleBuffer:forInput:]";
            WORD2(v110[1]) = 2112;
            *(&v110[1] + 6) = v49;
            HIWORD(v110[2]) = 2112;
            v110[3] = v50;
            LODWORD(v88) = 32;
            v87 = v110;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v51 = VTFillPixelBufferBorderWithBlack();
        if (!v51)
        {
          CMSetAttachment(buffer, *off_1E798A5E0, MEMORY[0x1E695E118], 1u);
          [objc_msgSend(MEMORY[0x1E695DF70] arrayWithArray:{v100), "removeObject:", @"PrimaryFormat"}];
          [BWStillImageScalerNode _blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:];
          if (v102 != 4)
          {
            newPixelBuffer = 0;
            v44 = v98;
LABEL_50:
            [(BWNodeOutput *)selfCopy->super._output emitSampleBuffer:buffer, v87, v88];
            v59 = MEMORY[0x1E695FF58];
            if (!v40)
            {
              goto LABEL_89;
            }

            goto LABEL_96;
          }

          v45 = v40;
          v101.origin.x = FigCaptureRectFromDimensions();
          v101.origin.y = v52;
          v101.size.width = v53;
          v101.size.height = v54;
          goto LABEL_46;
        }

        v43 = v51;
        newPixelBuffer = 0;
      }

      else
      {
        newPixelBuffer = 0;
        v43 = 4294954516;
      }
    }

LABEL_82:
    v44 = v98;
    goto LABEL_83;
  }

  v44 = v98;
  if (!v102)
  {
    newPixelBuffer = 0;
LABEL_41:
    v43 = 4294954516;
    goto LABEL_83;
  }

  if (v102 != 1)
  {
    if (v102 != 2)
    {
      goto LABEL_83;
    }

    v45 = v40;
LABEL_46:
    v55 = [MEMORY[0x1E695DF70] arrayWithArray:{v100, v87, v88}];
    [v55 removeObject:@"PrimaryFormat"];
    v56 = [v100 containsObject:@"PrimaryFormat"];
    v57 = [v55 count];
    v58 = v57;
    if (!v56)
    {
      newPixelBuffer = 0;
      if (!v57)
      {
LABEL_48:
        v44 = v98;
        v40 = v45;
        goto LABEL_49;
      }

LABEL_73:
      [BWStillImageScalerNode _zoomAttachedMedia:sampleBuffer:];
      goto LABEL_48;
    }

    if (v90 == [(BWPixelBufferPool *)selfCopy->_pool width]&& v89 == [(BWPixelBufferPool *)selfCopy->_pool height])
    {
      v60 = [(BWStillImageScalerNode *)selfCopy _resolvedPoolCapacityForSettings:v98 inputDimensions:v14 outputDimensions:v93];
      if ([(BWPixelBufferPool *)selfCopy->_pool capacity]!= v60)
      {
        [(BWPixelBufferPool *)selfCopy->_pool setCapacity:v60];
      }
    }

    else
    {
      [(BWStillImageScalerNode *)selfCopy _rebuildPrimaryFormatBufferPoolForInputDimensions:v14 inputPixelFormat:v94 outputDimensions:v93 settings:v98];
      if (v61)
      {
        goto LABEL_76;
      }
    }

    if (selfCopy->_scalingSession || (v61 = [(BWStillImageScalerNode *)selfCopy _buildPrimaryFormatScalingSession], !v61))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"NewPixelBuffer-%@", @"PrimaryFormat"];
      newPixelBuffer = [(BWPixelBufferPool *)selfCopy->_pool newPixelBuffer];
      if (newPixelBuffer)
      {
        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, newPixelBuffer, &selfCopy->_outputFormatDescription, &target);
        if (!CopyWithNewPixelBuffer)
        {
          v63 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(target);
          v64 = CGRectCreateDictionaryRepresentation(v101);
          if (!v64)
          {
            v43 = 4294954516;
            goto LABEL_101;
          }

          CopyWithNewPixelBuffer = VTSessionSetProperty(selfCopy->_scalingSession, *MEMORY[0x1E6983E40], v64);
          if (!CopyWithNewPixelBuffer)
          {
            if (dword_1ED8444F0)
            {
              v95 = v63;
              v97 = v58;
              v104 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v66 = v104;
              if (os_log_type_enabled(v65, type))
              {
                v67 = v66;
              }

              else
              {
                v67 = v66 & 0xFFFFFFFE;
              }

              if (v67)
              {
                v91 = BWStringFromPixelBuffer();
                v68 = BWStringFromCGRect(v101.origin.x, v101.origin.y, v101.size.width, v101.size.height);
                v69 = BWStringFromPixelBuffer();
                LODWORD(v110[0]) = 136315906;
                *(v110 + 4) = "[BWStillImageScalerNode renderSampleBuffer:forInput:]";
                WORD2(v110[1]) = 2112;
                *(&v110[1] + 6) = v91;
                HIWORD(v110[2]) = 2112;
                v110[3] = v68;
                LOWORD(v111) = 2112;
                *(&v111 + 2) = v69;
                LODWORD(v88) = 42;
                v87 = v110;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v58 = v97;
              v63 = v95;
            }

            CopyWithNewPixelBuffer = VTPixelTransferSessionTransferImage(selfCopy->_scalingSession, sourceBuffer, newPixelBuffer);
            if (!CopyWithNewPixelBuffer)
            {
              CVBufferRemoveAttachment(newPixelBuffer, *MEMORY[0x1E6965D70]);
              v71.n128_u64[0] = *&v101.origin.y;
              v70.n128_u64[0] = *&v101.origin.x;
              v72.n128_u64[0] = *&v101.size.width;
              FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v63, v14, v93, v70, v71, v72, v101.size.height, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
              FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v63, v14, v93);
              BWUpdateLandmarksForStillImageCrop();
              FigCaptureMetadataUtilitiesPreventFurtherCropping(v63, v73);
              [(BWMemoryAnalyticsPayload *)[(BWGraph *)[(BWNode *)selfCopy graph] memoryAnalyticsPayload] setScaledStillCaptureTaken:1];
              v113.width = v93;
              v113.height = SHIDWORD(v93);
              DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v113);
              CMSetAttachment(target, @"OriginalCameraIntrinsicMatrixReferenceDimensions", DictionaryRepresentation, 1u);

              v75 = FigCaptureRectFromDimensions();
              BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(target, @"OriginalCameraIntrinsicMatrix", 0, 0, v101.origin.x, v101.origin.y, v101.size.width, v101.size.height, v75, v76, v77, v78);
              buffer = target;
              if (!v58)
              {
                goto LABEL_48;
              }

              goto LABEL_73;
            }
          }
        }

        v43 = CopyWithNewPixelBuffer;
      }

      else
      {
        [BWStillImageScalerNode renderSampleBuffer:forInput:];
        v43 = 4294954510;
      }

LABEL_101:
      v44 = v98;
      LOBYTE(v40) = v45;
      goto LABEL_83;
    }

LABEL_76:
    v43 = v61;
    newPixelBuffer = 0;
    goto LABEL_101;
  }

LABEL_49:
  if (buffer)
  {
    goto LABEL_50;
  }

  v43 = 0;
LABEL_83:
  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  v104 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v81 = v104;
  if (os_log_type_enabled(v80, type))
  {
    v82 = v81;
  }

  else
  {
    v82 = v81 & 0xFFFFFFFE;
  }

  if (v82)
  {
    v83 = [objc_msgSend(v44 "requestedSettings")];
    LODWORD(v110[0]) = 136315650;
    *(v110 + 4) = "[BWStillImageScalerNode renderSampleBuffer:forInput:]";
    WORD2(v110[1]) = 2048;
    *(&v110[1] + 6) = v83;
    HIWORD(v110[2]) = 1024;
    LODWORD(v110[3]) = v43;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v84 = [objc_msgSend(v44 "requestedSettings")];
  v106 = 134218240;
  v107 = v84;
  v108 = 1024;
  v109 = v43;
  v85 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v85, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageScalerNode.m", 589, @"LastShownDate:BWStillImageScalerNode.m:589", @"LastShownBuild:BWStillImageScalerNode.m:589", 0);
  free(v85);
  p_isa = &selfCopy->super.super.isa;
  v86 = [BWNodeError newError:v43 sourceNode:selfCopy stillImageSettings:v44 metadata:v96];
  [(BWNodeOutput *)selfCopy->super._output emitNodeError:v86];

  v59 = MEMORY[0x1E695FF58];
  if (v40)
  {
LABEL_96:
    if ([(BWStillImageScalerNode *)p_isa _shouldPurgeAllResourcesAfterProcessingSettings:v44])
    {
      [(BWStillImageScalerNode *)p_isa _purgeResourcesLeavingThemForMediaToProcess:?];
    }
  }

LABEL_89:
  if (newPixelBuffer)
  {
    CFRelease(newPixelBuffer);
  }

  if (target)
  {
    CFRelease(target);
  }

  if (*v59 == 1)
  {
    kdebug_trace();
  }
}

- (id)mainImageDownscalingFactorForAttachedMediaKey:(void *)key attachedMediaMetadata:
{
  if (result)
  {
    v4 = result;
    result = [objc_msgSend(key objectForKeyedSubscript:{*off_1E798A788), "floatValue"}];
    if (*(v4 + 220) != 1 || v5 == 0.0)
    {
      v6 = [v4[22] objectForKeyedSubscript:a2];

      return [v6 floatValue];
    }
  }

  return result;
}

- (void)_purgeResourcesLeavingThemForMediaToProcess:(uint64_t)process
{
  if (process && (*(process + 152) || [*(process + 192) count]))
  {
    [a2 count];
    if (([a2 containsObject:@"PrimaryFormat"] & 1) == 0)
    {
      v4 = *(process + 152);
      if (v4)
      {

        *(process + 152) = 0;
        v5 = *(process + 160);
        if (v5)
        {
          CFRelease(v5);
          *(process + 160) = 0;
        }
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v7 = *(process + 192);
    v15 = OUTLINED_FUNCTION_4_2(array, v8, v9, v10, v11, v12, v13, v14, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = *(8 * i);
          v20 = [a2 containsObject:v19];
          if ((v20 & 1) == 0)
          {
            v20 = [array addObject:v19];
          }
        }

        v16 = OUTLINED_FUNCTION_4_2(v20, v21, v22, v23, v24, v25, v26, v27, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60);
      }

      while (v16);
    }

    [*(process + 192) removeObjectsForKeys:array];
    if (![*(process + 192) count])
    {
      v28 = *(process + 200);
      if (v28)
      {
        CFRelease(v28);
        *(process + 200) = 0;
      }
    }
  }
}

- (unint64_t)_resolveOutputDimensionsForSampleBuffer:(void *)buffer settings:(uint64_t)settings inputDimensions:
{
  if (!self)
  {
    return 0;
  }

  v8 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v9 = [CMGetAttachment(target @"StillImageBufferFrameType"];
  v10 = [v8 objectForKeyedSubscript:*off_1E798A780];
  v11 = BWStillImageProcessingFlagsForSampleBuffer(target);
  outputDimensions = [buffer outputDimensions];
  if ([*(self + 128) optimizedEnhancedResolutionDepthPipelineEnabled])
  {
    v13 = v9 == 13;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    stereoPhotoOutputDimensions2 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(settings, [buffer outputWidth] / objc_msgSend(buffer, "outputHeight"));
  }

  else
  {
    stereoPhotoOutputDimensions = [*(self + 128) stereoPhotoOutputDimensions];
    if (stereoPhotoOutputDimensions < 1 || SHIDWORD(stereoPhotoOutputDimensions) < 1 || (v11 & 0x100000) == 0)
    {
      v17 = *(self + 212);
      v18 = HIDWORD(v17);
      if (v17 < 1 || SHIDWORD(v17) <= 0)
      {
        v18 = HIDWORD(outputDimensions);
        if (v10)
        {
          [v10 floatValue];
          v21 = FigCaptureScaledDimensions(outputDimensions, v20);
          v22 = v21;
          v23 = HIDWORD(v21);
          if (outputDimensions < SHIDWORD(outputDimensions))
          {
            LODWORD(outputDimensions) = v21;
          }

          else
          {
            v18 = HIDWORD(v21);
          }

          v24 = FigCaptureAspectRatioForDimensions([buffer outputDimensions]);
          v25 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(outputDimensions | (v18 << 32), v24);
          if (v22 != 2016 && settings == 0x5E8000007E0 && v23 == 1512)
          {
            outputDimensions = 0x5E8000007E0;
          }

          else
          {
            outputDimensions = v25;
          }

          v18 = HIDWORD(outputDimensions);
        }
      }

      else
      {
        outputDimensions = *(self + 212);
      }

      return outputDimensions | (v18 << 32);
    }

    stereoPhotoOutputDimensions2 = [*(self + 128) stereoPhotoOutputDimensions];
  }

  LODWORD(outputDimensions) = stereoPhotoOutputDimensions2;
  v18 = HIDWORD(stereoPhotoOutputDimensions2);
  return outputDimensions | (v18 << 32);
}

- (void)_attachedMediaKeysThatRequireDifferentScalingThanPrimaryMediaSampleBuffer:primaryMediaNormalizedInputCropRect:primaryMediaRequestedOutputWidth:primaryMediaRequestedOutputHeight:
{
  OUTLINED_FUNCTION_6_4();
  v71 = v4;
  v84 = v5;
  v85 = v6;
  v82 = v7;
  v83 = v8;
  if (v0)
  {
    v9 = v3;
    v10 = v2;
    v11 = v1;
    v12 = v0;
    array = [MEMORY[0x1E695DF70] array];
    v77 = CMGetAttachment(v11, @"StillSettings", 0);
    requestedSettings = [v77 requestedSettings];
    BWSampleBufferCopyDictionaryOfAttachedMedia(v11);
    v14 = OUTLINED_FUNCTION_14_9();
    obj = v15;
    v16 = [v15 countByEnumeratingWithState:v14 objects:? count:?];
    if (!v16)
    {
      goto LABEL_39;
    }

    v17 = v16;
    OUTLINED_FUNCTION_13_13();
    v80 = v18;
    key = *off_1E798A3C8;
    v76 = -233132048;
    v73 = -233132016;
    v74 = @"SmartStyleStillStyledThumbnail";
    v72 = @"SmartStyleStillSmallLinearLightMap";
    v81 = v11;
    while (1)
    {
      v19 = 0;
      do
      {
        OUTLINED_FUNCTION_13_13();
        if (v20 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(v87[1] + 8 * v19);
        AttachedMedia = BWSampleBufferGetAttachedMedia(v11, v21);
        v23 = CMGetAttachment(AttachedMedia, key, 0);
        [(BWStillImageScalerNode *)v12 mainImageDownscalingFactorForAttachedMediaKey:v21 attachedMediaMetadata:v23];
        v25 = v24;
        if ([v12[16] optimizedEnhancedResolutionDepthPipelineEnabled])
        {
          v26 = ([objc_msgSend(v77 "captureSettings")] >> 11) & 1;
        }

        else
        {
          LOBYTE(v26) = 0;
        }

        FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v23);
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = BWPixelBufferDimensionsFromSampleBuffer(AttachedMedia);
        outputWidth = [requestedSettings outputWidth];
        outputHeight = [requestedSettings outputHeight];
        isZoomWithoutUpscalingEnabled = [requestedSettings isZoomWithoutUpscalingEnabled];
        aspectRatio = [requestedSettings aspectRatio];
        v39.n128_f32[0] = v25;
        v40 = [(BWStillImageScalerNode *)v12 _outputDimensionsForAttachedMediaKey:v21 attachedMediaMainImageDownscalingFactor:v84 primaryMediaWidth:v85 primaryMediaHeight:outputWidth requestedWidth:outputHeight requestedHeight:isZoomWithoutUpscalingEnabled zoomWithoutUpscalingEnabled:aspectRatio aspectRatio:v39 inputDimensions:FinalCropRect normalizedZoomRect:v29 optimizedEnhancedResolutionDepthCapture:v31, v33, v34, v26];
        if ((objc_msgSend_isEqualToString_(v21) & 1) == 0 && (objc_msgSend_isEqualToString_(v21) & 1) == 0 && (objc_msgSend_isEqualToString_(v21) & 1) == 0 && (objc_msgSend_isEqualToString_(v21) & 1) == 0 && (objc_msgSend_isEqualToString_(v21) & 1) == 0)
        {
          v90.origin.x = OUTLINED_FUNCTION_1_10();
          v93.origin.x = v10;
          v93.origin.y = v9;
          v93.size.width = v82;
          v93.size.height = v83;
          if (!CGRectEqualToRect(v90, v93) || v34 != v40)
          {
            v43 = FigCaptureAspectRatioForDimensions(v40);
            goto LABEL_24;
          }

          v42 = 1;
          goto LABEL_21;
        }

        v88.origin.x = OUTLINED_FUNCTION_1_10();
        v91.origin.x = v10;
        v91.origin.y = v9;
        v91.size.width = v82;
        v91.size.height = v83;
        if (CGRectEqualToRect(v88, v91) && v34 == v40)
        {
          v42 = 0;
LABEL_21:
          FigCaptureUnityRect();
          v89.origin.x = OUTLINED_FUNCTION_1_10();
          if (CGRectEqualToRect(v89, v92) || (v42 & 1) != 0)
          {
            goto LABEL_32;
          }
        }

        v43 = v31 / v33;
LABEL_24:
        if (v25 == 0.0)
        {
          if (![v12[23] objectForKeyedSubscript:v21])
          {
            goto LABEL_32;
          }

          v56.n128_f64[0] = OUTLINED_FUNCTION_1_10();
          v57.n128_f64[0] = v43;
          FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v58, v59, v56, v60, v61, v62, v57, v63);
        }

        else
        {
          v44.n128_f64[0] = OUTLINED_FUNCTION_1_10();
          v45.n128_f64[0] = v43;
          v52 = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v46, v47, v44, v48, v49, v50, v45, v51);
        }

        v64 = v52;
        v65 = v53;
        v66 = v54;
        v67 = v55;
        if (CGRectIsNull(*&v52))
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v70, v71, v72, v73, v74, array, v76);
        }

        if (!sis_encoderCanCropDenormalizedZoomRect(v40, v64, v65, v66, v67))
        {
          [array addObject:v21];
        }

LABEL_32:
        ++v19;
        v11 = v81;
      }

      while (v17 != v19);
      v68 = [obj countByEnumeratingWithState:v87 objects:v86 count:16];
      v17 = v68;
      if (!v68)
      {
LABEL_39:

        [array count];
        break;
      }
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (uint64_t)_resolveScalerModeWithSettings:(uint64_t)settings inputDimensions:(int)dimensions inputPixelFormat:(unint64_t)format outputDimensions:(char *)outputDimensions normalizedInputCropRect:(char *)rect attachedMediaThatRequiresDifferentScalingThanPrimaryMedia:(CGFloat *)media stillImageScalerModeOut:(double)out scaledDenormalizedInputCropRectOut:(double)self0 mediaToProcessOut:(double)self1
{
  if (result)
  {
    v13 = result;
    result = 0;
    if (rect)
    {
      if (media && a13)
      {
        v23 = [objc_msgSend(a2 "bravoConstituentImageDeliveryDeviceTypes")];
        OUTLINED_FUNCTION_12_13();
        if (v26 >= 0x10)
        {
          v27 = v24;
        }

        else
        {
          v27 = v25;
        }

        v28 = FigCapturePixelFormatGetCompressionType(dimensions) != 0;
        v29 = [a2 outputFormat] == 1785750887 || objc_msgSend(a2, "outputFormat") == 1752589105;
        v30 = FigCapturePixelFormatIsDemosaicedRaw([a2 rawOutputFormat]) && objc_msgSend(a2, "outputFormat") == 0;
        if (*(v13 + 169) == 1)
        {
          v31 = BWCIFilterArrayContainsPortraitFilters([a2 processedImageFilters]) ^ 1;
        }

        else
        {
          LOBYTE(v31) = 1;
        }

        v32.n128_u64[0] = FigCaptureAspectRatioForDimensions(format);
        v33.n128_f64[0] = out;
        v34.n128_f64[0] = processOut;
        v35.n128_f64[0] = a12;
        FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(settings, settings >> 32, v33, rectOut, v34, v35, v32, v36);
        x = v63.origin.x;
        y = v63.origin.y;
        width = v63.size.width;
        height = v63.size.height;
        if (CGRectIsNull(v63))
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v57, v58, outputDimensions, a13, rect, v61, v62);
          return 4294954516;
        }

        else
        {
          v41 = v28 & v27;
          FigCaptureRectFromDimensions();
          v64.origin.x = OUTLINED_FUNCTION_3();
          v42 = CGRectContainsRect(v64, v65);
          if (v29 || v30)
          {
            v43 = OUTLINED_FUNCTION_3();
            v47 = !sis_encoderCanCropDenormalizedZoomRect(format, v43, v44, v45, v46);
            if (settings == format)
            {
              LOBYTE(v47) = 1;
            }

            if (v23)
            {
              LOBYTE(v47) = 1;
            }

            v48 = ((v47 | v41) ^ 1) & v31;
          }

          else
          {
            v48 = 0;
          }

          v49 = settings == format && v42;
          if (v49 & (v41 ^ 1) & 1) != 0 || (v48)
          {
            v54 = [outputDimensions count];
            if (v54)
            {
              outputDimensionsCopy = outputDimensions;
            }

            else
            {
              outputDimensionsCopy = 0;
            }

            if (v54)
            {
              v51 = 2;
            }

            else
            {
              v51 = 1;
            }

            rectCopy2 = rect;
          }

          else
          {
            rectCopy2 = rect;
            if (v23)
            {
              if (settings == format)
              {
                v51 = 3;
              }

              else
              {
                v51 = 4;
              }

              [*(v13 + 176) allKeys];
              v52 = [OUTLINED_FUNCTION_7() setWithArray:?];
              [*(v13 + 184) allKeys];
              [OUTLINED_FUNCTION_7() addObjectsFromArray:?];
              [v52 addObject:@"PrimaryFormat"];
              outputDimensionsCopy = [v52 allObjects];
            }

            else
            {
              [*(v13 + 176) allKeys];
              v55 = [OUTLINED_FUNCTION_7() setWithArray:?];
              [*(v13 + 184) allKeys];
              [OUTLINED_FUNCTION_7() addObjectsFromArray:?];
              [v55 addObject:@"PrimaryFormat"];
              outputDimensionsCopy = [v55 allObjects];
              v51 = 2;
            }
          }

          result = 0;
          *rectCopy2 = v51;
          *media = x;
          media[1] = y;
          media[2] = width;
          media[3] = height;
          *a13 = outputDimensionsCopy;
        }
      }
    }
  }

  return result;
}

- (void)_blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:
{
  OUTLINED_FUNCTION_6_4();
  v59 = v7;
  if (v0)
  {
    v8 = v3;
    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = v2;
    v13 = v1;
    v14 = v0;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v63 = [v1 countByEnumeratingWithState:&v77 objects:v76 count:16];
    if (!v63)
    {
      goto LABEL_36;
    }

    key = *off_1E798A3C8;
    v62 = *v78;
    v60 = *off_1E798A5E0;
    v57 = v13;
    v58 = v8;
    while (1)
    {
      v15 = 0;
      do
      {
        OUTLINED_FUNCTION_13_13();
        if (v16 != v62)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v77 + 1) + 8 * v15);
        AttachedMedia = BWSampleBufferGetAttachedMedia(v12, v17);
        if (AttachedMedia)
        {
          v19 = AttachedMedia;
          ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
          if (!ImageBuffer || (v21 = ImageBuffer, v22 = CMGetAttachment(v19, key, 0), -[BWStillImageScalerNode mainImageDownscalingFactorForAttachedMediaKey:attachedMediaMetadata:](v14, v17, v22), v24 = v23, v23 == 0.0) && ![v14[23] objectForKeyedSubscript:v17])
          {
LABEL_34:
            BWSampleBufferRemoveAttachedMedia(v12, v17);
            goto LABEL_32;
          }

          outputWidth = [v8 outputWidth];
          v26 = outputWidth / [v8 outputHeight];
          if (v24 == 0.0)
          {
            v35 = *(MEMORY[0x1E695F050] + 16);
            v72 = *MEMORY[0x1E695F050];
            v73 = v35;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              Width = CVPixelBufferGetWidth(v21);
              Height = CVPixelBufferGetHeight(v21);
              v38.n128_u64[0] = v72;
              v40.n128_u64[0] = *(&v73 + 1);
              v39.n128_u64[0] = v73;
              v41.n128_f64[0] = v26;
              FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, v38, *(&v72 + 1), v39, v40, v41, v42);
              if (OUTLINED_FUNCTION_19_9(v82))
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            if (v24 != 1.0 && v24 != 2.0)
            {
              goto LABEL_34;
            }

            v28 = CVPixelBufferGetWidth(v21);
            v29 = CVPixelBufferGetHeight(v21);
            v30.n128_f64[0] = v24;
            v31.n128_u64[0] = v11;
            v32.n128_u64[0] = v9;
            v33.n128_u64[0] = v59;
            v34.n128_f64[0] = v26;
            v81.origin.x = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v28, v29, v31, v10, v32, v33, v34, v30);
            if (OUTLINED_FUNCTION_19_9(v81))
            {
LABEL_21:
              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            }
          }

          v83.origin.x = OUTLINED_FUNCTION_3_0();
          if (CGRectIsNull(v83))
          {
            goto LABEL_31;
          }

          if (dword_1ED8444F0)
          {
            v43 = v14;
            v44 = v12;
            v75 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v46 = v75;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v47 = v46;
            }

            else
            {
              v47 = v46 & 0xFFFFFFFE;
            }

            if (v47)
            {
              v48 = BWStringFromPixelBuffer();
              v49 = OUTLINED_FUNCTION_3_0();
              v53 = BWStringFromCGRect(v49, v50, v51, v52);
              v64 = 136315907;
              v65 = "[BWStillImageScalerNode _blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:]";
              v66 = 2113;
              v67 = v17;
              v68 = 2112;
              v69 = v48;
              v70 = 2112;
              v71 = v53;
              LODWORD(v56) = 42;
              v55 = &v64;
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v12 = v44;
            v14 = v43;
            v13 = v57;
            v8 = v58;
          }

          OUTLINED_FUNCTION_3_0();
          if (!VTFillPixelBufferBorderWithBlack())
          {
LABEL_31:
            CMSetAttachment(v19, v60, MEMORY[0x1E695E118], 1u);
            goto LABEL_32;
          }

          goto LABEL_34;
        }

LABEL_32:
        ++v15;
      }

      while (v63 != v15);
      v54 = [v13 countByEnumeratingWithState:&v77 objects:v76 count:16];
      v63 = v54;
      if (!v54)
      {
LABEL_36:
        [(BWStillImageScalerNode *)v14 _removeUnmodifiedAttachedMedias:v12];
        break;
      }
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (void)_rebuildPrimaryFormatBufferPoolForInputDimensions:(uint64_t)dimensions inputPixelFormat:(uint64_t)format outputDimensions:(void *)outputDimensions settings:
{
  if (self)
  {
    v10 = objc_alloc_init(BWVideoFormatRequirements);
    name = [self name];
    if (name)
    {
      v12 = name;
    }

    else
    {
      v12 = @"StillImageScaler";
    }

    v13 = *(self + 144);
    [objc_msgSend(outputDimensions "requestedSettings")];
    v14 = [objc_msgSend(objc_msgSend(outputDimensions "requestedSettings")];
    if (a2 != format && v14 >= 2)
    {
      v16 = v14;
    }

    else
    {
      v16 = 1;
    }

    OUTLINED_FUNCTION_12_13();
    if (v19 >= 0x10)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    if (FigCapturePixelFormatGetCompressionType(dimensions) && v20)
    {
      dimensions = FigCaptureUncompressedPixelFormatForPixelFormat(dimensions);
    }

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dimensions];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
    [(BWVideoFormatRequirements *)v10 setWidth:format];
    [(BWVideoFormatRequirements *)v10 setHeight:format >> 32];
    [(BWVideoFormatRequirements *)v10 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v10 setPlaneAlignment:64];
    [BWVideoFormatRequirements cacheModesForCacheProfile:2];
    [OUTLINED_FUNCTION_8() setSupportedCacheModes:?];
    v26 = v10;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v21 = [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];
    if (v21)
    {
      v22 = v21;

      v23 = [BWPixelBufferPool alloc];
      memoryPool = [*(self + 16) memoryPool];
      LOBYTE(v25) = *(self + 208);
      *(self + 152) = [(BWPixelBufferPool *)v23 initWithVideoFormat:v22 capacity:v16 * v13 name:v12 clientProvidesPool:0 memoryPool:memoryPool providesBackPressure:v25 reportSlowBackPressureAllocations:?];
    }

    OUTLINED_FUNCTION_18_9();
  }
}

- (uint64_t)_resolvedPoolCapacityForSettings:(uint64_t)settings inputDimensions:(uint64_t)dimensions outputDimensions:
{
  if (result)
  {
    v7 = *(result + 144);
    [objc_msgSend(a2 "requestedSettings")];
    v8 = [objc_msgSend(objc_msgSend(a2 "requestedSettings")];
    if (settings != dimensions && v8 >= 2)
    {
      v10 = v8;
    }

    else
    {
      v10 = 1;
    }

    return v10 * v7;
  }

  return result;
}

- (uint64_t)_buildPrimaryFormatScalingSession
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 160);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 160) = 0;
    }

    return VTPixelTransferSessionCreate(0, (v1 + 160));
  }

  return result;
}

- (void)_zoomAttachedMedia:sampleBuffer:
{
  OUTLINED_FUNCTION_6_4();
  v4 = v3;
  v141 = v5;
  if (v5)
  {
    v6 = v2;
    v7 = v1;
    v122 = CMGetAttachment(v2, @"StillSettings", 0);
    requestedSettings = [v122 requestedSettings];
    v8 = [v7 countByEnumeratingWithState:OUTLINED_FUNCTION_14_9() objects:? count:?];
    if (!v8)
    {
      goto LABEL_86;
    }

    v9 = v8;
    v113 = v4;
    v10 = *v158[2];
    v11 = 0x1F21AB010;
    key = *off_1E798A3C8;
    allocator = *MEMORY[0x1E695E480];
    v121 = *MEMORY[0x1E6965D88];
    v120 = *MEMORY[0x1E6965F30];
    v116 = *(MEMORY[0x1E695F050] + 8);
    v117 = *MEMORY[0x1E695F050];
    v114 = *(MEMORY[0x1E695F050] + 24);
    v115 = *(MEMORY[0x1E695F050] + 16);
    propertyKey = *MEMORY[0x1E6983E40];
    v119 = *off_1E798D2B8;
    target = v6;
    while (1)
    {
      v12 = 0;
      do
      {
        OUTLINED_FUNCTION_13_13();
        if (v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(v158[1] + 8 * v12);
        v155 = 0;
        cf = 0;
        if ((objc_msgSend_isEqualToString_(v14, v109) & 1) == 0 && (objc_msgSend_isEqualToString_(v14) & 1) == 0 && (objc_msgSend_isEqualToString_(v14) & 1) == 0 && (objc_msgSend_isEqualToString_(v14) & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_7_19();
          AttachedMedia = BWSampleBufferGetAttachedMedia(v15, v16);
          if (AttachedMedia)
          {
            v18 = AttachedMedia;
            pixelBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
            if (!pixelBuffer)
            {
              goto LABEL_24;
            }

            v19 = v11;
            v139 = v18;
            v20 = CMGetAttachment(v18, key, 0);
            v21 = v141;
            [(BWStillImageScalerNode *)v141 mainImageDownscalingFactorForAttachedMediaKey:v14 attachedMediaMetadata:v20];
            v23 = v22;
            if (v22 == 0.0 && ![*(v141 + 184) objectForKeyedSubscript:v14] || !*(v141 + 200) && (v21 = v141, VTPixelTransferSessionCreate(allocator, (v141 + 200))) || ((objc_msgSend(objc_msgSend(objc_msgSend(v21, "graph"), "memoryAnalyticsPayload"), "setScaledStillCaptureTaken:", 1), v23 != 0.0) ? (v24 = v23 == 1.0) : (v24 = 1), !v24 && CVPixelBufferGetPixelFormatType(pixelBuffer) != 1278226488))
            {
              v11 = v19;
              goto LABEL_24;
            }

            if ([*(v141 + 128) optimizedEnhancedResolutionDepthPipelineEnabled])
            {
              v130 = ([objc_msgSend(v122 "captureSettings")] >> 11) & 1;
            }

            else
            {
              LOBYTE(v130) = 0;
            }

            FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v20);
            v30 = v29;
            v32 = v31;
            v34 = v33;
            Width = CVPixelBufferGetWidth(pixelBuffer);
            Height = CVPixelBufferGetHeight(pixelBuffer);
            destinationBuffer = Width;
            outputWidth = [requestedSettings outputWidth];
            outputHeight = [requestedSettings outputHeight];
            outputWidth2 = [requestedSettings outputWidth];
            outputHeight2 = [requestedSettings outputHeight];
            isZoomWithoutUpscalingEnabled = [requestedSettings isZoomWithoutUpscalingEnabled];
            aspectRatio = [requestedSettings aspectRatio];
            v110 = v130;
            v131 = Width | (Height << 32);
            v37.n128_f32[0] = v23;
            v110 = [(BWStillImageScalerNode *)v141 _outputDimensionsForAttachedMediaKey:v14 attachedMediaMainImageDownscalingFactor:outputWidth primaryMediaWidth:outputHeight primaryMediaHeight:outputWidth2 requestedWidth:outputHeight2 requestedHeight:isZoomWithoutUpscalingEnabled zoomWithoutUpscalingEnabled:aspectRatio aspectRatio:v37 inputDimensions:FinalCropRect normalizedZoomRect:v30 optimizedEnhancedResolutionDepthCapture:v32, v34, v131, v110];
            if ((objc_msgSend_isEqualToString_(v14) & 1) != 0 || objc_msgSend_isEqualToString_(v14))
            {
              v39 = OUTLINED_FUNCTION_4_27();
              FigCaptureMetadataUtilitiesDenormalizeCropRect(v39, v40, v41, v42, v43, v44);
              FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
              OUTLINED_FUNCTION_11_17();
              v11 = v19;
            }

            else
            {
              v11 = v19;
              v47.n128_f64[0] = OUTLINED_FUNCTION_4_27();
              if (v23 == 0.0)
              {
                FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v45, v46, v47, v48, v49, v50, v51, v52);
              }

              else
              {
                FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v45, v46, v47, v48, v49, v50, v51, v52);
              }

              OUTLINED_FUNCTION_11_17();
            }

            v159.origin.x = OUTLINED_FUNCTION_0_32();
            if (CGRectIsNull(v159))
            {
              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v109, v111, v112, v113, LODWORD(v114), v115, v116, LODWORD(v117));
            }

            else
            {
              if (*(v141 + 169) == 1)
              {
                v53 = BWCIFilterArrayContainsPortraitFilters([requestedSettings processedImageFilters]) ^ 1;
              }

              else
              {
                v53 = 1;
              }

              v54 = (v0 | (v34 << 32)) != v110 || v53 == 0;
              if (!v54 && (CVPixelBufferGetPlaneCount(pixelBuffer) == 1 || (v77 = OUTLINED_FUNCTION_0_32(), sis_encoderCanCropDenormalizedZoomRect(v110, v77, v78, v79, v80))) || (v55 = destinationBuffer, v56 = Height, objc_msgSend_isEqualToString_(v14)) && (v160.origin.x = OUTLINED_FUNCTION_0_32(), v162.size.width = destinationBuffer, v162.size.height = Height, CGRectEqualToRect(v160, v162)))
              {
                v6 = target;
                goto LABEL_32;
              }

              v57 = OUTLINED_FUNCTION_7_19();
              v133 = v58;
              [(BWStillImageScalerNode *)v57 _rebuildBufferPoolForAttachedMediaKey:v59 attachedMediaMainImageDownscalingFactor:v131 inputDimensions:v58 outputDimensions:v122 settings:v23];
              [MEMORY[0x1E696AEC0] stringWithFormat:@"NewPixelBuffer-%@", v14];
              v60 = [objc_msgSend(*(v141 + 192) objectForKeyedSubscript:{v14), "newPixelBuffer"}];
              if (v60)
              {
                v61 = v60;
                v62 = CVBufferCopyAttachment(pixelBuffer, v121, 0);
                if (v62)
                {
                  v63 = CFAutorelease(v62);
                  if (v63)
                  {
                    CVBufferSetAttachment(v61, v121, v63, kCVAttachmentMode_ShouldPropagate);
                  }
                }

                v64 = CVBufferCopyAttachment(pixelBuffer, v120, 0);
                v65 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                if (v64)
                {
                  v66 = CFAutorelease(v64);
                  if (v66)
                  {
                    CVBufferSetAttachment(v61, v120, v66, kCVAttachmentMode_ShouldPropagate);
                  }
                }

                if (dword_1ED8444F0)
                {
                  v154 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v68 = v154;
                  v69 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
                  v70 = v68 & 0xFFFFFFFE;
                  if (v69)
                  {
                    v70 = v68;
                  }

                  if (v70)
                  {
                    v127 = BWStringFromPixelBuffer();
                    v71 = OUTLINED_FUNCTION_0_32();
                    v75 = BWStringFromCGRect(v71, v72, v73, v74);
                    v76 = BWStringFromPixelBuffer();
                    v143 = 136316163;
                    v144 = "[BWStillImageScalerNode _zoomAttachedMedia:sampleBuffer:]";
                    v145 = 2113;
                    v146 = v14;
                    v147 = 2112;
                    v148 = v127;
                    v149 = 2112;
                    v150 = v75;
                    v151 = 2112;
                    v152 = v76;
                    LODWORD(v111) = 52;
                    v109 = &v143;
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v65 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                }

                destinationBuffera = v61;
                if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(v139, v61, &v155, &cf))
                {
                  goto LABEL_83;
                }

                v140 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(cf);
                if (objc_msgSend_isEqualToString_(v14))
                {
                  v81 = OUTLINED_FUNCTION_0_32();
                  if (!FigDepthScaleBufferWithCrop(v82, v61, v81, v83, v84, v85))
                  {
                    v6 = target;
                    v86 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{CMGetAttachment(target, v119, 0)}];
                    v87 = OUTLINED_FUNCTION_0_32();
                    FigCaptureMetadataUtilitiesNormalizeCropRect(v87, v88, v89, v90, v55, v56);
                    FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(v86, v91, v92, v93, v94, 1.0 / v94);
                    CMSetAttachment(target, v119, v86, 1u);
                    DictionaryRepresentation = 0;
                    goto LABEL_78;
                  }

LABEL_83:
                  DictionaryRepresentation = 0;
LABEL_84:
                  v6 = target;
                  v106 = OUTLINED_FUNCTION_7_19();
                  BWSampleBufferRemoveAttachedMedia(v106, v107);
                }

                else
                {
                  v161.origin.x = OUTLINED_FUNCTION_0_32();
                  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v161);
                  if (VTSessionSetProperty(*(v141 + v65[750]), propertyKey, DictionaryRepresentation) || VTPixelTransferSessionTransferImage(*(v141 + 200), pixelBuffer, destinationBuffera))
                  {
                    goto LABEL_84;
                  }

                  v6 = target;
LABEL_78:
                  if (objc_msgSend_isEqualToString_(v14, v109, v111))
                  {
                    v95.n128_f64[0] = OUTLINED_FUNCTION_0_32();
                    FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v96, v97, v98, v95, v99, v100, v101, v117, *&v116, *&v115, v114);
                    FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v140, v131, v133);
                  }

                  v102 = OUTLINED_FUNCTION_7_19();
                  BWSampleBufferSetAttachedMedia(v102, v103, v104);
                  FigCaptureMetadataUtilitiesPreventFurtherCropping(v140, v105);
                }

                CFRelease(destinationBuffera);
LABEL_26:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (DictionaryRepresentation)
                {
                  CFRelease(DictionaryRepresentation);
                }

                if (v155)
                {
                  CFRelease(v155);
                }

                goto LABEL_32;
              }
            }

LABEL_24:
            v6 = target;
            v25 = OUTLINED_FUNCTION_7_19();
            BWSampleBufferRemoveAttachedMedia(v25, v26);
          }

          DictionaryRepresentation = 0;
          goto LABEL_26;
        }

LABEL_32:
        ++v12;
      }

      while (v9 != v12);
      v108 = [v7 countByEnumeratingWithState:v158 objects:v157 count:16];
      v9 = v108;
      if (!v108)
      {
LABEL_86:
        [(BWStillImageScalerNode *)v141 _removeUnmodifiedAttachedMedias:v6];
        break;
      }
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (id)_shouldPurgeAllResourcesAfterProcessingSettings:(id *)result
{
  if (result)
  {
    v3 = result;
    result = [result[2] memoryPool];
    if (result)
    {
      if (*(v3 + 53) < 1 || *(v3 + 54) <= 0)
      {
        return ([objc_msgSend(a2 "requestedSettings")] == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)_outputDimensionsForAttachedMediaKey:(unint64_t)key attachedMediaMainImageDownscalingFactor:(unint64_t)factor primaryMediaWidth:(unint64_t)width primaryMediaHeight:(unint64_t)height requestedWidth:(int)requestedWidth requestedHeight:(int)requestedHeight zoomWithoutUpscalingEnabled:(__n128)enabled aspectRatio:(double)self0 inputDimensions:(double)self1 normalizedZoomRect:(double)self2 optimizedEnhancedResolutionDepthCapture:(double)self3
{
  if (!self)
  {
    goto LABEL_24;
  }

  v21 = enabled.n128_f32[0];
  if (a15 && [a2 isEqual:{0x1F217BF50, enabled.n128_f64[0], ratio, dimensions}])
  {
    factor = height;
    key = width;
  }

  if (v21 != 0.0)
  {
    enabled.n128_f32[0] = key;
    widthCopy = OUTLINED_FUNCTION_21_7(enabled);
    v25.n128_f32[0] = factor;
    v26 = OUTLINED_FUNCTION_21_7(v25) << 32;
    return v26 | widthCopy;
  }

  if (!OUTLINED_FUNCTION_10_14())
  {
LABEL_24:
    v26 = 0;
    widthCopy = 0;
    return v26 | widthCopy;
  }

  v27 = MEMORY[0x1E695F060];
  size = *MEMORY[0x1E695F060];
  if ([objc_msgSend(OUTLINED_FUNCTION_10_14() objectForKeyedSubscript:{@"KeepInputSize", "BOOLValue"}])
  {
    width = a14;
    height = SHIDWORD(a14);
    size.width = a14;
    size.height = SHIDWORD(a14);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_10_14();
    CGSizeMakeWithDictionaryRepresentation(v30, &size);
    width = size.width;
    height = size.height;
  }

  if (width == *v27 && height == v27[1])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v39, v40, *&size.width, *&size.height, v42, v43, v44, v45);
    goto LABEL_24;
  }

  if (requestedWidth)
  {
    if (requestedHeight)
    {
      v32 = FigCaptureAspectRatioForDimensions(a14);
      width = size.width;
      v33 = size.width / size.height;
      if (vabdd_f64(v32, size.width / size.height) > 0.01)
      {
        v34 = v32 <= v33;
        v35 = v32 / v33;
        if (v34)
        {
          capture = capture * v35;
        }

        else
        {
          rect = rect * v35;
        }
      }
    }

    v36 = rect * width;
    width = FigCaptureRoundFloatToMultipleOf(2, v36);
    v37 = capture * size.height;
    height = FigCaptureRoundFloatToMultipleOf(2, v37);
  }

  widthCopy = width;
  v26 = height << 32;
  return v26 | widthCopy;
}

- (void)_rebuildBufferPoolForAttachedMediaKey:(uint64_t)key attachedMediaMainImageDownscalingFactor:(uint64_t)factor inputDimensions:(void *)dimensions outputDimensions:(float)outputDimensions settings:
{
  if (!self || outputDimensions == 0.0 && ![*(self + 184) objectForKeyedSubscript:a2])
  {
    goto LABEL_29;
  }

  v11 = *(self + 192);
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(self + 192) = v11;
  }

  v12 = [v11 objectForKeyedSubscript:a2];
  if (factor != [v12 width] || objc_msgSend(v12, "height") != factor >> 32)
  {
    v19 = MEMORY[0x1E696AEC0];
    name = [self name];
    v21 = @"StillImageScaler";
    if (name)
    {
      v21 = name;
    }

    v22 = [v19 stringWithFormat:@"%@-%@", v21, a2];
    v23 = *(self + 144);
    [objc_msgSend(dimensions "requestedSettings")];
    v24 = [objc_msgSend(objc_msgSend(dimensions "requestedSettings")];
    v25 = [objc_msgSend(*(self + 16) mediaPropertiesForAttachedMediaKey:{a2), "resolvedVideoFormat"}];
    pixelFormat = [v25 pixelFormat];
    if (pixelFormat)
    {
      v27 = pixelFormat;
      v28 = key != factor && v24 >= 2;
      v29 = v28 ? v24 : 1;
      v30 = v29 * v23;
      v31 = objc_alloc_init(BWVideoFormatRequirements);
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      [OUTLINED_FUNCTION_15() setSupportedPixelFormats:?];
      [(BWVideoFormatRequirements *)v31 setWidth:factor];
      [(BWVideoFormatRequirements *)v31 setHeight:factor >> 32];
      +[BWVideoFormatRequirements cacheModesForCacheProfile:](BWVideoFormatRequirements, "cacheModesForCacheProfile:", [v25 cacheMode]);
      [OUTLINED_FUNCTION_15() setSupportedCacheModes:?];
      [(BWVideoFormatRequirements *)v31 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v31 setHeightAlignment:16];
      [v25 bytesPerRowAlignment];
      [OUTLINED_FUNCTION_15() setBytesPerRowAlignment:?];
      [v25 planeAlignment];
      [OUTLINED_FUNCTION_15() setPlaneAlignment:?];
      -[BWVideoFormatRequirements setMemoryPoolUseAllowed:](v31, "setMemoryPoolUseAllowed:", [v25 memoryPoolUseAllowed]);
      v38 = v31;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v32 = [OUTLINED_FUNCTION_8() formatByResolvingRequirements:?];
      v33 = [BWPixelBufferPool alloc];
      memoryPool = [*(self + 16) memoryPool];
      LOBYTE(v37) = *(self + 208);
      v35 = [(BWPixelBufferPool *)v33 initWithVideoFormat:v32 capacity:v30 name:v22 clientProvidesPool:0 memoryPool:memoryPool providesBackPressure:v37 reportSlowBackPressureAllocations:?];
      if (v35)
      {
        v36 = v35;
        [*(self + 192) setObject:v35 forKeyedSubscript:a2];
      }
    }

    goto LABEL_29;
  }

  v13 = *(self + 144);
  [objc_msgSend(dimensions "requestedSettings")];
  v14 = [objc_msgSend(objc_msgSend(dimensions "requestedSettings")];
  v15 = key != factor && v14 >= 2;
  v16 = v15 ? v14 : 1;
  if ([v12 capacity] == v16 * v13)
  {
LABEL_29:
    OUTLINED_FUNCTION_18_9();
    return;
  }

  OUTLINED_FUNCTION_18_9();

  [v17 setCapacity:?];
}

- (uint64_t)_removeUnmodifiedAttachedMedias:(uint64_t)medias
{
  if (medias)
  {
    v3 = BWSampleBufferCopyDictionaryOfAttachedMedia(a2);
    v4 = v3 ? v3 : MEMORY[0x1E695E0F8];
    [*(medias + 176) allKeys];
    v5 = [OUTLINED_FUNCTION_8() setWithArray:?];
    [*(medias + 184) allKeys];
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    v6 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v4, "allKeys")}];
    v7 = [v6 minusSet:v5];
    v15 = OUTLINED_FUNCTION_22_5(v7, v8, v9, v10, v11, v12, v13, v14, v31, v33, v35, v37, v38, v40, v41, v43, v45, a2, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
    if (v15)
    {
      v17 = v15;
      v18 = MEMORY[0];
      v54 = 0x1F21AB030;
      v56 = 0x1F21AB010;
      *&v16 = 138412290;
      v39 = v16;
      *&v16 = 136315394;
      v36 = v16;
      v44 = 0x1F21AAFB0;
      v46 = 0x1F21AB070;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v6);
          }

          v20 = *(8 * i);
          isEqualToString = objc_msgSend_isEqualToString_(v20);
          if ((isEqualToString & 1) == 0)
          {
            isEqualToString = objc_msgSend_isEqualToString_(v20);
            if ((isEqualToString & 1) == 0)
            {
              isEqualToString = objc_msgSend_isEqualToString_(v20);
              if ((isEqualToString & 1) == 0)
              {
                isEqualToString = objc_msgSend_isEqualToString_(v20);
                if ((isEqualToString & 1) == 0)
                {
                  isEqualToString = objc_msgSend_isEqualToString_(v20);
                  if ((isEqualToString & 1) == 0)
                  {
                    isEqualToString = objc_msgSend_isEqualToString_(v20);
                    if ((isEqualToString & 1) == 0)
                    {
                      isEqualToString = objc_msgSend_isEqualToString_(v20);
                      if ((isEqualToString & 1) == 0)
                      {
                        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
                        HIDWORD(v99) = 0;
                        BYTE3(v99) = 0;
                        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        LODWORD(v66) = v39;
                        *(&v66 + 4) = v20;
                        v29 = _os_log_send_and_compose_impl();
                        v34 = 0;
                        FigCapturePleaseFileRadar(FrameworkRadarComponent, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageScalerNode.m", 1094, @"LastShownDate:BWStillImageScalerNode.m:1094", @"LastShownBuild:BWStillImageScalerNode.m:1094", 0);
                        free(v29);
                        BWSampleBufferRemoveAttachedMedia(v48, v20);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v17 = OUTLINED_FUNCTION_22_5(isEqualToString, v22, v23, v24, v25, v26, v27, v28, v32, v34, v36, *(&v36 + 1), v39, *(&v39 + 1), v42, v44, v46, v48, os_log_and_send_and_compose_flags_and_os_log_type, FrameworkRadarComponent, v54, v56, v58, v60, v62, v64, v66, *(&v66 + 1), v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99);
      }

      while (v17);
    }
  }

  return 0;
}

@end