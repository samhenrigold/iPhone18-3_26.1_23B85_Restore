@interface PanoramaAssemblyShaders
- (PanoramaAssemblyShaders)initWithContext:(id)context;
@end

@implementation PanoramaAssemblyShaders

- (PanoramaAssemblyShaders)initWithContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = PanoramaAssemblyShaders;
  v5 = [(PanoramaAssemblyShaders *)&v20 init];
  if (v5 && ([sub_23C44B740() computePipelineStateFor:? constants:?], v6 = objc_claimAutoreleasedReturnValue(), resetPanoSizedState = v5->_resetPanoSizedState, v5->_resetPanoSizedState = v6, resetPanoSizedState, v5->_resetPanoSizedState) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v8 = objc_claimAutoreleasedReturnValue(), resetSliceSizedState = v5->_resetSliceSizedState, v5->_resetSliceSizedState = v8, resetSliceSizedState, v5->_resetSliceSizedState) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v10 = objc_claimAutoreleasedReturnValue(), addSliceToStaging = v5->_addSliceToStaging, v5->_addSliceToStaging = v10, addSliceToStaging, v5->_addSliceToStaging) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v12 = objc_claimAutoreleasedReturnValue(), addSliceToProjectiveGrid = v5->_addSliceToProjectiveGrid, v5->_addSliceToProjectiveGrid = v12, addSliceToProjectiveGrid, v5->_addSliceToProjectiveGrid) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v14 = objc_claimAutoreleasedReturnValue(), addStagingToOutput = v5->_addStagingToOutput, v5->_addStagingToOutput = v14, addStagingToOutput, v5->_addStagingToOutput) && (objc_msgSend(sub_23C44B740(), "computePipelineStateFor:constants:"), v16 = objc_claimAutoreleasedReturnValue(), prepareForDenoising = v5->_prepareForDenoising, v5->_prepareForDenoising = v16, prepareForDenoising, v5->_prepareForDenoising))
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