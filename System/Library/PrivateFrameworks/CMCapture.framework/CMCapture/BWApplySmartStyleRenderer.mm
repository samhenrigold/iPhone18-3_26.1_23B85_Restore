@interface BWApplySmartStyleRenderer
- (BWApplySmartStyleRenderer)initWithMetalCommandQueue:(id)queue smartStyleRenderingVersion:(int)version;
- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key;
- (void)dealloc;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
@end

@implementation BWApplySmartStyleRenderer

- (BWApplySmartStyleRenderer)initWithMetalCommandQueue:(id)queue smartStyleRenderingVersion:(int)version
{
  v8.receiver = self;
  v8.super_class = BWApplySmartStyleRenderer;
  v6 = [(BWApplySmartStyleRenderer *)&v8 init];
  if (v6)
  {
    v6->_mtlCommandQueue = queue;
    v6->_smartStyleRenderingVersion = version;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWApplySmartStyleRenderer;
  [(BWApplySmartStyleRenderer *)&v3 dealloc];
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  v13 = CMGetAttachment(sampleBuffer, *off_1E798A3C8, 0);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  [(CMISmartStyleProcessor *)self->_smartStyleProcessor resetState];
  if ((BWStillImageProcessingFlagsForSampleBuffer(sampleBuffer) & 0x800000) != 0)
  {
    v42 = 0;
    v43 = 0;
LABEL_15:

    v44 = 0;
    if (!handler)
    {
      return;
    }

    goto LABEL_16;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F21AAFD0);
  if (AttachedMedia && ((ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia), (v17 = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F217BF50)) == 0) ? (v18 = 0) : (v18 = CMSampleBufferGetImageBuffer(v17)), (FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v14), v21 = v20, v23 = v22, v25 = v24, v26 = *off_1E798A940, v27 = [v14 objectForKeyedSubscript:*off_1E798A940], v28 = *off_1E798AA00, objc_msgSend(v27, "objectForKeyedSubscript:", *off_1E798AA00)) && (objc_msgSend(objc_msgSend(objc_msgSend(v14, "objectForKeyedSubscript:", v26), "objectForKeyedSubscript:", v28), "doubleValue"), v30 = v29, Width = CVPixelBufferGetWidth(buffer), Height = CVPixelBufferGetHeight(buffer), v33.n128_f64[0] = FinalCropRect, v34.n128_u64[0] = v23, v35.n128_u64[0] = v25, v36.n128_u64[0] = v30, FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, v33, v21, v34, v35, v36, v37), x = v50.origin.x, y = v50.origin.y, v40 = v50.size.width, v41 = v50.size.height, !CGRectIsNull(v50))))
  {
    v42 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
    if (!v42)
    {
      [BWApplySmartStyleRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
    }

    [v42 setInputUnstyledPixelBuffer:buffer];
    [v42 setInputMetadataDict:v14];
    [v42 setInputUnstyledCropRect:{x, y, v40, v41}];
    [v42 setInputStyleCoefficientsPixelBuffer:ImageBuffer];
    [v42 setOutputStyledPixelBuffer:processedPixelBuffer];
    [v42 setOutputStyledCropRect:{x, y, v40, v41}];
    [v42 setOutputGainMapPixelBuffer:v18];
    [v42 setResidualsCalculationDisabled:1];
    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:v42];
    if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:6]|| [(CMISmartStyleProcessor *)self->_smartStyleProcessor process])
    {
      v49 = 0;
      v48 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      if (![(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing])
      {
        v43 = 2;
        goto LABEL_15;
      }

      v49 = 0;
      v48 = 0;
      v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
LABEL_18:
    v42 = 0;
  }

  [BWApplySmartStyleRenderer renderUsingParameters:v42 inputPixelBuffer:v47 inputSampleBuffer:? originalPixelBuffer:? processedPixelBuffer:? completionHandler:?];
  v43 = 0;
  v44 = v47[0];
  if (!handler)
  {
    return;
  }

LABEL_16:
  (*(handler + 2))(handler, v43, v44);
}

- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key
{
  p_smartStyleProcessor = &self->_smartStyleProcessor;
  if (!self->_smartStyleProcessor)
  {
    result = BWLoadCreateAndSetupMetalImageBufferProcessor(@"SmartStyle", self->_smartStyleRenderingVersion, @"CMI", @"SmartStyle", self->_smartStyleRenderingVersion, &unk_1F22C45C8, 0, 0, self->_mtlCommandQueue, 0, &self->_smartStyleProcessor);
    if (result)
    {
      return result;
    }

    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInstanceLabel:@"PortraitApply"];
    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseLiveMetalAllocations:1];
    self->_smartStyleProcessorInputOutputClass = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProcessorInputOutputV%d", self->_smartStyleRenderingVersion]);
  }

  height = [format height];
  width = [format width];
  v11 = objc_opt_class();
  if (height <= width)
  {
    getDefaultProcessorConfigurationForStills = [v11 getDefaultProcessorConfigurationForStills];
  }

  else
  {
    getDefaultProcessorConfigurationForStills = [v11 getDefaultProcessorConfigurationForStills3x4];
  }

  [(CMISmartStyleProcessor *)*p_smartStyleProcessor setConfiguration:getDefaultProcessorConfigurationForStills];
  return 0;
}

- (void)renderUsingParameters:(void *)a1 inputPixelBuffer:(void *)a2 inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:.cold.2(void *a1, void *a2)
{
  result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-2 userInfo:0];
  *a2 = result;
  return result;
}

@end