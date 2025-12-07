@interface PanoramaParallaxStageShaders
- (PanoramaParallaxStageShaders)initWithContext:(id)context;
@end

@implementation PanoramaParallaxStageShaders

- (PanoramaParallaxStageShaders)initWithContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = PanoramaParallaxStageShaders;
  v5 = [(PanoramaParallaxStageShaders *)&v14 init];
  if (v5 && ([contextCopy computePipelineStateFor:@"applyWarpToSlice" constants:0], v6 = objc_claimAutoreleasedReturnValue(), applyWarpToSlice = v5->_applyWarpToSlice, v5->_applyWarpToSlice = v6, applyWarpToSlice, v5->_applyWarpToSlice) && (objc_msgSend(contextCopy, "computePipelineStateFor:constants:", @"computePreShifts", 0), v8 = objc_claimAutoreleasedReturnValue(), computePreShifts = v5->_computePreShifts, v5->_computePreShifts = v8, computePreShifts, v5->_computePreShifts) && (objc_msgSend(contextCopy, "computePipelineStateFor:constants:", @"downsampleShifts", 0), v10 = objc_claimAutoreleasedReturnValue(), downsampleShifts = v5->_downsampleShifts, v5->_downsampleShifts = v10, downsampleShifts, v5->_downsampleShifts))
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end