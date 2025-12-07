@interface BWStreamingCameraCalibrationDataNode
- (BWStreamingCameraCalibrationDataNode)initWithCameraInfoByPortType:(id)type;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStreamingCameraCalibrationDataNode

- (BWStreamingCameraCalibrationDataNode)initWithCameraInfoByPortType:(id)type
{
  v8.receiver = self;
  v8.super_class = BWStreamingCameraCalibrationDataNode;
  v4 = [(BWNode *)&v8 init];
  if (v4)
  {
    v4->_cameraInfoByPortType = type;
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeInput *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNode *)v4 addInput:v5];
    v6 = [[BWNodeOutput alloc] initWithMediaType:1667326820 node:v4];
    [(BWNodeOutput *)v6 setFormat:+[BWCameraCalibrationDataFormat format]];
    [(BWNode *)v4 addOutput:v6];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamingCameraCalibrationDataNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v23 = 0;
  v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  memset(&v22, 0, sizeof(v22));
  CMSampleBufferGetPresentationTimeStamp(&v22, buffer);
  v7 = CMGetAttachment(buffer, @"OriginalCameraIntrinsicMatrix", 0);
  if (v7)
  {
    v8 = v7;
    v9 = CMGetAttachment(buffer, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
    if (v9)
    {
      cameraInfoByPortType = self->_cameraInfoByPortType;
      horizontalSensorBinningFactor = self->_horizontalSensorBinningFactor;
      verticalSensorBinningFactor = self->_verticalSensorBinningFactor;
      rotationDegrees = self->_rotationDegrees;
      mirroringEnabled = self->_mirroringEnabled;
      v21 = v22;
      HIBYTE(sampleTimingArray) = 1;
      LOBYTE(sampleTimingArray) = mirroringEnabled;
      v15 = FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadata(v6, &v21.value, cameraInfoByPortType, horizontalSensorBinningFactor, verticalSensorBinningFactor, v8, v9, rotationDegrees, sampleTimingArray);
      if (v15)
      {
        v16 = v15;
        memset(&v20.presentationTimeStamp, 0, 48);
        *&v20.duration.value = *MEMORY[0x1E6960C70];
        v20.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        CMSampleBufferGetPresentationTimeStamp(&v20.presentationTimeStamp, buffer);
        v20.decodeTimeStamp = v20.duration;
        v17 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &v20, 0, 0, &v23);
        v18 = v23;
        if (v23 && !v17)
        {
          CMSetAttachment(v23, @"CameraCalibrationDataMetadata", v16, 1u);
          [(BWNodeOutput *)self->super._output emitSampleBuffer:v23];
          v18 = v23;
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    else
    {
      [BWStreamingCameraCalibrationDataNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    [BWStreamingCameraCalibrationDataNode renderSampleBuffer:forInput:];
  }
}

@end