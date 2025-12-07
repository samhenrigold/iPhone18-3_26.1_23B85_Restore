@interface PanoramaStitchingShaders
- (PanoramaStitchingShaders)initWithContext:(id)context;
@end

@implementation PanoramaStitchingShaders

- (PanoramaStitchingShaders)initWithContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = PanoramaStitchingShaders;
  v5 = [(PanoramaStitchingShaders *)&v20 init];
  if (v5 && ([sub_23C44B740() computePipelineStateFor:? constants:?], v6 = objc_claimAutoreleasedReturnValue(), computeCentralStitchingMask = v5->_computeCentralStitchingMask, v5->_computeCentralStitchingMask = v6, computeCentralStitchingMask, v5->_computeCentralStitchingMask) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v8 = objc_claimAutoreleasedReturnValue(), initializeSeamPreviousSlice = v5->_initializeSeamPreviousSlice, v5->_initializeSeamPreviousSlice = v8, initializeSeamPreviousSlice, v5->_initializeSeamPreviousSlice) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v10 = objc_claimAutoreleasedReturnValue(), initializeSeamPreviousSliceWithMask = v5->_initializeSeamPreviousSliceWithMask, v5->_initializeSeamPreviousSliceWithMask = v10, initializeSeamPreviousSliceWithMask, v5->_initializeSeamPreviousSliceWithMask) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v12 = objc_claimAutoreleasedReturnValue(), computeSeamCost = v5->_computeSeamCost, v5->_computeSeamCost = v12, computeSeamCost, v5->_computeSeamCost) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v14 = objc_claimAutoreleasedReturnValue(), seamCutDescend = v5->_seamCutDescend, v5->_seamCutDescend = v14, seamCutDescend, v5->_seamCutDescend) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v16 = objc_claimAutoreleasedReturnValue(), seamCutAscend = v5->_seamCutAscend, v5->_seamCutAscend = v16, seamCutAscend, v5->_seamCutAscend))
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end