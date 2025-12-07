@interface RTSCShadersV1
- (RTSCShadersV1)initWithContext:(id)context;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
@end

@implementation RTSCShadersV1

- (RTSCShadersV1)initWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_context, context);
  v6 = [(FigMetalContext *)self->_context computePipelineStateFor:@"RTSC::Render" constants:0];
  v7 = self->_kernels[0];
  self->_kernels[0] = v6;

  if (self->_kernels[0] && ([(FigMetalContext *)self->_context computePipelineStateFor:@"RTSC::Downsample" constants:0], v8 = objc_claimAutoreleasedReturnValue(), v9 = self->_kernels[1], self->_kernels[1] = v8, v9, self->_kernels[1]) && ([(FigMetalContext *)self->_context computePipelineStateFor:@"RTSC::ReplaceRegion" constants:0], v10 = objc_claimAutoreleasedReturnValue(), v11 = self->_kernels[2], self->_kernels[2] = v10, v11, self->_kernels[2]))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript <= 3)
  {
    v4 = self->_kernels[subscript];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end