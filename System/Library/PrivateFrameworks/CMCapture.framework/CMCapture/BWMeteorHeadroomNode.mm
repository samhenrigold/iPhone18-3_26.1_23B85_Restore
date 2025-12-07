@interface BWMeteorHeadroomNode
- (BWMeteorHeadroomNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type;
- (void)_releaseResources;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMeteorHeadroomNode

- (BWMeteorHeadroomNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type
{
  v22.receiver = self;
  v22.super_class = BWMeteorHeadroomNode;
  v5 = [(BWNode *)&v22 init];
  if (v5)
  {
    if (type)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(type, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [type countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          v10 = 0;
          do
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(type);
            }

            -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [objc_msgSend(objc_msgSend(type objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * v10)), "sensorIDDictionary"), "objectForKeyedSubscript:", @"MeteorHeadroom"}], *(*(&v18 + 1) + 8 * v10));
            ++v10;
          }

          while (v8 != v10);
          v8 = [type countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v8);
      }

      v5->_meteorHeadroomParametersByPortType = v6;
    }

    v11 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v5];
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    v13 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248898];
    [v13 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, 3)}];
    [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:v13];
    [(BWNodeInput *)v11 setFormatRequirements:v12];

    [(BWNodeInput *)v11 setPassthroughMode:1];
    [(BWNode *)v5 addInput:v11];
    v14 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v5];
    v15 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v14 setFormatRequirements:v15];

    [(BWNodeOutput *)v14 setPassthroughMode:1];
    [(BWNode *)v5 addOutput:v14];
  }

  return v5;
}

- (void)dealloc
{
  [(BWMeteorHeadroomNode *)self _releaseResources];

  v3.receiver = self;
  v3.super_class = BWMeteorHeadroomNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v6.receiver = self;
  v6.super_class = BWMeteorHeadroomNode;
  [(BWNode *)&v6 prepareForCurrentConfigurationToBecomeLive];
  if (self->_metalContext)
  {
    goto LABEL_12;
  }

  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!v3)
  {
    [BWMeteorHeadroomNode prepareForCurrentConfigurationToBecomeLive];
    return;
  }

  v4 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v3 andOptionalCommandQueue:0];
  self->_metalContext = v4;
  if (v4)
  {
LABEL_12:
    if (!self->_histogram)
    {
      v5 = [[FigMetalHistogram alloc] initWithMetalContext:self->_metalContext];
      self->_histogram = v5;
      if (!v5)
      {
        [BWMeteorHeadroomNode prepareForCurrentConfigurationToBecomeLive];
      }
    }
  }

  else
  {
    [BWMeteorHeadroomNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)_releaseResources
{
  if (self)
  {

    *(self + 160) = 0;
    *(self + 152) = 0;
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  [(BWMeteorHeadroomNode *)self _releaseResources];
  v5.receiver = self;
  v5.super_class = BWMeteorHeadroomNode;
  [(BWNode *)&v5 didReachEndOfDataForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v7 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAE10);
  v9 = CMGetAttachment(buffer, @"StillImageSettings", 0);
  captureRequestIdentifier = [v9 captureRequestIdentifier];
  v11 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
  v12 = [CMGetAttachment(buffer @"StillImageProcessingFlags"];
  lastMeteorHeadroom = 0.0;
  if (v12)
  {
    v21 = 0x1E696A000;
    goto LABEL_42;
  }

  v15 = v12;
  if ((objc_msgSend_isEqualToString_(self->_lastCaptureRequestIdentifier) & 1) == 0)
  {

    self->_lastCaptureRequestIdentifier = [captureRequestIdentifier copy];
    self->_lastMeteorHeadroom = 0.0;
  }

  captureType = [v11 captureType];
  if (([v11 captureType] == 10 || objc_msgSend(v11, "captureType") == 12 || objc_msgSend(v11, "captureType") == 13) && (objc_msgSend(v11, "captureFlags") & 0x100000) != 0)
  {
    v17 = ([v11 sceneFlags] >> 2) & 1;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  v18 = [v11 captureFlags] & 0x800;
  v19 = self->_gainMapMainImageDownscalingFactor != 0.0 && v18 == 0;
  if (v19)
  {
    v20 = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
    LOBYTE(v17) = (v20 != 0) | v17;
  }

  else
  {
    v20 = 0;
  }

  v19 = captureType == 3;
  v21 = 0x1E696A000;
  if (!v19 && (v17 & 1) == 0)
  {
    goto LABEL_42;
  }

  if ((v15 & 0x40) != 0)
  {
    lastMeteorHeadroom = self->_lastMeteorHeadroom;
    if (lastMeteorHeadroom != 0.0)
    {
      goto LABEL_42;
    }

    v73 = AttachedMedia;
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    LODWORD(v77) = 0;
    LOBYTE(type) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v75[0] = 0;
    v24 = _os_log_send_and_compose_impl();
    v68 = 0;
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v24, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWMeteorHeadroomNode.m", 339, @"LastShownDate:BWMeteorHeadroomNode.m:339", @"LastShownBuild:BWMeteorHeadroomNode.m:339", 0);
    free(v24);
    v21 = 0x1E696A000uLL;
  }

  v26 = *MEMORY[0x1E695F050];
  v25 = *(MEMORY[0x1E695F050] + 8);
  v28 = *(MEMORY[0x1E695F050] + 16);
  v27 = *(MEMORY[0x1E695F050] + 24);
  outputWidth = [v9 outputWidth];
  v30 = outputWidth / [v9 outputHeight];
  if (!v20 || (v31 = CMSampleBufferGetImageBuffer(v20)) == 0)
  {
LABEL_34:
    bzero(v75, 0x200uLL);
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    if (!ImageBuffer)
    {
      goto LABEL_42;
    }

    v53 = ImageBuffer;
    [v7 objectForKeyedSubscript:*off_1E798B218];
    v80.origin.x = OUTLINED_FUNCTION_16_3();
    if (!CGRectIsNull(v80))
    {
      CVPixelBufferGetWidth(v53);
      CVPixelBufferGetHeight(v53);
      v54.n128_f64[0] = OUTLINED_FUNCTION_16_3();
      v55.n128_f64[0] = v30;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v56, v57, v54, v58, v59, v60, v55, v61);
      if (CGRectIsNull(v81))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_51();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v67, v68, v69, v70, v71, v73, v4, v74);
        goto LABEL_42;
      }
    }

    if (self->_headroomProcessingType)
    {
      v62 = OUTLINED_FUNCTION_16_3();
      if ([v63 singleComponentGPUHistogramInputPixelBuffer:v62 validRect:? outputHistogram:?])
      {
        goto LABEL_42;
      }
    }

    else
    {
      v64 = OUTLINED_FUNCTION_16_3();
      if ([v65 singleComponentCPUHistogramInputPixelBuffer:v64 validRect:? subSampleX:? subSampleY:? outputHistogram:?])
      {
        goto LABEL_42;
      }
    }

    FigCaptureComputeImageGainFromMetadata();
  }

  v32 = v31;
  v72 = lastMeteorHeadroom;
  v78.origin.x = OUTLINED_FUNCTION_16_3();
  *&v70 = v30;
  if (CGRectIsNull(v78))
  {
    x = v26;
    y = v25;
    width = v28;
    height = v27;
  }

  else
  {
    CVPixelBufferGetWidth(v32);
    CVPixelBufferGetHeight(v32);
    v37.n128_f64[0] = OUTLINED_FUNCTION_16_3();
    v38.n128_f64[0] = v30;
    v79.origin.x = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v39, v40, v37, v41, v42, v43, v38, v44);
    x = v79.origin.x;
    y = v79.origin.y;
    width = v79.size.width;
    height = v79.size.height;
    if (CGRectIsNull(v79))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_51();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v67, v68, v69, v70, v71, v73, v4, v74);
      goto LABEL_48;
    }
  }

  bzero(v75, 0x200uLL);
  if ([(FigMetalHistogram *)self->_histogram singleComponentGPUHistogramInputPixelBuffer:v32 validRect:v75 outputHistogram:x, y, width, height])
  {
LABEL_48:
    lastMeteorHeadroom = v72;
    goto LABEL_42;
  }

  v45 = 0;
  v13 = 0.0;
  lastMeteorHeadroom = v72;
  do
  {
    v46 = vcvtq_f32_u32(*&v75[v45]);
    *&v13 = (((*&v13 + v46.f32[0]) + v46.f32[1]) + v46.f32[2]) + v46.f32[3];
    v45 += 8;
  }

  while (v45 != 512);
  if (*&v13 != 0.0)
  {
    do
    {
      OUTLINED_FUNCTION_2_60();
    }

    while (v49 != 1024);
    v50 = v48 / *&v47;
    *&v47 = v48 / *&v47;
    CMSetAttachment(buffer, @"MeteorPlusGainMapAverage", [*(v21 + 3480) numberWithFloat:v47], 1u);
    if (AttachedMedia)
    {
      *&v51 = v50;
      CMSetAttachment(AttachedMedia, @"MeteorPlusGainMapAverage", [*(v21 + 3480) numberWithFloat:v51], 1u);
    }

    v30 = *&v70;
    goto LABEL_34;
  }

LABEL_42:
  *&v13 = lastMeteorHeadroom;
  CMSetAttachment(buffer, @"MeteorHeadroom", [*(v21 + 3480) numberWithFloat:v13], 1u);
  if (AttachedMedia)
  {
    *&v66 = lastMeteorHeadroom;
    CMSetAttachment(AttachedMedia, @"MeteorHeadroom", [*(v21 + 3480) numberWithFloat:v66], 1u);
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

@end