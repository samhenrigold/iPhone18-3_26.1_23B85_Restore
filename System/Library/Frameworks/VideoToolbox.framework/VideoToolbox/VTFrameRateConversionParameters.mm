@interface VTFrameRateConversionParameters
- (VTFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames;
- (void)dealloc;
@end

@implementation VTFrameRateConversionParameters

- (VTFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames
{
  selfCopy = self;
  v28 = *MEMORY[0x1E69E9840];
  if (!loadVEFrameworkOnce(self, a2))
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
LABEL_15:
    [(VTFrameRateConversionParameters *)selfCopy dealloc];
    return 0;
  }

  v26.receiver = selfCopy;
  v26.super_class = VTFrameRateConversionParameters;
  selfCopy = [(VTFrameRateConversionParameters *)&v26 init];
  if (!selfCopy)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_15;
  }

  v15 = NSClassFromString(&cfstr_Veframeratecon_0.isa);
  selfCopy->_sourceFrame = frame;
  selfCopy->_nextFrame = nextFrame;
  selfCopy->_destinationFrames = frames;
  selfCopy->_opticalFlow = flow;
  selfCopy->_interpolationPhase = phase;
  selfCopy->_submissionMode = mode;
  selfCopy->_veDestinationFrames = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](selfCopy->_destinationFrames, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [frames countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(frames);
        }

        -[NSMutableArray addObject:](selfCopy->_veDestinationFrames, "addObject:", [*(*(&v22 + 1) + 8 * i) veFrame]);
      }

      v17 = [frames countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  v20 = [[v15 alloc] initWithSourceFrame:-[VTFrameProcessorFrame veFrame](selfCopy->_sourceFrame nextFrame:"veFrame") opticalFlow:-[VTFrameProcessorFrame veFrame](selfCopy->_nextFrame interpolationPhase:"veFrame") submissionMode:-[VTFrameProcessorOpticalFlow veFrameOpticalFlow](selfCopy->_opticalFlow destinationFrames:{"veFrameOpticalFlow"), selfCopy->_interpolationPhase, selfCopy->_submissionMode, selfCopy->_veDestinationFrames}];
  selfCopy->_veParameters = v20;
  if (!v20)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    goto LABEL_15;
  }

  return selfCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTFrameRateConversionParameters;
  [(VTFrameRateConversionParameters *)&v3 dealloc];
}

@end