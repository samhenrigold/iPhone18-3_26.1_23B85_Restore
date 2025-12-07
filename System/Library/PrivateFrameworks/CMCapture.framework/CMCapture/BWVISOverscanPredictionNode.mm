@interface BWVISOverscanPredictionNode
- (BWVISOverscanPredictionNode)initWithCameraInfoByPortType:(id)type visInputAspectRatio:(float)ratio delegate:(id)delegate;
- (void)dealloc;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWVISOverscanPredictionNode

- (BWVISOverscanPredictionNode)initWithCameraInfoByPortType:(id)type visInputAspectRatio:(float)ratio delegate:(id)delegate
{
  v13.receiver = self;
  v13.super_class = BWVISOverscanPredictionNode;
  v8 = [(BWNode *)&v13 init];
  v9 = v8;
  if (type)
  {
    if (v8)
    {
      v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8];
      [(BWNodeInput *)v10 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInput *)v10 setPassthroughMode:1];
      [(BWNode *)v9 addInput:v10];
      v11 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
      [(BWNodeOutput *)v11 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeOutput *)v11 setPassthroughMode:1];
      [(BWNode *)v9 addOutput:v11];
      v9->_visInputAspectRatio = ratio;
      v9->_delegate = delegate;
      v9->_cameraInfoByPortType = type;
    }
  }

  else
  {
    [BWVISOverscanPredictionNode initWithCameraInfoByPortType:v8 visInputAspectRatio:? delegate:?];
    return 0;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVISOverscanPredictionNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v22.receiver = self;
  v22.super_class = BWVISOverscanPredictionNode;
  [(BWNode *)&v22 prepareForCurrentConfigurationToBecomeLive];
  visOverscanPredictor = self->_visOverscanPredictor;
  if (visOverscanPredictor)
  {
  }

  v4 = [(NSDictionary *)[(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelBufferAttributes] mutableCopy];
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E6966208];
    v7 = [objc_msgSend(v4 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    v8 = *MEMORY[0x1E69660B8];
    v9 = [objc_msgSend(v5 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
    visInputAspectRatio = self->_visInputAspectRatio;
    if (visInputAspectRatio != 0.0)
    {
      if (visInputAspectRatio > 1.0)
      {
        v11 = (v7 / visInputAspectRatio);
      }

      else
      {
        v11 = (visInputAspectRatio * v9);
      }

      if (visInputAspectRatio <= 1.0)
      {
        v7 = (visInputAspectRatio * v9);
      }

      else
      {
        v6 = v8;
        v9 = (v7 / visInputAspectRatio);
      }

      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v11), v6}];
    }

    if (v7 <= v9)
    {
      __asm { FMOV            V1.2S, #-1.0 }

      *&_D1 = v7 * 0.025;
    }

    else
    {
      __asm { FMOV            V1.2S, #-1.0 }

      *(&_D1 + 1) = v9 * 0.025;
    }

    v20 = _D1;
    v17 = [GVSOverscanPredictor alloc];
    cameraInfoByPortType = self->_cameraInfoByPortType;
    v21[0] = 1045220557;
    v21[1] = v20;
    v21[2] = 1065353216;
    v19 = [(GVSOverscanPredictor *)v17 initWithConfig:v21 cameraInfoByPortType:cameraInfoByPortType visInputPixelBufferAttributes:v5];
    self->_visOverscanPredictor = v19;
    if (!v19)
    {
      [BWVISOverscanPredictionNode prepareForCurrentConfigurationToBecomeLive];
    }
  }

  else
  {
    [BWVISOverscanPredictionNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (buffer)
  {
    v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (v6)
    {
      v7 = v6;
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      Width = CVPixelBufferGetWidth(ImageBuffer);
      v10 = CMSampleBufferGetImageBuffer(buffer);
      Height = CVPixelBufferGetHeight(v10);
      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      rect.size.width = Width;
      rect.size.height = Height;
      v12 = *off_1E798B7A0;
      if ([v7 objectForKeyedSubscript:*off_1E798B7A0])
      {
        CGRectMakeWithDictionaryRepresentation([v7 objectForKeyedSubscript:v12], &rect);
      }

      CGRectMakeWithDictionaryRepresentation([v7 objectForKeyedSubscript:{*off_1E798A5C8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}], &v17);
      FigCaptureMetadataUtilitiesDenormalizeCropRect(v17.origin.x, v17.origin.y, v17.size.width, v17.size.height, Width, Height);
      v17.origin.x = v13;
      v17.origin.y = v14;
      v17.size.width = v15;
      v17.size.height = v16;
      [(BWVISOverscanPredictionDelegate *)self->_delegate visOverscanPredictor:self allowsReducedOverscan:[(GVSOverscanPredictor *)self->_visOverscanPredictor predictOverscanFitsFromMetadata:v7 finalCropRect:*&v13 boundingRect:*&v14, *&v15, *&v16]];
    }

    else
    {
      [BWVISOverscanPredictionNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    [(BWVISOverscanPredictionNode *)self renderSampleBuffer:a2 forInput:0, input];
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

@end