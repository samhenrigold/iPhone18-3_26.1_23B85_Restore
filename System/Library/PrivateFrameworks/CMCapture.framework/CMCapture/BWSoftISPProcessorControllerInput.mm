@interface BWSoftISPProcessorControllerInput
- (BWSoftISPProcessorControllerInput)initWithSettings:(id)settings portType:(id)type resolutionFlavor:(int)flavor gdcEnabled:(BOOL)enabled;
- (id)description;
- (void)addFrame:(opaqueCMSampleBuffer *)frame processingMode:(int)mode transferOwnership:(BOOL)ownership;
- (void)dealloc;
@end

@implementation BWSoftISPProcessorControllerInput

- (BWSoftISPProcessorControllerInput)initWithSettings:(id)settings portType:(id)type resolutionFlavor:(int)flavor gdcEnabled:(BOOL)enabled
{
  v9.receiver = self;
  v9.super_class = BWSoftISPProcessorControllerInput;
  result = [(BWStillImageProcessorControllerInput *)&v9 initWithSettings:settings portType:type];
  if (result)
  {
    result->_resolutionFlavor = flavor;
    result->_gdcEnabled = enabled;
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
  v4.super_class = BWSoftISPProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (void)addFrame:(opaqueCMSampleBuffer *)frame processingMode:(int)mode transferOwnership:(BOOL)ownership
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  if (!ownership && frame)
  {
    frame = CFRetain(frame);
  }

  self->_frame = frame;
  self->_processingMode = mode;
  delegate = [(BWStillImageProcessorControllerInput *)self delegate];
  v11 = self->_frame;
  resolutionFlavor = self->_resolutionFlavor;

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate input:self addFrame:v11 resolutionFlavor:resolutionFlavor];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BWSoftISPProcessorControllerInput;
  v4 = [(BWStillImageProcessorControllerInput *)&v8 description];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_processingMode];
  return [v3 stringWithFormat:@"%@, processingMode:%@ frame:%@ gdcEnabled:%d", v4, v5, BWStillImageSampleBufferToDisplayString(self->_frame, v6), self->_gdcEnabled];
}

@end