@interface BWScalerProcessorControllerInput
- (BWScalerProcessorControllerInput)initWithSettings:(id)settings portType:(id)type;
- (id)description;
- (void)addFrame:(opaqueCMSampleBuffer *)frame bufferType:(unint64_t)type;
- (void)dealloc;
@end

@implementation BWScalerProcessorControllerInput

- (BWScalerProcessorControllerInput)initWithSettings:(id)settings portType:(id)type
{
  v5.receiver = self;
  v5.super_class = BWScalerProcessorControllerInput;
  result = [(BWStillImageProcessorControllerInput *)&v5 initWithSettings:settings portType:type];
  if (result)
  {
    result->_processingModeSet = 0;
    result->_processingMode = 0;
  }

  return result;
}

- (void)dealloc
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  v4.receiver = self;
  v4.super_class = BWScalerProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = BWScalerProcessorControllerInput;
  v4 = [(BWStillImageProcessorControllerInput *)&v12 description];
  v6 = BWStillImageBufferTypeToShortString(self->_bufferType);
  processingMode = self->_processingMode;
  v8 = @"ApplyZoom";
  if (processingMode == 1)
  {
    v8 = @"ResizeToOutput";
  }

  if (processingMode == 2)
  {
    v9 = @"CropToOutput";
  }

  else
  {
    v9 = v8;
  }

  if (self->_processingModeSet)
  {
    v10 = &stru_1F216A3D0;
  }

  else
  {
    v10 = @" (unresolved)";
  }

  return [v3 stringWithFormat:@"%@ bufferType:%@, processingMode:%@%@, frame:%@", v4, v6, v9, v10, BWStillImageSampleBufferToDisplayString(self->_frame, v5)];
}

- (void)addFrame:(opaqueCMSampleBuffer *)frame bufferType:(unint64_t)type
{
  frame = self->_frame;
  self->_frame = frame;
  if (frame)
  {
    CFRetain(frame);
  }

  if (frame)
  {
    CFRelease(frame);
  }

  self->_bufferType = type;
  delegate = [(BWStillImageProcessorControllerInput *)self delegate];

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate inputChanged:self];
}

@end